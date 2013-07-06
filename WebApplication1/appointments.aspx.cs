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
    public partial class appointments : System.Web.UI.Page
    {

        private string connectionString = WebConfigurationManager.ConnectionStrings["dbsql1ConnectionString6"].ConnectionString;
        

        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void cmdNew_Click(object sender, EventArgs e)
        {
            app_id.Text = "";
            p_id.Text = "";
            d_id.Text = "";
            app_date.Text = "";
            app_time.Text = "";
            dep_id.Text = "";
            app_fee.Text = "";
            app_followup.Text = "";
            //txtZip.Text = "";
            //chkContract.Checked = false;

            lblResults.Text = "Click Insert New to add the completed record.";


        }
        protected void cmdInsert_Click(object sender, EventArgs e)
        {
            if (app_id.Text == "")
            {
                lblResults.Text = "Records require an ID.";
                return;
            }
            string insertSQL;
            insertSQL = "INSERT INTO Appointment (";
            insertSQL += "app_id, p_id, d_id, app_date,";
            insertSQL += "app_time,dep_id,app_fee,app_followup)";
            insertSQL += "VALUES (";
            insertSQL += "@app_id, @p_id, @d_id, @app_date, ";
            insertSQL += "@app_time,@dep_id,@app_fee,@app_followup)";

            SqlConnection con = new SqlConnection(connectionString);
            SqlCommand cmd = new SqlCommand(insertSQL, con);

            cmd.Parameters.AddWithValue("@app_id", app_id.Text);
            cmd.Parameters.AddWithValue("@p_id", p_id.Text);
            cmd.Parameters.AddWithValue("@d_id", d_id.Text);
            cmd.Parameters.AddWithValue("@app_date", app_date.Text);
            cmd.Parameters.AddWithValue("@app_time", app_time.Text);
            cmd.Parameters.AddWithValue("@dep_id", dep_id.Text);
            cmd.Parameters.AddWithValue("@app_fee", app_fee.Text);
            cmd.Parameters.AddWithValue("@app_followup", app_followup.Text);
            //cmd.Parameters.AddWithValue("@zip", txtZip.Text);
            //cmd.Parameters.AddWithValue("@contract", Convert.ToInt16(chkContract.Checked));

            int added = 0;
            try
            {
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

        protected void delete_Click(object sender, EventArgs e)
        {
            string deleteSQL;
            deleteSQL = "DELETE FROM  Appointment ";
            deleteSQL += "WHERE app_id = @d_nam";

            SqlConnection con = new SqlConnection(connectionString);
            SqlCommand cmd = new SqlCommand(deleteSQL, con);
            try
            {
            cmd.Parameters.AddWithValue("@d_nam", Convert.ToInt32(app_delete.Text).ToString());

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

        protected void populate_Click(object sender, EventArgs e)
        {
            DataTable dt = new DataTable();
            SqlConnection connection = new SqlConnection(connectionString);
            connection.Open();
            SqlCommand sqlCmd = new SqlCommand("SELECT * from Appointment WHERE app_id = @au_id", connection);
            SqlDataAdapter sqlDa = new SqlDataAdapter(sqlCmd);

            try
            {
                sqlCmd.Parameters.AddWithValue("@au_id", Convert.ToInt32(app_delete.Text).ToString());
                sqlDa.Fill(dt);
                if (dt.Rows.Count > 0)
                {
                    app_id.Text = dt.Rows[0]["app_id"].ToString();
                    app_date.Text = dt.Rows[0]["app_date"].ToString(); //Where ColumnName is the Field from the DB that you want to display
                    app_time.Text = dt.Rows[0]["app_time"].ToString();
                    app_fee.Text = dt.Rows[0]["app_fee"].ToString();
                    app_followup.Text = dt.Rows[0]["app_followup"].ToString();
                    //app_staff.Text = dt.Rows[0]["dep_staff"].ToString();
                    //app_rooms.Text = dt.Rows[0]["dep_rooms"].ToString();
                    //app_beds.Text = dt.Rows[0]["dep_beds"].ToString();

                }
            }
            catch (Exception err)
            {
                lblResults.Text = "Error populating. ";
                lblResults.Text += err.Message;
            }
            finally
            {
                connection.Close();
            }
            
        
        }

        protected void update_Click(object sender, EventArgs e)
        {
            string updateSQL;
            updateSQL = "UPDATE Appointment SET ";
            updateSQL += "app_date=@u_name, app_time=@u_lastname,app_fee=@u_dob, ";
            updateSQL += "app_followup=@u_address";
            
            //updateSQL += "zip=@zip, contract=@contract ";
            updateSQL += "WHERE app_id=@u_id";

            SqlConnection con = new SqlConnection(connectionString);
            SqlCommand cmd = new SqlCommand(updateSQL, con);

            cmd.Parameters.AddWithValue("@u_id", app_id.Text);
            cmd.Parameters.AddWithValue("@u_name", app_date.Text);
            cmd.Parameters.AddWithValue("@u_lastname", app_time.Text);
            cmd.Parameters.AddWithValue("@u_dob", app_fee.Text);
            cmd.Parameters.AddWithValue("@u_address", app_followup.Text);
                       
            //cmd.Parameters.AddWithValue("@contract", Convert.ToInt16(chkContract.Checked));
            //cmd.Parameters.AddWithValue("@au_id_original", lstAuthor.SelectedItem.Value);

            int updated = 0;
            try
            {
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
        }

       
    }
