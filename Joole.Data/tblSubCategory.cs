//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Joole.Data
{
    using System;
    using System.Collections.Generic;
    
    public partial class tblSubCategory
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public tblSubCategory()
        {
            this.tblProducts = new HashSet<tblProduct>();
        }
    
        public int SubCategoryId { get; set; }
        public int SubCategoryCategoryId { get; set; }
        public string SubCategoryName { get; set; }
    
        public virtual tblCategory tblCategory { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<tblProduct> tblProducts { get; set; }
    }
}
