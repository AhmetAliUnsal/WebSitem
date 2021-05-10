using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebSitem
{
    public partial class Site : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["kullaniciad"] ==null)
            {
                Giris.Text = "Login";
                Kullanici.Visible = false;
                AdminSayfa.Visible = false;
                Logout.Visible = false;
                Sepet.Visible = false;
            }
            else
            {
                Giris.Text = Session["kullaniciad"].ToString();
                if (Session["kullanici"].ToString() == "admin")
                {
                    AdminSayfa.Visible = true;
                    Logout.Visible = true;
                    Sepet.Visible = true;
                }
                else if (Session["kullanici"].ToString() == "kullanici")
                {
                    Kullanici.Visible = true;
                    Logout.Visible = true;
                    Sepet.Visible = true;
                }
                else
                {
                    Kullanici.Visible = false;
                    AdminSayfa.Visible = false;
                    Sepet.Visible = false;
                }
            }
        }


    }
        
}