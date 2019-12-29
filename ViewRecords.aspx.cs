using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace clinicDatabase
{
	public partial class ViewRecords : System.Web.UI.Page
	{
		string connectionString = (@"Data Source = (LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Mary\source\repos\clinicDatabase\clinicDatabase\App_Data\Database.mdf;Integrated Security = True");

		protected void Page_Load(object sender, EventArgs e)
		{

			using(SqlConnection sqlCon = new SqlConnection(connectionString))
			{
				sqlCon.Open();
				SqlDataAdapter sqlDa = new SqlDataAdapter("SELECT * FROM entryData", sqlCon);
				DataTable dtbl = new DataTable();
				sqlDa.Fill(dtbl);

				gvdataEntry.DataSource = dtbl;
				gvdataEntry.DataBind();
			}

		}

		

		protected void addNew_Click(object sender, EventArgs e)
		{
			Response.Redirect("index.aspx");
		}

		protected void Logout_Click(object sender, EventArgs e)
		{
			Response.Redirect("logIn.aspx");
		}
	}
}