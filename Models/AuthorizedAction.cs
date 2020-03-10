using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Filters;
using Microsoft.AspNetCore.Routing;
using Newtonsoft.Json;
using OptimoCore.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.ComponentModel.DataAnnotations;
using OptimoCore.Data;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.DependencyInjection;

namespace OptimoCore.Models
{
    public class AuthorizedAction : ActionFilterAttribute
    {
        public override void OnResultExecuting(ResultExecutingContext filterContext)
        {

        }

        public override void OnActionExecuting(ActionExecutingContext filterContext)
        {
            //get dbcontext
            var db = filterContext.HttpContext.RequestServices.GetRequiredService<devDBContext>();
            //get current controller and action 
            var controllerName = ((ControllerBase)filterContext.Controller).ControllerContext.ActionDescriptor.ControllerName;
            var actionName = ((ControllerBase)filterContext.Controller).ControllerContext.ActionDescriptor.ActionName;
            //execute query and check access for this controller and action 
            //var students = db.State.FromSqlRaw("spGetStatesById").FirstOrDefault();
            var blogs = db.Country
                        .FromSqlRaw("SELECT * FROM dbo.Country")
                        .ToList();

            int x = 0;
            if (x == 0)
            {
                filterContext.Result = new RedirectToRouteResult(
                    new RouteValueDictionary { { "controller", "Home" }, { "action", "Privacy" } });
                return;
            }
            else
            {
                new RouteValueDictionary { { "controller", "Home" }, { "action", "Index" } };
                return;
            }

            //base.OnActionExecuting(filterContext);

            //if (filterContext.HttpContext.Session.GetString("email") === null)
            //{
            //    filterContext.Result = new RedirectToRouteResult(
            //        new RouteValueDictionary { { "controller", "Home" }, { "action", "Privacy" } });
            //    return;
            //}

            //var menus = JsonConvert.DeserializeObject<List<Menus>>(filterContext.HttpContext.Session.GetString("menus"));
            //var controllerName = filterContext.RouteData.Values["controller"];
            //var actionName = filterContext.RouteData.Values["action"];
            //string url = "/" + controllerName + "/" + actionName;

            //if (!menus.Where(s => s.Url == url).Any())
            //{
            //    filterContext.Result = new RedirectToRouteResult(
            //        new RouteValueDictionary { { "controller", "Account" }, { "action", "Login" } });
            //    return;
            //}
        }
    }
}
