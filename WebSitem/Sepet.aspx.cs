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
            if (Session["musteriid"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            else
            {
                string id = Request.QueryString["urunid"];
                int musteriid = int.Parse(Session["musteriid"].ToString());

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

                    repeaterurunalan.DataSource = ent.sepet.OrderByDescending(p => p.sepetid).Where(p=>p.musterifkid==musteriid).ToList();
                    repeaterurunalan.DataBind();





                }
            }



        }
    }
}