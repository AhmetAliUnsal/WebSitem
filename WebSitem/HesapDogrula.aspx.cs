using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebSitem
{
    public partial class SifreSifirlama : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void Dogrula_Click(object sender, EventArgs e)
        {
            WebSitem.Business.musteri nesne = new WebSitem.Business.musteri();
            WebSitem.DataAccess.musteri nesne1 = new WebSitem.DataAccess.musteri();

            nesne1.musteriemail = kullanicimail.Text;
            nesne1.musteriTc = kullanicitcno.Text;
            nesne1.musteritel = kullanicitel.Text;

            var değer = nesne.MusteriDogrula(nesne1);

            if (değer == "1")
            {
                Dogrulasonuc.Text = "Doğrulama Başarılı. Şifrenizi Değiştirebilirsiniz!";
                System.Threading.Thread.Sleep(5000);
                Session["musteritc"]=kullanicitcno.Text;
                Response.Redirect("SifreSifirla.aspx");
            }
            else
            {
                Dogrulasonuc.Text = değer;
            }
        }
    }
}