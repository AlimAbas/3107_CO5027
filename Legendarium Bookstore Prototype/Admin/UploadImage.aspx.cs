using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Drawing;
using System.Drawing.Imaging;

namespace Legendarium_Bookstore_Prototype.Admin
{
    public partial class UploadImage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string ProductID = Request.QueryString["id"];
            string filenameA = ProductID + "A.jpg";
            string filenameB = ProductID + "B.jpg";
            Label1.Text = ProductID;
            ImageA.ImageUrl = "~/ProductImages/" + filenameA;
            ImageB.ImageUrl = "~/ProductImages/" + filenameB;
        }

        protected void Upload1_Click(object sender, EventArgs e)
        {
            string ProductID = Request.QueryString["id"];

            string filenameA = ProductID + "A.jpg";
            string saveLocation = Server.MapPath("~/ProductImages/" + filenameA);

            FileUpload1.SaveAs(saveLocation);

            if (FileUpload1.HasFile)
            {
                System.Drawing.Image img = System.Drawing.Image.FromStream(FileUpload1.PostedFile.InputStream);
                Graphics graphicsObject;
                int w = img.Width;
                int h = img.Height;
                Bitmap bmp = new Bitmap(w, h);

                graphicsObject = Graphics.FromImage(bmp);
                graphicsObject.DrawImage(img, 0, 0, w, h);

                System.Drawing.Image wmImage = bmp;

                string watermark = "©LEGENDARIUM";
                Brush brush = new SolidBrush(Color.FromArgb(175, Color.Orange));
                Font font = new System.Drawing.Font("Impact", 100, FontStyle.Bold, GraphicsUnit.Pixel);
                SizeF textSize = new SizeF();
                textSize = graphicsObject.MeasureString(watermark, font);

                graphicsObject.TranslateTransform(bmp.Width / 2, bmp.Height / 2);
                graphicsObject.RotateTransform(45);

                System.Drawing.StringFormat drawFormat = new System.Drawing.StringFormat(StringFormatFlags.NoWrap);

                graphicsObject.DrawString(watermark, font, brush, -(textSize.Width / 2), -(textSize.Height / 2));
                bmp.Save(saveLocation);
            }

        }

        protected void Upload2_Click(object sender, EventArgs e)
        {
            string ProductID = Request.QueryString["id"];

            string filenameB = ProductID + "B.jpg";
            string saveLocation = Server.MapPath("~/ProductImages/" + filenameB);

            FileUpload2.SaveAs(saveLocation);

            if (FileUpload2.HasFile)
            {
                System.Drawing.Image img = System.Drawing.Image.FromStream(FileUpload2.PostedFile.InputStream);
                Graphics graphicsObject;
                int w = img.Width;
                int h = img.Height;
                Bitmap bmp = new Bitmap(w, h);

                graphicsObject = Graphics.FromImage(bmp);
                graphicsObject.DrawImage(img, 0, 0, w, h);

                System.Drawing.Image wmImage = bmp;

                string watermark = "©LEGENDARIUM";
                Brush brush = new SolidBrush(Color.FromArgb(175, Color.Orange));
                Font font = new System.Drawing.Font("Impact", 100, FontStyle.Bold, GraphicsUnit.Pixel);
                SizeF textSize = new SizeF();
                textSize = graphicsObject.MeasureString(watermark, font);

                graphicsObject.TranslateTransform(bmp.Width / 2, bmp.Height / 2);
                graphicsObject.RotateTransform(45);

                System.Drawing.StringFormat drawFormat = new System.Drawing.StringFormat(StringFormatFlags.NoWrap);

                graphicsObject.DrawString(watermark, font, brush, -(textSize.Width / 2), -(textSize.Height / 2));
                bmp.Save(saveLocation);
            }

        }
    }
}