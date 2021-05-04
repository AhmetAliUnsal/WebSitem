using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebSitem
{
    public partial class Magaza : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            WebSitem.DataAccess.websayfaEntities ent = new DataAccess.websayfaEntities();
            rpturun.DataSource = ent.urun.OrderByDescending(p=>p.urunid).ToList();
            rpturun.DataBind();

        }
    }
}