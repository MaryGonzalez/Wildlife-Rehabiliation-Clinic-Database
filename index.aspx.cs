using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;

namespace clinicDatabase
{
	public partial class index : System.Web.UI.Page
	{

		SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Mary\source\repos\clinicDatabase\clinicDatabase\App_Data\Database.mdf;Integrated Security=True");

		//Radio Buttons
		string found,newsletter,age,health1, health2, health3, health4, health5, 
			   weight2, weight3, weight4, weight5, body_condition, dehydration, 
			   respiration, wounds, deflea;

		//Return to records
		protected void BackButton_Click(object sender, EventArgs e)
		{
			Response.Redirect("ViewRecords.aspx");
		}

		protected void Page_Load(object sender, EventArgs e)
		{
		}

		//protected void submitButton1_Click(object sender, EventArgs e)
		//{

			
		//}

		protected void submitButton1_Click1(object sender, EventArgs e)
		{
			//////////////////////////////
			//Animal Found Location Same//
			//////////////////////////////
			//If animal found at same location, all additional location info set to N/A



			

			///////////////////////////
			//Newsletter Radio Button//
			///////////////////////////
			if (newsletterYes.Checked)
			{
				newsletter = "Yes";
			}
			else if(newsletterNo.Checked)
			{
				newsletter = "No";
			}
			else if(newsletterAlready.Checked)
			{
				newsletter = "Already receive it";
			}

			///////////////////////////
			////Formatting donation////
			///////////////////////////
			donationTxt.Text = string.Format("${0:#,##0.00}", double.Parse(donationTxt.Text));


			////////////////////////////		   			 
			//Species Age Radio Button//
			////////////////////////////
			
			if (pinkieRadio.Checked)
			{
				age = "Pinkie";
			}
			else if (babyRadio.Checked)
			{
				age = "Baby";
			}
			else if (juvenileRadio.Checked)
			{
				age = "Juvenile";
			}
			else if (adultRadio.Checked)
			{
				age = "Adult";
			}


			////////////////////		   			 
			//Species Health 1//
			////////////////////
			if (healthy1.Checked)
			{
				health1 = "Healthy";
			}
			else if (moderate1.Checked)
			{
				health1 = "Moderate";
			}
			else if (critical1.Checked)
			{
				health1 = "Critical";
			}




			////////////////////		   			 
			//Species Health 2//
			////////////////////

			if (healthy2.Checked)
			{
				health2 = "Healthy";
			}
			else if (moderate2.Checked)
			{
				health2 = "Moderate";
			}
			else if (critical2.Checked)
			{
				health2 = "Critical";
			}
			else
			{
				health2 = "N/A";
			}

			////////////////////		   			 
			//Species Health 3//
			////////////////////
			if (healthy3.Checked)
			{
				health3 = "Healthy";
			}
			else if (moderate3.Checked)
			{
				health3 = "Moderate";
			}
			else if (critical3.Checked)
			{
				health3 = "Critical";
			}
			else
			{
				health3 = "N/A";
			}


			////////////////////		   			 
			//Species Health 4//
			////////////////////

			if (healthy4.Checked)
			{
				health4 = "Healthy";
			}
			else if (moderate4.Checked)
			{
				health4 = "Moderate";
			}
			else if (critical4.Checked)
			{
				health4 = "Critical";
			}
			else
			{
				health4 = "N/A";
			}

			////////////////////		   			 
			//Species Health 5//
			////////////////////

			if (healthy5.Checked)
			{
				health5 = "Healthy";
			}
			else if (moderate5.Checked)
			{
				health5 = "Moderate";
			}
			else if (critical5.Checked)
			{
				health5 = "Critical";
			}
			else
			{
				health5 = "N/A";
			}



			////////////////////		   			 
			//Species Weight 2//
			////////////////////
		
		



			////////////////////		   			 
			//Species Weight 3//
			////////////////////
			

			////////////////////		   			 
			//Species Weight 4//
			////////////////////


			////////////////////		   			 
			//Species Weight 5//
			////////////////////









			///////////////////////////		   			 
			//Species Body Condition///
			///////////////////////////
			if (thinRadio.Checked)
			{
				body_condition = "Thin";
			}
			else if (normalConditionRadio.Checked)
			{
				body_condition = "Normal";
			}
			else if (overweightRadio.Checked)
			{
				body_condition = "Overweight";
			}

			///////////////////////////		   			 
			////Species Dehydrated/////
			///////////////////////////
			if (dehydratedNo.Checked)
			{
				dehydration = "No";
			}
			else if (dehydratedYes.Checked)
			{
				dehydration = "Yes";
			}
			else if (dehydratedSevere.Checked)
			{
				dehydration = "Severe";
			}

			///////////////////////////		   			 
			////Species Respiration////
			///////////////////////////
			if (respirationNormal.Checked)
			{
				respiration = "Normal";
			}
			else if (respirationRapid.Checked)
			{
				respiration = "Rapid";
			}
			else if (respirationSlow.Checked)
			{
				respiration = "Slow";
			}
			else if (respirationLabored.Checked)
			{
				respiration = "Labored";
			}

			///////////////////////////		   			 
			////Species Open Wounds////
			///////////////////////////
			if (woundsNo.Checked)
			{
				wounds = "No";
			}
			else if (woundsYes.Checked)
			{
				wounds = "Yes";
			}


			///////////////////////////		   			 
			//////Species Deflea///////
			///////////////////////////
			if (defleaNo.Checked)
			{
				deflea = "No";
			}
			else if (defleaYes.Checked)
			{
				deflea = "Yes";
			}





			
			con.Open();
			SqlCommand cmd = con.CreateCommand();
			cmd.CommandType = CommandType.Text;
			cmd.CommandText = "insert into entryData (Name, Email, Address, County, City, State, Zip, Find_Same_Location, Location_Adress, Location_County, Location_City, Location_State, Location_Zip, Newsletter, Donation, Admit_Date, Shift, Species, Age, Total_Admit, Weight1, Health1, Weight2, Health2, Weight3, Health3, Weight4, Health4, Weight5, Health5, Body_Condition, Dehydrated, Respiration, Parasites, Open_Wounds, Deflea, Notes, Admit_Disposition, Home_Care, Staff_Admit_Initials, Computer_Entry) values('" + nameTxt.Text + "','" + emailTxt.Text + "','" + addressTxt.Text + "','" + countyTxt.Text + "','" + cityTxt.Text + "','" + stateDropDown.SelectedItem + "','" + zipTxt.Text + "','" + foundRadio.SelectedItem.ToString() + "','" + addressTxt2.Text + "','" + countyTxt2.Text + "','" + cityTxt2.Text + "','" + stateDropDown2.SelectedItem + "','" + zipTxt2.Text + "','" + newsletter + "','" + donationTxt.Text + "','" + datepicker + "','" + shiftDropDown.SelectedItem + "','" + speciesDropDown.SelectedItem + "','"  + age + "','" + totalDropDown.SelectedItem + "','" + weight1Txt.Text + "','" + health1 + "','" + weight2Txt.Text + "','" + health2 + "','" + weight3Txt.Text + "','" +  health3 + "','" + weight4Txt.Text + "','" + health4 + "','" + weight5Txt.Text + "','" + health5 + "','" + body_condition + "','" + dehydration + "','" + respiration + "','" + parasiteDropDown.SelectedItem + "','" + wounds + "','" + deflea + "','" + textArea1.Value + "','" + dispositionDropDown.SelectedItem + "','" + homeCareTxt.Text + "','" + initialsTxt.Text + "','" + inputEntryTxt.Text + "')";
			cmd.ExecuteNonQuery();
			con.Close();

			clear_data();

			

		}

		public void clear_data()
		{
			string message = "Your details have been saved successfully.";
			string script = "window.onload = function(){ alert('";
			script += message;
			script += "');";
			script += "window.location = '";
			script += Request.Url.AbsoluteUri;
			script += "'; }";
			ClientScript.RegisterStartupScript(this.GetType(), "SuccessMessage", script, true);
		}

	}
}