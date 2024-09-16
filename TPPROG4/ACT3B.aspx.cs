using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace TPPROG4
{
    public partial class ACT3B : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string tema = Request["ddlTemas"].ToString();

                int temaElegido = 0;
                if( tema == "Tema 1")
                {
                    temaElegido = 1;
                }else if( tema == "Tema 2")
                {
                    temaElegido = 2;
                }
                else
                {
                    temaElegido = 3;
                }

                SqlConnection cn = new SqlConnection(@"Data Source=DESKTOP-1M7DOR6\SQLEXPRESS;Initial Catalog=Libreria;Integrated Security=True;TrustServerCertificate=True");
                cn.Open();

                SqlCommand cmd = new SqlCommand("SELECT * FROM dbo.LIBROS WHERE IDTEMA = @temaElegido", cn);
                cmd.Parameters.AddWithValue("@temaElegido", temaElegido);
                SqlDataReader dr = cmd.ExecuteReader();

                gvLibros.DataSource = dr;
                gvLibros.DataBind();

                cn.Close();
            }
        }

        protected void lbtnVolver_Click(object sender, EventArgs e)
        {
            Server.Transfer("ACT3A.aspx");
        }
    }
}