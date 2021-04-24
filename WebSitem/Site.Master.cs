using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebSitem
{
    public partial class Site : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
       
        }

        protected void kaydet_Click(object sender, EventArgs e)
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

            kayitsonuc.Text = değer;
        }

        protected void GiriseGec_Click(object sender, EventArgs e)
        {

        }
    }
}