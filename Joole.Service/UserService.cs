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
        UnitOfWork _uow;

        public UserService()
        {
            _uow = new UnitOfWork(new JooleDataContext());
        }

        public void AddUser(tblUser newUser)
        {
            _uow.GetUsersRepo.Add(newUser);
            _uow.SaveChanges();
            _uow.Dispose();
        }

        public bool IsUserNameExist(string userName)
        {
            UnitOfWork _uow = new UnitOfWork(new JooleDataContext());
            return _uow.GetUsersRepo.IsUserNameExist(userName);
            // returns true if exists
        }

        public bool IsEmailExist(string userEmail)
        {
            UnitOfWork _uow = new UnitOfWork(new JooleDataContext());
            return _uow.GetUsersRepo.IsEmailExist(userEmail);
            // returns true if exists

        }
    }
}
