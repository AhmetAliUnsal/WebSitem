using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WebSitem.Business
{
    public class Siparis
    {
        public string SiparisEkle(WebSitem.DataAccess.siparis siparis)
        {
            WebSitem.DataAccess.websayfaEntities ekle = new DataAccess.websayfaEntities();
            WebSitem.DataAccess.siparis siparis1 = new DataAccess.siparis();

            siparis1.musterifkid = siparis.musterifkid;
            siparis1.urunfkid = siparis.urunfkid;
            siparis1.urunadi = siparis.urunadi;
            siparis1.urunbirimfiyati = siparis.urunbirimfiyati;
            siparis1.urunadet = siparis.urunadet;
            siparis1.urunresmi = siparis.urunresmi;
            siparis1.toplamfiyat = siparis.toplamfiyat;
            siparis1.faturaadresfkid = siparis.faturaadresfkid;
            siparis1.gonderimadresfkid = siparis.gonderimadresfkid;
            siparis1.odemetipifkid = siparis.odemetipifkid;
            siparis1.siparistarihi = System.DateTime.Now;
            ekle.siparis.Add(siparis1);
            ekle.SaveChanges();
            return "1";
            

        }
    }
}
