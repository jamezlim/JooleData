using System;
using System.Collections.Generic;
using System.IO;
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
        public ActionResult Register([Bind(Exclude = "UserImage")] tblUser user , HttpPostedFileBase userImage)
        {
            // converting image file to byte array 
            byte[] fileData = null;
            using (var binaryReader = new BinaryReader(userImage.InputStream))
            {
                fileData = binaryReader.ReadBytes(userImage.ContentLength);
            }
            user.UserImage = fileData;

            UserService serviceObj = new UserService();
            serviceObj.AddUser(user);
            return View("Login");
        }

        public JsonResult IsUserNameExist(string userName)
        {
            UserService serviceObj = new UserService();
            bool result = serviceObj.IsUserNameExist(userName);
            if (result) return Json(false, JsonRequestBehavior.AllowGet); // if it exists return false 
            else return Json(true,JsonRequestBehavior.AllowGet);
        }

        public JsonResult IsEmailExist(string userEmail)
        {
            UserService serviceObj = new UserService();
            bool result = serviceObj.IsEmailExist(userEmail);
            if (result) return Json(false, JsonRequestBehavior.AllowGet); // if it exists return false 
            else return Json(true, JsonRequestBehavior.AllowGet);
        }






    }
}