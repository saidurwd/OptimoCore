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
    public class AuthActionsController : Controller
    {
        private readonly devDBContext _context;

        public AuthActionsController(devDBContext context)
        {
            _context = context;
        }

        public IActionResult Index()
        {
            return View();
        }
        public IActionResult Display()
        {
            //var actions = _context.AuthAction.ToList();
            //var actions = _context.AuthAction.FromSqlRaw<AuthAction>("spGetActions").ToList();
            var actions = _context.AuthAction
                        .Join(
                            _context.AuthController,
                            action => action.ControllerId,
                            controller => controller.Id,
                            (action, controller) => new
                            {
                                Id = action.Id,
                                Title = controller.Title,
                                ControllerId = action.ControllerId,
                                ActionTitle = action.ActionTitle,
                                ActionName = action.ActionName
                            }
                        ).ToList();
            return new JsonResult(actions);
        }

        // GET: AuthActions/Details/5
        public async Task<IActionResult> Details(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var authAction = await _context.AuthAction
                .FirstOrDefaultAsync(m => m.Id == id);
            if (authAction == null)
            {
                return NotFound();
            }

            return View(authAction);
        }

        // GET: AuthActions/Create
        public IActionResult Create()
        {
            List<AuthController> controllerList = new List<AuthController>();
            controllerList = (from c in _context.AuthController select c).ToList();
            controllerList.Insert(0, new AuthController { Id = 0, ControllerName = "Select Controller" });
            ViewBag.controllers = controllerList;

            return View();
        }

        // POST: AuthActions/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create([Bind("Id,ControllerId,ActionTitle,ActionName")] AuthAction authAction)
        {
            if (ModelState.IsValid)
            {
                _context.Add(authAction);
                await _context.SaveChangesAsync();
                return RedirectToAction(nameof(Index));
            }
            return View(authAction);
        }

        // GET: AuthActions/Edit/5
        public async Task<IActionResult> Edit(int? id)
        {
            List<AuthController> controllerList = new List<AuthController>();
            controllerList = (from c in _context.AuthController select c).ToList();
            controllerList.Insert(0, new AuthController { Id = 0, ControllerName = "Select Controller" });
            ViewBag.controllers = controllerList;

            if (id == null)
            {
                return NotFound();
            }

            var authAction = await _context.AuthAction.FindAsync(id);
            if (authAction == null)
            {
                return NotFound();
            }
            return View(authAction);
        }

        // POST: AuthActions/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(int id, [Bind("Id,ControllerId,ActionTitle,ActionName")] AuthAction authAction)
        {
            if (id != authAction.Id)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                try
                {
                    _context.Update(authAction);
                    await _context.SaveChangesAsync();
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!AuthActionExists(authAction.Id))
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
            return View(authAction);
        }

        // GET: AuthActions/Delete/5
        public async Task<IActionResult> Delete(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var authAction = await _context.AuthAction
                .FirstOrDefaultAsync(m => m.Id == id);
            if (authAction == null)
            {
                return NotFound();
            }

            return View(authAction);
        }

        // POST: AuthActions/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(int id)
        {
            var authAction = await _context.AuthAction.FindAsync(id);
            _context.AuthAction.Remove(authAction);
            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(Index));
        }

        private bool AuthActionExists(int id)
        {
            return _context.AuthAction.Any(e => e.Id == id);
        }
    }
}
