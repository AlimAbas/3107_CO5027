using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;

namespace Legendarium_Bookstore_Prototype
{
    public partial class Contact1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Send_Click(object sender, EventArgs e)
        {
            try
            {
                MailMessage message = new MailMessage(To.Text, From.Text, Subject.Text, Body.Text);
                message.IsBodyHtml = true;

                SmtpClient client = new SmtpClient("smtp.gmail.com", 587);
                client.EnableSsl = true;
                client.Credentials = new System.Net.NetworkCredential("Ak.Abdul.alim@gmail.com", "Limmoh6894");
                client.Send(message);
                Status.Text = "Mail was sent successfully";
            }
            catch (Exception ex)
            {
                Status.Text = ex.StackTrace;
            }
        }
    }
}