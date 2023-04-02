﻿using System;
using System.Collections.Generic;

namespace Q3.DataAccess
{
    public partial class Student
    {
        public Student()
        {
            Classes = new HashSet<Class>();
        }

        public int Id { get; set; }
        public string Fullname { get; set; } = null!;
        public string Sex { get; set; } = null!;
        public DateTime Dob { get; set; }
        public string Email { get; set; } = null!;

        public virtual ICollection<Class> Classes { get; set; }
    }
}
