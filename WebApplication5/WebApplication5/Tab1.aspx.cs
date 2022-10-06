using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication5
{
    public partial class Tab1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label3.Visible = false;
            Label4.Visible = false;
            Label5.Visible = false;
            Label6.Visible = false;
            Label7.Visible = false;
            Button2.Visible = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //Label1.Text = "You Clicked the Button.";
            Label7.Text = "Kela ulosmittasi opintotukesi ja asumislisäsi";
            Label4.Text = "-" + TextBox1.Text;
            Label6.Text = "-" + TextBox2.Text;
            //Label1.Visible = false;

            Label3.Visible = true;
            Label4.Visible = true;
            Label5.Visible = true;
            Label6.Visible = true;
            Label7.Visible = true;

            Button2.Visible = true;
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            //Label1.Text = "You Clicked the Button.";
            //Label1.Visible = false;

            //Label3.Text = "";
            Label4.Text = "";
            //Label5.Text = "";
            Label6.Text = "";
            //Label7.Text = "";

            Label3.Visible = false;
            Label4.Visible = false;
            Label5.Visible = false;
            Label6.Visible = false;
            Label7.Visible = false;

            TextBox1.Text = "";
            TextBox2.Text = "";

        }

    }
}