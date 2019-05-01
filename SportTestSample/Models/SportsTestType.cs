using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace SportTestSample.Models
{
    [Table("tbSportsTestType")]
    public class SportsTestType
    {
        [Key]
        public Int32 EntryId { get; set; }

        public string TestTypeName { get; set; }


        public Int32 CreatedBy { get; set; }
        public DateTime CreatedOn { get; set; }

        public Int32? UpdatedBy { get; set; }
        public DateTime? UpdatedOn { get; set; }

        public List<SportsTest> SportsTests { get; set; }
    }
}
