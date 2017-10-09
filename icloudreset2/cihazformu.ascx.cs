using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace iosStyleWebSite
{
    public partial class cihazformu : System.Web.UI.UserControl
    {
        public string CihazModeli { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Language"] != null && Session["Language"].ToString() == "ENG")
            {
                lblurun.Text = "Send Your Product Info";
                lblcihaz.Text = "Product Model";
                lblimei.Text = "IMEI Number";
                reqimei.ErrorMessage = "Please type IMEI number of your product";
                lblemail.Text = "E-mail Address";
                reqemail.ErrorMessage = "Please type your e-mail address";
                lbltel.Text = "Phone Number";
                reqtel.ErrorMessage = "Please type your phone number";
                btncomplete.Text = "Submit the form and send your product info";
                lbl24saat.Text = "(We will contact you in 24 hours.)";

            }

            lblmailmsg.Visible = false;
            if (Session["cihazmsg"] == null)
            {
                Session["cihazmsg"] = "";
            }
            else if (!string.IsNullOrEmpty(Session["cihazmsg"].ToString()))
            {
                lblmailmsg.Text = Session["cihazmsg"].ToString();
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
                SmtpClient server = new SmtpClient("mail.yourwebsite.com");
                server.EnableSsl = false;
                server.Port = 25;
                server.Credentials = new System.Net.NetworkCredential("web@yourwebsite.com", "web123654");
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
                                                    <td>#urunmodeli#</td>
                                                </tr>
                                                <tr>
                                                    <td>Adı Soyadı: </td>
                                                    <td>#imeino#</td>
                                                </tr>
                                                <tr>
                                                    <td>E-posta: </td>
                                                    <td>#email#</td>
                                                </tr>
                                                <tr>
                                                    <td>Telefon No: </td>
                                                    <td>#telefon#</td>
                                                </tr>
                                            </tbody>
                                        </table>";

                mailicerigi = mailicerigi.Replace("#urunmodeli#", txtCihaz.Text);
                mailicerigi = mailicerigi.Replace("#email#", txtemail.Text);
                mailicerigi = mailicerigi.Replace("#telefon#", txttelefon.Text);
                mailicerigi = mailicerigi.Replace("#imeino#", txtimei.Text);


                SendMail("info@yourwebsite.net", "web@yourwebsite.net", "Cihaz Formu", "Yourwebsite.net: Cihaz Gönderme Talebi", mailicerigi);

                Session["cihazmsg"] = "Talebiniz başarılı bir şekilde ulaştırılmıştır";

            }

            catch (Exception ex)
            {
                Session["cihazmsg"] = "Talebiniz gönderilirken bir hata oluştu: " + ex;
                lblmailmsg.ForeColor = System.Drawing.Color.Red;
            }


            Response.Redirect(Request.RawUrl);
        }
    }
}