using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebSitem
{
    public partial class KullanıcıGuncelle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            WebSitem.Business.musteri musteri = new WebSitem.Business.musteri();
            if (Session["musteriid"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            else
            {
                if (Session["kullanici"].ToString() == "admin")
                {
                    if (!Page.IsPostBack)
                    {
                        string GuncelenecekKullanıcı = Request.QueryString["guncellenecekkullanici"];
                        if (!String.IsNullOrEmpty(GuncelenecekKullanıcı))
                        {
                            var sonuc = musteri.GetBymusteriid(int.Parse(GuncelenecekKullanıcı));
                            kullaniciadsoyad.Text = sonuc.musteriadi;
                            kullanicitcno.Text = sonuc.musteriTc;
                            kullanicimail.Text = sonuc.musteriemail;
                            kullanicitel.Text = sonuc.musteritel;
                            kullanicisifre1.Text = sonuc.musterisifre;

                            var gelenkullanicitur = sonuc.musteritur;
                            ListItemCollection options = new ListItemCollection();
                            this.dropdownKullanıcıtur.DataSource = options;
                            options.Add(new ListItem("admin", "admin"));
                            options.Add(new ListItem("kullanici", "kullanici"));
                            this.dropdownKullanıcıtur.DataBind();

                            dropdownKullanıcıtur.Items.FindByValue(gelenkullanicitur).Selected = true;
                        }
                    }
                }
                else
                {
                    Response.Redirect("Default.aspx");
                }
            }
           
                
        }

        protected void Guncelle_Click(object sender, EventArgs e)
        {
            WebSitem.Business.musteri musteri = new Business.musteri();
            WebSitem.DataAccess.musteri ekle = new WebSitem.DataAccess.musteri();

            string guncellenecekkullanici = Request.QueryString["guncellenecekkullanici"];
            if (!String.IsNullOrEmpty(guncellenecekkullanici))
            {
                int kullanicininid = int.Parse(guncellenecekkullanici);
                ekle.musteriadi = kullaniciadsoyad.Text;
                ekle.musteriemail = kullanicimail.Text;
                ekle.musterisifre = kullanicisifre1.Text;
                ekle.musteriTc = kullanicitcno.Text;
                ekle.musteritel = kullanicitel.Text;
                ekle.musteritur = dropdownKullanıcıtur.SelectedItem.Value;

                var değer = musteri.KullanıcıGuncelle(kullanicininid, ekle);
                if (değer == "1")
                {
                    GucellemeSonuc.Text = "Kullanıcı Başarılı Bir Şekilde Güncellendi";
                    System.Threading.Thread.Sleep(50);
                }
                else
                {
                    GucellemeSonuc.Text = "İşlerde Terslik Oluştu Tekrar Deneyiniz!";
                }
            }
        }


        protected void Geri_Click(object sender, EventArgs e)
        {
            Response.Redirect("KullanıcılarıYonet.aspx");
        }
    }
}