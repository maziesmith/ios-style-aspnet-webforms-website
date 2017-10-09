using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace iosStyleWebSite
{
    public partial class iletisimformu : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Language"] != null && Session["Language"].ToString() == "ENG")
            {
                lbladsoyad.Text = "Name Surname";
                lblemail.Text = "E-mail Address";
                lblkonu.Text = "Subject";
                lblmesaj.Text = "Message (Max. 500 characters)";
                lbltel.Text = "Phone Number";

                regexeposta.ErrorMessage = "Invalid e-mail address!";
                reqadsoyad.ErrorMessage = "Please type your name and surname";
                reqemail.ErrorMessage = "Please type your e-mail address";
                reqkonu.ErrorMessage = "Please type the subject of your message";
                reqmesaj.ErrorMessage = "Please type your message";

                btnMesajGonder.Text = "Send Message";
            }

            lblmailmsg.Visible = false;
            if (Session["mailmsg"] == null)
            {
                Session["mailmsg"] = "";
            }
            else if (!string.IsNullOrEmpty(Session["mailmsg"].ToString()))
            {
                lblmailmsg.Text = Session["mailmsg"].ToString();
                lblmailmsg.Visible = true;
            }
            else
            {
                //yazacak bişey bulamadım
            }
        }

        protected void btnMesajGonder_Click(object sender, EventArgs e)
        {
            try
            {
                string mailicerigi = @"<p>Yeni bir iletişim formu gönderildi:</p>
                                        <table cellpadding=""10px"" style=""background-color: #cecece;"">
                                             <tbody>
                                               
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
                                                    <td>Konu: </td>
                                                    <td>#konu#</td>
                                                </tr>
                                                <tr>
                                                    <td>Mesaj: </td>
                                                    <td>#mesaj#</td>
                                                </tr>
                                                
                                            </tbody>
                                        </table>";

                mailicerigi = mailicerigi.Replace("#adisoyadi#", txtAdSoyad.Text);
                mailicerigi = mailicerigi.Replace("#email#", txtemail.Text);
                mailicerigi = mailicerigi.Replace("#telefon#", txttelefon.Text);
                mailicerigi = mailicerigi.Replace("#konu#", txtkonu.Text);
                mailicerigi = mailicerigi.Replace("#mesaj#", txtmesaj.Text);


                SendMail("info@yourwebsite.com", "yourwebsite.com", "İletişim Formu", txtkonu.Text, mailicerigi);

                Session["mailmsg"] = "Mesajınız başarılı bir şekilde ulaştırılmıştır";

            }

            catch (Exception ex)
            {
                Session["mailmsg"] = "Mesajınız gönderilirken bir hata oluştu: " + ex;
                lblmailmsg.ForeColor = System.Drawing.Color.Red;
            }


            Response.Redirect(Request.RawUrl);
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
    }
}