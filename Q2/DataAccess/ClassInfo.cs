using System;
using System.Collections.Generic;

namespace Q2.DataAccess
{
    public partial class ClassInfo
    {
        public ClassInfo()
        {
            Students = new HashSet<Student>();
        }

        public int Id { get; set; }
        public string Title { get; set; } = null!;
        public byte Grade { get; set; }
        public int Schoolyear { get; set; }
        public string Room { get; set; } = null!;

        public virtual SchoolYear SchoolyearNavigation { get; set; } = null!;

        public virtual ICollection<Student> Students { get; set; }
    }
}
