using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Data.Entity;
using System.Linq;
using System.Web;

namespace Warsztat_Samochodowy.Models
{
    public class Car
    {
        public int Id { get; set; }
        public string Marka { get; set; }
        public string Model { get; set; }
        public int Rocznik { get; set; }
        [Required(ErrorMessage = "Cena nie może zawierać przecinków, kropek oraz odstępów")]
        public int Cena { get; set; }
        public DateTime Kupno { get; set; }
    }
    public class CarDBCtxt : DbContext
    {
        public DbSet<Car> Cars { get; set; }
    }
}