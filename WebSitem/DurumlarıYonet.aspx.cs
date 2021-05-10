using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebSitem
{
    public partial class DurumlarıYonet : System.Web.UI.Page
    {
       
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["kullanici"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            else if (Session["kullanici"].ToString() == "admin")
            {
                if (!Page.IsPostBack)
                {
                    dropdowndurum.Items.Clear();
                    WebSitem.Business.Durum nesne2 = new Business.Durum();

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
                    

                
                
            }
            else
            {
                Response.Redirect("Default.aspx");
            }
}

        protected void DurumListele_Click(object sender, EventArgs e)
        {
            dropdowndurum.Items.Clear();
            WebSitem.Business.Durum nesne2 = new Business.Durum();

            ListItemCollection options = new ListItemCollection();
            this.dropdowndurum.DataSource = options;
            options.Add(new ListItem("Seçiniz", "Seçiniz"));
            var DurumYaz = nesne2.DurumGetir();

            for (int i = 0; i < DurumYaz.Count; i++)
            {
                options.Add(new ListItem(DurumYaz[i].durumad, DurumYaz[i].durumid.ToString()));
                this.dropdowndurum.DataSource = options;

            }
            this.dropdowndurum.DataBind();
        }

        protected void DurumSil_Click(object sender, EventArgs e)
        {
            WebSitem.Business.Durum durum = new WebSitem.Business.Durum();
            WebSitem.DataAccess.durum sil = new WebSitem.DataAccess.durum();

            var secilen = dropdowndurum.SelectedItem.Value;
            if (secilen == null)
            {
                SilSonuc.Text = "Seçilen Durum Olmadığı için Silinemedi";
            }
            else
            {
                var sonuc = durum.DurumSil(secilen);
                if (sonuc == "1")
                {
                    dropdowndurum.Items.Clear();
                    SilSonuc.Text = "Başarılı Bir Şekilde Silindi";
                }
                else
                {
                    SilSonuc.Text = "Silinemedi Tekrar Deneyiniz!!";
                }
            }

        }

        protected void DurumEkle_Click(object sender, EventArgs e)
        {
            dropdowndurum.Items.Clear();
            WebSitem.Business.Durum nesne = new WebSitem.Business.Durum();
            WebSitem.DataAccess.durum nesne1 = new WebSitem.DataAccess.durum();

            nesne1.durumad = durum_ad.Text;
            var değer = nesne.DurumEkle(nesne1);

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