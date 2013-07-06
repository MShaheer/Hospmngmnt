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
    public partial class patients : System.Web.UI.Page
    {

        private string connectionString = WebConfigurationManager.ConnectionStrings["dbsql1ConnectionString6"].ConnectionString;


        protected void Page_Load(object sender, EventArgs e)
        {
            //if (!this.IsPostBack)
            //{
            //    FillAuthorList();
            //}
        }

        //private void FillAuthorList()
        //{
        //    p_drop.Items.Clear();
        //    string selectSQL = "SELECT p_id FROM patients";

        //    SqlConnection con = new SqlConnection(connectionString);
        //    SqlCommand cmd = new SqlCommand(selectSQL, con);
        //    SqlDataReader reader;

        //    try
        //    {
        //        con.Open();
        //        reader = cmd.ExecuteReader();
        //        while (reader.Read())
        //        {
        //            ListItem newItem = new ListItem();
        //            newItem.Text = reader["p_id"] + ", " + reader[""];
        //            //newItem.Value = reader["p_id"].ToString();
        //            p_drop.Items.Add(newItem);
        //        }
        //        reader.Close();
        //    }
        //    catch (Exception err)
        //    {
        //        lblResults.Text = "Error reading list of names. ";
        //        lblResults.Text += err.Message;
        //    }
        //    finally
        //    {
        //        con.Close();
        //    }
        //}

        //protected void p_drop_SelectedIndexChanged(object sender, EventArgs e)
        //{
        //    string selectSQL;
        //    selectSQL = "SELECT * FROM demo1";
        //    selectSQL += "WHERE id='" + p_drop.SelectedItem.Value + "'";
        //    SqlConnection con = new SqlConnection(connectionString);
        //    SqlCommand cmd = new SqlCommand(selectSQL, con);
        //    SqlDataReader reader;

        //    try
        //    {
        //        con.Open();
        //        reader = cmd.ExecuteReader();
        //        reader.Read();

        //        p_id.Text = reader["p_id"].ToString();
        //        p_name.Text = reader["p_name"].ToString();
        //        p_lastname.Text = reader["p_lastname"].ToString();
        //        p_dob.Text = reader["p_dob"].ToString();
        //        p_address.Text = reader["p_address"].ToString();
        //        p_city.Text = reader["p_city"].ToString();
        //        p_state.Text = reader["p_state"].ToString();
        //        p_landline.Text = reader["p_landline"].ToString();
        //        p_mobile.Text = reader["p_mobile"].ToString();
        //        p_gender.Text = reader["p_gender"].ToString();
        //        p_issuedon.Text = reader["p_issuedon"].ToString();
        //        p_issuedby.Text = reader["p_issuedby"].ToString();
        //        //txtZip.Text = reader["zip"].ToString();
        //        //chkContract.Checked = (bool)reader["contract"];
        //        reader.Close();
        //        lblResults.Text = "";
        //    }
        //    catch (Exception err)
        //    {
        //        lblResults.Text = "Error getting author. ";
        //        lblResults.Text += err.Message;
        //    }
        //    finally
        //    {
        //        con.Close();
        //    }

        //}




        protected void cmdNew_Click(object sender, EventArgs e)
        {
            p_id.Text = "";
            p_name.Text = "";
            p_lastname.Text = "";
            p_dob.Text = "";
            p_address.Text = "";
            p_city.Text = "";
            p_state.Text = "";
            p_landline.Text = "";
            p_mobile.Text = "";
            p_gender.Text = "";
            p_issuedon.Text = "";
            p_issuedby.Text = "";
            //txtZip.Text = "";
            //chkContract.Checked = false;

            lblResults.Text = "Click Insert New to add the completed record.";


        }
        protected void cmdInsert_Click(object sender, EventArgs e)
        {
            if (p_id.Text == "" || p_name.Text == "" || p_lastname.Text == "")
            {
                lblResults.Text = "Records require an ID, first name, and last name.";
                return;
            }
            string insertSQL;
            insertSQL = "INSERT INTO patients (";
            insertSQL += "p_id, p_name, p_lastname, p_dob,";
            insertSQL += "p_address,p_city,p_state,p_landline, p_mobile,p_gender,p_issuedon,p_issuedby) ";
            insertSQL += "VALUES (";
            insertSQL += "@p_id, @p_name, @p_lastname, ";
            insertSQL += "@p_dob, @p_address, @p_city, @p_state,@p_landline,@p_mobile,@p_gender,@p_issuedon,@p_issuedby)";

            SqlConnection con = new SqlConnection(connectionString);
            SqlCommand cmd = new SqlCommand(insertSQL, con);

            cmd.Parameters.AddWithValue("@p_id", p_id.Text);
            cmd.Parameters.AddWithValue("@p_name", p_name.Text);
            cmd.Parameters.AddWithValue("@p_lastname", p_lastname.Text);
            cmd.Parameters.AddWithValue("@p_dob", p_dob.Text);
            cmd.Parameters.AddWithValue("@p_address", p_address.Text);
            cmd.Parameters.AddWithValue("@p_city", p_city.Text);
            cmd.Parameters.AddWithValue("@p_state", p_state.Text);
            cmd.Parameters.AddWithValue("@p_landline", p_landline.Text);
            cmd.Parameters.AddWithValue("@p_mobile", p_mobile.Text);
            cmd.Parameters.AddWithValue("@p_gender", p_gender.Text);
            cmd.Parameters.AddWithValue("@p_issuedon", p_issuedon.Text);
            cmd.Parameters.AddWithValue("@p_issuedby", p_issuedby.Text);
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

        protected void cmdUpdate_Click(object sender, EventArgs e)
        {
            string updateSQL;
            updateSQL = "UPDATE patients SET ";
            updateSQL += "p_name=@u_name, p_lastname=@u_lastname,p_dob=@u_dob, ";
            updateSQL += "p_address=@u_address, p_city=@u_city, p_state=@u_state, p_landline=@u_landline,";
            updateSQL += " p_mobile=@u_mobile, p_gender=@u_gender, p_issuedon=@u_issuedon, p_issuedby=@u_issuedby ";
            //updateSQL += "zip=@zip, contract=@contract ";
            updateSQL += "WHERE p_id=@u_id";

            SqlConnection con = new SqlConnection(connectionString);
            SqlCommand cmd = new SqlCommand(updateSQL, con);

            cmd.Parameters.AddWithValue("@u_id", p_id.Text);
            cmd.Parameters.AddWithValue("@u_name", p_name.Text);
            cmd.Parameters.AddWithValue("@u_lastname", p_lastname.Text);
            cmd.Parameters.AddWithValue("@u_dob", p_dob.Text);
            cmd.Parameters.AddWithValue("@u_address", p_address.Text);
            cmd.Parameters.AddWithValue("@u_city", p_city.Text);
            cmd.Parameters.AddWithValue("@u_state", p_state.Text);
            cmd.Parameters.AddWithValue("@u_landline", p_landline.Text);
            cmd.Parameters.AddWithValue("@u_mobile", p_mobile.Text);
            cmd.Parameters.AddWithValue("@u_gender", p_gender.Text);
            cmd.Parameters.AddWithValue("@u_issuedon", p_issuedon.Text);
            cmd.Parameters.AddWithValue("@u_issuedby", p_issuedby.Text);
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
       

            protected void cmdDelete_Click(object sender, EventArgs e)
    {
        string deleteSQL;
        deleteSQL = "DELETE FROM  patients ";
        deleteSQL += "WHERE p_id = @d_nam";

        SqlConnection con = new SqlConnection(connectionString);
        SqlCommand cmd = new SqlCommand(deleteSQL, con);
        try
        {
                cmd.Parameters.AddWithValue("@d_nam",Convert.ToInt32(p_delete.Text).ToString());

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
        //if (deleted > 0)
        //{
        //    FillAuthorList();
        //}
    }

            protected void btnpop_Click(object sender, EventArgs e)
            {
                DataTable dt = new DataTable();
                SqlConnection connection = new SqlConnection(connectionString);
                connection.Open();
                SqlCommand sqlCmd = new SqlCommand("SELECT * from patients WHERE p_id = @au_id", connection);
                SqlDataAdapter sqlDa = new SqlDataAdapter(sqlCmd);
                try
        {

                sqlCmd.Parameters.AddWithValue("@au_id", Convert.ToInt32(p_delete.Text).ToString());
                sqlDa.Fill(dt);
                if (dt.Rows.Count > 0)
                {
                    p_id.Text = dt.Rows[0]["p_id"].ToString();
                    p_name.Text = dt.Rows[0]["p_name"].ToString(); //Where ColumnName is the Field from the DB that you want to display
                    p_lastname.Text = dt.Rows[0]["p_lastname"].ToString();
                    p_dob.Text = dt.Rows[0]["p_dob"].ToString();
                    p_address.Text = dt.Rows[0]["p_address"].ToString();
                    p_city.Text = dt.Rows[0]["p_city"].ToString();
                    p_state.Text = dt.Rows[0]["p_state"].ToString();
                    p_landline.Text = dt.Rows[0]["p_landline"].ToString();
                    p_mobile.Text = dt.Rows[0]["p_mobile"].ToString();
                    p_gender.Text = dt.Rows[0]["p_gender"].ToString();
                    p_issuedon.Text = dt.Rows[0]["p_issuedon"].ToString();
                    p_issuedby.Text = dt.Rows[0]["p_issuedby"].ToString();
                }
              
        }
                catch (Exception err)
                {
                    lblResults.Text = "Error Populating,Please specify the correct ID. ";
                    lblResults.Text += err.Message;
                }
                finally
                {
                    connection.Close();
                }
            }

            protected void ListView1_SelectedIndexChanged(object sender, EventArgs e)
            {

            }

            
        }

        
    }
