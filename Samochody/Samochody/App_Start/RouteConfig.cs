using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Routing;

namespace Samochody
{
    public class RouteConfig
    {
        public static void RegisterRoutes(RouteCollection routes)
        {
            routes.IgnoreRoute("{resource}.axd/{*pathInfo}");

                   
            routes.MapRoute(
                  name: "Samochod",
                  url: "{controller}/{action}/{id1}",
                  defaults: new { controller = "Cars2", action = "Create", id1 = UrlParameter.Optional }

            );
            
        }
    }
}
