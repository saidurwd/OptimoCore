using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace OptimoCore.Models
{
    public partial class Auth
    {
        [Key]
        public int Id { get; set; }
        [Required]
        [Display(Name = "Role")]
        public int RoleId { get; set; }
        [Required]
        [Display(Name = "Controller")]
        public string ControllerName { get; set; }
        [Required]
        [Display(Name = "Action")]
        public string ActionName { get; set; }
        [Required]
        [Display(Name = "Action Title")]
        public string ActionTitle { get; set; }
        [Required]
        [Display(Name = "Access")]
        public string Access { get; set; }
    }
}
