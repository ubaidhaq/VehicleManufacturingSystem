<%@ Page Theme="Theme"Language="C#" AutoEventWireup="true" CodeBehind="Accounts.aspx.cs" Inherits="Vehicle_Manufacturing_System.Sales" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #form1 {
            text-align: center;
        }
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            height: 26px;
        }
    </style>
</head>
<body style="text-align: center">
    <form id="form1" runat="server">
    <div class="auto-style1">
    
        <h2>Accounting Form</h2> <br />
        <br />
        <br />
        <asp:Label ID="label_id" runat="server" Text="Label" Font-Bold="True" Font-Size="Large"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label_post" runat="server" Text="Label" Font-Bold="True" Font-Size="Large"></asp:Label>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DBconnect %>" SelectCommand="SELECT * FROM [Car_sold]"></asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="chassis_no" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None"  style="text-align: left; margin-left: 264px; " Width="319px">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="emp_id" HeaderText="emp_id" SortExpression="emp_id" />
                <asp:BoundField DataField="car_id" HeaderText="car_id" SortExpression="car_id" />
                <asp:BoundField DataField="colour_id" HeaderText="colour_id" SortExpression="colour_id" />
                <asp:BoundField DataField="customer_id" HeaderText="customer_id" SortExpression="customer_id" />
                <asp:BoundField DataField="chassis_no" HeaderText="chassis_no" ReadOnly="True" SortExpression="chassis_no" />
                <asp:BoundField DataField="instalment_year" HeaderText="instalment_year" SortExpression="instalment_year" />
                <asp:BoundField DataField="date_of_purchase" HeaderText="date_of_purchase" SortExpression="date_of_purchase" />
            </Columns>
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
            <SortedAscendingCellStyle BackColor="#FDF5AC" />
            <SortedAscendingHeaderStyle BackColor="#4D0000" />
            <SortedDescendingCellStyle BackColor="#FCF6C0" />
            <SortedDescendingHeaderStyle BackColor="#820000" />
        </asp:GridView>
        </div>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:GridView ID="GridView2" runat="server" style="margin-left: 262px; margin-top: 0px" Width="321px" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal">
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#242121" />
        </asp:GridView>
        &nbsp;<br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="text_id" runat="server" style="margin-bottom: 0px; margin-left: 273px;" Width="128px">ID</asp:TextBox>
        <asp:TextBox ID="text_no_task" runat="server" Width="125px" style="margin-left: 60px">No of Tasks</asp:TextBox>
        <asp:Button ID="Button_up_task" runat="server" OnClick="Button_up_task_Click" Text="Update Task" style="margin-left: 263px" />
        <br />
        <br />
        <br />
        <p>
            <asp:CheckBox ID="CheckBox1" runat="server"  Text="Customer exist already" />
        </p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <table class="auto-style4">
                        <tr>
                            <td class="auto-style8">Customer Id</td>
                            <td class="auto-style9">
                                <asp:TextBox ID="cusid" runat="server" Height="16px" style="margin-left: 0px" Width="787px" Wrap="False"></asp:TextBox>
                                <cc1:FilteredTextBoxExtender ID="cusid_FilteredTextBoxExtender" runat="server" BehaviorID="cusid_FilteredTextBoxExtender" FilterType="Numbers" TargetControlID="cusid">
                                </cc1:FilteredTextBoxExtender>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style5">First Name</td>
                            <td>
                                <asp:TextBox ID="fname" runat="server" Height="16px" style="margin-left: 0px" Width="787px"></asp:TextBox>
                                <cc1:FilteredTextBoxExtender ID="fname_FilteredTextBoxExtender" runat="server" BehaviorID="fname_FilteredTextBoxExtender" FilterType="LowercaseLetters, UppercaseLetters" TargetControlID="fname">
                                </cc1:FilteredTextBoxExtender>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style5">Last Name</td>
                            <td>
                                <asp:TextBox ID="lname" runat="server" Height="16px" style="margin-left: 0px" Width="787px"></asp:TextBox>
                                <cc1:FilteredTextBoxExtender ID="lname_FilteredTextBoxExtender" runat="server" BehaviorID="lname_FilteredTextBoxExtender" FilterType="LowercaseLetters, UppercaseLetters" TargetControlID="lname">
                                </cc1:FilteredTextBoxExtender>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">House Number </td>
                            <td class="auto-style2">
                                <asp:TextBox ID="house_num" runat="server" Height="16px" style="margin-left: 0px" Width="787px"></asp:TextBox>
                                <cc1:FilteredTextBoxExtender ID="house_num_FilteredTextBoxExtender" runat="server" BehaviorID="house_num_FilteredTextBoxExtender" FilterType="LowercaseLetters, UppercaseLetters, Custom" ValidChars=".,- " TargetControlID="house_num">
                                </cc1:FilteredTextBoxExtender>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style5">Area </td>
                            <td>
                                <asp:TextBox ID="area" runat="server" Height="16px" style="margin-left: 0px" Width="787px"></asp:TextBox>
                                <cc1:FilteredTextBoxExtender ID="area_FilteredTextBoxExtender" runat="server" BehaviorID="area_FilteredTextBoxExtender"  FilterType="LowercaseLetters, UppercaseLetters, Custom" ValidChars=".,- " TargetControlID="area">
                                </cc1:FilteredTextBoxExtender>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style5">Town</td>
                            <td>
                                <asp:TextBox ID="town" runat="server" Height="16px" style="margin-left: 0px" Width="787px"></asp:TextBox>
                                <cc1:FilteredTextBoxExtender ID="town_FilteredTextBoxExtender" runat="server" BehaviorID="town_FilteredTextBoxExtender" FilterType="LowercaseLetters, UppercaseLetters, Custom" ValidChars=".,- " TargetControlID="town">
                                </cc1:FilteredTextBoxExtender>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style6">City </td>
                            <td class="auto-style7">
                                <asp:TextBox ID="city" runat="server" Height="16px" style="margin-left: 0px" Width="787px"></asp:TextBox>
                                <cc1:FilteredTextBoxExtender ID="city_FilteredTextBoxExtender" runat="server" BehaviorID="city_FilteredTextBoxExtender" FilterType="LowercaseLetters, UppercaseLetters" TargetControlID="city">
                                </cc1:FilteredTextBoxExtender>
                            </td>
                        </tr>
                    </table>
        <br />
                <table class="auto-style4">
                        <tr>
                            <td class="auto-style8">Employee Id</td>
                            <td class="auto-style9">
                                <asp:TextBox ID="TextBox1" runat="server" Height="16px" style="margin-left: 0px" Width="787px" Wrap="False"></asp:TextBox>
                                <cc1:FilteredTextBoxExtender ID="TextBox1_FilteredTextBoxExtender" runat="server" BehaviorID="TextBox1_FilteredTextBoxExtender" FilterType="Numbers" TargetControlID="TextBox1">
                                </cc1:FilteredTextBoxExtender>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style5">Car Id</td>
                            <td>
                                <asp:TextBox ID="TextBox2" runat="server" Height="16px" style="margin-left: 0px" Width="787px"></asp:TextBox>
                                <cc1:FilteredTextBoxExtender ID="TextBox2_FilteredTextBoxExtender" runat="server" BehaviorID="TextBox2_FilteredTextBoxExtender" FilterType="Numbers" TargetControlID="TextBox2">
                                </cc1:FilteredTextBoxExtender>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style5">Colour Id</td>
                            <td>
                                <asp:TextBox ID="TextBox3" runat="server" Height="16px" style="margin-left: 0px" Width="787px"></asp:TextBox>
                                <cc1:FilteredTextBoxExtender ID="TextBox3_FilteredTextBoxExtender" runat="server" BehaviorID="TextBox3_FilteredTextBoxExtender" FilterType="Numbers" TargetControlID="TextBox3">
                                </cc1:FilteredTextBoxExtender>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style5">Customer id</td>
                            <td>
                                <asp:TextBox ID="TextBox4" runat="server" Height="16px" style="margin-left: 0px" Width="787px"></asp:TextBox>
                                <cc1:FilteredTextBoxExtender ID="TextBox4_FilteredTextBoxExtender" runat="server" BehaviorID="TextBox4_FilteredTextBoxExtender" FilterType="Numbers" TargetControlID="TextBox4">
                                </cc1:FilteredTextBoxExtender>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style5">Chassis No </td>
                            <td>
                                <asp:TextBox ID="TextBox5" runat="server" Height="16px" style="margin-left: 0px" Width="787px"></asp:TextBox>
                                <cc1:FilteredTextBoxExtender ID="TextBox5_FilteredTextBoxExtender" runat="server" BehaviorID="TextBox5_FilteredTextBoxExtender" FilterType="Numbers" TargetControlID="TextBox5">
                                </cc1:FilteredTextBoxExtender>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style5">Instalment</td>
                            <td>
                                <asp:TextBox ID="TextBox6" runat="server" Height="16px" style="margin-left: 0px" Width="787px"></asp:TextBox>
                                <cc1:FilteredTextBoxExtender ID="TextBox6_FilteredTextBoxExtender" runat="server" BehaviorID="TextBox6_FilteredTextBoxExtender" FilterType="Numbers" TargetControlID="TextBox6">
                                </cc1:FilteredTextBoxExtender>
                            </td>
                        </tr>
                        </table>
        
        <asp:Button ID="Button_Submit" runat="server" OnClick="Button_Submit_Click" Text="Submit" style="margin-left: 0px" Width="112px" />
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
    </form>
</body>
</html>
