using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Legendarium_Bookstore_Prototype.Admin
{
    public partial class UploadImage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Upload1_Click(object sender, EventArgs e)
        {
            string ProductID = Request.QueryString["id"];

            string filename = ProductID + "A.jpg";
            string saveLocation = Server.MapPath("~/ProductImages/" + filename);

            FileUpload1.SaveAs(saveLocation);
        }

        protected void Upload2_Click(object sender, EventArgs e)
        {
            string ProductID = Request.QueryString["id"];

            string filename = ProductID + "B.jpg";
            string saveLocation = Server.MapPath("~/ProductImages/" + filename);

            FileUpload2.SaveAs(saveLocation);
        }
    }
}