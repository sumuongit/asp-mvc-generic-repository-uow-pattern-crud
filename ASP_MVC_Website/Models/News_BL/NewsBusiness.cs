using ASP_MVC_Website.ViewModel;
using Repository_UnitOfWork_DAL.EF_Data_Model;
using Repository_UnitOfWork_DAL.Infrastructure;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace ASP_MVC_Website.Models
{
    public class NewsBusiness : INewsBusiness
    {
        private IValidationDictionary _validatonDictionary = null; 
        private UnitOfWork uow = null;

        public NewsBusiness(IValidationDictionary validationDictionary, UnitOfWork uow_)
        {
            _validatonDictionary = validationDictionary;
            uow = uow_;
        }

        protected bool ValidateNews(News news)
        {
            if (news.Title.Trim().Length == 0)
                _validatonDictionary.AddError("Title", "Title is required.");
           
            return _validatonDictionary.IsValid;
        }

        public IEnumerable<NewsUserViewModel> ListNews()
        {
            //return uow.Repository<News>().GetAll().ToList();

            var newsDbObj = uow.Repository<News>();
            var userDbObj = uow.Repository<User>();

            var newsList = (from n in newsDbObj.GetAll()
                              join u in userDbObj.GetAll()
                              on n.UserId equals u.UserId
                              select new NewsUserViewModel
                              {
                                  News = n,
                                  User = u
                              });
            
            return newsList.ToList();
        }
       
        public NewsUserViewModel DetailsNews(int id = 0)
        {
            //return uow.Repository<News>().Get(c => c.NewsId == id);

            var newsDbObj = uow.Repository<News>();
            var userDbObj = uow.Repository<User>();

            var newsList = (from n in newsDbObj.GetAll()
                              join u in userDbObj.GetAll()
                              on n.UserId equals u.UserId
                              select new NewsUserViewModel
                              {
                                  News = n,
                                  User = u
                              }).Where(w=>w.News.NewsId==id).SingleOrDefault();

            return newsList;
        }

        public News EditNews(int id = 0)
        {
            return uow.Repository<News>().Get(c => c.NewsId == id);
        }

        public bool EditNews(News news)
        {           
            if (!ValidateNews(news))
                return false;            
            try
            {
                uow.Repository<News>().Attach(news);
                uow.SaveChanges();
            }
            catch
            {
                return false;
            }

            return true;
        }

        public bool CreateNews(News news)
        {           
            if (!ValidateNews(news))
                return false;            
            try
            {
                uow.Repository<News>().Add(news);
                uow.SaveChanges();
            }
            catch
            {
                return false;
            }

            return true;
        }

        public NewsUserViewModel DeleteNews(int id = 0)
        {
            //return uow.Repository<News>().Get(c => c.NewsId == id);

            var newsDbObj = uow.Repository<News>();
            var userDbObj = uow.Repository<User>();

            var newsList = (from n in newsDbObj.GetAll()
                            join u in userDbObj.GetAll()
                            on n.UserId equals u.UserId
                            select new NewsUserViewModel
                            {
                                News = n,
                                User = u
                            }).Where(w => w.News.NewsId == id).SingleOrDefault();

            return newsList;
        }

        public void DeleteNewsConfirm(int id)
        {
            //News news = uow.Repository<News>().Get(c => c.NewsId == id);

            var newsDbObj = uow.Repository<News>();
            var userDbObj = uow.Repository<User>();

            var newsList = (from n in newsDbObj.GetAll()
                            join u in userDbObj.GetAll()
                            on n.UserId equals u.UserId
                            select new NewsUserViewModel
                            {
                                News = n,
                                User = u
                            }).Where(w => w.News.NewsId == id).SingleOrDefault();

            uow.Repository<News>().Delete(newsList.News);
            uow.SaveChanges();
        }
    }
}