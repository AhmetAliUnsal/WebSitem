using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebSitem
{
    public partial class UrunEkle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            WebSitem.Business.

            ListItemCollection options = new ListItemCollection();
            this.dropdownkategori.DataSource = options;
            options.Add(new ListItem("Seçiniz", "Seçiniz"));
            var ilYaz = nesne.IlGetir();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }
    }
}