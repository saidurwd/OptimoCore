using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.EntityFrameworkCore;
using OptimoCore.Models;

namespace OptimoCore.Data
{
    public class devDBContext : DbContext
    {
        public devDBContext(DbContextOptions<devDBContext> options)
            : base(options)
        {
        }

        //public DbSet<OptimoCore.Models.Product> Product { get; set; }
    }
}