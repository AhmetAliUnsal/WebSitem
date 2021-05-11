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
        public string ilceadgetir(int a)
        {
            WebSitem.DataAccess.websayfaEntities ent4 = new DataAccess.websayfaEntities();
            var ilcead = ent4.ilce.Where(p => p.ilceid == a).FirstOrDefault();

            return ilcead.ilcead.ToString();
        }
        public string iladGetir(int a)
        {
            WebSitem.DataAccess.websayfaEntities ent4 = new DataAccess.websayfaEntities();
            var ilad = ent4.il.Where(p => p.ilid == a).FirstOrDefault();

            return ilad.ilad.ToString();
        }

        public WebSitem.DataAccess.gonderimadres GetBygonderimadres(int musteriid)
        {
            WebSitem.DataAccess.websayfaEntities ent = new DataAccess.websayfaEntities();
            var sonuc = ent.gonderimadres.Where(p => p.musterifkid == musteriid).FirstOrDefault();
            return sonuc;
        }

        public string GonderimAdresEkle(WebSitem.DataAccess.gonderimadres nesne)
        {
            WebSitem.DataAccess.websayfaEntities ekle = new DataAccess.websayfaEntities();
            WebSitem.DataAccess.gonderimadres yeni = new DataAccess.gonderimadres();

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
        public string GonderimAdresGuncelle(WebSitem.DataAccess.gonderimadres nesne)
        {
            WebSitem.DataAccess.websayfaEntities ekle = new DataAccess.websayfaEntities();
            WebSitem.DataAccess.gonderimadres guncel = new DataAccess.gonderimadres();

            var ara = ekle.gonderimadres.Where(p => p.musterifkid == nesne.musterifkid).FirstOrDefault();
            ara.alıcıadı = nesne.alıcıadı;
            ara.alıcısoyadı = nesne.alıcısoyadı;
            ara.alıcıtelefon = nesne.alıcıtelefon;
            ara.gonderimadres1 = nesne.gonderimadres1;
            ara.ilcefkid = nesne.ilcefkid;
            ara.ilfkid = nesne.ilfkid;
            ara.musterifkid = nesne.musterifkid;
            
            ekle.SaveChanges();
            return "1";
        }

        public WebSitem.DataAccess.faturaadres GetByfaturaadres(int musteriid)
        {
            WebSitem.DataAccess.websayfaEntities ent = new DataAccess.websayfaEntities();
            var sonuc = ent.faturaadres.Where(p => p.musterifkid == musteriid).FirstOrDefault();
            return sonuc;
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

        public string FaturaAdresGuncelle(WebSitem.DataAccess.faturaadres nesne)
        {
            WebSitem.DataAccess.websayfaEntities ekle = new DataAccess.websayfaEntities();
            WebSitem.DataAccess.faturaadres guncel = new DataAccess.faturaadres();

            var ara = ekle.faturaadres.Where(p => p.musterifkid == nesne.musterifkid).FirstOrDefault();
            ara.faturakad = nesne.faturakad;
            ara.faturasoyad = nesne.faturasoyad;
            ara.faturatel = nesne.faturatel;
            ara.faturaadres1 = nesne.faturaadres1;
            ara.ilcefkid = nesne.ilcefkid;
            ara.ilfkid = nesne.ilfkid;
            ara.musterifkid = nesne.musterifkid;

            ekle.SaveChanges();
            return "1";
        }
    }
}
