using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace OptimoCore.Models
{
    public class Role
    {
        [Key]
        public int Id { get; set; }
        [Required]
        [Display(Name = "Role Name")]
        public string RoleName { get; set; }
        public string Details { get; set; }
        [Required]
        public string Status { get; set; }
    }
    public enum RoleStatus
    {
        Active,
        Inactive
    }
}
