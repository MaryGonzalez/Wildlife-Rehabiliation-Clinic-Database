<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="clinicDatabase.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>New Admit</title>
	<meta name="viewport" content="width=device-width, initial-scale=1"/>
	<link rel="stylesheet" href="Style.css" />
	<link href="Bootstrap/css/bootstrap-theme.css" rel="stylesheet" />
	<link href="Bootstrap/css/bootstrap.css" rel="stylesheet" />
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
	

	<!--Calendar-->
	<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
	<link rel="stylesheet" href="/resources/demos/style.css">

		
	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	
	<style>
		body {
			background-color: #8ED3E3;
		}
	</style>

</head>
<body>
	
    <form id="form1" runat="server">
       
		<asp:Button ID="BackButton" runat="server" Text="Back" CssClass="btn btn-primary" OnClick="BackButton_Click" />
		
		<div class="container">
		
			<div class="col-sm-6" style="background-color:white; height: 550px; overflow-y:auto;">
				<br />
				<center><h4><b>Finder Information</b></h4></center><br />

				
				<div class="form-row">


					<!--Finder Name-->
					<div class="form-group col-md-6">
					  <label for="inputName">Name</label>
				   	  <asp:TextBox ID="nameTxt" runat="server" AutoCompleteType="Disabled" class="form-control" placeholder="Name"></asp:TextBox>
					</div>

					<!--Finder Email-->
					<div class="form-group col-md-6">
					  <label for="inputEmail">Email</label>
						<asp:TextBox ID="emailTxt" runat="server" TextMode="Email" AutoCompleteType="Disabled" class="form-control" placeholder="Email"></asp:TextBox>
					</div>
				  </div>

				  <!--Finder Address-->
				  <div class="form-group col-md-8">
					<label for="inputAddress">Address</label>
					  <asp:TextBox ID="addressTxt" runat="server" AutoCompleteType="Disabled" class="form-control" placeholder="1234 Main St"></asp:TextBox>
				  </div>

				  <!--Finder County-->
				  <div class="form-group col-md-4">
					<label for="inputCounty">County</label>
					  <asp:TextBox ID="countyTxt" runat="server" AutoCompleteType="Disabled" class="form-control" placeholder="County"></asp:TextBox>
				  </div>

				  <!--Finder City-->
					<div class="form-group col-md-5">
					  <label for="inputCity">City</label>
						<asp:TextBox ID="cityTxt" runat="server" AutoCompleteType="Disabled" class="form-control"></asp:TextBox>
					</div>

					<!--Finder State-->
					<div class="form-group col-md-4">
					  <label for="inputState">State</label>
						<asp:DropDownList ID="stateDropDown" class="form-control" runat="server" >
							<asp:ListItem selected="True">-- Select --</asp:ListItem>
							<asp:ListItem>Missouri</asp:ListItem>
							<asp:ListItem>Illinois</asp:ListItem>
						</asp:DropDownList>
					</div>
				

					<!--Finder Zip-->
					<div class="form-group col-md-3">
					  <label for="inputZip">Zip</label>
						<asp:TextBox ID="zipTxt" runat="server" AutoCompleteType="Disabled" class="form-control"></asp:TextBox>
					 </div>


				<!--Animal Found Location Button--> 
				  <div class="form-group" id="found"><br />
					  <label for="inputFound" class="col-md-9">Was the animal found at the same location as above</label>
					  <div class="col-sm-3"> 
						  <asp:RadioButtonList RepeatDirection="Horizontal" ID="foundRadio" runat="server">
						  <asp:ListItem>Yes</asp:ListItem>
						  <asp:ListItem>No</asp:ListItem>
						  </asp:RadioButtonList>
					  </div>
				  </div>


				
						 



	<!---------If Where Animal Was Found Is Different Location-------------->
	<!---------Only Appears When "NO" Is Selected On Found Location Button-------------->
	<div id="animalFound" style="display:none">
					<div class="form-group col-md-12">
					  <center><h5><b><u>Where was the animal found</u></b></h5></center><br />
					</div>

					 <!--Finder Address-->
				  <div class="form-group col-md-8">
					<label for="inputAddress">Address</label>
					  <asp:TextBox ID="addressTxt2" runat="server" AutoCompleteType="Disabled" class="form-control" placeholder="1234 Main St"></asp:TextBox>
				  </div>

				  <!--Finder County-->
				  <div class="form-group col-md-4">
					<label for="inputCounty">County</label>
					  <asp:TextBox ID="countyTxt2" runat="server" AutoCompleteType="Disabled" class="form-control" placeholder="County"></asp:TextBox>
				  </div>

				  <!--Finder City-->
					<div class="form-group col-md-5">
					  <label for="inputCity">City</label>
						<asp:TextBox ID="cityTxt2" runat="server" AutoCompleteType="Disabled" class="form-control"></asp:TextBox>
					</div>

					<!--Finder State-->
					<div class="form-group col-md-4">
					  <label for="inputState">State</label>
						<asp:DropDownList ID="stateDropDown2" runat="server" class="form-control">
							<asp:ListItem selected="True">-- Select --</asp:ListItem>
							<asp:ListItem>Missouri</asp:ListItem>
							<asp:ListItem>Illinois</asp:ListItem>
						</asp:DropDownList>
					</div>


					<!--Finder Zip-->
					 <div class="form-group col-md-3">
					  <label for="inputZip">Zip</label>
						<asp:TextBox ID="zipTxt2" runat="server" AutoCompleteType="Disabled" class="form-control"></asp:TextBox>
					 </div>
	</div>
					
	<!--------------------------------------------------------------------> 

				  <!--Newsletter-->
				  <div class="form-group "><br />
					  <label for="inputNewsletter" class="col-md-6">Do they want the newsletter:</label>
					  <div class="col-md-6">
					  <asp:RadioButton ID="newsletterYes" GroupName="newsletter" Text="Yes" runat="server" />
					  <asp:RadioButton ID="newsletterNo" GroupName="newsletter" Text="No" runat="server" />
					  <asp:RadioButton ID="newsletterAlready" GroupName="newsletter" Text="Already receive it" runat="server" />
					  </div>
				  </div>



					<!--Donation-->
					<div class="form-group col-md-12">
					  <label for="inputDonation">Donation</label>
					  <asp:TextBox ID="donationTxt" runat="server" AutoCompleteType="Disabled" class="form-control"></asp:TextBox>
					</div>
						   							 						  						  
 
