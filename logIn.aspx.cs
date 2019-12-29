using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace clinicDatabase
{
	public partial class logIn : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			errorMessage.Visible = false;
		}

		protected void submitBtn_Click(object sender, EventArgs e)
		{
			using (SqlConnection sqlCon = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Mary\source\repos\clinicDatabase\clinicDatabase\App_Data\Database.mdf;Integrated Security=True"))
			{
				sqlCon.Open();
				string query = "SELECT COUNT(1) FROM Login WHERE username=@username AND password=@password";
				SqlCommand sqlCmd = new SqlCommand(query, sqlCon);
				sqlCmd.Parameters.AddWithValue("@username", usernameTxt.Text.Trim());
				sqlCmd.Parameters.AddWithValue("@password", passwordTxt.Text.Trim());
				int count = Convert.ToInt32(sqlCmd.ExecuteScalar());

				if(count==1)
				{
					Session["username"] = usernameTxt.Text.Trim();
					Response.Redirect("ViewRecords.aspx");
				}
				else
				{
					errorMessage.Visible = true;
				}
			}
		}
	}
}