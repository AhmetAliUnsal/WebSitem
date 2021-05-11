using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebSitem
{
    public partial class FaturaAdres : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["mail"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            else
            {
                if (!Page.IsPostBack)
                {
                    WebSitem.Business.Adres nesne = new WebSitem.Business.Adres();

                    ListItemCollection options = new ListItemCollection();
                    this.dropdownil.DataSource = options;
                    options.Add(new ListItem("Seçiniz", "Seçiniz"));
                    var ilYaz = nesne.IlGetir();
                    for (int i = 0; i < ilYaz.Count; i++)
                    {
                        options.Add(new ListItem(ilYaz[i].ilad, ilYaz[i].ilid.ToString()));
                        this.dropdownil.DataSource = options;

                    }
                    this.dropdownil.DataBind();

                }
               
            }
            
        }

        protected void dropdownil_SelectedIndexChanged(object sender, EventArgs e)
        {
            WebSitem.Business.Adres nesne = new WebSitem.Business.Adres();
            if (dropdownil.SelectedItem.Value == "Seçiniz")
            {
                dropdownilce.Items.Clear();
            }
            else
            {
                ListItemCollection options2 = new ListItemCollection();
                var getirilecekil = dropdownil.SelectedItem.Value.Trim();
                var ilceYaz = nesne.IlceGetir(getirilecekil);
                for (int i = 0; i < ilceYaz.Count; i++)
                {
                    options2.Add(new ListItem(ilceYaz[i].ilcead, ilceYaz[i].ilceid.ToString()));
                    this.dropdownilce.DataSource = options2;
                }
                this.dropdownilce.DataBind();
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            WebSitem.Business.musteri nesne1 = new WebSitem.Business.musteri();
            WebSitem.Business.Adres nesne2 = new WebSitem.Business.Adres();
            WebSitem.DataAccess.faturaadres ekle = new WebSitem.DataAccess.faturaadres();

            var musterimail = Session["mail"].ToString();
            var Musteriid = nesne1.MusteriIdSorgula(musterimail);
            var ilid = nesne2.ilidgetir(dropdownil.SelectedItem.Value);
            var ilceid = nesne2.ilceidgetir(dropdownilce.SelectedItem.Value);

            ekle.musterifkid = int.Parse(Musteriid);
            ekle.faturaadres1 = address.Text;
            ekle.faturakad = first_name.Text;
            ekle.faturasoyad = last_name.Text;
            ekle.faturatel = phone_number.Text;
            ekle.ilfkid = int.Parse(ilid);
            ekle.ilcefkid = int.Parse(ilceid);
            var değer = nesne2.FaturaAdresEkle(ekle);


            if (değer == "1")
            {
                FaturaEkleSonuc.Text = "Fatura Adresiniz Başarılı Bir Şekilde Eklenildi";
                System.Threading.Thread.Sleep(50);
                Response.Redirect("Siparislerim.aspx");
            }
            else
            {
                FaturaEkleSonuc.Text = "İşlerde Terslik Oluştu Tekrar Deneyiniz!";
            }
        }
    }
}