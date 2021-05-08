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
    }
}
