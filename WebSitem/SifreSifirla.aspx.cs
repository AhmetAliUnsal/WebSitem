using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebSitem
{
    public partial class SifreSifirla : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["musteritc"] == null)
            {
                Response.Redirect("HesapDogrula.aspx");
            }
           
        }

        protected void SifreGuncelle_Click(object sender, EventArgs e)
        {
            WebSitem.Business.musteri nesne = new WebSitem.Business.musteri();
            WebSitem.DataAccess.musteri nesne1 = new WebSitem.DataAccess.musteri();

            nesne1.musterisifre = kullanicisifre1.Text;
            nesne1.musteriTc = Session["musteritc"].ToString();

            var değer = nesne.MusteriSifreGuncelle(nesne1);

            if (değer == "1")
            {
                GuncellemeSonuc.Text = "Şifre Güncellemesi Başarılı. Lütfen Tekrar Giriş Yapınız!";
                System.Threading.Thread.Sleep(500);
                Session.Abandon();
                Response.Redirect("Login.aspx");
            }
            else
            {
                GuncellemeSonuc.Text = değer;
            }
        }
    }
}