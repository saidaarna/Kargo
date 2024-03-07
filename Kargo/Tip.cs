using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Kargo
{
    public class Tip
    {
        public string Ad { get; set; }
        public double Nisbet { get; set; }

        public Tip(string ad, double nisbet)
        {
            Ad = ad;
            Nisbet = nisbet;    
        }

    }
}