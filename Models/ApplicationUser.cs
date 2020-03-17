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
        public int State { get; set; }
        public string Address { get; set; }
        [Required]
        public int Role { get; set; }
    }
}
