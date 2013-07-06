using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Web.Configuration;
using System.Data.SqlClient;

namespace WebApplication1
{
    public partial class departments : System.Web.UI.Page
    {

        private string connectionString = WebConfigurationManager.ConnectionStrings["dbsql1ConnectionString6"].ConnectionString;
        
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void cmdNew_Click(object sender, EventArgs e)
        {
            dep_id.Text = "";
            dep_name.Text = "";
            dep_supervisor.Text = "";
            dep_nurses.Text = "";
            dep_doctors.Text = "";
            dep_staff.Text = "";
            dep_rooms.Text = "";
            dep_beds.Text = "";
            //txtZip.Text = "";
            //chkContract.Checked = false;

            lblResults.Text = "Click Insert New to add the completed record.";


        }
        protected void cmdInsert_Click(object sender, EventArgs e)
        {
            if (dep_id.Text == "" || dep_name.Text == "" )
            {
                lblResults.Text = "Records require an ID, first name, and last name.";
                return;
            }
            string insertSQL;
            insertSQL = "INSERT INTO departments (";
            insertSQL += "dep_id, dep_name, dep_supervisor, dep_nurses,";
            insertSQL += "dep_doctors,dep_staff,dep_rooms,dep_beds)";
            insertSQL += "VALUES (";
            insertSQL += "@dep_id, @dep_name, @dep_supervisor, ";
            insertSQL += "@dep_nurses, @dep_doctors, @dep_staff, @dep_rooms,@dep_beds)";

            SqlConnection con = new SqlConnection(connectionString);
            SqlCommand cmd = new SqlCommand(insertSQL, con);
            try
            {
            cmd.Parameters.AddWithValue("@dep_id", dep_id.Text);
            cmd.Parameters.AddWithValue("@dep_name", dep_name.Text);
            cmd.Parameters.AddWithValue("@dep_supervisor", dep_supervisor.Text);
            cmd.Parameters.AddWithValue("@dep_nurses", dep_nurses.Text);
            cmd.Parameters.AddWithValue("@dep_doctors", dep_doctors.Text);
            cmd.Parameters.AddWithValue("@dep_staff", dep_staff.Text);
            cmd.Parameters.AddWithValue("@dep_rooms", dep_rooms.Text);
            cmd.Parameters.AddWithValue("@dep_beds", dep_beds.Text);
            //cmd.Parameters.AddWithValue("@zip", txtZip.Text);
            //cmd.Parameters.AddWithValue("@contract", Convert.ToInt16(chkContract.Checked));

            int added = 0;
            
                con.Open();
                added = cmd.ExecuteNonQuery();
                lblResults.Text = added.ToString() + " record inserted.";
            }
            catch (Exception err)
            {
                lblResults.Text = "Error inserting record. ";
                lblResults.Text += err.Message;
            }
            finally
            {
                con.Close();
            }

            //if (added > 0)
            //{
            //    FillAuthorList();
            //}
        }

       protected void home_Click(object sender, EventArgs e)
        {
            Response.Redirect("main.aspx");
        }
        
        protected void Button1_Click(object sender, EventArgs e)
        {
            string deleteSQL;
            deleteSQL = "DELETE FROM  departments ";
            deleteSQL += "WHERE dep_id = @d_nam";

            SqlConnection con = new SqlConnection(connectionString);
            SqlCommand cmd = new SqlCommand(deleteSQL, con);
            try
            {
            cmd.Parameters.AddWithValue("@d_nam", Convert.ToInt32(dep_delete.Text).ToString());

            int deleted = 0;
           
                con.Open();
                deleted = cmd.ExecuteNonQuery();
                lblResults.Text = "Record deleted.";
            }
            catch (Exception err)
            {
                lblResults.Text = "Error deleting. ";
                lblResults.Text += err.Message;
            }
            finally
            {
                con.Close();
            }
        }

        
        protected void Button3_Click(object sender, EventArgs e)
        {
            string updateSQL;
            updateSQL = "UPDATE departments SET ";
            updateSQL += "dep_name=@u_name, dep_supervisor=@u_lastname,dep_nurses=@u_dob, ";
            updateSQL += "dep_doctors=@u_address, dep_staff=@u_city, dep_rooms=@u_state, dep_beds=@u_landline ";
           
            //updateSQL += "zip=@zip, contract=@contract ";
            updateSQL += "WHERE dep_id=@u_id";

            SqlConnection con = new SqlConnection(connectionString);
            SqlCommand cmd = new SqlCommand(updateSQL, con);
            try
            {
            cmd.Parameters.AddWithValue("@u_id", dep_id.Text);
            cmd.Parameters.AddWithValue("@u_name", dep_name.Text);
            cmd.Parameters.AddWithValue("@u_lastname", dep_supervisor.Text);
            cmd.Parameters.AddWithValue("@u_dob", dep_nurses.Text);
            cmd.Parameters.AddWithValue("@u_address", dep_doctors.Text);
            cmd.Parameters.AddWithValue("@u_city", dep_staff.Text);
            cmd.Parameters.AddWithValue("@u_state", dep_rooms.Text);
            cmd.Parameters.AddWithValue("@u_landline", dep_beds.Text);
           
            //cmd.Parameters.AddWithValue("@contract", Convert.ToInt16(chkContract.Checked));
            //cmd.Parameters.AddWithValue("@au_id_original", lstAuthor.SelectedItem.Value);

            int updated = 0;
            
                con.Open();
                updated = cmd.ExecuteNonQuery();
                lblResults.Text = updated.ToString() + " record updated.";
            }
            catch (Exception err)
            {
                lblResults.Text = "Error updating. ";
                lblResults.Text += err.Message;
            }
            finally
            {
                con.Close();
            }

        }

        protected void populate_Click(object sender, EventArgs e)
        {
            DataTable dt = new DataTable();
            SqlConnection connection = new SqlConnection(connectionString);
            connection.Open();
            SqlCommand sqlCmd = new SqlCommand("SELECT * from departments WHERE dep_id = @au_id", connection);
            SqlDataAdapter sqlDa = new SqlDataAdapter(sqlCmd);

            try
            {
                sqlCmd.Parameters.AddWithValue("@au_id", Convert.ToInt32(dep_delete.Text).ToString());
                sqlDa.Fill(dt);
                if (dt.Rows.Count > 0)
                {
                    dep_id.Text = dt.Rows[0]["dep_Id"].ToString();
                    dep_name.Text = dt.Rows[0]["dep_name"].ToString(); //Where ColumnName is the Field from the DB that you want to display
                    dep_supervisor.Text = dt.Rows[0]["dep_supervisor"].ToString();
                    dep_nurses.Text = dt.Rows[0]["dep_nurses"].ToString();
                    dep_doctors.Text = dt.Rows[0]["dep_doctors"].ToString();
                    dep_staff.Text = dt.Rows[0]["dep_staff"].ToString();
                    dep_rooms.Text = dt.Rows[0]["dep_rooms"].ToString();
                    dep_beds.Text = dt.Rows[0]["dep_beds"].ToString();

                }
            }
            catch (Exception err)
            {
                lblResults.Text = "Error updating.Please enter the correct ID. ";
                lblResults.Text += err.Message;
            }
            finally
            {
                connection.Close();
            }
        }
   }

}