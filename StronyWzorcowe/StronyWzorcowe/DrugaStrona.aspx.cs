using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StronyWzorcowe
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        void Page_PreInit(object sender, EventArgs e)
        {
            if (Request.QueryString["Drukuj"] != null)
            {
                MasterPageFile = "~/Drukuj.Master";
            }


        }
        protected void Page_Load(object sender, EventArgs e)
        {

        }
    }
}