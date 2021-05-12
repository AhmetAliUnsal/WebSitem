using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WebSitem.Business
{
    public class Sepet
    {
        public string SepetEkle(WebSitem.DataAccess.sepet sepet)
        {
            WebSitem.DataAccess.websayfaEntities ekle = new DataAccess.websayfaEntities();
            WebSitem.DataAccess.sepet sepetekle = new DataAccess.sepet();

            var ara = ekle.sepet.Where(p => p.urunfkid == sepet.urunfkid && p.musterifkid==sepet.musterifkid).FirstOrDefault();
            if(ara != null)
            {
                return "";
            }
            else
            {
                sepetekle.musterifkid = sepet.musterifkid;
                sepetekle.urunadet = sepet.urunadet;
                sepetekle.urunfkid = sepet.urunfkid;
                sepetekle.fiyat = sepet.fiyat;
                sepetekle.urunadi = sepet.urunadi;
                sepetekle.urunresimi = sepet.urunresimi;
                sepetekle.urunfiyat = sepet.urunfiyat;
                ekle.sepet.Add(sepetekle);
                ekle.SaveChanges();
                return "1";
            }
            
        }
        public string SepetUrunSil(int id)
        {
            WebSitem.DataAccess.websayfaEntities ent = new DataAccess.websayfaEntities();
            WebSitem.DataAccess.sepet sepet = new DataAccess.sepet();

            var ara = ent.sepet.Where(p => p.sepetid == id).FirstOrDefault();
            ent.sepet.Remove(ara);
            ent.SaveChanges();

            return "1";
        }

        public string SepetGuncelle(int a,WebSitem.DataAccess.sepet nesne)
        {
            WebSitem.DataAccess.websayfaEntities ent = new DataAccess.websayfaEntities();
            WebSitem.DataAccess.sepet sepet = new DataAccess.sepet();

            var ara = ent.sepet.Where(p => p.sepetid == a).FirstOrDefault();
            ara.musterifkid = nesne.musterifkid;
            ara.urunfkid = nesne.urunfkid;
            ara.urunadet = nesne.urunadet;
            ara.fiyat = nesne.fiyat;
            ara.urunadi = nesne.urunadi;
            ara.urunresimi = nesne.urunresimi;
            ara.urunfiyat = nesne.urunfiyat;

            ent.SaveChanges();
            return "1";
        }
    }
}
