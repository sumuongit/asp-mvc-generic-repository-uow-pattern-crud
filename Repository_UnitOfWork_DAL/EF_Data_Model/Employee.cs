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
    
    public partial class Employee
    {
        public int EmployeeId { get; set; }
        public string Name { get; set; }
        public string Designation { get; set; }
        public string PhotoPath { get; set; }
        public Nullable<System.DateTime> ServiceFromDate { get; set; }
        public Nullable<System.DateTime> ServiceToDate { get; set; }
        public string EmployeeType { get; set; }
        public Nullable<System.DateTime> CreateDate { get; set; }
        public Nullable<bool> Status { get; set; }
    }
}
