using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;
using OptimoCore.Models;

namespace OptimoCore.Data
{
    public class devDBContext : IdentityDbContext
    {
        public devDBContext(DbContextOptions<devDBContext> options)
            : base(options)
        {
        }

        //public DbSet<OptimoCore.Models.Product> Product { get; set; }

        protected override void OnModelCreating(ModelBuilder builder)
        {
            base.OnModelCreating(builder);
        }
    }
}