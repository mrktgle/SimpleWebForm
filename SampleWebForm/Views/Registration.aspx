<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="SampleWebForm.Views.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Register account</title>
    <link href="../CSS/Style.css" rel="stylesheet" />

</head>
<body>
    <form id="form1" runat="server">
    <section>   
    <div class="container">
        <div class="inner1">
            <span>Sign in with Social Network</span> <br />
            <br />
            <a href="#" class="fb">Login in with Facebook</a>
            <br />
            <br />
            <a href="#" class="tw">Login in with Twitter</a>
            <br />
            <br />
            <a href="#" class="gl">Login in with Google+</a>
            <br />
        </div>
        <div class="inner2">
            <h3>Sign up</h3>
            <asp:TextBox ID="txtUsername" placeholder="Username" runat="server"></asp:TextBox>
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" Font-Size="Medium" ForeColor="Red" Display="Dynamic" ControlToValidate="txtusername" ErrorMessage="Please enter your Username."></asp:RequiredFieldValidator>

            <asp:TextBox ID="txtEmail" placeholder="E-mail" runat="server"></asp:TextBox>
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" Font-Size="Medium" ForeColor="Red" Display="Dynamic" ControlToValidate="txtemail" ErrorMessage="Please enter your Email."></asp:RequiredFieldValidator>

            <asp:TextBox ID="txtPassword" placeholder="Password" runat="server" TextMode="Password" ></asp:TextBox>
            <br />
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" Font-Size="Medium" ForeColor="Red" Display="Dynamic" ControlToValidate="txtpassword" ErrorMessage="Password must be 3 to 10 Characters." ValidationExpression="[a-zA-Z0-9'@&#.\s]{3,10}$"></asp:RegularExpressionValidator>
            <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" Font-Size="Medium" ForeColor="Red" Display="Dynamic" ControlToValidate="txtpassword" ErrorMessage="Please enter your Password." ></asp:RequiredFieldValidator>--%>
            
            <asp:TextBox ID="txtRepassword" placeholder="Retype password" runat="server" TextMode="Password" ></asp:TextBox>
            <br />
            <asp:CompareValidator ID="CompareValidator1" runat="server" Font-Size="Medium" ForeColor="Red" Display="Dynamic" ControlToCompare="txtpassword" ControlToValidate="txtRepassword" ErrorMessage="Password Not Match..."></asp:CompareValidator>

            <br />
            <asp:Button ID="btnSignUp" CssClass="btn" runat="server" Text="Sign Me Up" OnClick="btnSignUp_Click" />
        </div>
    </div>
    </section>
    </form>
</body>
</html>
