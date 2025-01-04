﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DonDatHang.aspx.cs" Inherits="lab01.DonDatHang" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            width: 50%;
        }
        .auto-style2 {
            text-align: center;
        }
        .auto-style3 {
            height: 31px;
        }
        .auto-style4 {
            height: 34px;
        }
        .auto-style5 {
            height: 34px;
            width: 346px;
        }
        .auto-style6 {
            width: 346px;
        }
        .auto-style7 {
            height: 31px;
            width: 346px;
        }
        .auto-style8 {
            background-color: #99CCFF;
        }
        .auto-style9 {
            background-color: #00FFCC;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table align="center" cellpadding="4" cellspacing="4" class="auto-style1" style="border: 2px solid #0094ff; border-collapse: collapse;">
                <tr>
                    <td colspan="2" style="text-align: center" class="auto-style9">ĐƠN ĐẶT HÀNG&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">Khách hàng:</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="txtKhachHang" CssClass="form-control" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Địa chỉ:</td>
                    <td class="auto-style6">
                        <asp:TextBox ID="txtDiaChi" CssClass="form-control" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Mã số thuế:</td>
                    <td class="auto-style6">
                        <asp:TextBox ID="txtMSThue" runat="server" Width="259px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Chọn các loại bánh sau:</td>
                    <td class="auto-style6">Dánh sách bánh được đặt:</td>
                </tr>
                <tr>
                    <td class ="auto-style4" style="border: 2px solid #0094ff; border-collapse: collapse;"> 
                        <asp:DropDownList ID="ddlLoaiBanh" CssClass="form-control" runat="server">
                        </asp:DropDownList>
                        <br />
                        Số lượng:
                        <asp:TextBox ID="txtSoLuong" runat="server" Width="65px"></asp:TextBox>
                        Cái<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnThemBanh" runat="server" Text=">" OnClick="btnThemBanh_Click"/>
                    </td>
                    <td class="auto-style6" style="border: 2px solid #0094ff; border-collapse: collapse;">
                        <asp:ListBox ID="lbBanhDat" CssClass="form-control" runat="server" Width="100%" SelectionMode="Multiple"></asp:ListBox>
&nbsp;<asp:ImageButton ID="btnXoa" runat="server" ImageUrl="~/Images/delete.gif" OnClick="btnXoa_Click" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" style="border: 2px solid #0094ff; border-collapse: collapse;" colspan="2">
                        <asp:Button runat="server" Text="In đơn đặt hàng" ID="btnIn" OnClick="btnIn_Click" CssClass="auto-style8" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="lblHoaDon" runat="server" Text=""></asp:Label>
                    </td>
                    <td class="auto-style7"></td>
                </tr>

            </table>
        </div>
    </form>
</body>
</html>