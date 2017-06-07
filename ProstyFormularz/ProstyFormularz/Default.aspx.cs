using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProstyFormularz
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonWyslij_Click(object sender, EventArgs e)
        {
            string imie = TextBoxImie.Text;
            string nazwisko = TextBoxNazwisko.Text;
            string wojewodztwo = DropDownListWojewodztwo.Text;
            string miasto = TextBoxMiasto.Text;
            string ulica = TextBoxUlica.Text;
            string email = TextBoxEmail.Text;
            string uwagi = TextBoxUwagi.Text;

            LabelWynik.Text = imie + " " + nazwisko + " " + wojewodztwo + " " + miasto + " " + ulica + " " + email + " " + uwagi;
        }
    }
}