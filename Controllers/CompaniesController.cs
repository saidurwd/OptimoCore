using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using OptimoCore.Data;
using OptimoCore.Models;

namespace ProductCatalog.Controllers
{    
    [Route("Companies")]
    //[Authorize]
    public class CompaniesController : Controller
    {
        private readonly devDBContext _context;

        public CompaniesController(devDBContext context)
        {
            _context = context;
        }

        [Route("Datatable")]
        // GET: Companies
        public IActionResult Datatable()
        {
            return View();
        }

        [Route("GetList")]
        [HttpPost]
        public IActionResult GetList()
        {
            //Server side processing
            int start = Convert.ToInt32(HttpContext.Request.Query["start"]);
            int length = Convert.ToInt32(HttpContext.Request.Query["length"]);
            string searchValue = HttpContext.Request.Query["search[value]"];
            string sortColumnName = HttpContext.Request.Query["columns[" + HttpContext.Request.Query["order[i][column]"] + "][name]"];
            string sortDirection = HttpContext.Request.Query["order[0][dir]"];
            // total data
            var empList = _context.Company.ToList();

            int totalRows = empList.Count;

            if (!string.IsNullOrEmpty(searchValue))
            {
                empList = empList.
                    Where(x => x.CompanyName.ToLower().Contains(searchValue.ToLower()) || x.Address.ToLower().Contains(searchValue.ToLower()) || x.Email.ToLower().Contains(searchValue.ToLower()) || x.Phone.ToLower().Contains(searchValue.ToLower())).ToList();
            }

            int totalRowsAfterFiltering = empList.Count;
            //Sorting
            //empList = empList.OrderBy(sortColumnName+ " " +sortDirection).ToList();

            //Paging
            //empList = empList.Skip(start).Take(length).ToList();
            //return Json(new { data = empList, draw = HttpContext.Request.Query["draw"], recordsTotal = totalRows, recordsFiltered = totalRowsAfterFiltering });
            return Json(new { data = empList });
        }


        [Route("Index")]
        public IActionResult Index()
        {
            return View();
        }

        [Route("Display")]
        public IActionResult Display()
        {
            var companies = _context.Company.ToList();
            return new JsonResult(companies);
        }

        // GET: Companies/Details/5
        [Route("Details/{id}")]
        public async Task<IActionResult> Details(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var company = await _context.Company
                .FirstOrDefaultAsync(m => m.Id == id);
            if (company == null)
            {
                return NotFound();
            }

            return View(company);
        }

        // GET: Companies/Create
        [Route("Create")]
        public IActionResult Create()
        {
            return View();
        }

        // POST: Companies/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [Route("Create")]
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create([Bind("Id,CompanyName,Address,Email,Phone")] Company company)
        {
            if (ModelState.IsValid)
            {
                _context.Add(company);
                await _context.SaveChangesAsync();
                return RedirectToAction(nameof(Index));
            }
            return View(company);
        }

        // GET: Companies/Edit/5
        [Route("Edit/{id}")]
        public async Task<IActionResult> Edit(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var company = await _context.Company.FindAsync(id);
            if (company == null)
            {
                return NotFound();
            }
            return View(company);
        }

        // POST: Companies/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [Route("Edit/{id}")]
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(int id, [Bind("Id,CompanyName,Address,Email,Phone")] Company company)
        {
            if (id != company.Id)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                try
                {
                    _context.Update(company);
                    await _context.SaveChangesAsync();
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!CompanyExists(company.Id))
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
            return View(company);
        }

        // GET: Companies/Delete/5
        [Route("Delete/{id}")]
        public async Task<IActionResult> Delete(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var company = await _context.Company
                .FirstOrDefaultAsync(m => m.Id == id);
            if (company == null)
            {
                return NotFound();
            }

            return View(company);
        }

        // POST: Companies/Delete/5
        [Route("Delete/{id}")]
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(int id)
        {
            var company = await _context.Company.FindAsync(id);
            _context.Company.Remove(company);
            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(Index));
        }

        private bool CompanyExists(int id)
        {
            return _context.Company.Any(e => e.Id == id);
        }
    }
}
