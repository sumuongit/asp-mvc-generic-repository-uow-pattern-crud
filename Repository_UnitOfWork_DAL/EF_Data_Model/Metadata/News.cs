using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Repository_UnitOfWork_DAL.EF_Data_Model
{
    [MetadataType(typeof(NewsMetadata))]
    public partial class News
    {

    }

    public class NewsMetadata
    {
        [Display(Name = "Title")]
        [Required(AllowEmptyStrings = false, ErrorMessage = "Title is required")]        
        public string Title { get; set; }
        [Display(Name = "Image Path")]
        [Required(AllowEmptyStrings = false, ErrorMessage = "Image Path is required")]
        public string ImagePath { get; set; }
        [DataType(DataType.DateTime)]
        [DisplayFormat(DataFormatString = "{0:dd/MM/yyyy}", ApplyFormatInEditMode = true)]
        [Display(Name = "Create Date")]
        public Nullable<System.DateTime> CreateDate { get; set; }        
        [Display(Name = "Status")]
        public Nullable<bool> Status { get; set; }        
    }
}
