using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using OptimoCore.Models;
using OptimoCore.Data;
using Microsoft.AspNetCore.Http;
using Microsoft.EntityFrameworkCore;

// For more information on enabling MVC for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace OptimoCore.Controllers
{
    //[Authorize]
    public class AccountController : Controller
    {
        private UserManager<ApplicationUser> userManager;
        private SignInManager<ApplicationUser> signInManager;
        private readonly devDBContext _context;
        public AccountController(UserManager<ApplicationUser> userManager,
                              SignInManager<ApplicationUser> signInManager,
                                        devDBContext context)
        {
            this.userManager = userManager;
            this.signInManager = signInManager;
            _context = context;
        }

        [AuthorizedAction]
        [HttpPost]
        public async Task<IActionResult> Logout()
        {
            await signInManager.SignOutAsync();
            return RedirectToAction("Index", "home");
        }

        [AuthorizedAction]
        [HttpGet]
        public IActionResult Create()
        {
            //get Countries list 
            List<Country> countryList = new List<Country>();
            countryList = (from c in _context.Country select c).ToList();
            countryList.Insert(0, new Country { Id = 0, CountryName = "Select Country" });
            ViewBag.countries = countryList;
            //get States list 
            List<State> stateList = new List<State>();
            stateList = (from c in _context.State select c).ToList();
            stateList.Insert(0, new State { Id = 0, StateName = "Select State" });
            ViewBag.states = stateList;
            //get Roles list 
            List<Role> roleList = new List<Role>();
            roleList = (from c in _context.Role select c).ToList();
            roleList.Insert(0, new Role { Id = 0, RoleName = "Select Role" });
            ViewBag.roles = roleList;
            return View();
        }

        [AuthorizedAction]
        [HttpPost]
        public async Task<IActionResult> CreateAsync(User model)
        {
            if (ModelState.IsValid)
            {
                var user = new ApplicationUser
                {
                    UserName = model.Email,
                    Email = model.Email,
                    PhoneNumber = model.PhoneNumber,
                    FullName = model.FullName,
                    Country = model.Country,
                    Address = model.Address,
                    State = model.State,
                    Role = model.Role,
                };
                var result = await userManager.CreateAsync(user, model.Password);

                if (result.Succeeded)
                {
                    await signInManager.SignInAsync(user, isPersistent: false);
                    return RedirectToAction("Users", "Administration");
                }
                foreach (var error in result.Errors)
                {
                    ModelState.AddModelError("", error.Description);
                }
            }
            return View(model);
        }

        [AcceptVerbs("Get", "post")]
        public async Task<IActionResult> IsEmailInUse(string email)
        {
            var user = await userManager.FindByEmailAsync(email);
            if (user == null)
            {
                return Json(true);
            }
            else
            {
                return Json($"Email {email} is already in use.");
            }
        }

        [AuthorizedAction]
        [HttpGet]
        public async Task<IActionResult> Edit(string id)
        {
            var user = await userManager.FindByIdAsync(id);

            //get Countries list 
            List<Country> countryList = new List<Country>();
            countryList = (from c in _context.Country select c).ToList();
            countryList.Insert(0, new Country { Id = 0, CountryName = "Select Country" });
            ViewBag.countries = countryList;
            //get States list 
            List<State> stateList = new List<State>();
            stateList = (from c in _context.State select c).ToList();
            stateList.Insert(0, new State { Id = 0, StateName = "Select State" });
            ViewBag.states = stateList;
            //get Roles list 
            List<Role> roleList = new List<Role>();
            roleList = (from c in _context.Role select c).ToList();
            roleList.Insert(0, new Role { Id = 0, RoleName = "Select Role" });
            ViewBag.roles = roleList;

            if (user == null)
            {
                ViewBag.ErrorMessage = $"User with Id = {id} cannot be found.";
                //return View(NotFound);
                return View("NotFound");
            }
            var model = new Account
            {
                Id = user.Id,
                Email = user.Email,
                UserName = user.UserName,
                PhoneNumber = user.PhoneNumber,
                FullName = user.FullName,
                Country = user.Country,
                Address = user.Address,
                State = user.State,
                Role = user.Role,
            };
            return View(model);
        }

        [AuthorizedAction]
        [HttpPost]
        public async Task<IActionResult> Edit(Account model)
        {
            var user = await userManager.FindByIdAsync(model.Id);

            if (user == null)
            {
                ViewBag.ErrorMessage = $"User with Id = {model.Id} cannot be found.";
                //return View(NotFound);
                return View("NotFound");
            }
            else
            {
                user.FullName = model.FullName;
                user.Email = model.Email;
                user.PhoneNumber = model.PhoneNumber;
                user.Country = model.Country;
                user.Address = model.Address;
                user.State = model.State;
                user.Role = model.Role;

                var result = await userManager.UpdateAsync(user);

                if (result.Succeeded)
                {
                    return RedirectToAction("Users", "Administration");
                }

                foreach (var error in result.Errors)
                {
                    ModelState.AddModelError("", error.Description);
                }
                return View(model);
            }

            return View(model);
        }

        //public async Task<IActionResult> Delete(string? id)
        //{
        //    if (id == null)
        //    {
        //        return NotFound();
        //    }

        //    var user = await userManager.FindByIdAsync(id);
        //    if (user == null)
        //    {
        //        return NotFound();
        //    }

        //    return View(user);
        //}

        [AuthorizedAction]
        public async Task<IActionResult> Delete(string id)
        {
            var user = await userManager.FindByIdAsync(id);

            if (user == null)
            {
                ViewBag.ErrorMessage = $"User with Id = {id} cannot be found.";
                return View("NotFound");
            }
            else
            {
                var result = await userManager.DeleteAsync(user);

                if (result.Succeeded)
                {
                    return RedirectToAction("Users", "Administration");
                }

                foreach (var error in result.Errors)
                {
                    ModelState.AddModelError("", error.Description);
                }
                return View("Users", "Administration");
            }
        }

        [HttpGet]
        [AllowAnonymous]
        public IActionResult Login()
        {
            return View();
        }

        [HttpPost]
        [AllowAnonymous]
        public async Task<IActionResult> LoginAsync(Login model, string returnUrl)
        {
            if (ModelState.IsValid)
            {
                var result = await signInManager.PasswordSignInAsync(model.Email, model.Password, model.RememberMe, false);

                if (result.Succeeded)
                {
                    //get loggedin user data
                    var userData = await userManager.FindByEmailAsync(model.Email);

                    HttpContext.Session.SetString("Email", model.Email);
                    HttpContext.Session.SetString("Role", Convert.ToInt32(userData.Role).ToString());
                    HttpContext.Session.SetString("FullName", userData.FullName.ToString());

                    if (!string.IsNullOrEmpty(returnUrl) && Url.IsLocalUrl(returnUrl))
                    {
                        return Redirect(returnUrl);
                    }
                    else
                    {
                        return RedirectToAction("Index", "home");
                    }
                }
                ModelState.AddModelError(string.Empty, "Invalid Login Attempt!");
            }
            return View(model);
        }

        [HttpGet]
        [AllowAnonymous]
        public IActionResult ForgotPassword()
        {
            return View();
        }

        [HttpPost]
        [AllowAnonymous]
        public async Task<IActionResult> ForgotPassword(ForgotPassword model)
        {
            if (ModelState.IsValid)
            {
                var user = await userManager.FindByEmailAsync(model.Email);
                if (user != null && await userManager.IsEmailConfirmedAsync(user))
                {
                    var token = await userManager.GeneratePasswordResetTokenAsync(user);
                    var passwordResetLink = Url.Action("ResetPassword", "Account",
                        new { email = model.Email, token = token }, Request.Scheme);
                    //logger.Log(LogLevel.Warning, passwordResetLink);
                    return View("ForgotPasswordConfirmation");
                }
                return View("ForgotPasswordConfirmation");
            }
            return View(model);
        }

        [AuthorizedAction]
        [HttpGet]
        [AllowAnonymous]
        public IActionResult ResetPassword(string token, string email)
        {
            if (token == null || email == null)
            {
                ModelState.AddModelError("", "Invalid password reset token");
            }
            return View();
        }

        [AuthorizedAction]
        [HttpPost]
        [AllowAnonymous]
        public async Task<IActionResult> ResetPassword(ResetPassword model)
        {
            if (ModelState.IsValid)
            {
                var user = await userManager.FindByEmailAsync(model.Email);
                if (user != null)
                {
                    var result = await userManager.ResetPasswordAsync(user, model.Token, model.Password);
                    if (result.Succeeded)
                    {
                        return View("ResetPasswordConfirmation");
                    }
                    foreach (var error in result.Errors)
                    {
                        ModelState.AddModelError("", error.Description);
                    }
                    return View(model);
                }
                return View("ResetPasswordConfirmation");
            }
            return View(model);
        }

        [AuthorizedAction]
        [HttpGet]
        public IActionResult ChangePassword()
        {
            return View();
        }

        [AuthorizedAction]
        [HttpPost]
        public async Task<IActionResult> ChangePassword(ChangePassword model)
        {
            if (ModelState.IsValid)
            {
                var user = await userManager.GetUserAsync(User);
                if (user == null)
                {
                    return RedirectToAction("Login");
                }
                var result = await userManager.ChangePasswordAsync(user, model.CurrentPassword, model.NewPassword);
                if (!result.Succeeded)
                {
                    foreach (var error in result.Errors)
                    {
                        ModelState.AddModelError("", error.Description);
                    }
                    return View();
                }
                await signInManager.RefreshSignInAsync(user);
                return RedirectToAction("Users", "Administration");
            }
            return View(model);
        }

        [AuthorizedAction]
        [HttpGet]
        public IActionResult UpdatePassword(string id)
        {
            if (id == null)
            {
                ModelState.AddModelError("", "Invalid password update link!");
            }
            return View();
        }

        [AuthorizedAction]
        [HttpPost]
        public async Task<IActionResult> UpdatePassword(UpdatePassword model)
        {
            if (ModelState.IsValid)
            {
                var user = await userManager.FindByIdAsync(model.Id);
                if (user != null)
                {
                    //var token = await userManager.GeneratePasswordResetTokenAsync(user);
                    var result = await userManager.ResetPasswordAsync(user, model.Token, model.Password);
                    if (result.Succeeded)
                    {
                        return RedirectToAction("Users", "Administration");
                    }
                    foreach (var error in result.Errors)
                    {
                        ModelState.AddModelError("", error.Description);
                    }
                    return View(model);
                }
                return RedirectToAction("Users", "Administration");
            }
            return View(model);
        }

    }
}
