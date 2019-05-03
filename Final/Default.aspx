<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
<form id="form1" runat="server">
<asp:ScriptManager ID="ScriptManager1" runat="server">
</asp:ScriptManager>
<b>Numbers and Digits</b><br />
<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
<cc1:FilteredTextBoxExtender ID="FilteredTextBoxExtender1" runat="server" FilterType="Numbers"
    TargetControlID="TextBox1" />
<hr />
<b>Alphabets (Uppercase and Lowercase)</b><br />
<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
<cc1:FilteredTextBoxExtender ID="FilteredTextBoxExtender2" runat="server" FilterType="LowercaseLetters, UppercaseLetters"
    TargetControlID="TextBox2" />
<hr />
<b>Alphabets (Uppercase only)</b><br />
<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
<cc1:FilteredTextBoxExtender ID="FilteredTextBoxExtender3" runat="server" FilterType="UppercaseLetters"
    TargetControlID="TextBox3" />
<hr />
<b>Alphabets (Lowercase only)</b><br />
<asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
<cc1:FilteredTextBoxExtender ID="FilteredTextBoxExtender4" runat="server" FilterType="LowercaseLetters"
    TargetControlID="TextBox4" />
<hr />
<b>Alphabets and Numbers (Alphanumeric)</b><br />
<asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
<cc1:FilteredTextBoxExtender ID="FilteredTextBoxExtender6" runat="server" FilterType="Numbers, UppercaseLetters, LowercaseLetters"
    TargetControlID="TextBox5" />
<hr />
<b>Email Address (Lower case alphabets, numbers, @ and dot)</b><br />
<asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
<cc1:FilteredTextBoxExtender ID="FilteredTextBoxExtender5" runat="server" FilterType="Numbers, LowercaseLetters, Custom"
    ValidChars=".@" TargetControlID="TextBox6" />
<hr />
    <b>Decimal Number(Digits and dot)</b><br />
<asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
<cc1:FilteredTextBoxExtender ID="FilteredTextBoxExtender7" runat="server" FilterType="Numbers, Custom"
    ValidChars="." TargetControlID="TextBox7" />
<hr />
    <b>Money or Currency (Digits, comma and dot)</b><br />
<asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
<cc1:FilteredTextBoxExtender ID="FilteredTextBoxExtender8" runat="server" FilterType="Numbers, Custom"
    ValidChars=".," TargetControlID="TextBox8" />
</form>
    
</body>
</html>
