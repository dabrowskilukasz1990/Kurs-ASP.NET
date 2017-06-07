using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace ProsteUwiezytelnianie
{
    public partial class Create : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["SqlDataSourceUsers"].ConnectionString);
            conn.Open();
            string checkuser="select Id from Users"
            conn.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Write("Konto założone poprawnie.");
        }
    }
}