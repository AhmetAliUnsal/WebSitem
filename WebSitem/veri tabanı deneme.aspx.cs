using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace WebSitem
{
    public partial class veri_tabanı_deneme : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            WebSitem.Business.musteri veri = new Business.musteri();
            var sonuc = veri.Listele();
            GridView1.DataSource = sonuc;
            GridView1.DataBind();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            WebSitem.Business.musteri nesne = new WebSitem.Business.musteri();
            WebSitem.DataAccess.musteri nesne1 = new WebSitem.DataAccess.musteri();
            //var değer = nesne.VeriEkleme();

            
            nesne1.musteriadi = TextBox2.Text;
            nesne1.musteriTc = TextBox3.Text;
            nesne1.musteritel =TextBox4.Text;
            nesne1.musteriemail = TextBox5.Text;
            var değer = nesne.VeriEkleme1(nesne1);

            
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            WebSitem.Business.musteri ara = new WebSitem.Business.musteri();
            WebSitem.DataAccess.musteri nesne2 = new WebSitem.DataAccess.musteri();
            //var değer = nesne.VeriEkleme();

           
            nesne2.musteriadi = TextBox2.Text;  
            nesne2.musteritel = TextBox4.Text;
            nesne2.musteriTc = TextBox6.Text;
            nesne2.musteriemail = TextBox5.Text;
            var sonuc = ara.VeriGüncelle(TextBox6.Text, nesne2);
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            WebSitem.Business.musteri ara = new WebSitem.Business.musteri();
            WebSitem.DataAccess.musteri nesne2 = new WebSitem.DataAccess.musteri();

            var sonuc = ara.VeriSilme(TextBox7.Text);
        }
    }
}