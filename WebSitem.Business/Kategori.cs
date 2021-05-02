using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;

namespace WebSitem.Business
{
    public class Kategori
    {
        public List<WebSitem.DataAccess.kategori> KategoriGetir()
        {
            WebSitem.DataAccess.websayfaEntities ent = new DataAccess.websayfaEntities();
            var Kategoriler = ent.kategori.OrderBy(p => p.kategoriid).ToList();
            return Kategoriler;
        }
        public string KategoriidBul(string a)
        {
            WebSitem.DataAccess.websayfaEntities ent2 = new DataAccess.websayfaEntities();
            var kategoriid = ent2.kategori.Where(p => p.kategoriad == a).FirstOrDefault();

            return kategoriid.kategoriid.ToString();
           
        }
        public string KategoriEkle(WebSitem.DataAccess.kategori nesne)
        {
            WebSitem.DataAccess.websayfaEntities ekle = new DataAccess.websayfaEntities();
            WebSitem.DataAccess.kategori yeni = new DataAccess.kategori();
            yeni.kategoriad = nesne.kategoriad;
            ekle.kategori.Add(yeni);
            ekle.SaveChanges();
            return "1";
        }
        public string KategoriSil(string a)
        {
            WebSitem.DataAccess.websayfaEntities ekle = new DataAccess.websayfaEntities();

            var ara = ekle.kategori.Where(p => p.kategoriad == a).FirstOrDefault();
            ekle.kategori.Remove(ara);
            ekle.SaveChanges();

            return "1";
        }
        public string KategoriGuncelle()
        {
            return null;
        }
    }
}
