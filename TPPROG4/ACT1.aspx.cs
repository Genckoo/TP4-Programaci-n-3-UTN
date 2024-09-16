using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace TPPROG4
{
    public partial class ACT1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                SqlConnection cn = new SqlConnection("Data Source=DESKTOP-1M7DOR6\\SQLEXPRESS;Initial Catalog=Viajes;Integrated Security=True;TrustServerCertificate=True");
                cn.Open();
                SqlCommand cmd = new SqlCommand("SELECT * FROM PROVINCIAS", cn);
                SqlDataReader dr = cmd.ExecuteReader();

                ddlProvincia1.DataSource = dr;
                ddlProvincia1.DataTextField = "NombreProvincia";
                ddlProvincia1.DataValueField = "idProvincia";
                ddlProvincia1.DataBind();

                
                cn.Close();
            }
        }

        protected void ddlProvincia1_SelectedIndexChanged(object sender, EventArgs e)
        {
            int ProvSeleccionado = int.Parse(ddlProvincia1.SelectedValue);

            ddlLocalidadFinal.Items.Clear();
            ddlLocalidadFinal.Items.Insert(0, new ListItem("-- Selecciona --", "0"));

            SqlConnection cn2 = new SqlConnection("Data Source=DESKTOP-1M7DOR6\\SQLEXPRESS;Initial Catalog=Viajes;Integrated Security=True;TrustServerCertificate=True");
            cn2.Open();
            SqlCommand cmd = new SqlCommand("SELECT * FROM LOCALIDADES WHERE IDPROVINCIA = @SELECCION", cn2);
            cmd.Parameters.AddWithValue("@SELECCION", ProvSeleccionado);

            SqlDataReader dr = cmd.ExecuteReader();

            ddlLocalidad1.DataSource = dr;
            ddlLocalidad1.DataTextField = "NombreLocalidad";
            ddlLocalidad1.DataValueField = "IdLocalidad";
            ddlLocalidad1.DataBind();

            cn2.Close();


            SqlConnection cn3 = new SqlConnection("Data Source=DESKTOP-1M7DOR6\\SQLEXPRESS;Initial Catalog=Viajes;Integrated Security=True;TrustServerCertificate=True");
            cn3.Open();

            SqlCommand cmd2 = new SqlCommand("SELECT * FROM PROVINCIAS WHERE IDPROVINCIA != @Evitar", cn3);
            cmd2.Parameters.AddWithValue("@Evitar", ProvSeleccionado);
            SqlDataReader dr2 = cmd2.ExecuteReader();

            ddlProvinciaFinal.DataSource = dr2;
            ddlProvinciaFinal.DataTextField = "NombreProvincia";
            ddlProvinciaFinal.DataValueField = "idProvincia";
            ddlProvinciaFinal.DataBind();

            ddlProvinciaFinal.Items.Insert(0, new ListItem("-- Selecciona --", "0"));

            cn3.Close();

        }



        protected void ddlProvinciaFinal_SelectedIndexChanged(object sender, EventArgs e)
        {
            int provFinalSeleccionada = int.Parse(ddlProvinciaFinal.SelectedValue);

            SqlConnection cn = new SqlConnection("Data Source=DESKTOP-1M7DOR6\\SQLEXPRESS;Initial Catalog=Viajes;Integrated Security=True;TrustServerCertificate=True");
            cn.Open();
            SqlCommand cmd = new SqlCommand("SELECT * FROM LOCALIDADES WHERE IDPROVINCIA = @PROVINCIAFINAL", cn);
            cmd.Parameters.AddWithValue("@PROVINCIAFINAL", provFinalSeleccionada);

            SqlDataReader rd = cmd.ExecuteReader();

            ddlLocalidadFinal.DataSource = rd;
            ddlLocalidadFinal.DataTextField = "NombreLocalidad";
            ddlLocalidadFinal.DataValueField = "idLocalidad";
            ddlLocalidadFinal.DataBind();

            
            
            cn.Close();

        }



        protected void ddlLocalidad1_SelectedIndexChanged(object sender, EventArgs e)
        {


        }

    }
}