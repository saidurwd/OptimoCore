using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace OptimoCore.Models
{
    public partial class City
    {
        [Key]
        public int Id { get; set; }
        [Required]
        [Display(Name = "Country")]
        public int CountryId { get; set; }
        [Required]
        [Display(Name = "State")]
        public string StateId { get; set; }
        [Required]
        [Display(Name = "City Name")]
        public string CityName { get; set; }
        public string City3Code { get; set; }
        public string City2Code { get; set; }
        [Required]
        public string Status { get; set; }
    }

    public enum CityStatus
    {
        Active,
        Inactive
    }
}
