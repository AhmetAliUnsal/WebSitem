using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebSitem
{
    public partial class Urunİslemleri : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            WebSitem.DataAccess.websayfaEntities ent = new DataAccess.websayfaEntities();
            WebSitem.DataAccess.urun urun = new DataAccess.urun();
            WebSitem.Business.Urun urun1 = new Business.Urun();

            string silinecekurunid = Request.QueryString["Silinecekurunid"];
            if (!String.IsNullOrEmpty(silinecekurunid))
            {
                urun1.UrunSil(int.Parse(silinecekurunid));
            }

            repeaterurunalan.DataSource = ent.urun.OrderByDescending(p => p.urunid).ToList();
            repeaterurunalan.DataBind();

        }
    }
}