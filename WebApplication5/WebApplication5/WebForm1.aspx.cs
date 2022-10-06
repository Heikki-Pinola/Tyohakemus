using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication5
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string connetionString;
            SqlConnection conn;

            connetionString = @"Data Source=DESKTOP-HU1I99C;Initial Catalog=Tyonhaku ;User ID=sa;Password=admin_1";

            conn = new SqlConnection(connetionString);

            conn.Open();

            Response.Write("Connection Made");
            conn.Close();
        }
    }
}