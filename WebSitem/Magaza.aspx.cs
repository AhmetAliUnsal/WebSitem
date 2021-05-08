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
        WebSitem.DataAccess.websayfaEntities ent = new DataAccess.websayfaEntities();
        protected void Page_Load(object sender, EventArgs e)
        {

            rpturun.DataSource = ent.urun.OrderByDescending(p => p.urunid).ToList();
            rpturun.DataBind();

        }

        protected void KategoriSırala_Click(object sender, EventArgs e)
        {
            HatalariYaz.Text = "";
            if(CheckBoxAll.Checked==true)
            {
                rpturun.DataSource = ent.urun.OrderByDescending(p => p.urunid).ToList();
                rpturun.DataBind();
            }
            else if (CheckBoxMeyve.Checked == true && CheckBoxAgac.Checked == true && CheckBoxTropikal.Checked == true && CheckBoxCicek.Checked==true)
            {
                rpturun.DataSource = ent.urun.OrderByDescending(p => p.urunid).ToList();
                rpturun.DataBind();
            }
            else if (CheckBoxMeyve.Checked == true && CheckBoxAgac.Checked == true && CheckBoxTropikal.Checked==true)
            {
                rpturun.DataSource = ent.urun.OrderByDescending(p => p.urunid).Where(p => p.urunkategorifkid == 1 || p.urunkategorifkid == 3 || p.urunkategorifkid==2).ToList();
                rpturun.DataBind();
            }
            else if (CheckBoxMeyve.Checked == true && CheckBoxAgac.Checked == true && CheckBoxCicek.Checked == true)
            {
                rpturun.DataSource = ent.urun.OrderByDescending(p => p.urunid).Where(p => p.urunkategorifkid == 1 || p.urunkategorifkid == 3 || p.urunkategorifkid == 4).ToList();
                rpturun.DataBind();
            }
            else if (CheckBoxMeyve.Checked == true && CheckBoxCicek.Checked == true && CheckBoxTropikal.Checked == true)
            {
                rpturun.DataSource = ent.urun.OrderByDescending(p => p.urunid).Where(p => p.urunkategorifkid == 1 || p.urunkategorifkid == 4 || p.urunkategorifkid == 2).ToList();
                rpturun.DataBind();
            }
            else if (CheckBoxCicek.Checked == true && CheckBoxAgac.Checked == true && CheckBoxTropikal.Checked == true)
            {
                rpturun.DataSource = ent.urun.OrderByDescending(p => p.urunid).Where(p => p.urunkategorifkid == 4 || p.urunkategorifkid == 3 || p.urunkategorifkid == 2).ToList();
                rpturun.DataBind();
            }
            else if (CheckBoxMeyve.Checked == true && CheckBoxAgac.Checked==true)
            {
                rpturun.DataSource = ent.urun.OrderByDescending(p => p.urunid).Where(p => p.urunkategorifkid == 1 || p.urunkategorifkid==3).ToList();
                rpturun.DataBind();
            }
            else if (CheckBoxMeyve.Checked == true && CheckBoxTropikal.Checked == true)
            {
                rpturun.DataSource = ent.urun.OrderByDescending(p => p.urunid).Where(p => p.urunkategorifkid == 1 || p.urunkategorifkid==2).ToList();
                rpturun.DataBind();
            }
            else if (CheckBoxMeyve.Checked == true && CheckBoxCicek.Checked == true)
            {
                rpturun.DataSource = ent.urun.OrderByDescending(p => p.urunid).Where(p => p.urunkategorifkid == 1 || p.urunkategorifkid==4).ToList();
                rpturun.DataBind();
            }
            else if (CheckBoxAgac.Checked == true && CheckBoxTropikal.Checked == true)
            {
                rpturun.DataSource = ent.urun.OrderByDescending(p => p.urunid).Where(p => p.urunkategorifkid == 3 || p.urunkategorifkid==2).ToList();
                rpturun.DataBind();
            }
            else if (CheckBoxAgac.Checked == true && CheckBoxCicek.Checked == true)
            {
                rpturun.DataSource = ent.urun.OrderByDescending(p => p.urunid).Where(p => p.urunkategorifkid == 3 || p.urunkategorifkid==4).ToList();
                rpturun.DataBind();
            }
            else if (CheckBoxTropikal.Checked == true && CheckBoxCicek.Checked == true)
            {
                rpturun.DataSource = ent.urun.OrderByDescending(p => p.urunid).Where(p => p.urunkategorifkid == 2 || p.urunkategorifkid==4).ToList();
                rpturun.DataBind();
            }
            else if (CheckBoxMeyve.Checked == true)
            {
                rpturun.DataSource = ent.urun.OrderByDescending(p => p.urunid).Where(p => p.urunkategorifkid == 1).ToList();
                rpturun.DataBind();
            }
            else if(CheckBoxAgac.Checked == true)
            {
                rpturun.DataSource = ent.urun.OrderByDescending(p => p.urunid).Where(p=>p.urunkategorifkid==3).ToList();
                rpturun.DataBind();
            }
            else if (CheckBoxTropikal.Checked == true)
            {
                rpturun.DataSource = ent.urun.OrderByDescending(p => p.urunid).Where(p => p.urunkategorifkid == 2).ToList();
                rpturun.DataBind();
            }
            else if (CheckBoxCicek.Checked == true)
            {
                rpturun.DataSource = ent.urun.OrderByDescending(p => p.urunid).Where(p => p.urunkategorifkid == 4).ToList();
                rpturun.DataBind();
            }
            else
            {
                HatalariYaz.Text = "Seçim Yapılmadı. Seçim yaparak devam ediniz!!!";
            }
        }

        protected void Urunsirala_Click(object sender, EventArgs e)
        {
            HatalariYaz.Text = "";
            if (CheckBoxFiyatDY.Checked==true && CheckBoxFiyatYD.Checked == true)
            {
                HatalariYaz.Text = "Fiyatları Hem Düşükten Yükseğe Doğru Hemde Yüksekten Düşüğe Doğru Sıralayamazsınız! Sadece Birisini Seçiniz!";
            }else if (CheckBoxisimAZ.Checked==true && CheckBoxisimZA.Checked == true)
            {
                HatalariYaz.Text = "Ürünleri isimlerine Göre Hem A'dan Z'ye Hem de Z'den A'ya sıralayamazsınız! Sadece Bir tane Seçerek Devam Ediniz!";
            }
            else if(CheckBoxFiyatDY.Checked==true && CheckBoxisimAZ.Checked == true && CheckBoxFiyatYD.Checked == false && CheckBoxisimZA.Checked == false)
            {
                rpturun.DataSource = ent.urun.OrderBy(p => p.urunbirimfiyat).OrderBy(p=>p.urunadi).ToList();
                rpturun.DataBind();
            }
            else if (CheckBoxFiyatDY.Checked == true && CheckBoxisimZA.Checked == true && CheckBoxFiyatYD.Checked == false && CheckBoxisimAZ.Checked == false)
            {
                rpturun.DataSource = ent.urun.OrderBy(p => p.urunbirimfiyat).OrderByDescending(p => p.urunadi).ToList();
                rpturun.DataBind();
            }
            else if (CheckBoxFiyatYD.Checked == true && CheckBoxisimAZ.Checked == true && CheckBoxFiyatDY.Checked == false && CheckBoxisimZA.Checked == false)
            {
                rpturun.DataSource = ent.urun.OrderByDescending(p => p.urunbirimfiyat).OrderBy(p => p.urunadi).ToList();
                rpturun.DataBind();
            }
            else if (CheckBoxFiyatYD.Checked == true && CheckBoxisimZA.Checked == true && CheckBoxFiyatDY.Checked == false && CheckBoxisimAZ.Checked == false)
            {
                rpturun.DataSource = ent.urun.OrderByDescending(p => p.urunbirimfiyat).OrderByDescending(p => p.urunadi).ToList();
                rpturun.DataBind();
            }
            else if (CheckBoxFiyatDY.Checked == true && CheckBoxisimAZ.Checked == false && CheckBoxFiyatYD.Checked == false && CheckBoxisimZA.Checked == false)
            {
                rpturun.DataSource = ent.urun.OrderBy(p => p.urunbirimfiyat).ToList();
                rpturun.DataBind();
            }
            else if (CheckBoxFiyatYD.Checked == true && CheckBoxisimAZ.Checked == false && CheckBoxFiyatDY.Checked == false && CheckBoxisimZA.Checked == false)
            {
                rpturun.DataSource = ent.urun.OrderByDescending(p => p.urunbirimfiyat).ToList();
                rpturun.DataBind();
            }
            else if (CheckBoxisimAZ.Checked == true && CheckBoxFiyatYD.Checked == false && CheckBoxisimZA.Checked == false && CheckBoxFiyatDY.Checked == false)
            {
                rpturun.DataSource = ent.urun.OrderBy(p => p.urunadi).ToList();
                rpturun.DataBind();
            }
            else if (CheckBoxisimZA.Checked == true && CheckBoxisimAZ.Checked == false && CheckBoxFiyatYD.Checked == false && CheckBoxFiyatDY.Checked == false)
            {
                rpturun.DataSource = ent.urun.OrderByDescending(p => p.urunadi).ToList();
                rpturun.DataBind();
            }
            else
            {
                HatalariYaz.Text = "Seçim Yapılmadı. Seçim yaparak devam ediniz!!!";
            }

        }


        
    }
}