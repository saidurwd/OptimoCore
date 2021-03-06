﻿using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace OptimoCore.Models
{
    public partial class Country
    {
        [Key]
        public int Id { get; set; }
        [Required]
        [Display(Name = "Country Name")]
        public string CountryName { get; set; }
        public string Country3Code { get; set; }
        public string Country2Code { get; set; }
        public string Ordering { get; set; }
        public string Status { get; set; }
    }

    public enum Status
    {
        Active,
        Inactive
    }
}
