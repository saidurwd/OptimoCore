using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace ProductCatalog.Models
{
    public partial class Company
    {
        [Key]
        public int Id { get; set; }
        public string CompanyName { get; set; }
        public string Address { get; set; }
        public string Email { get; set; }
        public string Phone { get; set; }
    }
}
