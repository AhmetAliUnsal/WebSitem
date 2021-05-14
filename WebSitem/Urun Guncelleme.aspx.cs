using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.IO;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebSitem
{
    public partial class Urun_Guncelleme : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            WebSitem.Business.Urun urun = new WebSitem.Business.Urun();
            WebSitem.Business.Kategori kategori = new Business.Kategori();
            WebSitem.Business.Durum durum = new Business.Durum();

            if (Session["kullanici"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            else if (Session["kullanici"].ToString() == "admin")
            {

                if (!Page.IsPostBack)
                {
                    string guncellenecekurun = Request.QueryString["urunidsi"];
                    string gelenresimurl = Request.QueryString["resimadres"];
                    if (!String.IsNullOrEmpty(guncellenecekurun))
                    {
                        var sonuc = urun.GetByurunid(int.Parse(guncellenecekurun));
                        var gelenkaetoriad = kategori.KategoriaddBul(int.Parse(sonuc.urunkategorifkid.ToString()));
                        var gelendurumad = durum.DurumadBul(int.Parse(sonuc.durumfkid.ToString()));

                        Image1.ImageUrl = gelenresimurl;
                        urun_ad.Text = sonuc.urunadi;
                        urun_fiyat.Text = sonuc.urunbirimfiyat.ToString();
                        urun_stok.Text = sonuc.urunstok.ToString();

                        ListItemCollection options = new ListItemCollection();
                        this.dropdownkategori.DataSource = options;
                        var kategoriekle = kategori.KategoriGetir();
                        for (int i = 0; i < kategoriekle.Count; i++)
                        {
                            options.Add(new ListItem(kategoriekle[i].kategoriad, kategoriekle[i].kategoriid.ToString()));
                            this.dropdownkategori.DataSource = options;

                        }
                        this.dropdownkategori.DataBind();

                        dropdownkategori.Items.FindByValue(gelenkaetoriad).Selected = true;

                        ListItemCollection options2 = new ListItemCollection();
                        this.dropdowndurum.DataSource = options2;
                        var durumekle = durum.DurumGetir();
                        for (int i = 0; i < durumekle.Count; i++)
                        {
                            options2.Add(new ListItem(durumekle[i].durumad, durumekle[i].durumid.ToString()));
                            this.dropdowndurum.DataSource = options2;

                        }
                        this.dropdowndurum.DataBind();

                        dropdowndurum.Items.FindByValue(gelendurumad).Selected = true;
                    }
                       

                }

            }


        }

        protected void Guncelle_Click(object sender, EventArgs e)
        {
            WebSitem.Business.Urun urun = new WebSitem.Business.Urun();
            WebSitem.Business.Kategori kategori = new Business.Kategori();
            WebSitem.Business.Durum durum = new Business.Durum();
            WebSitem.DataAccess.urun ekle = new WebSitem.DataAccess.urun();

            string gelenresimurl1 = Request.QueryString["resimadres"];
            string guncellenecekurun = Request.QueryString["urunidsi"];
            if (!String.IsNullOrEmpty(guncellenecekurun))
            {
                if (FileUpload1.HasFile)
                {
                    // HasFile: Seçili dosya varmı kontrol eder.

                    string uzanti = Path.GetExtension(FileUpload1.FileName).ToLower();
                    if (uzanti == ".png" || uzanti == ".jpg" || uzanti == ".jpeg")
                    {
                        //resmi kaydet
                        FileUpload1.PostedFile.SaveAs(Server.MapPath("~/template/img/fidanlar/") + FileUpload1.FileName);

                        Session["resimadi"] = FileUpload1.FileName + uzanti;
                        ekle.urunresimadres = "/template/img/fidanlar/" + FileUpload1.FileName;
                    }
                    else
                    {
                        Label1.Text = "Resim formatı yanlış .jpg, .png, .jpeg olmalıdır.";
                    }
                }
                else
                {
                    ekle.urunresimadres = gelenresimurl1;
                }

                var kategoriid = kategori.KategoriidBul(dropdownkategori.SelectedItem.Value);
                var durumid = durum.DurumidBul(dropdowndurum.SelectedItem.Value);
                ekle.durumfkid = int.Parse(durumid);
                ekle.urunkategorifkid = int.Parse(kategoriid);
                ekle.urunstok = int.Parse(urun_stok.Text);
                ekle.urunadi = urun_ad.Text;

                ekle.urunbirimfiyat = int.Parse(urun_fiyat.Text);
                var değer = urun.UrunGuncelle(int.Parse(guncellenecekurun), ekle);
                if (değer == "1")
                {
                    EklemeSonuc.Text = "Urununuz Başarılı Bir Şekilde Güncellendi";
                    System.Threading.Thread.Sleep(50);
                }
                else
                {
                    EklemeSonuc.Text = "İşlerde Terslik Oluştu Tekrar Deneyiniz!";
                }
            }
               
        }

        protected void Geri_Click(object sender, EventArgs e)
        {
            Response.Redirect("Urunİslemleri.aspx");
        }
    }
}