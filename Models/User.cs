using Microsoft.AspNetCore.Mvc;
using OptimoCore.Data;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.EntityFrameworkCore;
using Microsoft.AspNetCore.Mvc.Rendering;
using OptimoCore.Models;

namespace OptimoCore.Models
{
    public class User
    {
        [Required]
        [Display(Name = "Name")]
        public string FullName { get; set; }

        [Required]
        [EmailAddress]
        [Remote(action: "IsEmailInUse", controller: "Account")]
        public string Email { get; set; }

        [Required]
        [DataType(DataType.Password)]
        public string Password { get; set; }

        [DataType(DataType.Password)]
        [Display(Name = "Confirm password")]
        [Compare("Password",
            ErrorMessage = "Password and confirmation password do not match.")]
        public string ConfirmPassword { get; set; }

        [Phone]
        [Display(Name = "Phone Number")]
        public string PhoneNumber { get; set; }

        [Display(Name = "Country")]
        public int Country { get; set; }

        [Display(Name = "Address")]
        public string Address { get; set; }

        public static string HelloDhaka()
        {
            return "This is hello function!";
        }
    }

    public class AuthAccess
    {
        private readonly devDBContext _context;

        public AuthAccess(devDBContext context)
        {           
            _context = context;
        }

        public string HelloDhaka2()
        {
            var returnData = _context.State.FromSqlRaw<State>("spGetStatesById").ToList().FirstOrDefault();
            return Convert.ToString(returnData);
        }

        public static string HelloDhaka(string controller, string action)
        {
            return "Controller: " + controller + " and Action: " + action;

        }
    }


}
