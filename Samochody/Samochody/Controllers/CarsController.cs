using Samochody.Models;
using System.Linq;
using System.Web.Mvc;

namespace Samochody.Controllers
{
    public class CarsController : Controller
    {
        private CarDBCtxt baza = new CarDBCtxt();
        //
        // GET: /Cars/
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
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "Id,Brand,Model,Price,Bought,Sold")] Car car)
        {

            baza.Cars.Add(car);
            baza.SaveChanges();
            return RedirectToAction("Index");
        }
    }
}