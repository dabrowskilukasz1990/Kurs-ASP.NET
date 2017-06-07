using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Routing;

namespace Warsztat_Samochodowy
{
    public class RouteConfig
    {
        public static void RegisterRoutes(RouteCollection routes)
        {
            routes.MapRoute(
            name: "Warsztat_Samochodowy",
            url: "{controller}/{action}/{id1}/{id2}",
            defaults: new { controller = "Home", action = "Index", id1 = UrlParameter.Optional, id2 = UrlParameter.Optional }
            );
        }
    }
}
