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

        public bool IsUserNameExist(string userName)
        {
            UnitOfWork uow = new UnitOfWork(new JooleDataContext());
            return uow.GetUsersRepo.IsUserNameExist(userName);
            // returns true if exists
        }

        public bool IsEmailExist(string userEmail)
        {
            UnitOfWork uow = new UnitOfWork(new JooleDataContext());
            return uow.GetUsersRepo.IsEmailExist(userEmail);
            // returns true if exists

        }
    }
}
