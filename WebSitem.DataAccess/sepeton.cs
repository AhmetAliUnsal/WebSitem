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
    
    public partial class sepeton
    {
        public int sepetonid { get; set; }
        public Nullable<int> sepetmusterifkid { get; set; }
        public Nullable<int> urunfkid { get; set; }
    
        public virtual musteri musteri { get; set; }
        public virtual urun urun { get; set; }
    }
}
