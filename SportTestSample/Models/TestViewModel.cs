using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace SportTestSample.Models
{
    public class TestViewModel
    {
        public Int32 EntryId { get; set; }

        public DateTime Date { get; set; }

        public string TestType { get; set; }

        public string CreatedBy { get; set; }

        public Int32 Atheletes { get; set; }
    }
}
