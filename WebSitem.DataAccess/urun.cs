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
    
    public partial class urun
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public urun()
        {
            this.sepet = new HashSet<sepet>();
            this.sepeton = new HashSet<sepeton>();
        }
    
        public int urunid { get; set; }
        public string urunadi { get; set; }
        public Nullable<int> urunkategorifkid { get; set; }
        public Nullable<int> urunstok { get; set; }
        public Nullable<int> urunbirimfiyat { get; set; }
        public Nullable<int> durumfkid { get; set; }
        public string urunresimadres { get; set; }
    
        public virtual durum durum { get; set; }
        public virtual kategori kategori { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<sepet> sepet { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<sepeton> sepeton { get; set; }
    }
}
