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
using Microsoft.Data.SqlClient;
using System.Net.Http;


namespace OptimoCore.Models
{
    public class AuthorizedAction : ActionFilterAttribute
    {
        public override void OnResultExecuting(ResultExecutingContext filterContext)
        {

        }

        [Obsolete]
        public override void OnActionExecuting(ActionExecutingContext filterContext)
        {
            //get dbcontext
            var db = filterContext.HttpContext.RequestServices.GetRequiredService<devDBContext>();
            //get current Role, Controller and Action            
            int role = 1;
            string controllerName = ((ControllerBase)filterContext.Controller).ControllerContext.ActionDescriptor.ControllerName;
            string actionName = ((ControllerBase)filterContext.Controller).ControllerContext.ActionDescriptor.ActionName;

            //var blogs = db.Country
            //            .FromSqlRaw("SELECT * FROM dbo.Country")
            //            .ToList();
            //var access = db.Database.ExecuteSqlCommand($"DECLARE @ToralRows int; EXEC spGetAccess {role},{controllerName},{actionName}, @ToralRows OUT");
            //var access = db.Auth.FromSqlRaw($"spGetAccess {role},'{controllerName}','{actionName}'").ToList().FirstOrDefault();

            var access = db.Auth
                        .FromSqlRaw("SELECT * FROM dbo.Auth")
                        .Where(e => e.RoleId == 1)
                        .Where(e => e.ControllerName == controllerName)
                        .Where(e => e.ActionName == actionName)
                        .Where(e => e.Access == "Yes").ToList().FirstOrDefault().Access.ToString();
            //var accessValue = access.Access.ToString();

            if (access == "Yes")
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
