using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebSitem
{
    public partial class Kayit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Kaydet_Click(object sender, EventArgs e)
        {
            WebSitem.Business.musteri nesne = new WebSitem.Business.musteri();
            WebSitem.DataAccess.musteri nesne1 = new WebSitem.DataAccess.musteri();

            nesne1.musteriadi = kullaniciadsoyad.Text;
            nesne1.musteriTc = kullanicitcno.Text;
            nesne1.musteritel = kullanicitel.Text;
            nesne1.musteriemail = kullanicimail.Text;
            nesne1.musterisifre = kullanicisifre1.Text;
            nesne1.musteritur = "kullanici";
            var değer = nesne.MusteriEkle(nesne1);
            if (değer == "1")
            {
                TextboxTemizle(this);
                kayitsonuc.Text = "Başarıyla Eklenildi.Lütfen Giriş Yapınız!!!";
                System.Threading.Thread.Sleep(5000);
                Response.Redirect("Login.aspx");
            }
            else
            {
                kayitsonuc.Text = değer;
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