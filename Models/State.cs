using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace OptimoCore.Models
{
    public partial class State
    {
        [Key]
        public int Id { get; set; }
        public int CountryId { get; set; }
        [Required]
        [Display(Name = "State Name")]
        public string StateName { get; set; }
        public string State3Code { get; set; }
        public string State2Code { get; set; }
        public int Ordering { get; set; }
        public string Status { get; set; }
    }

    public enum StateStatus
    {
        Active,
        Inactive
    }
}
