using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EatIt.Models
{
    public class SideMenuItem
    {
        public SideMenuItem()
        {
            TargetType = typeof(SideMenuItem);
        }
        public int Id { get; set; }
        public string Title { get; set; }

        public Type TargetType { get; set; }
    }
}