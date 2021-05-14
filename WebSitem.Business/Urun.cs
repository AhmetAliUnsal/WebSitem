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
        public string UrunSil(int id)
        {
            WebSitem.DataAccess.websayfaEntities sil = new DataAccess.websayfaEntities();
            WebSitem.DataAccess.urun urun = new DataAccess.urun();

            var ara = sil.urun.Where(p => p.urunid == id).FirstOrDefault();
            sil.urun.Remove(ara);
            sil.SaveChanges();

            return "1";
        }

        public WebSitem.DataAccess.urun GetByurunid(int id)
        {
            WebSitem.DataAccess.websayfaEntities ent = new DataAccess.websayfaEntities();
            var sonuc = ent.urun.Where(p => p.urunid == id);
            return sonuc.FirstOrDefault();
        }

        public string UrunGuncelle(int a, WebSitem.DataAccess.urun nesne)
        {
            WebSitem.DataAccess.websayfaEntities ent = new DataAccess.websayfaEntities();
            WebSitem.DataAccess.urun urun = new DataAccess.urun();

            var ara = ent.urun.Where(p => p.urunid == a).FirstOrDefault();
            ara.urunadi = nesne.urunadi;
            ara.urunbirimfiyat = nesne.urunbirimfiyat;
            ara.urunkategorifkid = nesne.urunkategorifkid;
            ara.durumfkid = nesne.durumfkid;
            ara.urunstok = nesne.urunstok;
            ara.urunresimadres = nesne.urunresimadres;
            ent.SaveChanges();
            return "1";
        }
    }
}
