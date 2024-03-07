using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Kargo
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        List<Olke> olkeler = new List<Olke>
    {
        new Olke("ABŞ", 3.5),
        new Olke("Türkiyə", 2.5),
        new Olke("Rusiya", 2.0),
        new Olke("Digər", 1.0)
    };



        List<Tip> tipler = new List<Tip>
    {
        new Tip("Maye", 1.2),
        new Tip("Diger", 1.0),
       
    };
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void btnCalculate_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(ddlCountry.SelectedValue) || string.IsNullOrEmpty(ddlCargoType.SelectedValue))
            {
                lblCost.Text = "Ölkə və ya tip seçilməyib.";
                return;
            }

            double ceki;
            if (!double.TryParse(txtWeight.Text, out ceki))
            {
                lblCost.Text = "Çəkini düzgün daxil edin.";
                return;
            }

            double olkeNisbeti = olkeler.FirstOrDefault(c => c.Ad == ddlCountry.SelectedValue)?.Nisbet ?? 1.0;
            double kargoNisbeti = tipler.FirstOrDefault(c => c.Ad == ddlCargoType.SelectedValue)?.Nisbet ?? 1.0;

            double qiymet = olkeNisbeti * kargoNisbeti * ceki;
            lblCost.Text = $"Karqo qiyməti: {qiymet} AZN.";
        }

       


    }
}