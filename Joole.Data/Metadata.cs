using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Web.Mvc;

namespace Joole.Data
{

    public class UserMetadata
    {
        [Key]
        public int UserId;

        [Required]
        [StringLength(20)]
        [Remote(action: "IsUserNameExist", controller:"Home", ErrorMessage = "UserName already in use")]
        public string UserName { get; set; }

        [Required]
        [StringLength(50)]
        [Display(Name = "Password")]
        public string UserPassword;

        [Required]
        [StringLength(320)]
        [EmailAddress]
        [Remote(action: "IsEmailExist", controller: "Home", ErrorMessage = "Current e-mail address already in use")]
        [Display(Name = "Email Address")]
        public string UserEmail { get; set; }

        public byte[] UserImage;
    }
}
