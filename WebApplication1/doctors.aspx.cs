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
    public partial class doctors : System.Web.UI.Page
    {
        private string connectionString = WebConfigurationManager.ConnectionStrings["dbsql1ConnectionString6"].ConnectionString;


        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void cmdNew_Click(object sender, EventArgs e)
        {
            d_id.Text = "";
            d_name.Text = "";
            d_lastname.Text = "";
            d_dob.Text = "";
            d_address.Text = "";
            d_city.Text = "";
            d_state.Text = "";
            d_landline.Text = "";
            d_mobile.Text = "";
            d_gender.Text = "";
            d_hiredate.Text = "";
            d_salary.Text = "";
            d_qualification.Text = "";
            d_visitinghours.Text = "";
            d_visitingdays.Text = "";
            //txtZip.Text = "";
            //chkContract.Checked = false;

            lblResults.Text = "Click Insert New to add the completed record.";


        }
        protected void cmdInsert_Click(object sender, EventArgs e)
        {
            if (d_id.Text == "" || d_name.Text == "" || d_lastname.Text == "")
            {
                lblResults.Text = "Records require an ID, first name, and last name.";
                return;
            }
            string insertSQL;
            insertSQL = "INSERT INTO doctors (";
            insertSQL += "d_id, d_name, d_lastname, d_dob,";
            insertSQL += "d_address,d_city,d_state,d_landline, d_mobile,d_gender,d_hiredate,d_salary,d_qualification,d_visitinghours,d_visitingdays) ";
            insertSQL += "VALUES (";
            insertSQL += "@d_id, @d_name, @d_lastname, ";
            insertSQL += "@d_dob, @d_address, @d_city, @d_state,@d_landline,@d_mobile,@d_gender,@d_hiredate,@d_salary,@d_qualification,@d_visitinghours,@d_visitingdays)";

            SqlConnection con = new SqlConnection(connectionString);
            SqlCommand cmd = new SqlCommand(insertSQL, con);

            cmd.Parameters.AddWithValue("@d_id", d_id.Text);
            cmd.Parameters.AddWithValue("@d_name", d_name.Text);
            cmd.Parameters.AddWithValue("@d_lastname", d_lastname.Text);
            cmd.Parameters.AddWithValue("@d_dob", d_dob.Text);
            cmd.Parameters.AddWithValue("@d_address", d_address.Text);
            cmd.Parameters.AddWithValue("@d_city", d_city.Text);
            cmd.Parameters.AddWithValue("@d_state", d_state.Text);
            cmd.Parameters.AddWithValue("@d_landline", d_landline.Text);
            cmd.Parameters.AddWithValue("@d_mobile", d_mobile.Text);
            cmd.Parameters.AddWithValue("@d_gender", d_gender.Text);
            cmd.Parameters.AddWithValue("@d_hiredate", d_hiredate.Text);
            cmd.Parameters.AddWithValue("@d_salary", d_salary.Text);
            cmd.Parameters.AddWithValue("@d_qualification", d_qualification.Text);
            cmd.Parameters.AddWithValue("@d_visitinghours", d_visitinghours.Text);
            cmd.Parameters.AddWithValue("@d_visitingdays", d_visitingdays.Text);
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

        protected void btndel_Click(object sender, EventArgs e)
        {
            string deleteSQL;
            deleteSQL = "DELETE FROM  doctors ";
            deleteSQL += "WHERE d_id = @d_id";

            SqlConnection con = new SqlConnection(connectionString);
            SqlCommand cmd = new SqlCommand(deleteSQL, con);
            try
            {
                cmd.Parameters.AddWithValue("@d_id", Convert.ToInt32(d_delete.Text).ToString());

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

        protected void Update_Click(object sender, EventArgs e)
        {
            string updateSQL;
            updateSQL = "UPDATE doctors SET ";
            updateSQL += "d_name=@u_name, d_lastname=@u_lastname,d_dob=@u_dob, ";
            updateSQL += "d_address=@u_address, d_city=@u_city, d_state=@u_state, d_landline=@u_landline,";
            updateSQL += " d_mobile=@u_mobile, d_gender=@u_gender, d_hiredate=@u_issuedon, d_salary=@u_issuedby,";
            updateSQL += "d_qualification=@u_qualification, d_visitinghours=@u_visitinghours, d_visitingdays=@u_visitingdays ";
            updateSQL += "WHERE d_id=@u_id";

            SqlConnection con = new SqlConnection(connectionString);
            SqlCommand cmd = new SqlCommand(updateSQL, con);

            cmd.Parameters.AddWithValue("@u_id", d_id.Text);
            cmd.Parameters.AddWithValue("@u_name", d_name.Text);
            cmd.Parameters.AddWithValue("@u_lastname", d_lastname.Text);
            cmd.Parameters.AddWithValue("@u_dob", d_dob.Text);
            cmd.Parameters.AddWithValue("@u_address", d_address.Text);
            cmd.Parameters.AddWithValue("@u_city", d_city.Text);
            cmd.Parameters.AddWithValue("@u_state", d_state.Text);
            cmd.Parameters.AddWithValue("@u_landline", d_landline.Text);
            cmd.Parameters.AddWithValue("@u_mobile", d_mobile.Text);
            cmd.Parameters.AddWithValue("@u_gender", d_gender.Text);
            cmd.Parameters.AddWithValue("@u_issuedon", d_hiredate.Text);
            cmd.Parameters.AddWithValue("@u_issuedby", d_salary.Text);
            cmd.Parameters.AddWithValue("@u_qualification", d_qualification.Text);
            cmd.Parameters.AddWithValue("@u_visitinghours", d_visitinghours.Text);
            cmd.Parameters.AddWithValue("@u_visitingdays", d_visitingdays.Text);
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

        protected void populate_Click(object sender, EventArgs e)
        {
            DataTable dt = new DataTable();
            SqlConnection connection = new SqlConnection(connectionString);
            connection.Open();
            SqlCommand sqlCmd = new SqlCommand("SELECT * from doctors WHERE d_id = @au_id", connection);
            SqlDataAdapter sqlDa = new SqlDataAdapter(sqlCmd);
            try
            {

                sqlCmd.Parameters.AddWithValue("@au_id", Convert.ToInt32(d_delete.Text).ToString());
                sqlDa.Fill(dt);
                if (dt.Rows.Count > 0)
                {
                    d_id.Text = dt.Rows[0]["d_id"].ToString();
                    d_name.Text = dt.Rows[0]["d_name"].ToString(); //Where ColumnName is the Field from the DB that you want to display
                    d_lastname.Text = dt.Rows[0]["d_lastname"].ToString();
                    d_dob.Text = dt.Rows[0]["d_dob"].ToString();
                    d_address.Text = dt.Rows[0]["d_address"].ToString();
                    d_city.Text = dt.Rows[0]["d_city"].ToString();
                    d_state.Text = dt.Rows[0]["d_state"].ToString();
                    d_landline.Text = dt.Rows[0]["d_landline"].ToString();
                    d_mobile.Text = dt.Rows[0]["d_mobile"].ToString();
                    d_gender.Text = dt.Rows[0]["d_gender"].ToString();
                    d_hiredate.Text = dt.Rows[0]["d_hiredate"].ToString();
                    d_salary.Text = dt.Rows[0]["d_salary"].ToString();
                    d_qualification.Text = dt.Rows[0]["d_qualification"].ToString();
                    d_visitinghours.Text = dt.Rows[0]["d_visitinghours"].ToString();
                    d_visitingdays.Text = dt.Rows[0]["d_visitingdays"].ToString();
                }
            }
            catch (Exception err)
            {
                lblResults.Text = "Error populating,Please enter the correct ID. ";
                lblResults.Text += err.Message;
            }
            finally
            {
                connection.Close();
            }
        }

    }
}