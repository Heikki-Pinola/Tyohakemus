using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication5
{
    public partial class Tab2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            TextBox6.Visible = false;
            TextBox7.Visible = false;
            TextBox8.Visible = false;
            TextBox10.Visible = false;

            RadioButtonAvoinKylla.Visible = false;
            RadioButtonAvoinEi.Visible = false;

            RadioButtonPakitEi.Visible = false;
            RadioButtonPakitKylla.Visible = false;

            RadioButtonVastausKylla.Visible = false;
            RadioButtonVastausEi.Visible = false;

            Label1.Visible = false;
            Label11.Visible = false;
            Label12.Visible = false;
            Label4.Visible = false;
            Label2.Visible = false;
            Label3.Visible = false;
            Label13.Visible = false;

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            byte avoinhakemus = 0;
            String tyonantaja = "";
            tyonantaja = TextBox3.Text;
            String tehtavanimike = "";
            tehtavanimike = TextBox4.Text;
            String vaadittuosaaminen = "";
            vaadittuosaaminen = TextBox9.Text;
            byte tulikovastausta = 0;
            byte tulikopakit = 0;
            String perusteluvalitsematta = "";
            perusteluvalitsematta = TextBox5.Text;

            String hakemustehty = DateTime.Now.ToString("yyyy-MM-dd") + " " + DateTime.Now.ToString("HH") + ":" + DateTime.Now.ToString("mm") + ":" + DateTime.Now.ToString("ss") + ".000";

            // make datafields for given information visible
            TextBox6.Visible = true;
            TextBox7.Visible = true;
            TextBox8.Visible = true;
            TextBox10.Visible = true;

            RadioButtonAvoinKylla.Visible = true;
            RadioButtonAvoinEi.Visible = true;

            RadioButtonPakitEi.Visible = true;
            RadioButtonPakitKylla.Visible = true;

            RadioButtonVastausKylla.Visible = true;
            RadioButtonVastausEi.Visible = true;

            Label1.Visible = true;
            Label11.Visible = true;
            Label12.Visible = true;
            Label4.Visible = true;
            Label2.Visible = true;
            Label3.Visible = true;
            Label13.Visible = true;
            // end of make visible

            if (RadioButtonAvoinKyllaValinta.Checked)
            {
                avoinhakemus = 1;
                RadioButtonAvoinKylla.Checked = true;
                RadioButtonAvoinEi.Checked = false;
            }

            if (RadioButtonAvoinEiValinta.Checked)
            {
                avoinhakemus = 0;
                RadioButtonAvoinKylla.Checked = false;
                RadioButtonAvoinEi.Checked = true;
            }

            if (RadioButtonVastausKyllaValinta.Checked)
            {
                tulikovastausta = 1;
                // tuli vastaus
                RadioButtonVastausKylla.Checked = true;
                RadioButtonVastausEi.Checked = false;

            }

            if (RadioButtonVastausEiValinta.Checked)
            {
                tulikovastausta = 0;
                // ei tullut vastausta
                RadioButtonVastausKylla.Checked = false;
                RadioButtonVastausEi.Checked = true;

                // RadioButtonVastausEiValinta.Checked = true;

            }

            if (RadioButtonPakitEiValinta.Checked)
            {
                tulikopakit = 0;
                // ei tullut pakkeja
                RadioButtonPakitEi.Checked = true;
                RadioButtonPakitKylla.Checked = false;

            }

            if (RadioButtonPakitKyllaValinta.Checked)
            {
                tulikopakit = 1;
                // tuli pakit
                RadioButtonPakitEi.Checked = false;
                RadioButtonPakitKylla.Checked = true;

            }

            
            // connectionString Web.config tiedostossa
            string connetionString = System.Configuration.ConfigurationManager.ConnectionStrings["WebApplication5"].ConnectionString;
            SqlConnection conn;

            conn = new SqlConnection(connetionString);

            conn.Open();

            SqlCommand command;

            String sql = "INSERT INTO hakemus (avoinhakemus,tyonantaja, tehtavanimike, vaadittuosaaminen, tulikovastausta, tulikopakit, perusteluvalitsematta, hakemustehty) " +
                "VALUES (@avoinhakemus, @tyonantaja, @tehtavanimike, @vaadittuosaaminen, @tulikovastausta, @tulikopakit, @perusteluvalitsematta, @hakemustehty)";
            
            command = new SqlCommand(sql, conn);
            command.Parameters.AddWithValue("@avoinhakemus", avoinhakemus);
            command.Parameters.AddWithValue("@tyonantaja", tyonantaja);
            command.Parameters.AddWithValue("@tehtavanimike", tehtavanimike);
            command.Parameters.AddWithValue("@vaadittuosaaminen", vaadittuosaaminen);
            command.Parameters.AddWithValue("@tulikovastausta", tulikovastausta);
            command.Parameters.AddWithValue("@tulikopakit", tulikopakit);
            command.Parameters.AddWithValue("@perusteluvalitsematta", perusteluvalitsematta);
            command.Parameters.AddWithValue("@hakemustehty", hakemustehty);

            command.ExecuteNonQuery();
            command.Dispose();
            conn.Close();




            TextBox6.Enabled = false;
            TextBox7.Enabled = false;
            TextBox8.Enabled = false;
            TextBox10.Enabled = false;

            TextBox6.Text = TextBox3.Text; // tyonantaja
            TextBox7.Text = TextBox4.Text; // tehtavanimike
            TextBox8.Text = TextBox5.Text; // perustelu valitsematta jattamiselle
            TextBox10.Text = TextBox9.Text; // vaadittu osaaminen

            RadioButtonAvoinKylla.Enabled = false;
            RadioButtonAvoinEi.Enabled = false;

            RadioButtonPakitEi.Enabled = false;
            RadioButtonPakitKylla.Enabled = false;

            RadioButtonVastausKylla.Enabled = false;
            RadioButtonVastausEi.Enabled = false;


            if (RadioButtonPakitEiValinta.Checked)
            {
                // ei tullut pakkeja
                RadioButtonPakitEi.Checked = true;
                RadioButtonPakitKylla.Checked = false;

            }
            
            if (RadioButtonPakitKyllaValinta.Checked)
            {
                // tuli pakit
                RadioButtonPakitEi.Checked = false;
                RadioButtonPakitKylla.Checked = true;

            }

            


        }
        protected void Button4_Click(object sender, EventArgs e)
        {
            
        }

    }
}