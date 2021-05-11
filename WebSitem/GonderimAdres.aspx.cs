using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebSitem
{
    public partial class GonderimAdres : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Button1.Visible = true;
            SistemKayit.Visible = true;
            FaturaAdresEkleme.Visible = true;
            KayitEdilme.Visible = true;
            FaturaAdresKayit.Visible = true;
            Guncelle.Visible = false;
            if (Session["mail"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            else
            {
                WebSitem.Business.Adres gonder = new Business.Adres();
                int id = int.Parse(Session["musteriid"].ToString());
                var veri = gonder.GetBygonderimadres(id);
                if (!Page.IsPostBack)
                {
                    if (veri!=null)
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

                        var gelenil = gonder.iladGetir(int.Parse(veri.ilfkid.ToString()));
                        first_name.Text = veri.alıcıadı;
                        last_name.Text = veri.alıcısoyadı;
                        phone_number.Text = veri.alıcıtelefon;
                        address.Text = veri.gonderimadres1;
                        dropdownil.Items.FindByValue(gelenil.ToString()).Selected = true;
                        dropdownil_SelectedIndexChanged(gelenil,e);
                        Button1.Visible = false;
                        Guncelle.Visible = true;
                        SistemKayit.Visible = false;
                        FaturaAdresEkleme.Visible = false;
                        KayitEdilme.Visible = false;
                        FaturaAdresKayit.Visible = false;

                    }
                    else
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
            

        }

        protected void dropdownil_SelectedIndexChanged(object sender, EventArgs e)
        {
            WebSitem.Business.Adres gonder = new Business.Adres();
            int id = int.Parse(Session["musteriid"].ToString());
            var veri = gonder.GetBygonderimadres(id);
            if (veri != null)
            {
                WebSitem.Business.Adres nesne = new WebSitem.Business.Adres();
                var gelenilce = gonder.ilceadgetir(int.Parse(veri.ilcefkid.ToString()));
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
                    dropdownilce.Items.FindByValue(gelenilce.ToString()).Selected = true;
                }
            }
            else
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
            
            
           

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            WebSitem.Business.Adres nesne2 = new WebSitem.Business.Adres();
            WebSitem.DataAccess.gonderimadres ekle = new WebSitem.DataAccess.gonderimadres();
            WebSitem.DataAccess.faturaadres nesne = new WebSitem.DataAccess.faturaadres();
            var Musteriid = Session["musteriid"].ToString();
            var ilid = nesne2.ilidgetir(dropdownil.SelectedItem.Value);
            var ilceid = nesne2.ilceidgetir(dropdownilce.SelectedItem.Value);

            ekle.musterifkid = int.Parse(Musteriid);
            ekle.gonderimadres1 = address.Text;
            ekle.alıcıadı = first_name.Text;
            ekle.alıcısoyadı = last_name.Text;
            ekle.alıcıtelefon = phone_number.Text;
            ekle.ilfkid = int.Parse(ilid);
            ekle.ilcefkid = int.Parse(ilceid);
            var değer = nesne2.GonderimAdresEkle(ekle);
            if (FaturaAdresEkleme.Checked == true)
            {
                nesne.musterifkid = int.Parse(Musteriid);
                nesne.faturaadres1 = address.Text;
                nesne.faturakad = first_name.Text;
                nesne.faturasoyad = last_name.Text;
                nesne.faturatel = phone_number.Text;
                nesne.ilfkid = int.Parse(ilid);
                nesne.ilcefkid = int.Parse(ilceid);
                var sonuc = nesne2.FaturaAdresEkle(nesne);
                if (sonuc == "1")
                {
                    EklemeSonuc.Text = "Gonderim Ve Fatura Adres Eklenildi!";

                }
                else
                {
                    EklemeSonuc.Text = "Gonderim Ve Fatura Adresi Eklenemedi!";
                }
            }
            else
            {
                if (değer == "1")
                {
                    EklemeSonuc.Text = "Gonderim Adresiniz Başarılı Bir Şekilde Eklenildi";
                    System.Threading.Thread.Sleep(50);
                    Response.Redirect("FaturaAdres.aspx");
                }
                else
                {
                    EklemeSonuc.Text = "İşlerde Terslik Oluştu Tekrar Deneyiniz!";
                }

            }
           
           




        }

        protected void Guncelle_Click(object sender, EventArgs e)
        {

        }
    }
}