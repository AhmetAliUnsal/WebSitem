//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace WebSitem.DataAccess
{
    using System;
    using System.Collections.Generic;
    
    public partial class sepet
    {
        public int sepetid { get; set; }
        public Nullable<int> musterifkid { get; set; }
        public Nullable<int> urunfkid { get; set; }
        public Nullable<int> urunadet { get; set; }
        public Nullable<int> fiyat { get; set; }
        public string urunadi { get; set; }
        public string urunresimi { get; set; }
        public Nullable<int> urunfiyat { get; set; }
    
        public virtual musteri musteri { get; set; }
        public virtual urun urun { get; set; }
    }
}
