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
    
    public partial class musteri
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public musteri()
        {
            this.faturaadres = new HashSet<faturaadres>();
            this.gonderimadres = new HashSet<gonderimadres>();
            this.sepet = new HashSet<sepet>();
        }
    
        public int musteriid { get; set; }
        public string musteriTc { get; set; }
        public string musterikullaniciadi { get; set; }
        public string musteriadi { get; set; }
        public string musteriemail { get; set; }
        public string musteritel { get; set; }
        public string musterisifre { get; set; }
        public string musteritur { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<faturaadres> faturaadres { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<gonderimadres> gonderimadres { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<sepet> sepet { get; set; }
    }
}
