using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace iosStyleWebSite
{
    public partial class satisformu : System.Web.UI.UserControl
    {
        public string CihazModeli { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Language"] != null && Session["Language"].ToString() == "ENG")
            {
                lblurun.Text = "Product Purchase Request ";
                lblcihaz.Text = "Product Name";
                lbladsoyad.Text = "Name Surname";
                reqadsoyad.ErrorMessage = "Please type your name and surname";
                lblemail.Text = "E-mail Address";
                lbltel.Text = "Phone Number";
                regexeposta.ErrorMessage = "Invalid e-mail address!";
                reqemail.ErrorMessage = "Please type your e-mail address";
                lbladet.Text = "Quantity";
                btncomplete.Text = "Submit your purchase request";

            }

            lblmailmsg.Visible = false;
            if (Session["satinalmsg"] == null)
            {
                Session["satinalmsg"] = "";
            }
            else if (!string.IsNullOrEmpty(Session["satinalmsg"].ToString()))
            {
                lblmailmsg.Text = Session["satinalmsg"].ToString();
                lblmailmsg.Visible = true;
            }
            else
            {
                //yazacak bişey bulamadım
            }

            txtCihaz.Text = CihazModeli;
            txtCihaz.ReadOnly = true;
        }

        public static void SendMail(string to, string from, string fromName, string subject, string body)
        {
            try
            {
                SmtpClient server = new SmtpClient("mail.yourwebsite.net");
                server.EnableSsl = false;
                server.Port = 25;
                server.Credentials = new System.Net.NetworkCredential("web@yourwebsite.net", "web123654");
                MailMessage email = new MailMessage();
                email.IsBodyHtml = true;
                email.From = new MailAddress(from);
                email.Subject = subject;
                email.Body = body;
                email.To.Add(to);
                server.Send(email);

            }
            catch (Exception ex)
            {

            }
        }

        protected void btncomplete_Click(object sender, EventArgs e)
        {
            try
            {
                string mailicerigi = @"<p>Yeni bir satın alma formu gönderildi:</p>
                                        <table cellpadding=""10px"" style=""background-color: #cecece;"">
                                             <tbody>
                                               <tr>
                                                    <td>Ürün Adı: </td>
                                                    <td>#urunadi#</td>
                                                </tr>
                                                <tr>
                                                    <td>Adı Soyadı: </td>
                                                    <td>#adisoyadi#</td>
                                                </tr>
                                                <tr>
                                                    <td>E-posta: </td>
                                                    <td>#email#</td>
                                                </tr>
                                                <tr>
                                                    <td>Telefon No: </td>
                                                    <td>#telefon#</td>
                                                </tr>
                                                <tr>
                                                    <td>Adet: </td>
                                                    <td>#adet#</td>
                                                </tr>
                                            </tbody>
                                        </table>";

                mailicerigi = mailicerigi.Replace("#adisoyadi#", txtAdSoyad.Text);
                mailicerigi = mailicerigi.Replace("#email#", txtemail.Text);
                mailicerigi = mailicerigi.Replace("#telefon#", txttelefon.Text);
                mailicerigi = mailicerigi.Replace("#adet#", txtadet.Text);
                mailicerigi = mailicerigi.Replace("#urunadi#", txtCihaz.Text);


                SendMail("info@yourwebsite.net", "web@yourwebsite.net", "Cihaz Formu", "yourwebsite.net: Satın Alma Talebi", mailicerigi);

                Session["satinalmsg"] = "Talebiniz başarılı bir şekilde ulaştırılmıştır";

            }

            catch (Exception ex)
            {
                Session["satinalmsg"] = "Talebiniz gönderilirken bir hata oluştu: " + ex;
                lblmailmsg.ForeColor = System.Drawing.Color.Red;
            }


            Response.Redirect(Request.RawUrl);
        }
    }
}