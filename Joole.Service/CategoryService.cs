using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Joole.Data;
using Joole.Repo;

namespace Joole.Service
{
    public class CategoryService
    {
        UnitOfWork _uow;

        public CategoryService()
        {
            _uow = new UnitOfWork(new JooleDataContext());
        }

        public IEnumerable<tblCategory> GetCategoryRepo()
        {
            return _uow.GetCategoriesRepo.GetRepo();

        }
    }
}
