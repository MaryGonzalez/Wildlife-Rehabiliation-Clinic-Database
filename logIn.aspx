<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="logIn.aspx.cs" Inherits="clinicDatabase.logIn" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Log In</title>
	<link rel="stylesheet" href="Style.css" />


	<style>
		body {
			background-color: gainsboro;
		}
	</style>
</head>
<body>
     <form id="form1" runat="server">
	<div class="panel">
		<img src="Img/panel2.jpg" />
		
	</div>
		<div class="sec1">
			<div class="content">
				<h2>Sign In</h2>
				<asp:TextBox ID="usernameTxt" placeholder="Username" AutoCompleteType="Disabled" runat="server"></asp:TextBox><br />
				<asp:TextBox ID="passwordTxt" placeholder="Password" AutoCompleteType="Disabled" runat="server" CssClass="password" type="password"></asp:TextBox><br />
				<asp:Button ID="submitBtn" runat="server" Text="Submit" OnClick="submitBtn_Click" />
				<asp:Label ID="errorMessage" style="color:red; font-size:12px;" runat="server" Text="&nbsp;&nbsp; Invalid username or password"></asp:Label>
			</div>
		</div>
    </form>
</body>
</html>
