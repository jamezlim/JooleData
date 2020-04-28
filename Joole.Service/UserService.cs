using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Joole.Repo;
using Joole.Data;

namespace Joole.Service
{
    public class UserService
    {
        public void AddUser(tblUser newUser)
        {
            UnitOfWork uow = new UnitOfWork(new JooleDataContext());
            uow.GetUsersRepo.Add(newUser);
            uow.SaveChanges();
            uow.Dispose();
        }
    }
}
