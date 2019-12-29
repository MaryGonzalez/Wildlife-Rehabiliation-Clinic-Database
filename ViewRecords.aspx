<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewRecords.aspx.cs" Inherits="clinicDatabase.ViewRecords" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admit Records</title>
	<link rel="stylesheet" href="Style.css" />
	<link href="Bootstrap/css/bootstrap-theme.css" rel="stylesheet" />
	<link href="Bootstrap/css/bootstrap.css" rel="stylesheet" />
	


</head>
<body>
    <form id="form1" runat="server">
		<asp:Button ID="addNew" runat="server" CssClass="btn btn-info" Text="Add New Record" OnClick="addNew_Click" />
		<asp:Button ID="Logout" runat="server" CssClass="btn btn-info" Text="Log Out" OnClick="Logout_Click" />
		<div>

			<div style="overflow-y: scroll; overflow-x: scroll; height: 525px; width: 1280px;">
			<asp:GridView ID="gvdataEntry" runat="server" CssClass="dataEntry" HorizontalAlign="Center" AutoGenerateColumns="false" PagerStyle-CssClass="pager"
 HeaderStyle-CssClass="header" RowStyle-CssClass="rows" EmptyDataText="There are no records to display" HeaderStyle-Width="80px">
				<Columns>
					<asp:BoundField DataField="Name" HeaderText="Finder Name" />
					<asp:BoundField DataField="Email" HeaderText="Finder Email" />
					<asp:BoundField DataField="Address" HeaderText="Finder Address" />
					<asp:BoundField DataField="County" HeaderText="Finder County" />
					<asp:BoundField DataField="City" HeaderText="Finder City" />
					<asp:BoundField DataField="State" HeaderText="Finder State" />
					<asp:BoundField DataField="Zip" HeaderText="Finder Zip" />
					<asp:BoundField DataField="Find_Same_Location" HeaderText="Found At Same Location" />
					<asp:BoundField DataField="Location_Adress" HeaderText="Location Address" />
					<asp:BoundField DataField="Location_County" HeaderText="Location County" />
					<asp:BoundField DataField="Location_City" HeaderText="Location City" />
					<asp:BoundField DataField="Location_State" HeaderText="Location State" />
					<asp:BoundField DataField="Location_Zip" HeaderText="Location Zip" />
					<asp:BoundField DataField="Newsletter" HeaderText="Newsletter" />
					<asp:BoundField DataField="Donation" HeaderText="Donation" />
					<asp:BoundField DataField="Admit_Date" HeaderText="Admit Date" />
					<asp:BoundField DataField="Shift" HeaderText="Shift" />
					<asp:BoundField DataField="Species" HeaderText="Species" />
					<asp:BoundField DataField="Age" HeaderText="Age" />
					<asp:BoundField DataField="Total_Admit" HeaderText="Total Admit" />
					<asp:BoundField DataField="Weight1" HeaderText="Animal Weight 1" />
					<asp:BoundField DataField="Health1" HeaderText="Animal Health 1" />
					<asp:BoundField DataField="Weight2" HeaderText="Animal Weight 2" />
					<asp:BoundField DataField="Health2" HeaderText="Animal Health 2" />
					<asp:BoundField DataField="Weight3" HeaderText="Animal Weight 3" />
					<asp:BoundField DataField="Health3" HeaderText="Animal Health 3" />
					<asp:BoundField DataField="Weight4" HeaderText="Animal Weight 4" />
					<asp:BoundField DataField="Health4" HeaderText="Animal Health 4" />
					<asp:BoundField DataField="Weight5" HeaderText="Animal Weight 5" />
					<asp:BoundField DataField="Health5" HeaderText="Animal Health 5" />
					<asp:BoundField DataField="Body_Condition" HeaderText="Body Condition" />
					<asp:BoundField DataField="Dehydrated" HeaderText="Dehydrated" />
					<asp:BoundField DataField="Respiration" HeaderText="Respiration" />
					<asp:BoundField DataField="Parasites" HeaderText="Parasites" />
					<asp:BoundField DataField="Open_Wounds" HeaderText="Open Wounds" />
					<asp:BoundField DataField="Deflea" HeaderText="Deflea" />
					<asp:BoundField DataField="Notes" HeaderText="Notes" />
					<asp:BoundField DataField="Admit_Disposition" HeaderText="Admit Disposition" />
					<asp:BoundField DataField="Home_Care" HeaderText="Home Care" />
					<asp:BoundField DataField="Staff_Admit_Initials" HeaderText="Staff Admit Initials" />
					<asp:BoundField DataField="Computer_Entry" HeaderText="Computer Entry" />
				
				</Columns>
			</asp:GridView>

        </div>
	</div>

    </form>
</body>
</html>