</div>

<!---------------------------------------------------------------------------------------------------->
<!---------------------------------------------------------------------------------------------------->
<!---------------------------------------------------------------------------------------------------->
	<!----------------------------------------Right Column-------------------------------------------->
			
	
		<div class="col-sm-6" style="height: 550px; background-color:white; overflow-y:scroll;" >

				<br />
				<center><h4><b>Animal Information</b></h4></center><br />


				
				<div class="form-row">

				 <!--Admit Date-->
					<div class="form-group col-md-4">
					  <label for="inputAdmitDate">Admit Date</label>
					  	<asp:TextBox ID="datepicker" runat="server" class="form-control"></asp:TextBox>
					</div>
					
					
					<!--Shift-->
					<div class="form-group col-md-4">
					  <label for="inputShift">Shift</label>
						<asp:DropDownList ID="shiftDropDown" runat="server" class="form-control">
							<asp:ListItem selected="True">-- Select --</asp:ListItem>
							<asp:ListItem>Sunday AM</asp:ListItem>
							<asp:ListItem>Sunday PM</asp:ListItem>
							<asp:ListItem>Monday AM</asp:ListItem>
							<asp:ListItem>Monday PM</asp:ListItem>
							<asp:ListItem>Tuesday AM</asp:ListItem>
							<asp:ListItem>Tuesday PM</asp:ListItem>
							<asp:ListItem>Wednesday AM</asp:ListItem>
							<asp:ListItem>Wednesday PM</asp:ListItem>
							<asp:ListItem>Thursday AM</asp:ListItem>
							<asp:ListItem>Thursday PM</asp:ListItem>
							<asp:ListItem>Friday AM</asp:ListItem>
							<asp:ListItem>Friday PM</asp:ListItem>
							<asp:ListItem>Saturday AM</asp:ListItem>
							<asp:ListItem>Saturday PM</asp:ListItem>
						</asp:DropDownList>
					</div>


					<!--Species-->
					<div class="form-group col-md-4">
					  <label for="inputShift">Species</label>
						<asp:DropDownList ID="speciesDropDown" runat="server" class="form-control">
							<asp:ListItem selected="True">-- Select --</asp:ListItem>
							<asp:ListItem>Beaver</asp:ListItem>
							<asp:ListItem>Badger</asp:ListItem>
							<asp:ListItem>Bobcat</asp:ListItem>
							<asp:ListItem>Coyote</asp:ListItem>
							<asp:ListItem>Fox</asp:ListItem>
							<asp:ListItem>Groundhog</asp:ListItem>
							<asp:ListItem>Mink</asp:ListItem>
							<asp:ListItem>Opossum</asp:ListItem>
							<asp:ListItem>Rabbit</asp:ListItem>
							<asp:ListItem>Raccoon</asp:ListItem>
							<asp:ListItem>Skunk</asp:ListItem>
							<asp:ListItem>Squirrel</asp:ListItem>
						</asp:DropDownList>
					</div>

					
				  <!--Species Age-->
				  <div class="form-group">
					  <label for="inputSpeciesAge" class="col-md-1">Age</label>
					  <div class="col-sm-6">
						  <asp:RadioButton ID="pinkieRadio" GroupName="age" Text="Pinkie" runat="server" />
						  <asp:RadioButton ID="babyRadio" GroupName="age" Text="Baby" runat="server" />
						  <asp:RadioButton ID="juvenileRadio" GroupName="age" Text="Juvenile" runat="server" />
						  <asp:RadioButton ID="adultRadio" GroupName="age" Text="Adult" runat="server" />
					  </div>
				  </div>


			
				<!--Total Admit-->
					  <div class="form-group col-sm-5" id="total">
						  <label for="inputTotal">Total Admit</label>
							<asp:DropDownList ID="totalDropDown" runat="server" class="form-control">
								<asp:ListItem selected="True">-- Select --</asp:ListItem>
								<asp:ListItem Text="1" Value="1"></asp:ListItem>
								<asp:ListItem Text="2" Value="2"></asp:ListItem>
								<asp:ListItem Text="3" Value="3"></asp:ListItem>
								<asp:ListItem Text="4" Value="4"></asp:ListItem>
								<asp:ListItem Text="5" Value="5"></asp:ListItem>
							</asp:DropDownList>
					  </div>




