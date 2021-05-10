using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebSitem
{
    public partial class KişiselBilgiler : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["musteriid"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            else
            {
                WebSitem.Business.musteri musteri = new Business.musteri();
                if (!Page.IsPostBack)
                {
                    int kullaniciid = int.Parse(Session["musteriid"].ToString());
                    var sonuc = musteri.GetBymusteriid(kullaniciid);

                    kullaniciadsoyad.Text = sonuc.musteriadi;
                    kullanicitcno.Text = sonuc.musteriTc;
                    kullanicimail.Text = sonuc.musteriemail;
                    kullanicitel.Text = sonuc.musteritel;
                    kullanicisifre1.Text = sonuc.musterisifre;
                }

                
            }
            
        }

        protected void Guncelle_Click(object sender, EventArgs e)
        {
            WebSitem.Business.musteri musteri = new Business.musteri();
            WebSitem.DataAccess.musteri musteri1 = new DataAccess.musteri();

            musteri1.musteriemail = kullanicimail.Text;
            musteri1.musteriadi = kullaniciadsoyad.Text;
            musteri1.musteriTc = kullanicitcno.Text;
            musteri1.musteritel = kullanicitel.Text;
            musteri1.musterisifre = kullanicisifre1.Text;
            var değer = musteri.MusteriBilgiGuncelle(musteri1);

            if (değer == "1")
            {
                kayitsonuc.Text = "Bilgiler başarıyla güncellendi.";
            }
            else
            {
                kayitsonuc.Text = "Bilgiler Güncellenemedi.Tekrar Deneyiniz!!";
                Response.Redirect("KişiselBilgiler.aspx");
            }
        }
    }
}