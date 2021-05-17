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
            //Button1.Visible = true;
            //Guncelle.Visible = false;
            if (Session["mail"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            else
            {
                WebSitem.Business.Adres gonder = new Business.Adres();
                int id = int.Parse(Session["musteriid"].ToString());
                var veri = gonder.GetByfaturaadres(id);

                if (!Page.IsPostBack)
                {
                    if (veri != null)
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
                        first_name.Text = veri.faturakad;
                        last_name.Text = veri.faturasoyad;
                        phone_number.Text = veri.faturatel;
                        address.Text = veri.faturaadres1;
                        dropdownil.Items.FindByValue(gelenil.ToString()).Selected = true;
                        dropdownil_SelectedIndexChanged(gelenil, e);
                        Button1.Visible = false;
                        Guncelle.Visible = true;
                        siparis.Visible = true;
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
            var veri = gonder.GetByfaturaadres(id);
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
                    if (!Page.IsPostBack)
                    {
                        dropdownilce.Items.FindByValue(gelenilce.Trim()).Selected = true;
                    }

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
            WebSitem.DataAccess.faturaadres ekle = new WebSitem.DataAccess.faturaadres();

            var Musteriid = Session["musteriid"].ToString();
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

        protected void Guncelle_Click(object sender, EventArgs e)
        {
            WebSitem.Business.Adres adres = new Business.Adres();
            WebSitem.DataAccess.faturaadres guncel = new DataAccess.faturaadres();

            var ilid = adres.ilidgetir(dropdownil.SelectedItem.Value);
            var ilceid = adres.ilceidgetir(dropdownilce.SelectedItem.Value);

            guncel.faturakad = first_name.Text;
            guncel.faturasoyad = last_name.Text;
            guncel.faturatel = phone_number.Text;
            guncel.faturaadres1 = address.Text;
            guncel.ilcefkid = int.Parse(ilceid);
            guncel.musterifkid = int.Parse(Session["musteriid"].ToString());
            guncel.ilfkid = int.Parse(ilid);

            var değer = adres.FaturaAdresGuncelle(guncel);
            if (değer == "1")
            {
                FaturaEkleSonuc.Text = "Başarıyla Güncellendi.";
            }
            else
            {
                FaturaEkleSonuc.Text = "Başarısız!!! Tekrar Deneyiniz!";
                Response.Redirect("FaturaAdres.aspx");
            }
        }


        protected void siparis_Click(object sender, EventArgs e)
        {
            WebSitem.DataAccess.websayfaEntities ent = new DataAccess.websayfaEntities();
            WebSitem.DataAccess.siparis siparis = new DataAccess.siparis();
            WebSitem.Business.Siparis siparis1 = new Business.Siparis();
            WebSitem.Business.Adres adres = new Business.Adres();
            WebSitem.Business.Sepet sepet = new Business.Sepet();

            int musteriid = int.Parse(Session["musteriid"].ToString());
            int gonderimadresid = adres.gonderimadresidGetir(musteriid);
            int faturaadresid = adres.faturaadresidGetir(musteriid);
            var urunler = ent.sepet.OrderBy(p => p.sepetid).Where(p => p.musterifkid == musteriid).ToList();

            for (int i = 0; i < urunler.Count; i++)
            {
                siparis.toplamfiyat = urunler[i].fiyat;
                siparis.musterifkid = musteriid;
                siparis.urunfkid = urunler[i].urunfkid;
                siparis.urunadi = urunler[i].urunadi;
                siparis.urunbirimfiyati = urunler[i].urunfiyat;
                siparis.urunadet = urunler[i].urunadet;
                siparis.urunresmi = urunler[i].urunresimi;
                siparis.toplamfiyat = urunler[i].fiyat;
                siparis.faturaadresfkid = faturaadresid;
                siparis.gonderimadresfkid = gonderimadresid;
                siparis.odemetipifkid = 1;
                var deger = siparis1.SiparisEkle(siparis);

            }
            for(int k = 0; k < urunler.Count; k++)
            {
                sepet.SepetUrunSil(urunler[k].sepetid);
            }

            Response.Redirect("Siparislerim.aspx");
        }
    }
}