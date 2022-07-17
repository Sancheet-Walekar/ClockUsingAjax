using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AjaxDemo
{
    public partial class DisplayDate : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lbldate.Text = DateTime.Now.ToString();
        }

        protected void btnwithoutajax_Click(object sender, EventArgs e)
        {

        }

        protected void btnwithajax_Click(object sender, EventArgs e)
        {
            lblajaxdate.Text = DateTime.Now.ToString();
        }
    }
}