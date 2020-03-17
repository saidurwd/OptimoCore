using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using OptimoCore.Models;
using Microsoft.AspNetCore.Http;

namespace ProductCatalog.Controllers
{
    //[Authorize]
    public class HomeController : Controller
    {
        private readonly ILogger<HomeController> _logger;
        const string SessionName = "_Name";

        public HomeController(ILogger<HomeController> logger)
        {
            _logger = logger;
        }

        //[AllowAnonymous]
        //[AuthorizedAction]
        public IActionResult Index()
        {
            //string userAccess = AuthAccess.HelloDhaka(this.ControllerContext.RouteData.Values["controller"].ToString()
            //                                         , this.ControllerContext.RouteData.Values["action"].ToString());
            //ViewData["userAccess"] = userAccess;
            HttpContext.Session.SetString(SessionName, "Rana");
            ViewBag.Name = HttpContext.Session.GetString(SessionName);
            ViewData["userAccess"] = "Welcome to OptomoCore";
            return View();
        }

        //[AllowAnonymous]
        public IActionResult Privacy()
        {
            return View();
        }

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}
