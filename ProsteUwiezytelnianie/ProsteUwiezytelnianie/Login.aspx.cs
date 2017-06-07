using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProsteUwiezytelnianie
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLog_Click(object sender, EventArgs e)
        {
            if ((txtLogin.Text == "123") && (txtPassword.Text == "1234"))
            {
                FormsAuthentication.RedirectFromLoginPage
                    (txtLogin.Text, chkPersist.Checked);
            }
            else if ((txtLogin.Text == "qwe") && (txtPassword.Text == "qwer"))
            {
                FormsAuthentication.RedirectFromLoginPage
                    (txtLogin.Text, chkPersist.Checked);
            }
            else
            {
                if (txtLogin.Text == "")
                {
                    LabelError.Text = "Wpisz login";
                }
                else if (txtPassword.Text == "")
                {
                    LabelError.Text = "Wpisz hasło";
                }
                else
                {
                    LabelError.Text = "Błędne dane. Spróbuj jeszcze raz";
                }

            }


        }
    }
}

