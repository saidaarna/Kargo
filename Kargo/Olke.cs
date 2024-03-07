using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Kargo
{
    public class Olke
    {

        public string Ad { get; set; }
        public double Nisbet { get; set; }

        public Olke(string ad, double nisbet)
        {
            Ad = ad;
            Nisbet = nisbet;
        }


    }
}