using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

namespace CodeFirstEntity.Modele
{
    public class NaszDbContext : DbContext
    {
        public DbSet<Produkty> Produkty { get; set; }

    }
}