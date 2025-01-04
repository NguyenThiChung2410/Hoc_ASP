<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DangKyThongTin.aspx.cs" Inherits="lab01.DangKyThongTin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style2 {
            height: 23px;
        }
        .auto-style3 {
            height: 23px;
            width: 199px;
        }
        .auto-style4 {
            width: 199px;
        }
        .auto-style5 {
            width: 691px;
        }
        .auto-style6 {
            text-align: center;
            background-color: #0099FF;
        }
        .auto-style8 {
            text-align: center;
            width: 695px;
            background-color: #0099FF;
        }
        .auto-style9 {
            width: 695px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container w-75">
        <table align="center" cellpadding="4" cellspacing="0" class="auto-style5">
            <tr>
                <td class="auto-style6" colspan="2">ĐĂNG KÝ THÔNG TIN&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">Họ tên</td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtHoTen" runat="server" CssClass="form-control"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Ngày sinh</td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtNgaySinh" runat="server" CssClass="form-control" TextMode="Date"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Giới tính</td>
                <td>
                    <asp:RadioButton ID="rdNam" runat="server" Text="Nam" GroupName="GT" Checked="true" CssClass="form-check-inline"/>
                    <asp:RadioButton ID="rdNu" runat="server" Text="Nữ" GroupName="GT" CssClass="form-check-inline" />
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Trình độ</td>
                <td class="auto-style2">
                    <asp:DropDownList ID="ddlTrinhDo" runat="server" CssClass="form-select">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Nghề nghiệp</td>
                <td>
                    <asp:ListBox ID="lstNgheNghiep" runat="server" Rows="5" CssClass="form-control"></asp:ListBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Hình</td>
                <td class="auto-style2">
                    <asp:FileUpload ID="FHinh" runat="server" CssClass="form-control" />
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Sở thích</td>
                <td>
                    <asp:CheckBoxList ID="cklSoThich" runat="server" CssClass="form-check">
                    </asp:CheckBoxList>
                </td>
            </tr>
            </table>
            <table align="center" cellpadding="4" cellspacing="0">
            <tr>
                <td class="auto-style9">
                    <asp:Button ID="btnGui" runat="server" Text="Gửi" CssClass="btn btn-primary" OnClick="btnGui_Click" />
                    <asp:Button ID="btnLamLai" runat="server" Text="Làm lại" CssClass="btn btn-warning" />
                </td>
            </tr>
            <tr>
                <td class="auto-style8"><strong>KẾT QUẢ ĐĂNG KÝ</strong></td>
            </tr>
            <tr>
                <td class="auto-style9">
                    <asp:Label ID="lbThongTin" runat="server" Text=""></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
        </div>
    </form>
</body>
</html>
