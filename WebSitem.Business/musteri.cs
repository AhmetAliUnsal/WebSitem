﻿using System;
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
            WebSitem.DataAccess.websayfaEntities ent = new DataAccess.websayfaEntities();
            var sonuc = ent.musteri.ToList();
            return sonuc;

            //WebSitem.DataAccess.websayfaEntities ent = new DataAccess.websayfaEntities();
            //var sonuc = ent.musteri.OrderByDescending(p=>int.Parse(p.musteritel)).ToList();
            //return sonuc;
        }

        public WebSitem.DataAccess.musteri GetBymusteriid(int musteriid)
        {
            WebSitem.DataAccess.websayfaEntities ent = new DataAccess.websayfaEntities();
            var sonuc = ent.musteri.Where(p => p.musteriid == musteriid);
            return sonuc.FirstOrDefault(); 
        }

        public string VeriEkleme()
        {
            WebSitem.DataAccess.websayfaEntities ekle = new DataAccess.websayfaEntities();
            WebSitem.DataAccess.musteri yeni = new DataAccess.musteri();
            yeni.musteriadi = "deneme yanılma";
            yeni.musteriemail = "deneme@deneme.com";
            yeni.musteritel = "05555555555";
            yeni.musteriTc = "12345678901";

            ekle.musteri.Add(yeni);
            ekle.SaveChanges();

            var verilerigetir = Listele();
            return "1";
        }
        public string VeriEkleme1(WebSitem.DataAccess.musteri nesne)
        {
            WebSitem.DataAccess.websayfaEntities ekle = new DataAccess.websayfaEntities();
            WebSitem.DataAccess.musteri yeni = new DataAccess.musteri();
            yeni.musteriadi = nesne.musteriadi;
            yeni.musteriemail = nesne.musteriemail;       
            yeni.musteritel = nesne.musteritel;
            yeni.musteriTc = nesne.musteriTc;

            ekle.musteri.Add(yeni);
            ekle.SaveChanges();

            var verilerigetir = Listele();
            return "1";
        }
        public string MusteriEkle(WebSitem.DataAccess.musteri nesne)
        {
            WebSitem.DataAccess.websayfaEntities ekle = new DataAccess.websayfaEntities();
            WebSitem.DataAccess.musteri yeni = new DataAccess.musteri();

            var ara = ekle.musteri.Where(p => p.musteriemail == nesne.musteriemail).FirstOrDefault();
            var ara2 = ekle.musteri.Where(p => p.musteriTc == nesne.musteriTc).FirstOrDefault();
           if(ara != null || ara2 != null)
            {

                if (ara.musteriemail == nesne.musteriemail || ara2.musteriTc == nesne.musteriTc)
                {
                    return "Kaydınız Bulunmaktadır!!";
                }

                return "";
            }
            else
            {
                yeni.musteriadi = nesne.musteriadi;
                yeni.musteriemail = nesne.musteriemail;
                yeni.musteritel = nesne.musteritel;
                yeni.musteriTc = nesne.musteriTc;
                yeni.musterisifre = nesne.musterisifre;
                yeni.musteritur = nesne.musteritur;

                ekle.musteri.Add(yeni);
                ekle.SaveChanges();

                var verilerigetir = Listele();
                return "Başarıyla Eklenildi";
            }

        }


        public string VeriGüncelle(string musteriTc,WebSitem.DataAccess.musteri nesne)
        {
            WebSitem.DataAccess.websayfaEntities ekle = new DataAccess.websayfaEntities();
            WebSitem.DataAccess.musteri yeni = new DataAccess.musteri();

            var aranan = ekle.musteri.Where(p => p.musteriTc == musteriTc).FirstOrDefault();

            aranan.musteriadi = nesne.musteriadi;
            aranan.musteriemail = nesne.musteriemail;
            aranan.musteritel = nesne.musteritel;
            aranan.musteriTc = nesne.musteriTc;


            //ekle.musteri.Add(aranan);
            ekle.SaveChanges();
           

            var verilerigetir = Listele();
            return "1";

            
        }
        public string VeriSilme(string musteriTc)
        {
            WebSitem.DataAccess.websayfaEntities ekle = new DataAccess.websayfaEntities();
            WebSitem.DataAccess.musteri yeni = new DataAccess.musteri();

            var aranan = ekle.musteri.Where(p => p.musteriTc == musteriTc).FirstOrDefault();

            ekle.musteri.Remove(aranan);
            ekle.SaveChanges();
            return "1";


        }

    }
}
