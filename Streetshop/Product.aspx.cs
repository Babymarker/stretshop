using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace Streetshop
{
    public partial class Product : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=localhost\SQLEXPRESS;Initial Catalog=myshops;Integrated Security=True");
       
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                btnDelete.Enabled = false;
                FillGridView();
            }
        }
        protected void btnClear_Click(object sender, EventArgs e)
        {
            Clear();
        }
        public void Clear()
        {
            hfid.Value = "";
            TextBox1.Text = TextBox2.Text = TextBox3.Text = TextBox4.Text = TextBox5.Text = TextBox6.Text = TextBox7.Text = TextBox8.Text = "";
            SucessMessage.Text = ErrorMessage.Text = "";
            btnSave.Text = "Save";
            btnDelete.Enabled = false;
        }
        protected void btnSave_Click(object sender, EventArgs e)
        {
            if (con.State == ConnectionState.Closed)
                con.Open();
            SqlCommand cmd = new SqlCommand("pruductCreateOrUpdate", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@id", (hfid.Value == "" ? 0 : Convert.ToInt32(hfid.Value)));
            cmd.Parameters.AddWithValue("@product_id", TextBox1.Text.Trim());
            cmd.Parameters.AddWithValue("@name", TextBox2.Text.Trim());
            cmd.Parameters.AddWithValue("@price", TextBox3.Text.Trim());
            cmd.Parameters.AddWithValue("@ex_price", TextBox4.Text.Trim());
            cmd.Parameters.AddWithValue("@stock", TextBox5.Text.Trim());
            cmd.Parameters.AddWithValue("@detail", TextBox6.Text.Trim());
            cmd.Parameters.AddWithValue("@brand_id", TextBox7.Text.Trim());
            cmd.Parameters.AddWithValue("@category_id", TextBox8.Text.Trim());

            cmd.ExecuteNonQuery();
            con.Close();
            string id = hfid.Value;
            Clear();
            if (id == "")
                SucessMessage.Text = "Save Successfully";
            else
                SucessMessage.Text = "Update Successfully";
            FillGridView();
        }
        void FillGridView()
        {
            if (con.State == ConnectionState.Closed)
                con.Open();
            SqlDataAdapter Datasql = new SqlDataAdapter("productViewAll", con);
            Datasql.SelectCommand.CommandType = CommandType.StoredProcedure;
            DataTable dtb1 = new DataTable();
            Datasql.Fill(dtb1);
            con.Close();
            gvProduct.DataSource = dtb1;
            gvProduct.DataBind();
        }
        protected void lnk_OnClick(object sender, EventArgs e)
        {
            int id = Convert.ToInt32((sender as Button).CommandArgument);
            if (con.State == ConnectionState.Closed)
                con.Open();
            SqlDataAdapter Datasql = new SqlDataAdapter("productViewbyID", con);
            Datasql.SelectCommand.CommandType = CommandType.StoredProcedure;
            Datasql.SelectCommand.Parameters.AddWithValue("@id", id);
            DataTable dtb1 = new DataTable();
            Datasql.Fill(dtb1);
            con.Close();
            hfid.Value = id.ToString();
            TextBox1.Text = dtb1.Rows[0]["product_id"].ToString();
            TextBox2.Text = dtb1.Rows[0]["name"].ToString();
            TextBox3.Text = dtb1.Rows[0]["price"].ToString();
            TextBox4.Text = dtb1.Rows[0]["ex_price"].ToString();
            TextBox5.Text = dtb1.Rows[0]["stock"].ToString();
            TextBox6.Text = dtb1.Rows[0]["detail"].ToString();
            TextBox7.Text = dtb1.Rows[0]["brand_id"].ToString();
            TextBox8.Text = dtb1.Rows[0]["category_id"].ToString();
            btnSave.Text = "Update";
            btnDelete.Enabled = true;
        }
        protected void btnDelete_Click(object sender, EventArgs e)
        {
            if (con.State == ConnectionState.Closed)
                con.Open();
            SqlCommand del = new SqlCommand("productDeletebyID", con);
            del.CommandType = CommandType.StoredProcedure;
            del.Parameters.AddWithValue("@id", Convert.ToInt32(hfid.Value));
            del.ExecuteNonQuery();
            con.Close();
            Clear();
            FillGridView();
            ErrorMessage.Text = "Deleted SuccessFully";

        }
    }
}