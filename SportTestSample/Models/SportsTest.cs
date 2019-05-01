using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace SportTestSample.Models
{
    [Table("tbSportsTest")]
    public class SportsTest
    {
        [Key]
        public Int32 EntryID { get; set; }

        public DateTime Date { get; set; }

        public Int32 TestTypeFK { get; set; }
        //public Int32 NumberOfParticipant { get; set; }
 
        [ForeignKey("TestTypeFK")]
        public SportsTestType SportsTestType { get; set; }

        public Int32 CreatedBy { get; set; }
        public DateTime CreatedOn { get; set; }

        public Int32 UpdatedBy { get; set; }
        public DateTime UpdatedOn { get; set; }

        public List<SportTestAthletes> sportTestAthletes { get; set; }
       
    }
}
