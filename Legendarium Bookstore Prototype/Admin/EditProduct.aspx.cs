﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Legendarium_Bookstore_Prototype.Admin
{
    public partial class EditProduct1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ProductID.Text = Session["ProductID"].ToString();
        }
    }
}