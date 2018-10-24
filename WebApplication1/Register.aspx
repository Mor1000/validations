<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="WebApplication1.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:TextBox ID="userTextBox" placeHolder="user name" runat="server"></asp:TextBox>

        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" EnableClientScript="false" ControlToValidate="userTextBox" runat="server" ValidationGroup="signUp">*user required</asp:RequiredFieldValidator>
        </div>

        <p>
            <asp:TextBox ID="passwordTextBox" placeHolder="password" TextMode="Password" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" EnableClientScript="false" ControlToValidate="passwordTextBox" runat="server" ValidationGroup="signUp">*password required</asp:RequiredFieldValidator>
        </p>
        <p>
            <asp:TextBox ID="confirmPasswordTextBox" placeHolder="confirm password" TextMode="Password" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" EnableClientScript="false" ControlToValidate="confirmPasswordTextBox" runat="server" ValidationGroup="signUp">*confirm password required</asp:RequiredFieldValidator>
        </p>
        <p>
            <asp:TextBox ID="emailTextBox" placeHolder="email"  runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" EnableClientScript="false" ControlToValidate="emailTextBox" runat="server" ValidationGroup="signUp">*email required</asp:RequiredFieldValidator>
        </p>
        <asp:TextBox ID="birthDate" placeHolder="birthdate" TextMode="Date" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" EnableClientScript="false" ControlToValidate="birthDate" runat="server" ValidationGroup="signUp">*birthdate required</asp:RequiredFieldValidator>

        <p>
            <asp:TextBox ID="numberTextBox" placeHolder="number"  runat="server" Style="margin-bottom: 0px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" EnableClientScript="false" ControlToValidate="numberTextBox" runat="server" ValidationGroup="signUp">*number required</asp:RequiredFieldValidator>
        </p>

        <p>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Sign Up!" ValidationGroup="signUp" Height="30px" style="margin-top: 0px" UseSubmitBehavior="False" Width="80px" />

            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="clear all" Height="30px" UseSubmitBehavior="False" Width="80px" />
        </p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
    
            <asp:CustomValidator ID="CustomValidator2" runat="server" OnServerValidate="CustomValidator2_ServerValidate" ErrorMessage="number should be even" EnableClientScript="False" ValidationGroup="signUp"></asp:CustomValidator>
               </p>
        <p>
            <asp:RangeValidator ID="RangeValidator1" EnableClientScript="false" ControlToValidate="birthDate" runat="server" ErrorMessage="date is out of range" Type="Date" MinimumValue="02/10/1999" maximumvalue="24/10/2018" ValidationGroup="signUp"></asp:RangeValidator>   
            </p>
        
        <p>
            <asp:CustomValidator ID="CustomValidatorPassword" ControlToValidate="passwordTextBox" EnableClientScript="false" OnServerValidate="CheckChars" runat="server" ErrorMessage="password should have more than 4 chars" ControlToCompare="passwordTextBox" ValidationGroup="signUp"></asp:CustomValidator>
            </p>
        <p>
            <asp:CustomValidator ID="CustomValidator1" runat="server" OnServerValidate="CheckChars" ErrorMessage="user should have more than 4 chars" EnableClientScript="False" ControlToValidate="userTextBox" ValidationGroup="signUp"></asp:CustomValidator>
              </p>
        <p>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="confirmPasswordTextBox" ControlToCompare="passwordTextBox" EnableClientScript="False" ValidationGroup="signUp" ErrorMessage="passwords don't match"></asp:CompareValidator>
           
             </p>
        <p>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" EnableClientScript="false" ControlToValidate="emailTextBox"  runat="server" ErrorMessage="email not valid" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="signUp"></asp:RegularExpressionValidator>
               </p>
    
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
        
    </form>
</body>
</html>
