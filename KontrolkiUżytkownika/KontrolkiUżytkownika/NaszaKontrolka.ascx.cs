using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace KontrolkiUżytkownika
{
    public partial class NaszaKontrolka : System.Web.UI.UserControl
    {
 
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = DateTime.Now.ToShortDateString() + " " + DateTime.Now.ToLongTimeString();
        }
    }
}