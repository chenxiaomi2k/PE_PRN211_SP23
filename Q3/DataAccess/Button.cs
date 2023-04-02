using System;
using System.Collections.Generic;

namespace Q3.DataAccess
{
    public partial class Button
    {
        public int Id { get; set; }
        public string Text { get; set; } = null!;
        public string Color { get; set; } = null!;
    }
}
