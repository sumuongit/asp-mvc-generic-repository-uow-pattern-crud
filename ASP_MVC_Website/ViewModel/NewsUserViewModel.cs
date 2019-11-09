using Repository_UnitOfWork_DAL.EF_Data_Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ASP_MVC_Website.ViewModel
{
    public partial class NewsUserViewModel
    {
        public News News { get; set; }
        public User User { get; set; }
    }
}