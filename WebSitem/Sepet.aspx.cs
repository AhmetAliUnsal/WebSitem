using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebSitem
{
    public partial class Sepet : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            WebSitem.DataAccess.websayfaEntities ent = new DataAccess.websayfaEntities();
            WebSitem.DataAccess.sepet sepet = new DataAccess.sepet();
            WebSitem.Business.Sepet sepet1 = new Business.Sepet();

            string silineceksepetid = Request.QueryString["Silineceksepetid"];
            if (!String.IsNullOrEmpty(silineceksepetid))
            {
                sepet1.SepetUrunSil(int.Parse(silineceksepetid));
                silineceksepetid = null;

            }

            string guncelleneceksepetid = Request.QueryString["Sepetid"];
            if (!String.IsNullOrEmpty(guncelleneceksepetid))
            {
                int sepetid = int.Parse(guncelleneceksepetid);
                int a = int.Parse(Request.QueryString["quantity"]);
                int b = int.Parse(Request.QueryString["Urunfiyat"]);
                int toplam = a * b;
                sepet.urunfkid = int.Parse(Request.QueryString["Urunid1"]);
                sepet.musterifkid = int.Parse(Session["musteriid"].ToString());
                sepet.urunadet = int.Parse(Request.QueryString["quantity"]);
                sepet.urunfiyat = int.Parse(Request.QueryString["Urunfiyat"]);
                sepet.urunadi = Request.QueryString["urunad"];
                sepet.urunresimi = Request.QueryString["urunresimadres"];
                sepet.fiyat = toplam;

                var değer=sepet1.SepetGuncelle(sepetid,sepet);
                guncelleneceksepetid = null;
            }
            if (Session["musteriid"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            else
            {
                int musteriid = int.Parse(Session["musteriid"].ToString());
                string id = Request.QueryString["urunid"];
                int toplam = 0;
                var sepettutarlar = ent.sepet.OrderBy(p => p.sepetid).Where(p => p.musterifkid == musteriid).ToList();
                for(int i = 0; i < sepettutarlar.Count; i++)
                {
                    toplam = toplam + int.Parse(sepettutarlar[i].fiyat.ToString());
                }
                ToplamTutar.Text = "Sepet Tutar:"+toplam+"TL";
                repeaterurunalan.DataSource = ent.sepet.OrderByDescending(p => p.sepetid).Where(p => p.musterifkid == musteriid).ToList();
                repeaterurunalan.EnableViewState = true;
                repeaterurunalan.DataBind();
                
                if (!String.IsNullOrEmpty(id))
                {
                string adet = Request.QueryString["AdetSayisi"];
                string stok = Request.QueryString["urunstok"];
                string birimfiyat = Request.QueryString["urunbirimfiyat"];
                string urunad = Request.QueryString["urunadi"];
                string urunresmi = Request.QueryString["urununresmi"];

                int toplamhesap = int.Parse(adet) * int.Parse(birimfiyat);

                sepet.musterifkid = int.Parse(Session["musteriid"].ToString());
                sepet.urunadet = int.Parse(adet);
                sepet.urunfkid = int.Parse(id);
                sepet.urunadi = urunad;
                sepet.urunresimi = urunresmi;
                sepet.fiyat = toplamhesap;
                sepet.urunfiyat = int.Parse(birimfiyat);
                var değer = sepet1.SepetEkle(sepet);

                int toplam2 = 0;
                var sepettutar= ent.sepet.OrderBy(p => p.sepetid).Where(p => p.musterifkid == musteriid).ToList();
                    for (int i = 0; i < sepettutar.Count; i++)
                {
                    toplam2 = toplam2 + int.Parse(sepettutar[i].fiyat.ToString());
                }
                ToplamTutar.Text = "Sepet Tutar:"+toplam2+"TL";
                repeaterurunalan.DataSource = ent.sepet.OrderByDescending(p => p.sepetid).Where(p => p.musterifkid == musteriid).ToList();
                repeaterurunalan.DataBind();

                }
                    
               


            }



        }

        protected void SiparisEkranınaGec_Click(object sender, EventArgs e)
        {
           
            Response.Redirect("GonderimAdres.aspx");
        }
    }
}