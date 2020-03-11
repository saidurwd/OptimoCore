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
    public class AuthControllersController : Controller
    {
        private readonly devDBContext _context;

        public AuthControllersController(devDBContext context)
        {
            _context = context;
        }

        // GET: AuthControllers
        public IActionResult Index()
        {
            return View();
        }
        public IActionResult Display()
        {
            var controllers = _context.AuthController.ToList();
            return new JsonResult(controllers);
        }

        // GET: AuthControllers/Details/5
        public async Task<IActionResult> Details(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var authController = await _context.AuthController
                .FirstOrDefaultAsync(m => m.Id == id);
            if (authController == null)
            {
                return NotFound();
            }

            return View(authController);
        }

        // GET: AuthControllers/Create
        public IActionResult Create()
        {
            return View();
        }

        // POST: AuthControllers/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create([Bind("Id,ControllerName,Title,Status")] AuthController authController)
        {
            if (ModelState.IsValid)
            {
                _context.Add(authController);
                await _context.SaveChangesAsync();
                return RedirectToAction(nameof(Index));
            }
            return View(authController);
        }

        // GET: AuthControllers/Edit/5
        public async Task<IActionResult> Edit(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var authController = await _context.AuthController.FindAsync(id);
            if (authController == null)
            {
                return NotFound();
            }
            return View(authController);
        }

        // POST: AuthControllers/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(int id, [Bind("Id,ControllerName,Title,Status")] AuthController authController)
        {
            if (id != authController.Id)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                try
                {
                    _context.Update(authController);
                    await _context.SaveChangesAsync();
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!AuthControllerExists(authController.Id))
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
            return View(authController);
        }

        // GET: AuthControllers/Delete/5
        public async Task<IActionResult> Delete(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var authController = await _context.AuthController
                .FirstOrDefaultAsync(m => m.Id == id);
            if (authController == null)
            {
                return NotFound();
            }

            return View(authController);
        }

        // POST: AuthControllers/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(int id)
        {
            var authController = await _context.AuthController.FindAsync(id);
            _context.AuthController.Remove(authController);
            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(Index));
        }

        private bool AuthControllerExists(int id)
        {
            return _context.AuthController.Any(e => e.Id == id);
        }
    }
}
