using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace OptimoCore.Models
{
    public class Account
    {
        public string Id { get; set; }

        [Required]
        [Display(Name = "Name")]
        public string FullName { get; set; }

        [Required]
        public string UserName { get; set; }

        [Required]
        [EmailAddress]
        public string Email { get; set; }

        [Phone]
        [Display(Name = "Phone Number")]
        public string PhoneNumber { get; set; }

        [Display(Name = "Country")]
        public int Country { get; set; }

        [Display(Name = "Address")]
        public string Address { get; set; }
    }
}
