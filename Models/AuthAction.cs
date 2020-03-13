using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace OptimoCore.Models
{
    public partial class AuthAction
    {
        [Key]
        public int Id { get; set; }
        [Required]
        [Display(Name = "Controller")]
        public int ControllerId { get; set; }
        [Required]
        [Display(Name = "Action Title")]
        public string ActionTitle { get; set; }
        [Required]
        [Display(Name = "Action")]
        public string ActionName { get; set; }
        //public string title { get; set; }
    }
}
