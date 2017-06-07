using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Warsztat_Samochodowy.Models;

namespace Warsztat_Samochodowy.Controllers
{

    public class CarsController : Controller
    {
        private CarDBCtxt baza = new CarDBCtxt();
        // GET: Cars
        public ActionResult Index()
        {
            return View(baza.Cars.ToList());

        }
        // GET: /Cars/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: /Cars/Create
        [HttpPost]
        //przesyłane wraz z POST, zabezpiecza przed złośliwą podmianą danych
        [ValidateAntiForgeryToken]
        //tutaj sprzężamy nasze pola z formularza z polami z modelu
        public ActionResult Create([Bind(Include = "Id,Marka,Model,Rocznik,Cena,Kupno")] Car car)
        {
            //sprawdzamy czy wystąpił jakiś błąd, np. błędny typ danych w formualrzu
            if (ModelState.IsValid)
            {
                //dodanie samochodu
                baza.Cars.Add(car);
                //zapsiane zmian
                baza.SaveChanges();
                //przekierowanie do strony o akcji Index
                return RedirectToAction("Index");
            }
            //jeśli ModelState.IsValid wracamy z powrotem do formularza
            return View(car);
        }



    }
}