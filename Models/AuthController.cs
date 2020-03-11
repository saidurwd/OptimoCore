using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace OptimoCore.Models
{
    public partial class AuthController
    {
        [Key]
        public int Id { get; set; }
        [Required]
        [Display(Name = "Controller")]
        public string ControllerName { get; set; }
        [Required]
        [Display(Name = "Title")]
        public string Title { get; set; }
        [Required]
        [Display(Name = "Status")]
        public string Status { get; set; }
    }
    public enum ControllerStatus
    {
        Active,
        Inactive
    }
}
