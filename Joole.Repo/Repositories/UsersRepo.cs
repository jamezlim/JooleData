using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Joole.Data;
using Joole.Repo.Repositories;

namespace Joole.Repo
{
    public class UsersRepo : GenericRepo<tblUser>
    {
        JooleDataContext _jooleDataContext;
        public UsersRepo (JooleDataContext context) : base(context)
        {
            _jooleDataContext = context;
        }

        //public void Add (tblUser user)
        //{
        //    _jooleDataContext.tblUsers.Add(user);
        //}
    }
}
