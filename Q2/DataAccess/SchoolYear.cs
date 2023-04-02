using System;
using System.Collections.Generic;

namespace Q2.DataAccess
{
    public partial class SchoolYear
    {
        public SchoolYear()
        {
            Classes = new HashSet<ClassInfo>();
        }

        public int Id { get; set; }
        public string Title { get; set; } = null!;
        public DateTime? Startdate { get; set; }
        public DateTime? Enddate { get; set; }

        public virtual ICollection<ClassInfo> Classes { get; set; }
    }
}
