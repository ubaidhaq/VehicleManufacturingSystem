<%@ Page Theme="Theme"Language="C#" AutoEventWireup="true" CodeBehind="HR.aspx.cs" Inherits="Vehicle_Manufacturing_System.HR" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1
        {
            width: 89%;
            margin-bottom: 0px;
            height: 878px;
        }
        .auto-style3
        {
            text-align: center;
            width: 1053px;
        }
        #form1
        {
            height: 934px;
        }
        .auto-style4
        {
            width: 100%;
            height: 185px;
        }
        .auto-style8
        {
            width: 157px;
            height: 26px;
            text-align: center;
        }
        .auto-style9
        {
            height: 26px;
        }
        .auto-style5
        {
            width: 157px;
        }
        .auto-style6
        {
            width: 157px;
            height: 11px;
        }
        .auto-style7
        {
            height: 11px;
        }
        .auto-style10 {
            width: 157px;
            height: 1px;
            text-align: center;
        }
        .auto-style11 {
            height: 1px;
        }
        .auto-style12 {
            width: 157px;
            text-align: center;
        }
        .auto-style13 {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="text-align: center">
    
        <h2> HR form</h2> </div>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <table class="auto-style1">
            <tr>
                <td class="auto-style3">
                    <div class="auto-style13">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Label ID="label_id" runat="server" Text="Label" Font-Bold="True" Font-Size="Large"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="label_post" runat="server" Text="Label" Font-Bold="True" Font-Size="Large"></asp:Label>
                    <br />
                    <br />
                    <br />
                    <br />
                    </div>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="emp_id" DataSourceID="SqlDataSource1" Width="1034px" CellPadding="4" ForeColor="#333333" GridLines="None" style="text-align: center">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="emp_id" HeaderText="emp_id" ReadOnly="True" SortExpression="emp_id" />
                            <asp:BoundField DataField="First_Name" HeaderText="First_Name" SortExpression="First_Name" />
                            <asp:BoundField DataField="Last_Name" HeaderText="Last_Name" SortExpression="Last_Name" />
                            <asp:BoundField DataField="job" HeaderText="job" SortExpression="job" />
                            <asp:BoundField DataField="Manager_Id" HeaderText="Manager_Id" SortExpression="Manager_Id" />
                            <asp:BoundField DataField="Task_Assign" HeaderText="Task_Assign" SortExpression="Task_Assign" />
                            <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                            <asp:BoundField DataField="Department_No" HeaderText="Department_No" SortExpression="Department_No" />
                            <asp:BoundField DataField="Commision" HeaderText="Commision" SortExpression="Commision" />
                            <asp:BoundField DataField="Salary" HeaderText="Salary" SortExpression="Salary" />
                            <asp:BoundField DataField="House_No" HeaderText="House_No" SortExpression="House_No" />
                            <asp:BoundField DataField="Area" HeaderText="Area" SortExpression="Area" />
                            <asp:BoundField DataField="Town" HeaderText="Town" SortExpression="Town" />
                            <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
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
                    <div class="auto-style13">
&nbsp;
                        <br />
                        <br />
                    <br />
                    </div>
                    <asp:GridView ID="GridView2" runat="server" Width="387px" CellPadding="4" ForeColor="#333333" GridLines="None">
                        <AlternatingRowStyle BackColor="White" />
                        <EditRowStyle BackColor="#7C6F57" />
                        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#E3EAEB" />
                        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F8FAFA" />
                        <SortedAscendingHeaderStyle BackColor="#246B61" />
                        <SortedDescendingCellStyle BackColor="#D4DFE1" />
                        <SortedDescendingHeaderStyle BackColor="#15524A" />
                    </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DBconnect %>" SelectCommand="SELECT [emp_id], [First_Name], [Last_Name], [job], [Manager_Id], [Task_Assign], [Gender], [Department_No], [Commision], [Salary], [House_No], [Area], [Town], [City] FROM [Employee]"></asp:SqlDataSource>
                    <div class="auto-style13">
                    <br />
                    <br />
                    <asp:TextBox ID="TextBox1" runat="server" Height="16px" style="margin-left: 315px" Width="127px">ID</asp:TextBox>
                        <cc1:FilteredTextBoxExtender ID="TextBox1_FilteredTextBoxExtender" runat="server" BehaviorID="TextBox1_FilteredTextBoxExtender" FilterType="Numbers" TargetControlID="TextBox1">
                        </cc1:FilteredTextBoxExtender>
                    <asp:TextBox ID="TextBox2" runat="server" style="margin-left: 93px" Width="116px">No of Tasks</asp:TextBox>
                        <cc1:FilteredTextBoxExtender ID="TextBox2_FilteredTextBoxExtender" runat="server" BehaviorID="TextBox2_FilteredTextBoxExtender" FilterType="Numbers" TargetControlID="TextBox2">
                        </cc1:FilteredTextBoxExtender>
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click2" style="margin-left: 127px" Text="Update tasks" />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                    <br />
                    </div>
                    <table class="auto-style4">
                        <tr>
                            <td class="auto-style8">Employee Id</td>
                            <td class="auto-style9">
                                <asp:TextBox ID="empid" runat="server" Height="16px" style="margin-left: 0px" Width="787px" Wrap="False"></asp:TextBox>
                                <cc1:FilteredTextBoxExtender ID="empid_FilteredTextBoxExtender" runat="server" BehaviorID="empid_FilteredTextBoxExtender" FilterType="Numbers" TargetControlID="empid">
                                </cc1:FilteredTextBoxExtender>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style12">First Name</td>
                            <td>
                                <asp:TextBox ID="fname" runat="server" Height="16px" style="margin-left: 0px" Width="787px" OnTextChanged="fname_TextChanged"></asp:TextBox>
                                <cc1:FilteredTextBoxExtender ID="fname_FilteredTextBoxExtender" runat="server" BehaviorID="fname_FilteredTextBoxExtender" FilterType="LowercaseLetters, UppercaseLetters" TargetControlID="fname">
                                </cc1:FilteredTextBoxExtender>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style12">Last Name</td>
                            <td>
                                <asp:TextBox ID="lname" runat="server" Height="16px" style="margin-left: 0px" Width="787px"></asp:TextBox>
                                <cc1:FilteredTextBoxExtender ID="lname_FilteredTextBoxExtender" runat="server" BehaviorID="lname_FilteredTextBoxExtender" FilterType="LowercaseLetters, UppercaseLetters" TargetControlID="lname">
                                </cc1:FilteredTextBoxExtender>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style10">Job</td>
                            <td class="auto-style11">
                                <asp:TextBox ID="job" runat="server" Height="16px" style="margin-left: 0px" Width="787px"></asp:TextBox>
                                <cc1:FilteredTextBoxExtender ID="job_FilteredTextBoxExtender" runat="server" BehaviorID="job_FilteredTextBoxExtender" FilterType="LowercaseLetters, UppercaseLetters" TargetControlID="job">
                                </cc1:FilteredTextBoxExtender>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style8">Manager ID</td>
                            <td class="auto-style9">
                                <asp:TextBox ID="mgr_id" runat="server" Height="16px" style="margin-left: 0px" Width="787px"></asp:TextBox>
                                <cc1:FilteredTextBoxExtender ID="mgr_id_FilteredTextBoxExtender" runat="server" BehaviorID="mgr_id_FilteredTextBoxExtender" FilterType="Numbers" TargetControlID="mgr_id">
                                </cc1:FilteredTextBoxExtender>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style12">Gender </td>
                            <td>
                                <asp:TextBox ID="gender" runat="server" Height="16px" style="margin-left: 0px" Width="787px"></asp:TextBox>
                                <cc1:FilteredTextBoxExtender ID="gender_FilteredTextBoxExtender" runat="server" BehaviorID="gender_FilteredTextBoxExtender" FilterType="LowercaseLetters, UppercaseLetters" TargetControlID="gender">
                                </cc1:FilteredTextBoxExtender>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style5">Department Number</td>
                            <td>
                                <asp:TextBox ID="deptno" runat="server" Height="16px" style="margin-left: 0px" Width="787px"></asp:TextBox>
                                <cc1:FilteredTextBoxExtender ID="deptno_FilteredTextBoxExtender" runat="server" BehaviorID="deptno_FilteredTextBoxExtender"  FilterType="Numbers" TargetControlID="deptno">
                                </cc1:FilteredTextBoxExtender>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style5">Commission</td>
                            <td>
                                <asp:TextBox ID="comm" runat="server" Height="16px" style="margin-left: 0px" Width="787px"></asp:TextBox>
                                <cc1:FilteredTextBoxExtender ID="comm_FilteredTextBoxExtender" runat="server" BehaviorID="comm_FilteredTextBoxExtender" FilterType="Numbers, Custom" ValidChars="." TargetControlID="comm">
                                </cc1:FilteredTextBoxExtender>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style5">Salary </td>
                            <td>
                                <asp:TextBox ID="sal" runat="server" Height="16px" style="margin-left: 0px" Width="787px"></asp:TextBox>
                                <cc1:FilteredTextBoxExtender ID="sal_FilteredTextBoxExtender" runat="server" BehaviorID="sal_FilteredTextBoxExtender" FilterType="Numbers" TargetControlID="sal">
                                </cc1:FilteredTextBoxExtender>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style5">House Number </td>
                            <td>
                                <asp:TextBox ID="house_num" runat="server" Height="16px" style="margin-left: 0px" Width="787px"></asp:TextBox>
                                <cc1:FilteredTextBoxExtender ID="house_num_FilteredTextBoxExtender" runat="server" BehaviorID="house_num_FilteredTextBoxExtender" FilterType="LowercaseLetters, UppercaseLetters, Custom" ValidChars=".,- " TargetControlID="house_num">
                                </cc1:FilteredTextBoxExtender>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style5">Area </td>
                            <td>
                                <asp:TextBox ID="area" runat="server" Height="16px" style="margin-left: 0px" Width="787px"></asp:TextBox>
                                <cc1:FilteredTextBoxExtender ID="area_FilteredTextBoxExtender" runat="server" BehaviorID="area_FilteredTextBoxExtender" FilterType="LowercaseLetters, UppercaseLetters, Custom" ValidChars=".,- " TargetControlID="area">
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
                </td>
            </tr>
        </table>
        <asp:Button ID="submit" runat="server" Height="36px" OnClick="Button1_Click" style="text-align: center" Text="Submit" Width="100px" />
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
    </form>
</body>
</html>
