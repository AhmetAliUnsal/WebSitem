using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace WebSitem
{
    public partial class veri_tabanı_deneme : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            WebSitem.Business.musteri veri = new Business.musteri();
            var sonuc = veri.Listele();
            GridView1.DataSource = sonuc;
            GridView1.DataBind();
        }
    }
}