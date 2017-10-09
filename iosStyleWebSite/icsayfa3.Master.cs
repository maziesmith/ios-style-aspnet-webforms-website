using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace iosStyleWebSite
{
    public partial class icsayfa3 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Language"] != null && Session["Language"].ToString() == "ENG")
            {
                lblanasayfa.Text = "Home";
                lblanakart.Text = "Motherboard";
                lbliletisim.Text = "Contact";
            }

        }

        protected void trflagbtn_Click(object sender, ImageClickEventArgs e)
        {
            Session["Language"] = "TR";
            Response.Redirect(Request.RawUrl);
        }

        protected void engflagbtn_Click(object sender, ImageClickEventArgs e)
        {
            Session["Language"] = "ENG";
            Response.Redirect(Request.RawUrl);
        }
    }
}