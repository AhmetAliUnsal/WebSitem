using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WebSitem.Business
{
    public class Adres
    {
        public List<WebSitem.DataAccess.il> IlGetir()
        {
            WebSitem.DataAccess.websayfaEntities ent = new DataAccess.websayfaEntities();
            var iller = ent.il.OrderBy(p=>p.ilid).ToList();
            return iller;
        }

        public List<WebSitem.DataAccess.ilce> IlceGetir(string a)
        {
            WebSitem.DataAccess.websayfaEntities ent2 = new DataAccess.websayfaEntities();
            var ilidbul = ent2.il.Where(p => p.ilad == a).FirstOrDefault();
            var ilceler = ent2.ilce.Where(p => p.ilfkid==ilidbul.ilid).OrderBy(p => p.ilceid).ToList();
            return ilceler;
        }

        public string ilidgetir(string a)
        {
            WebSitem.DataAccess.websayfaEntities ent3 = new DataAccess.websayfaEntities();
            var ilid = ent3.il.Where(p => p.ilad == a).FirstOrDefault();

            return ilid.ilid.ToString();
        }

        public string ilceidgetir(string a)
        {
            WebSitem.DataAccess.websayfaEntities ent4 = new DataAccess.websayfaEntities();
            var ilceid = ent4.ilce.Where(p => p.ilcead == a).FirstOrDefault();

            return ilceid.ilceid.ToString();
        }

        public string GonderimAdresEkle(WebSitem.DataAccess.gonderimadres nesne)
        {
            WebSitem.DataAccess.websayfaEntities ekle = new DataAccess.websayfaEntities();
            WebSitem.DataAccess.gonderimadres yeni = new DataAccess.gonderimadres();

            var ara = ekle.gonderimadres.Where(p => p.musterifkid == nesne.musterifkid).FirstOrDefault();
            yeni.musterifkid = nesne.musterifkid;
            yeni.ilfkid = nesne.ilfkid;
            yeni.ilcefkid = nesne.ilcefkid;
            yeni.gonderimadres1 = nesne.gonderimadres1;
            yeni.alıcıadı = nesne.alıcıadı;
            yeni.alıcısoyadı = nesne.alıcısoyadı;
            yeni.alıcıtelefon = nesne.alıcıtelefon;
            ekle.gonderimadres.Add(yeni);
            ekle.SaveChanges();
            return "1";
        }

        public string FaturaAdresEkle(WebSitem.DataAccess.faturaadres nesne)
        {
            WebSitem.DataAccess.websayfaEntities ekle = new DataAccess.websayfaEntities();
            WebSitem.DataAccess.faturaadres yeni = new DataAccess.faturaadres();

            var ara = ekle.gonderimadres.Where(p => p.musterifkid == nesne.musterifkid).FirstOrDefault();
            yeni.musterifkid = nesne.musterifkid;
            yeni.ilfkid = nesne.ilfkid;
            yeni.ilcefkid = nesne.ilcefkid;
            yeni.faturaadres1 = nesne.faturaadres1;
            yeni.faturakad = nesne.faturakad;
            yeni.faturasoyad = nesne.faturasoyad;
            yeni.faturatel = nesne.faturatel;
            ekle.faturaadres.Add(yeni);
            ekle.SaveChanges();
            return "1";
        }
    }
}
