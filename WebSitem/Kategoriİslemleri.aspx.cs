using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebSitem
{
    public partial class Kategoriİslemleri : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["kullanici"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            else if (Session["kullanici"].ToString() == "admin")
            {
                if (!Page.IsPostBack)
                {
                    dropdownkategori.Items.Clear();
                    WebSitem.Business.Kategori nesne2 = new Business.Kategori();

                    ListItemCollection options2 = new ListItemCollection();
                    this.dropdownkategori.DataSource = options2;
                    options2.Add(new ListItem("Seçiniz", "Seçiniz"));
                    var DurumYaz = nesne2.KategoriGetir();

                    for (int i = 0; i < DurumYaz.Count; i++)
                    {
                        options2.Add(new ListItem(DurumYaz[i].kategoriad, DurumYaz[i].kategoriid.ToString()));
                        this.dropdownkategori.DataSource = options2;

                    }
                    this.dropdownkategori.DataBind();
                }
                



            }
            else
            {
                Response.Redirect("Default.aspx");
            }
        }

        protected void KategoriEkle_Click(object sender, EventArgs e)
        {
            dropdownkategori.Items.Clear();
            if (kategoriad.Text == "")
            {
                EklemeSonuc.Text = "Ekleme Başarısız.Tekrar Deneyiniz!!";
            }
            else
            {
                WebSitem.Business.Kategori nesne = new WebSitem.Business.Kategori();
                WebSitem.DataAccess.kategori nesne1 = new WebSitem.DataAccess.kategori();

                nesne1.kategoriad = kategoriad.Text;
                var değer = nesne.KategoriEkle(nesne1);

                if (değer == "1")
                {
                    TextboxTemizle(this);
                    EklemeSonuc.Text = "Ekleme Başarılı";
                }
                else
                {
                    EklemeSonuc.Text = "Ekleme Başarısız.Tekrar Deneyiniz!!";
                }
            }
           
        }

        protected void KategoriSil_Click(object sender, EventArgs e)
        {
            WebSitem.Business.Kategori durum = new WebSitem.Business.Kategori();
            WebSitem.DataAccess.kategori sil = new WebSitem.DataAccess.kategori();

            var sec = dropdownkategori.SelectedItem.Text;
            if (sec == null)
            {
                SilSonuc.Text = "Seçilen Kategori Olmadığı için Silinemedi";
            }
            else
            {
                var sonuc = durum.KategoriSil(sec);
                if (sonuc == "1")
                {
                    dropdownkategori.Items.Clear();
                    SilSonuc.Text = "Başarılı Bir Şekilde Silindi";
                }
                else
                {
                    SilSonuc.Text = "Silinemedi Tekrar Deneyiniz!!";
                }
            }
        }

        protected void KategoriListele_Click(object sender, EventArgs e)
        {
            dropdownkategori.Items.Clear();
            WebSitem.Business.Kategori nesne2 = new Business.Kategori();

            ListItemCollection options = new ListItemCollection();
            this.dropdownkategori.DataSource = options;
            options.Add(new ListItem("Seçiniz", "Seçiniz"));
            var DurumYaz = nesne2.KategoriGetir();

            for (int i = 0; i < DurumYaz.Count; i++)
            {
                options.Add(new ListItem(DurumYaz[i].kategoriad, DurumYaz[i].kategoriid.ToString()));
                this.dropdownkategori.DataSource = options;

            }
            this.dropdownkategori.DataBind();
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