using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Joole.Data;
using Joole.Repo;

namespace Joole.Service
{
    public class SubCategoryService
    {
        UnitOfWork _uow;

        public SubCategoryService()
        {
            _uow = new UnitOfWork(new JooleDataContext());
        }

        public IEnumerable<tblSubCategory> GetSubCategoryRepo()
        {
            return _uow.GetSubCategoriesRepo.GetRepo();

        }
    }
}
