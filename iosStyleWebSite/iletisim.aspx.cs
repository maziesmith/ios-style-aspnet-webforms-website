using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace iosStyleWebSite
{
    public partial class iletisim : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Language"] != null && Session["Language"].ToString() == "ENG")
            {
                lblbize.Text = "Contact Us";
                lblmap.Text = "Map"; 
            }

        }
    }
}