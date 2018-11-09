<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BusTicketing.aspx.cs" Inherits="Practical3.BusTicketing" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 20px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <p>
                ABC BUS ONLINE BOOKING &amp; TICKETING SYSTEM
            </p>
            <p>
                <asp:Label ID="lblTime" runat="server"></asp:Label>
            </p>
        </div>
        <table>
            <tr>
                <td>Departure Date:
                </td>
                <td>
                    <asp:Calendar ID="calDepartDt" runat="server" OnSelectionChanged="calDepartDt_SelectionChanged"></asp:Calendar>
                    <asp:TextBox ID="txtDepartDt" runat="server"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td>Adult:
                </td>
                <td>
                    <asp:TextBox ID="txtAdult" runat="server"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td>Child:</td>
                <td>
                    <asp:TextBox ID="txtChild" runat="server"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td>From:</td>
                <td>
                    <asp:DropDownList ID="ddlFrom" runat="server">
                        <asp:ListItem>Hentian Duta</asp:ListItem>
                        <asp:ListItem>Hentian Putra</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>

            <tr>
                <td>Destination:</td>
                <td>
                    <asp:DropDownList ID="ddlTo" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlTo_SelectedIndexChanged">
                        <asp:ListItem>Butterworth</asp:ListItem>
                        <asp:ListItem>Seremban</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>

            <tr>
                <td>Ticket Price:</td>
                <td>
                    <asp:TextBox ID="txtPrice" runat="server" Enabled="False"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td colspan="2">
                    <asp:Label ID="lblError" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="2" class="auto-style1">
                    <asp:Button ID="btnBookTkt" runat="server" Text="Book Ticket" OnClientClick="javascript:alert('You are now will be directed to the booking confirmation page')"/>
&nbsp;<asp:Button ID="btnCancel" runat="server" Text="Cancel" OnMouseOver="this.value = 'Click if you confirm to reset selection'" OnMouseOut="this.value='Cancel'" OnClick="btnCancel_Click" style="height: 26px" />
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
