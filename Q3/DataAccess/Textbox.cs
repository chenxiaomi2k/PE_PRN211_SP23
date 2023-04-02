using System;
using System.Collections.Generic;

namespace Q3.DataAccess
{
    public partial class Textbox
    {
        public int Id { get; set; }
        public string Text { get; set; } = null!;
        public bool Readonly { get; set; }
    }
}
