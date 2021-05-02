using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;

namespace WebSitem.Business
{
    public class Urun
    {
        public string UrunEkle(WebSitem.DataAccess.urun urun)
        {
            WebSitem.DataAccess.websayfaEntities ekle = new DataAccess.websayfaEntities();
            WebSitem.DataAccess.urun yeni = new DataAccess.urun();

            yeni.durumfkid = urun.durumfkid;
            yeni.urunkategorifkid=urun.urunkategorifkid;
            yeni.urunadi=urun.urunadi;
            yeni.urunbirimfiyat = urun.urunbirimfiyat;
            yeni.urunresimadres = urun.urunresimadres;
            yeni.urunstok = urun.urunstok;
            ekle.urun.Add(yeni);
            ekle.SaveChanges();
            return "1";
            
        }
    }
}