<!------------------------------------WEIGHT 1--------------------------------------------------->
					<!--Species Weight 1-->
					<div class="form-group col-md-5">
					  <label for="inputWeight1">Species Weight</label>
						<asp:TextBox ID="weight1Txt" AutoCompleteType="Disabled" runat="server" class="form-control"></asp:TextBox>
					</div>


					<!--Body Condition 1-->
				  <div class="form-group">
					  <div class="col-sm-7"style="height: 90px;"><br /><br />
					  <asp:RadioButton ID="healthy1" GroupName="health1" Text="Healthy" runat="server" />
					  <asp:RadioButton ID="moderate1" GroupName="health1" Text="Moderate" runat="server" />
					  <asp:RadioButton ID="critical1" GroupName="health1" Text="Critical" runat="server" />
					  </div>
				  </div>




<!------------------------------------WEIGHT 2---------------------------------------------->
		<div id="2" class="weight2" style="display:none">  
					  <!--Species Weight 2-->
					 <div class="form-group col-md-5">
					  <label for="inputWeight2">Species Weight</label>
						<asp:TextBox ID="weight2Txt" AutoCompleteType="Disabled" runat="server" class="form-control"></asp:TextBox>
					</div>


					<!--Body Condition 2-->
					<div class="form-group">
					  <div class="col-sm-7" style="height: 90px;"><br /><br />
						  <asp:RadioButton ID="healthy2" GroupName="health2" Text="Healthy" runat="server" />
						  <asp:RadioButton ID="moderate2" GroupName="health2" Text="Moderate" runat="server" />
						  <asp:RadioButton ID="critical2" GroupName="health2" Text="Critical" runat="server" />
					  </div>
				    </div>

		</div>






