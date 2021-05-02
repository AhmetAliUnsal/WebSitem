using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;

namespace WebSitem.Business
{
    public class Durum
    {
        public List<WebSitem.DataAccess.durum> DurumGetir()
        {
            WebSitem.DataAccess.websayfaEntities ent = new DataAccess.websayfaEntities();
            var Durumlar = ent.durum.OrderBy(p => p.durumid).ToList();
            return Durumlar;
        }
        public string DurumidBul(string a)
        {
            WebSitem.DataAccess.websayfaEntities ent2 = new DataAccess.websayfaEntities();
            var durumid = ent2.durum.Where(p => p.durumad == a).FirstOrDefault();

            return durumid.durumid.ToString();

        }

        public string DurumEkle(WebSitem.DataAccess.durum nesne)
        {
            WebSitem.DataAccess.websayfaEntities ekle = new DataAccess.websayfaEntities();
            WebSitem.DataAccess.durum yeni = new DataAccess.durum();
            yeni.durumad = nesne.durumad;
            ekle.durum.Add(yeni);
            ekle.SaveChanges();
            return "1";
        }

        public string DurumSil(string a)
        {
            WebSitem.DataAccess.websayfaEntities ekle = new DataAccess.websayfaEntities();

            var ara = ekle.durum.Where(p => p.durumad == a).FirstOrDefault();
            ekle.durum.Remove(ara);
            ekle.SaveChanges();

            return "1";
        }
    }
}
