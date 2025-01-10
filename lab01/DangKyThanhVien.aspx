<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DangKyThanhVien.aspx.cs" Inherits="lab01.DangKyThanhVien" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            width: 96%;
        }
        .auto-style4 {
            text-align: center;
        }
        .auto-style6 {
            width: 510px;
            height: 23px;
        }
        .auto-style7 {
            text-align: center;
            background-color: #FF99CC;
        }
        .auto-style8 {
            background-color: #FF33CC;
        }
        .auto-style10 {
            width: 510px;
            height: 22px;
        }
        .auto-style11 {
            text-align: center;
            background-color: #FF99CC;
            height: 20px;
        }
        .auto-style12 {
            text-align: center;
            background-color: #FFCCCC;
            height: 20px;
        }
        .auto-style13 {
            width: 209px;
        }
        .auto-style14 {
            width: 209px;
            height: 23px;
        }
        .auto-style15 {
            width: 209px;
            height: 22px;
        }
        .auto-style16 {
            width: 510px
        }
    </style>
</head>
<body style="width: 742px; height: 306px;">
    <form id="form1" runat="server">
        <div class="container w-100">
            <table align="center" cellpadding="4" cellspacing="0" class="auto-style1">
                <tr>
                    <td class="auto-style12" colspan="3"><strong>HỒ SƠ ĐĂNG KÝ</strong></td>
                    </tr>
                <tr>
                    <td class="auto-style11" colspan="2" >Thông tin đăng nhập</td>
                    <td class="auto-style11">Hồ sơ khách hàng</td>
                </tr>
                <tr>
                    <td class="auto-style13">Tên đăng nhập</td>
                    <td class="auto-style16">
                        <asp:TextBox ID="txtTen" runat="server" CssClass="form-control"></asp:TextBox>
                    </td>
                    <td rowspan="12">lblHoSo<asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" HeaderText="Danh sách lỗi" Width="209px" ShowMessageBox="True" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style13">Mật khẩu</td>
                    <td class="auto-style16">
                        <asp:TextBox ID="txtMatkhau" runat="server" CssClass="form-control"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style13">Nhập lại mật khẩu</td>
                    <td class="auto-style16">
                        <asp:TextBox ID="txtNhapLaiMK" runat="server" CssClass="form-control"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7" colspan="2">Thông tin cá nhân</td>
                </tr>
                <tr>
                    <td class="auto-style14">Họ tên khách hàng</td>
                    <td class="auto-style6">
                        <asp:TextBox ID="txtTenKH" runat="server" CssClass="form-control"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style13">Ngày sinh</td>
                    <td class="auto-style16">
                        <asp:DropDownList ID="ddlNgay" runat="server">
                        </asp:DropDownList>
                        <asp:DropDownList ID="ddlThang" runat="server">
                        </asp:DropDownList>
                        <asp:DropDownList ID="ddlNam" runat="server">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style13">Email</td>
                    <td class="auto-style16">
                        <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style13">Thu nhập</td>
                    <td class="auto-style16">
                        <asp:TextBox ID="txtThuNhap" runat="server" CssClass="form-control"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style13">Giới tính</td>
                    <td class="auto-style16">
                        <asp:CheckBox ID="ckPhai" runat="server" Text="Nam" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style15">Địa chỉ</td>
                    <td class="auto-style10">
                        <asp:DropDownList ID="ddlDiaChi" runat="server" >
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style14">Điện thoại</td>
                    <td class="auto-style6">
                        <asp:TextBox ID="txtDienThoai" runat="server" CssClass="form-control"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4" colspan="2">
                        <asp:Button ID="Button1" runat="server" CssClass="auto-style8" Text="Đăng ký" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
