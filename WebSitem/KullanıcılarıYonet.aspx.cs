using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebSitem
{
    public partial class KullanıcılarıYonet : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["musteriid"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            else
            {
                if (Session["kullanici"].ToString() == "admin")
                {
                    WebSitem.DataAccess.websayfaEntities ent = new DataAccess.websayfaEntities();

                    int musteriid = int.Parse(Session["musteriid"].ToString());
                    repeaterurunalan.DataSource = ent.musteri.OrderByDescending(p => p.musteriid).ToList();
                    repeaterurunalan.DataBind();
                    
                }
                else
                {
                    Response.Redirect("Default.aspx");
                }
            }
               
        }
    }
}