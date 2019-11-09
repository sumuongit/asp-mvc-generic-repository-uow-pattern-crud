using ASP_MVC_Website.ViewModel;
using Repository_UnitOfWork_DAL.EF_Data_Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ASP_MVC_Website.Models
{
    public interface INewsBusiness
    {
        bool CreateNews(News news);
        IEnumerable<NewsUserViewModel> ListNews();
        NewsUserViewModel DetailsNews(int id);
        News EditNews(int id);
        bool EditNews(News news);
        NewsUserViewModel DeleteNews(int id);
        void DeleteNewsConfirm(int id);
    }
}
