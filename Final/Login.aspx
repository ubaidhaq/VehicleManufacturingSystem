<%@ Page Theme="Theme" Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Vehicle_Manufacturing_System.Login" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 1104px;
            height: 60px;
        }
        .auto-style9 {
            text-align: center;
            height: 30px;
            width: 551px;
        }
        .auto-style10 {
            height: 30px;
            width: 551px;
        }
    </style>
</head>
<body>
    
     <form id="form1" runat="server">
    <div style="text-align: center">
    
    
       <h1>Login Page</h1>
         </div>
         <div style="text-align: center">
    
    
             <p>CAR SHOWROOM SYSTEM</p></div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style9">User_ID<asp:TextBox ID="User_ID_text" runat="server" style="margin-left: 98px" ></asp:TextBox>
                    <cc1:FilteredTextBoxExtender ID="User_ID_text_FilteredTextBoxExtender" runat="server" BehaviorID="User_ID_text_FilteredTextBoxExtender" TargetControlID="User_ID_text" FilterType="Numbers">
                    </cc1:FilteredTextBoxExtender>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="User_ID_text" ErrorMessage="Please Enter ID" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style10"></td>
            </tr>
            <tr>
                <td class="auto-style9">&nbsp;Password<asp:TextBox ID="Password_text" runat="server" style="margin-left: 100px" TextMode="Password" Width="173px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Password_text" ErrorMessage="Please enter password" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style10">&nbsp;</td>
            </tr>
        </table>
        <p style="text-align: left">
            <asp:Button ID="Bttn_Login" runat="server" OnClick="Bttn_Login_Click" style="margin-left: 54px" Text="Login" Width="113px" />
        </p>
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
    </form>
</body>
</html>
