using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CodeFirstEntity.Modele
{
    public class Repozytorium
    {
        NaszDbContext _Context = new NaszDbContext();

        public List<Produkty> pobierzProdukty()
        {
            return (from p in _Context.Produkty select p).ToList();

        }
    }
}