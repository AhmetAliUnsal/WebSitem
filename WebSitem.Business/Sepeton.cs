using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WebSitem.Business
{
    public class Sepeton
    {
        public string sepetonEkle(WebSitem.DataAccess.sepeton sepeton)
        {
            WebSitem.DataAccess.websayfaEntities ekle = new DataAccess.websayfaEntities();
            WebSitem.DataAccess.sepeton yeni = new DataAccess.sepeton();

            yeni.sepetmusterifkid = sepeton.sepetmusterifkid;
            yeni.urunfkid = sepeton.urunfkid;
            ekle.sepeton.Add(yeni);
            ekle.SaveChanges();
            return "1";
        }
    }
}
