using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace lab01
{
    public partial class DonDatHang : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                KhoiTaoDuLieu();
            }
        }
        private void KhoiTaoDuLieu()
        {
            ddlLoaiBanh.Items.Add(new ListItem("Bánh Croissant", "01"));
            ddlLoaiBanh.Items.Add(new ListItem("Bánh bò nướng", "02"));
            ddlLoaiBanh.Items.Add(new ListItem("Patess chauds", "03"));
            ddlLoaiBanh.Items.Add(new ListItem("Hamburger", "04"));
            ddlLoaiBanh.Items.Add(new ListItem("Nuggests", "05"));
        }



        protected void btnIn_Click(object sender, EventArgs e)

        {
            string kq = "<div style = 'color: green;'>";
            kq += "<div class ='h3 text-center mt-3'>HOÁ ĐƠN ĐẶT HÀNG</div>";
            kq += "<div class='border p-2'>";
            kq += $"<b>Khách hàng</b>: <i>{txtKhachHang.Text}</i> <br>";
            kq += $"<b>Địa chỉ</b>: <i>{txtDiaChi.Text}</i> <br>";
            kq += $"<b>Mã số thuế</b>: <i>{txtMSThue.Text}</i> <br>";
            kq += "<b>Đặt các loại bánh sau: </b> <br>";

            kq += "<table class='table table-bordered'>";
            foreach (ListItem item in lbBanhDat.Items)
            {
                string data = item.Text;
                string[] arr = data.Split(new char[] { '(', ')' });
                kq += $"<tr><td>{arr[0]}</td><td>{arr[1]} </td></tr>";
            }
            kq += "</table>";
            kq += "</div>";
            //Gửi thông tin hoá đơn về client
            lblHoaDon.Text = kq;
        }
        protected void btnXoa_Click(object sender, EventArgs e)
        {
            List<ListItem> itemsToRemove = new List<ListItem>();
            foreach (ListItem item in lbBanhDat.Items)
            {
                if (item.Selected)
                {
                    itemsToRemove.Add(item);
                }
            }
            foreach (ListItem item in itemsToRemove)
            {
                lbBanhDat.Items.Remove(item);
            }
        }
        protected void btnThemBanh_Click(object sender, EventArgs e)
        {
            try
            {
                string loaibanh = ddlLoaiBanh.SelectedItem.Text;
                int soluong = int.Parse(txtSoLuong.Text);
                bool find = false;
                foreach(ListItem item in lbBanhDat.Items)
                {
                    if (item.Text.StartsWith(loaibanh))
                    {
                        string[] arr = item.Text.Split(new char[] { '(', ')' });
                        soluong += int.Parse(arr[1]);
                        item.Text=$"{loaibanh} ({soluong})";
                        find = true;
                    }
                }
                if (!find)
                    lbBanhDat.Items.Add(string.Format("{0} ({1})", loaibanh, soluong));

            }
            catch (Exception ex)
            {
                Console.WriteLine(ex);
            }
        }
    }
}