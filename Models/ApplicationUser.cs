using Microsoft.AspNetCore.Identity;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace OptimoCore.Models
{
    public class ApplicationUser : IdentityUser
    {
        public string FullName { get; set; }
        public int Country { get; set; }
        public string City { get; set; }
        public string Address { get; set; }
        [Required]
        public string Role { get; set; }
    }
}
