using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;

namespace WebSitem.Business
{
    public class musteri
    {

        public List<WebSitem.DataAccess.musteri> Listele()
        {
            WebSitem.DataAccess.websayfaEntities ent= new DataAccess.websayfaEntities();
            var sonuc = ent.musteri.ToList();
            return sonuc;
        }
            

    }
}
