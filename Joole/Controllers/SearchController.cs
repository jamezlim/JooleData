using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Joole.Service;

namespace Joole.Controllers
{
    public class SearchController : Controller
    {
        // GET: Search
        public ActionResult Search()
        {
            var selectList = new CategoryService().GetCategoryRepo();
            ViewBag.CategoryName = selectList;
            //ViewBag.CategoryName = new SelectList(selectList,"CategoryId","CategoryName");
            return View();
        }

        public ActionResult SubmitSearch(int categoryId, int subCategoryId)
        { 
            return View("Products");
        }

        public ActionResult GetSubCategory(int categoryValue)
        {
            var subCategories = new SubCategoryService().GetSubCategoryRepo();
            var result = (from s in subCategories where s.SubCategoryCategoryId == categoryValue select s).ToList();
            return Json(result.Select(x=> new {SubCategoryId = x.SubCategoryId, SubCategoryName = x.SubCategoryName }), JsonRequestBehavior.AllowGet);
        }


    }
}