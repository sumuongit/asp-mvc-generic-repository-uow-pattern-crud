//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Repository_UnitOfWork_DAL.EF_Data_Model
{
    using System;
    using System.Collections.Generic;
    
    public partial class Event
    {
        public int EventId { get; set; }
        public string Title { get; set; }
        public string ImagePath { get; set; }
        public Nullable<int> UserId { get; set; }
        public string EventType { get; set; }
        public Nullable<System.DateTime> CreateDate { get; set; }
        public Nullable<bool> Status { get; set; }
    
        public virtual User User { get; set; }
    }
}
