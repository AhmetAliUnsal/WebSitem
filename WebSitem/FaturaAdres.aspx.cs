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
    }
}