using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Collections;

namespace TPPROG4
{
    public partial class ACT2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) {

                SqlConnection cn = new SqlConnection("Data Source=DESKTOP-1M7DOR6\\SQLEXPRESS;Initial Catalog=Neptuno;Integrated Security=True;TrustServerCertificate=True");
                cn.Open();

                SqlCommand cmd = new SqlCommand("SELECT * FROM PRODUCTOS", cn);
                SqlDataReader rd = cmd.ExecuteReader();

                dvFiltro.DataSource = rd;
                dvFiltro.DataBind();

                cn.Close();
            }

        }

        protected void btnFiltrar_Click(object sender, EventArgs e)
        {
            string idCatPreferencia = txtCategoria.Text.Trim();
            string idProdPreferencia = txtProducto.Text.Trim();

            string ComparacionProducto = ddlProd.SelectedValue;
            string ComparacionCategoria = ddlCat.SelectedValue;

            SqlConnection cn = new SqlConnection("Data Source=DESKTOP-1M7DOR6\\SQLEXPRESS;Initial Catalog=Neptuno;Integrated Security=True;TrustServerCertificate=True");
            cn.Open();

            SqlCommand cmd = new SqlCommand();

            string consultaCompleta = "SELECT * FROM PRODUCTOS WHERE 1=1";
            cmd.Connection = cn;

            if (!string.IsNullOrEmpty(idCatPreferencia))
            {
                string cate = "=";
                if (ComparacionCategoria == "Mayor a")
                {
                    cate = ">";
                }
                else if (ComparacionCategoria == "Menor a")
                {
                    cate = "<";
                }

                consultaCompleta += $" AND IDCATEGORÍA {cate} @Cat";
                cmd.Parameters.AddWithValue("@Cat", idCatPreferencia);
            }

            if (!string.IsNullOrEmpty(idProdPreferencia))
            {
                string prod = "=";
                if (ComparacionProducto == "Mayor a")
                {
                    prod = ">";
                }
                else if (ComparacionProducto == "Menor a")
                {
                    prod = "<";
                }

                consultaCompleta += $" AND IDPRODUCTO {prod} @Prod";
                cmd.Parameters.AddWithValue("@Prod", idProdPreferencia);
            }

            cmd.CommandText = consultaCompleta;

            SqlDataReader rd = cmd.ExecuteReader();

            dvFiltro.DataSource = rd;
            dvFiltro.DataBind();

            cn.Close();
        }

        protected void btnQuitar_Click(object sender, EventArgs e)
        {
            SqlConnection cn = new SqlConnection("Data Source=DESKTOP-1M7DOR6\\SQLEXPRESS;Initial Catalog=Neptuno;Integrated Security=True;TrustServerCertificate=True");
            cn.Open();

            SqlCommand cmd = new SqlCommand("SELECT * FROM PRODUCTOS", cn);
            SqlDataReader rd = cmd.ExecuteReader();

            dvFiltro.DataSource = rd;
            dvFiltro.DataBind();

            cn.Close();
        }
    }
}