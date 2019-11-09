using Repository_UnitOfWork_DAL.EF_Data_Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ATAB_CMS_Website.Models.User_BL
{
    public interface IUserBusiness
    {
        IEnumerable<User> ListUser();
    }
}
