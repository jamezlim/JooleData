using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Joole.Data;
using Joole.Service;

namespace Joole.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Login()
        {
            return View();
        }

        [HttpPost]
        public ActionResult Register(tblUser user)
        {
            UserService serviceObj = new UserService();
            serviceObj.AddUser(user);
            return View("Login");
        }


   
    }
}