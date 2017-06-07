﻿using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

namespace Samochody.Models
{
    public class CarDBCtxt : DbContext
    {
        public DbSet<Car> Cars { get; set; }
    }
    public class Car
    {
        public int Id { get; set; }
        public string Brand { get; set; }
        public string Model { get; set; }
        public decimal Price { get; set; }
        public DateTime Bought { get; set; }
        public DateTime Sold { get; set; }
    }

}