using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace WebSitem
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        
        {
            WebSitem.DataAccess.websayfaEntities ent = new DataAccess.websayfaEntities();
            RepeaterUrun.DataSource = ent.urun.OrderByDescending(p => p.urunid).Take(4).ToList();
            RepeaterUrun.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //string baglantim = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["baglanti"].ConnectionString;
            //SqlConnection baglan = new SqlConnection(baglantim);

            //baglan.Open();

            //List<string> getir = new List<string>();

        }
    }
}