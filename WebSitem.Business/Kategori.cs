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
        public string KategoriEkle()
        {
            return null;
        }
        public string KategoriSil()
        {
            return null;
        }
        public string KategoriGuncelle()
        {
            return null;
        }
    }
}
