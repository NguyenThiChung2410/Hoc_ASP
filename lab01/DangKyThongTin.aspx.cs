using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace lab01
{
    public partial class DangKyThongTin : System.Web.UI.Page
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
            ddlTrinhDo.Items.Add(new ListItem("Trung cấp", "01"));
            ddlTrinhDo.Items.Add(new ListItem("Cao Đẳng", "02"));
            ddlTrinhDo.Items.Add(new ListItem("Đại Học", "03"));
            ddlTrinhDo.Items.Add(new ListItem("Sau Đại Học", "04"));

            lstNgheNghiep.Items.Add(new ListItem("Công nhân", "01"));
            lstNgheNghiep.Items.Add(new ListItem("Lập trình viên", "02"));
            lstNgheNghiep.Items.Add(new ListItem("Giáo viên", "03"));
            lstNgheNghiep.Items.Add(new ListItem("Bác sĩ", "04"));
            lstNgheNghiep.Items.Add(new ListItem("Kỹ sư", "05"));
            lstNgheNghiep.Items.Add(new ListItem("Tiến sĩ", "06"));

            cklSoThich.Items.Add(new ListItem("Mua sắm", "01"));
            cklSoThich.Items.Add(new ListItem("Du lịch", "02"));
            cklSoThich.Items.Add(new ListItem("Xem phim", "03"));
            cklSoThich.Items.Add(new ListItem("Nghe nhạc", "04"));
            cklSoThich.Items.Add(new ListItem("Đọc sách", "05"));
        }
        protected void btnGui_Click(object sender, EventArgs e)
        {
            string kq = "<ul>";
            kq += string.Format("<li> Họ tên: <b> {0} </b>", txtHoTen.Text);
            kq += string.Format("<li> Ngày sinh </b>", txtNgaySinh.Text);
            kq += string.Format("<li> Giới tính: <b> {0} </b>", (rdNam.Checked ? rdNam.Text : rdNu.Text));
            kq += string.Format("<li> Trình độ: <b> {0} </b>", ddlTrinhDo.SelectedItem.Text);
            kq += string.Format("<li> Nghề nghiệp <b> {0} </b>", lstNgheNghiep.SelectedItem.Text);

            if (FHinh.HasFile)
            {
                string path = Server.MapPath("~/Uploads");
                string filename = FHinh.FileName;
                FHinh.SaveAs(path + "/" + filename);
                kq += string.Format("<li> Ảnh đại diện: <img src='/uploads/{0}' width='200px'>", filename);
            }
            string sothich = "";
            foreach (ListItem item in cklSoThich.Items)
            {
                if (item.Selected)
                {
                    sothich += item.Text + ";";
                }
            }
            kq += string.Format("<li> Sở thích: <b> {0} </b>", sothich);
            kq += "</ul>";
            lbThongTin.Text = kq;
        }
    }
}