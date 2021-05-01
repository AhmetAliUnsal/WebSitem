using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebSitem
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Giris_Click(object sender, EventArgs e)
        {
            WebSitem.Business.musteri nesne = new WebSitem.Business.musteri();
            WebSitem.DataAccess.musteri nesne1 = new WebSitem.DataAccess.musteri();
            nesne1.musteriemail = email.Text;
            nesne1.musterisifre = psw.Text;

            var değer = nesne.MusteriSorgula(nesne1);
            if (değer == "1")
            {
                TextboxTemizle(this);
                sonuc.Text = değer;
                System.Threading.Thread.Sleep(50);
                Session["mail"]=email.Text;
                Session.Timeout = 30;
                Response.Redirect("Default.aspx");
            }
            else
            {
                sonuc.Text = değer;
            }
           


        }

        public void TextboxTemizle(Control parent)
        {

            foreach (Control x in parent.Controls)
            {
                if ((x.GetType() == typeof(TextBox)))
                {
                    ((TextBox)(x)).Text = "";
                }

                if (x.HasControls())
                {
                    TextboxTemizle(x);
                }
            }
        }

    }
}