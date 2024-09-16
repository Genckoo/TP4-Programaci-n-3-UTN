using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TPPROG4
{
    public partial class ACT3A : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void lbVerTemas_Click(object sender, EventArgs e)
        {
            Server.Transfer("ACT3B.aspx");
        }
    }
}