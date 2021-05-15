using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebSitem
{
    public partial class Siparislerim : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["musteriid"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            else
            {
                WebSitem.DataAccess.websayfaEntities ent = new DataAccess.websayfaEntities();

                int musteriid = int.Parse(Session["musteriid"].ToString());
                repeaterurunalan.DataSource = ent.siparis.OrderByDescending(p => p.siparisid).Where(p => p.musterifkid == musteriid).ToList();
                repeaterurunalan.DataBind();
            }
                
        }
    }
}