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

        protected void Button3_Click(object sender, EventArgs e)
        {
            string productid = Request.QueryString["id"];
            string filename = productid + ".jpg";
            string savelocation = Server.MapPath("~/ProductImages/" + filename);

            FileUploadImage.SaveAs(savelocation);
        }
    }
}