using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using OptimoCore.Data;
using OptimoCore.Models;

namespace OptimoCore.Controllers
{
    public class RolesController : Controller
    {
        private readonly devDBContext _context;

        public RolesController(devDBContext context)
        {
            _context = context;
        }
        //public async Task<IActionResult> Edit(int? id)
        public async Task<IActionResult> Authentication(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }
            var role = await _context.Role.FirstOrDefaultAsync(m => m.Id == id);
            if (role == null)
            {
                return NotFound();
            }
            ViewData["RoleId"] = id;
            ViewData["RoleName"] = role.RoleName;
            //check and insert all actions            
            var Actions = await _context.AuthAction
                        .Join(
                            _context.AuthController,
                            action => action.ControllerId,
                            controller => controller.Id,
                            (action, controller) => new
                            {
                                Id = action.Id,
                                ControllerName = controller.ControllerName,
                                ControllerId = action.ControllerId,
                                ActionTitle = action.ActionTitle,
                                ActionName = action.ActionName
                            }
                        ).ToListAsync();
            foreach (var item in Actions)
            {
                var TotalCount = _context.Auth
                    .Where(e => e.RoleId == id)
                    .Where(e => e.ControllerName == item.ControllerName)
                    .Where(e => e.ActionName == item.ActionName).Count();
                if (TotalCount <= 0)
                {
                    var author = new Auth { RoleId = Convert.ToInt32(id), ControllerName = item.ControllerName, ActionName = item.ActionName, ActionTitle = item.ActionTitle, Access = "No" };
                    _context.Add(author);
                    _context.SaveChanges();
                }
            }
            var controllers = await _context.AuthController.ToListAsync();
            //ViewData["controllers"] = controllers;
            return View(role);
        }

        // GET: Roles
        //public async Task<IActionResult> Index()
        //{
        //    return View(await _context.Role.ToListAsync());
        //}
        [AuthorizedAction]
        public IActionResult Index()
        {
            return View();
        }

        public IActionResult Display()
        {
            var rolesList = _context.Role.ToList();
            return new JsonResult(rolesList);
        }

        [AuthorizedAction]
        // GET: Roles/Details/5
        public async Task<IActionResult> Details(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var role = await _context.Role
                .FirstOrDefaultAsync(m => m.Id == id);
            if (role == null)
            {
                return NotFound();
            }

            return View(role);
        }

        [AuthorizedAction]
        // GET: Roles/Create
        public IActionResult Create()
        {
            return View();
        }

        // POST: Roles/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create([Bind("Id,RoleName,Details,Status")] Role role)
        {
            if (ModelState.IsValid)
            {
                _context.Add(role);
                await _context.SaveChangesAsync();
                return RedirectToAction(nameof(Index));
            }
            return View(role);
        }

        [AuthorizedAction]
        // GET: Roles/Edit/5
        public async Task<IActionResult> Edit(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var role = await _context.Role.FindAsync(id);
            if (role == null)
            {
                return NotFound();
            }
            return View(role);
        }

        // POST: Roles/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(int id, [Bind("Id,RoleName,Details,Status")] Role role)
        {
            if (id != role.Id)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                try
                {
                    _context.Update(role);
                    await _context.SaveChangesAsync();
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!RoleExists(role.Id))
                    {
                        return NotFound();
                    }
                    else
                    {
                        throw;
                    }
                }
                return RedirectToAction(nameof(Index));
            }
            return View(role);
        }

        [AuthorizedAction]
        // GET: Roles/Delete/5
        public async Task<IActionResult> Delete(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var role = await _context.Role
                .FirstOrDefaultAsync(m => m.Id == id);
            if (role == null)
            {
                return NotFound();
            }

            return View(role);
        }

        // POST: Roles/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(int id)
        {
            var role = await _context.Role.FindAsync(id);
            _context.Role.Remove(role);
            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(Index));
        }

        private bool RoleExists(int id)
        {
            return _context.Role.Any(e => e.Id == id);
        }
    }
}
