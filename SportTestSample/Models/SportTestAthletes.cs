using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace SportTestSample.Models
{
    [Table("tbSportTestAthletes")]
    public class SportTestAthletes
    {
        [Key]
        public Int32 EntryId { get; set; }

        public Int32 AthletesFK { get; set; }

        public Int32 SportsTestFK { get; set; }

        public decimal Distance { get; set; }

     //   public string FintessRating { get; set; }  
        [ForeignKey("SportsTestFK")]
        public SportsTest SportsTest { get; set; }


        public Int32 CreatedBy { get; set; }
        public DateTime CreatedOn { get; set; }

        public Int32 UpdatedBy { get; set; }
        public DateTime UpdatedOn { get; set; }

    }
}
