using ASP_MVC_Website.Models;
using Repository_UnitOfWork_DAL.EF_Data_Model;
using Repository_UnitOfWork_DAL.Infrastructure;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ATAB_CMS_Website.Models.User_BL
{
    public class UserBusiness : IUserBusiness
    {        
        private UnitOfWork uow = null;

        public UserBusiness(UnitOfWork uow_)
        {           
            uow = uow_;
        }

        public IEnumerable<User> ListUser()
        {            
            return uow.Repository<User>().GetAll().ToList();
        }
    }
}