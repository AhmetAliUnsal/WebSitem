using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data;
using System.Data.SqlClient;

using System.Web.UI.WebControls;

namespace WebSitem
{
    public partial class UrunEkle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["kullanici"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            else if(Session["kullanici"].ToString() == "admin")
            {
                WebSitem.Business.Kategori nesne = new Business.Kategori();
                WebSitem.Business.Durum nesne2 = new Business.Durum();

                ListItemCollection options = new ListItemCollection();
                this.dropdownkategori.DataSource = options;
                options.Add(new ListItem("Seçiniz", "Seçiniz"));
                var kategoriYaz = nesne.KategoriGetir();

                for (int i = 0; i < kategoriYaz.Count; i++)
                {
                    options.Add(new ListItem(kategoriYaz[i].kategoriad, kategoriYaz[i].kategoriid.ToString()));
                    this.dropdownkategori.DataSource = options;

                }
                this.dropdownkategori.DataBind();

                ListItemCollection options2 = new ListItemCollection();
                this.dropdowndurum.DataSource = options2;
                options2.Add(new ListItem("Seçiniz", "Seçiniz"));
                var DurumYaz = nesne2.DurumGetir();

                for (int i = 0; i < DurumYaz.Count; i++)
                {
                    options2.Add(new ListItem(DurumYaz[i].durumad, DurumYaz[i].durumid.ToString()));
                    this.dropdowndurum.DataSource = options2;

                }
                this.dropdowndurum.DataBind();
            }
            else
            {
                Response.Redirect("Default.aspx");
            }
           
        }

       
        protected void Button1_Click(object sender, EventArgs e)
        {
            WebSitem.Business.Kategori kategori = new WebSitem.Business.Kategori();
            WebSitem.Business.Durum durum = new WebSitem.Business.Durum();
            WebSitem.Business.Urun urun = new WebSitem.Business.Urun();
            WebSitem.DataAccess.urun ekle = new WebSitem.DataAccess.urun();

            if (FileUpload1.HasFile)
            {
                // HasFile: Seçili dosya varmı kontrol eder.

                string uzanti = Path.GetExtension(FileUpload1.FileName).ToLower();
                if (uzanti == ".png" || uzanti == ".jpg" || uzanti == ".jpeg")
                {
                    //resmi kaydet
                    FileUpload1.PostedFile.SaveAs(Server.MapPath("~/template/img/fidanlar/") + FileUpload1.FileName );

                    Session["resimadi"] = FileUpload1.FileName + uzanti;
                }
                else
                {
                    Label1.Text = "Resim formatı yanlış .jpg, .png, .jpeg olmalıdır.";
                }
            }
            else
            {
                Label1.Text = "Ürün resmi seçmediniz.";
            }

            var kategoriid = kategori.KategoriidBul(dropdownkategori.SelectedItem.Value);
            var durumid = durum.DurumidBul(dropdowndurum.SelectedItem.Value);
        
            ekle.durumfkid = int.Parse(durumid);
            ekle.urunkategorifkid = int.Parse(kategoriid);
            ekle.urunstok= int.Parse(urun_stok.Text);
            ekle.urunadi= urun_ad.Text;
            ekle.urunresimadres= "/template/img/fidanlar/" + FileUpload1.FileName;
            ekle.urunbirimfiyat=int.Parse(urun_fiyat.Text);
            var değer = urun.UrunEkle(ekle);
            if (değer == "1")
            {
                TextboxTemizle(this);
                EklemeSonuc.Text = "Urununuz Başarılı Bir Şekilde Eklenildi";
                System.Threading.Thread.Sleep(50);
            }
            else
            {
                EklemeSonuc.Text = "İşlerde Terslik Oluştu Tekrar Deneyiniz!";
            }
        }

        public void TextboxTemizle(Control parent)
        {

            foreach (Control x in parent.Controls)
            {
                if ((x.GetType() == typeof(TextBox)))
                {
                    ((TextBox)(x)).Text = "";
                }

                if (x.HasControls())
                {
                    TextboxTemizle(x);
                }
            }
        }
    }
    }