<!------------------------------------WEIGHT 3---------------------------------------------->
		<div id="3" class="weight3" style="display:none">  
				 <!--Species Weight 3-->
					<div class="form-group col-md-5">
					  <label for="inputWeight3">Species Weight</label>
						<asp:TextBox ID="weight3Txt" AutoCompleteType="Disabled" runat="server" class="form-control"></asp:TextBox>
					</div>

					<!--Body Condition 3-->
					<div class="form-group">
					  <div class="col-sm-7" style="height: 90px;"><br /><br />
						  <asp:RadioButton ID="healthy3" GroupName="health3" Text="Healthy" runat="server" />
						  <asp:RadioButton ID="moderate3" GroupName="health3" Text="Moderate" runat="server" />
						  <asp:RadioButton ID="critical3" GroupName="health3" Text="Critical" runat="server" />
					  </div>
				    </div>

			</div>




<!------------------------------------WEIGHT 4---------------------------------------------->
		<div id="4" class="weight4" style="display:none"> 

					<!--Species Weight 4-->
					<div class="form-group col-md-5">
					    <label for="inputWeight4">Species Weight</label>
						<asp:TextBox ID="weight4Txt" AutoCompleteType="Disabled" runat="server" class="form-control"></asp:TextBox>
					</div>



					<!--Body Condition 4-->
					<div class="form-group">
					  <div class="col-sm-7" style="height: 90px;"><br /><br />
						  <asp:RadioButton ID="healthy4" GroupName="health4" Text="Healthy" runat="server" />
						  <asp:RadioButton ID="moderate4" GroupName="health4" Text="Moderate" runat="server" />
						  <asp:RadioButton ID="critical4" GroupName="health4" Text="Critical" runat="server" />
					  </div>
				    </div>



		</div>





<!------------------------------------WEIGHT 5---------------------------------------------->
		<div id="5" class="weight5" style="display:none"> 

					<!--Species Weight 5-->
					<div class="form-group col-md-5">
					    <label for="inputWeight5">Species Weight</label>
						<asp:TextBox ID="weight5Txt" AutoCompleteType="Disabled" runat="server" class="form-control"></asp:TextBox>
					</div>

					<!--Body Condition 5-->
					<div class="form-group">
					  <div class="col-sm-7" style="height: 90px;"><br /><br />
						  <asp:RadioButton ID="healthy5" GroupName="health5" Text="Healthy" runat="server" />
						  <asp:RadioButton ID="moderate5" GroupName="health5" Text="Moderate" runat="server" />
						  <asp:RadioButton ID="critical5" GroupName="health5" Text="Critical" runat="server" />
					  </div>
				    </div>



		</div>


