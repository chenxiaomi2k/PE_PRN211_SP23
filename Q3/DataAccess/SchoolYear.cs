using System;
using System.Collections.Generic;

namespace Q3.DataAccess
{
    public partial class SchoolYear
    {
        public SchoolYear()
        {
            Classes = new HashSet<Class>();
        }

        public int Id { get; set; }
        public string Title { get; set; } = null!;
        public DateTime? Startdate { get; set; }
        public DateTime? Enddate { get; set; }

        public virtual ICollection<Class> Classes { get; set; }
    }
}
