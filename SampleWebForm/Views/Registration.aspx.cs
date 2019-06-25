using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SampleWebForm.Views
{
    public partial class Registration : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(@"Server=localhost; Database=socialtest; Integrated Security=SSPI;");
        SqlCommand cmd;
        string sql;


        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

            }
        }

        public void Clear()
        {
            txtUsername.Text = "";
            txtEmail.Text = "";
            txtPassword.Text = "";
            txtRepassword.Text = "";
        }

        protected void btnSignUp_Click(object sender, EventArgs e)
        {
            try
            {
                conn.Open();
                sql = "INSERT INTO Social(Username,Email,Password) VALUES(@Username,@Email,@Password)";
                cmd = new SqlCommand(sql, conn);
                cmd.Parameters.AddWithValue("@Username", txtUsername.Text.Trim());
                cmd.Parameters.AddWithValue("@Email", txtEmail.Text.Trim());
                cmd.Parameters.AddWithValue("@Password", txtPassword.Text.Trim());
                cmd.ExecuteNonQuery();
                Response.Write("<script> alert('You are successfully registered...'); </script>");
            }
            catch (Exception)
            {
                Response.Write("<script> alert('Something Goes Wrong...!'); </script>");
            }
            finally
            {
                conn.Close();
            }
        }
    }
}