<!----------------------------------------------------------------------->
          


				 <!--Body ConditionType2-->
				 <div class="form-group">
					  <label for="inputSpeciesCondition2" class="col-sm-4 col-form-label">Body Condition</label>
					  <div class="col-sm-8">
					  <asp:RadioButton ID="thinRadio" GroupName="condition2" Text="Thin" runat="server" />
					  <asp:RadioButton ID="normalConditionRadio" GroupName="condition2" Text="Normal" runat="server" />
					  <asp:RadioButton ID="overweightRadio" GroupName="condition2" Text="Overweight" runat="server" />
					  </div>
				 </div>


				<!--Species Dehyrated-->
				<div class="form-group"><br />
					  <label for="inputDehydration" class="col-md-4">Dehydrated</label>
					  <div class="col-sm-8">
					  <asp:RadioButton ID="dehydratedNo" GroupName="dehydrated" Text="No" runat="server" />
					  <asp:RadioButton ID="dehydratedYes" GroupName="dehydrated" Text="Yes" runat="server" />
					  <asp:RadioButton ID="dehydratedSevere" GroupName="dehydrated" Text="Severe" runat="server" />
					  </div>
				</div>


				<!--Species Respiration-->
				<div class="form-group"><br />
					  <label for="inputSpeciesRespiration" class="col-md-4">Respiration</label>
					  <div class="col-sm-8">
					  <asp:RadioButton ID="respirationNormal" GroupName="respiration" Text="Normal" runat="server" />
					  <asp:RadioButton ID="respirationRapid" GroupName="respiration" Text="Rapid" runat="server" />
					  <asp:RadioButton ID="respirationSlow" GroupName="respiration" Text="Slow" runat="server" />
					  <asp:RadioButton ID="respirationLabored" GroupName="respiration" Text="Labored" runat="server" />
					  </div>
				 </div>



					<!--Species Parasites-->
					<div class="form-group col-md-4">
					  <label for="inputParasites">Parasites</label>
						<asp:DropDownList ID="parasiteDropDown" runat="server" class="form-control">
							<asp:ListItem selected="True">-- Select --</asp:ListItem>
							<asp:ListItem Text="Fleas" Value="1"></asp:ListItem>
							<asp:ListItem Text="Ticks" Value="2"></asp:ListItem>
							<asp:ListItem Text="Fly Packets" Value="3"></asp:ListItem>
							<asp:ListItem Text="Maggots" Value="4"></asp:ListItem>
							<asp:ListItem Text="None" Value="5"></asp:ListItem>
						</asp:DropDownList>
					</div>




					<!--Species Wounds-->
				  <div class="form-group col-md-4"><br />
					  <label for="inputSpeciesWounds">Any open wounds</label>
					  <asp:RadioButton ID="woundsNo" GroupName="wounds" Text="No" runat="server" />
					  <asp:RadioButton ID="woundsYes" GroupName="wounds" Text="Yes" runat="server" />
				 </div>


					<!--Species deflea-->
					<div class="form-group col-md-4"><br />
						<label for="inputSpeciesDeflea">Did you deflea</label>
						<asp:RadioButton ID="defleaNo" GroupName="deflea" Text="No" runat="server" />
						<asp:RadioButton ID="defleaYes" GroupName="deflea" Text="Yes" runat="server" />
					</div>



					<!--notes-->
					<div class="form-group col-md-12">
						<label for="inputNotes">Additional Notes</label>
						<div class="form-group">
							 <textarea class="form-control" id="textArea1" rows="3" AutoCompleteType="Disabled" runat="server" placeholder="Why was animal admitted: Injured, orphaned, GBC, GBD"></textarea>
					    </div>
					</div>


					<!--Admit Disposition-->
					<div class="form-group col-md-8">
					  <label for="inputDisposition">Admit Disposition</label>
						<asp:DropDownList ID="dispositionDropDown" runat="server" class="form-control">
							<asp:ListItem selected="True">-- Select --</asp:ListItem>
							<asp:ListItem Text="Dead on arrival" Value="01"></asp:ListItem>
							<asp:ListItem Text="Euthanize" Value="02"></asp:ListItem>
							<asp:ListItem Text="Keep at WRC" Value="03"></asp:ListItem>
							<asp:ListItem Text="Home Care" Value="04"></asp:ListItem>
						</asp:DropDownList>
					</div>

					<div id="00" class="select" style="display:none"> select </div>
					<div id="01" class="doa" style="display:none"> doa </div>
					<div id="02" class="euth" style="display:none"> euth </div>
					<div id="03" class="keep" style="display:none"> keep </div>

				   
					<!--Home Care Name-->
				    <div id="04" class="home" style="display:none">			   
						<div class="form-group col-md-4">
					    <label for="inputWeight4">Name</label>
						<asp:TextBox ID="homeCareTxt" AutoCompleteType="Disabled" runat="server" class="form-control"></asp:TextBox>
						</div>

					</div>


					 <!--Staff Admit Initials-->
					 <div class="form-group col-md-6">
						 <label for="inputInitials" >Staff Admit Initials</label>
						  <asp:TextBox ID="initialsTxt" AutoCompleteType="Disabled" placeholder="Initials" runat="server" class="form-control"></asp:TextBox>
				     </div>


					<!--Computer Entry Initials-->
					<div class="form-group col-md-6">
						 <label for="inputEntry" >Computer Entry Initials</label>
						 <asp:TextBox ID="inputEntryTxt" AutoCompleteType="Disabled" placeholder="Initials" runat="server" class="form-control"></asp:TextBox>
				     </div>
					

					<!--Submit button-->
					<div class="form-group ">
						<div class="col-sm-12">
						<asp:Button ID="submitButton1" class="btn btn-secondary btn-md" runat="server" Text="Submit" OnClick="submitButton1_Click1" />
						</div>
					</div>

			</div>

		</div>
				
	</div>
	
</form>
	   
	<script src="Bootstrap/js/bootstrap.min.js"></script>
	<script src="JavaScript.js"></script>
		
</body>
</html>
