using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;
using OptimoCore.Models;

namespace OptimoCore.Data
{
    public class devDBContext : IdentityDbContext<ApplicationUser>
    {
        public devDBContext(DbContextOptions<devDBContext> options)
            : base(options)
        {
        }
        protected override void OnModelCreating(ModelBuilder builder)
        {
            base.OnModelCreating(builder);
        }
        public DbSet<OptimoCore.Models.Company> Company { get; set; }
        //public DbSet<ProductCatalog.Models.Employee> tblEmployees { get; set; }
        public DbSet<OptimoCore.Models.Country> Country { get; set; }
        public DbSet<OptimoCore.Models.State> State { get; set; }
        public object HttpContext { get; internal set; }
        public DbSet<OptimoCore.Models.AuthController> AuthController { get; set; }
        public DbSet<OptimoCore.Models.AuthAction> AuthAction { get; set; }
    }
}