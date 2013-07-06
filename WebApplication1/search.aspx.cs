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
    public partial class search : System.Web.UI.Page
    {
        private string connectionString = WebConfigurationManager.ConnectionStrings["dbsql1ConnectionString6"].ConnectionString;


        protected void Page_Load(object sender, EventArgs e)
        {
        ////    //string firstsearchSQL;

        //    //firstse-+
            
        //    ))
        //    //{
        //    //    TextBox1.Text = DR1.GetValue(1).ToString();
        //    //}
        //    //con.Close();
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

            if (DropDownList1.SelectedIndex == 1)
            {
                SqlConnection sqlCon = new SqlConnection(connectionString);
                SqlCommand command = new SqlCommand();
                command.Connection = sqlCon;
                command.CommandType = CommandType.Text;
                command.CommandText = "SELECT * from patients";
                SqlDataAdapter adapter = new SqlDataAdapter(command);
                DataSet ds = new DataSet();
                adapter.Fill(ds);
                GridView2.DataSource = ds;
                GridView2.DataBind();
            }

            else if (DropDownList1.SelectedIndex == 2)
            {
                SqlConnection sqlCon = new SqlConnection(connectionString);
                SqlCommand command = new SqlCommand();
                command.Connection = sqlCon;
                command.CommandType = CommandType.Text;
                command.CommandText = "select * from patients where p_id=@value";

                command.Parameters.AddWithValue("@value", valuebox.Text);

                SqlDataAdapter adapter = new SqlDataAdapter(command);
                DataSet ds = new DataSet();
                adapter.Fill(ds);
                GridView2.DataSource = ds;
                GridView2.DataBind();

            }

            else if (DropDownList1.SelectedIndex == 3)
            {
                SqlConnection sqlCon = new SqlConnection(connectionString);
                SqlCommand command = new SqlCommand();
                command.Connection = sqlCon;
                command.CommandType = CommandType.Text;
                command.CommandText = "select * from Appointment";

                command.Parameters.AddWithValue("@value", valuebox.Text);


                SqlDataAdapter adapter = new SqlDataAdapter(command);
                DataSet ds = new DataSet();
                adapter.Fill(ds);
                GridView2.DataSource = ds;
                GridView2.DataBind();

            }

            else if (DropDownList1.SelectedIndex == 4)
            {
                SqlConnection sqlCon = new SqlConnection(connectionString);
                SqlCommand command = new SqlCommand();
                command.Connection = sqlCon;
                command.CommandType = CommandType.Text;
                command.CommandText = "select * from Appointment where app_date<@value";

                command.Parameters.AddWithValue("@value", valuebox.Text);


                SqlDataAdapter adapter = new SqlDataAdapter(command);
                DataSet ds = new DataSet();
                adapter.Fill(ds);
                GridView2.DataSource = ds;
                GridView2.DataBind();

            }

            else if (DropDownList1.SelectedIndex == 5)
            {
                SqlConnection sqlCon = new SqlConnection(connectionString);
                SqlCommand command = new SqlCommand();
                command.Connection = sqlCon;
                command.CommandType = CommandType.Text;
                command.CommandText = "select * from Appointment where app_date>@value";

                command.Parameters.AddWithValue("@value", valuebox.Text);


                SqlDataAdapter adapter = new SqlDataAdapter(command);
                DataSet ds = new DataSet();
                adapter.Fill(ds);
                GridView2.DataSource = ds;
                GridView2.DataBind();

            }
            else if (DropDownList1.SelectedIndex == 6)
            {
                SqlConnection sqlCon = new SqlConnection(connectionString);
                SqlCommand command = new SqlCommand();
                command.Connection = sqlCon;
                command.CommandType = CommandType.Text;
                command.CommandText = "select * from Appointment where app_date=@value";

                command.Parameters.AddWithValue("@value", valuebox.Text);


                SqlDataAdapter adapter = new SqlDataAdapter(command);
                DataSet ds = new DataSet();
                adapter.Fill(ds);
                GridView2.DataSource = ds;
                GridView2.DataBind();

            }
            else if (DropDownList1.SelectedIndex == 7)
            {
                SqlConnection sqlCon = new SqlConnection(connectionString);
                SqlCommand command = new SqlCommand();
                command.Connection = sqlCon;
                command.CommandType = CommandType.Text;
                command.CommandText = "select * from patients where p_dob<@value";

                command.Parameters.AddWithValue("@value", valuebox.Text);


                SqlDataAdapter adapter = new SqlDataAdapter(command);
                DataSet ds = new DataSet();
                adapter.Fill(ds);
                GridView2.DataSource = ds;
                GridView2.DataBind();

            }
            else if (DropDownList1.SelectedIndex == 8)
            {
                SqlConnection sqlCon = new SqlConnection(connectionString);
                SqlCommand command = new SqlCommand();
                command.Connection = sqlCon;
                command.CommandType = CommandType.Text;
                command.CommandText = "select * from patients where p_dob>@value";

                command.Parameters.AddWithValue("@value", valuebox.Text);


                SqlDataAdapter adapter = new SqlDataAdapter(command);
                DataSet ds = new DataSet();
                adapter.Fill(ds);
                GridView2.DataSource = ds;
                GridView2.DataBind();

            }
            else if (DropDownList1.SelectedIndex == 9)
            {
                SqlConnection sqlCon = new SqlConnection(connectionString);
                SqlCommand command = new SqlCommand();
                command.Connection = sqlCon;
                command.CommandType = CommandType.Text;
                command.CommandText = "select * from appointment where d_id=@value";

                command.Parameters.AddWithValue("@value", valuebox.Text);


                SqlDataAdapter adapter = new SqlDataAdapter(command);
                DataSet ds = new DataSet();
                adapter.Fill(ds);
                GridView2.DataSource = ds;
                GridView2.DataBind();

            }
            else if (DropDownList1.SelectedIndex == 10)
            {
                SqlConnection sqlCon = new SqlConnection(connectionString);
                SqlCommand command = new SqlCommand();
                command.Connection = sqlCon;
                command.CommandType = CommandType.Text;
                command.CommandText = "select * from patients where p_issuedon<@value";

                command.Parameters.AddWithValue("@value", valuebox.Text);


                SqlDataAdapter adapter = new SqlDataAdapter(command);
                DataSet ds = new DataSet();
                adapter.Fill(ds);
                GridView2.DataSource = ds;
                GridView2.DataBind();

            }
            else if (DropDownList1.SelectedIndex == 11)
            {
                SqlConnection sqlCon = new SqlConnection(connectionString);
                SqlCommand command = new SqlCommand();
                command.Connection = sqlCon;
                command.CommandType = CommandType.Text;
                command.CommandText = "select * from patients where p_issuedon>@value";

                command.Parameters.AddWithValue("@value", valuebox.Text);


                SqlDataAdapter adapter = new SqlDataAdapter(command);
                DataSet ds = new DataSet();
                adapter.Fill(ds);
                GridView2.DataSource = ds;
                GridView2.DataBind();

            }
            else if (DropDownList1.SelectedIndex == 12)
            {
                SqlConnection sqlCon = new SqlConnection(connectionString);
                SqlCommand command = new SqlCommand();
                command.Connection = sqlCon;
                command.CommandType = CommandType.Text;
                command.CommandText = "select * from patients where p_issuedby=@value";

                command.Parameters.AddWithValue("@value", valuebox.Text);


                SqlDataAdapter adapter = new SqlDataAdapter(command);
                DataSet ds = new DataSet();
                adapter.Fill(ds);
                GridView2.DataSource = ds;
                GridView2.DataBind();

            }



            //if (DropDownList1.SelectedIndex == 0)
            //{
            //    SqlConnection sqlCon = new SqlConnection(connectionString);
            //    SqlCommand command = new SqlCommand();
            //    command.Connection = sqlCon;
            //    command.CommandType = CommandType.Text;
            //    command.CommandText = "SELECT patients.p_id, patients.p_name,patients.p_lastname FROM patients INNER JOIN Appointment ON patients.p_id=Appointment.p_id ORDER BY patients.p_id";
            //    SqlDataAdapter adapter = new SqlDataAdapter(command);
            //    DataSet ds = new DataSet();
            //    adapter.Fill(ds);
            //    GridView2.DataSource = ds;
            //    GridView2.DataBind();
               
            //}
        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {


            if (DropDownList2.SelectedIndex == 1)
            {
                SqlConnection sqlCon = new SqlConnection(connectionString);
                SqlCommand command = new SqlCommand();
                command.Connection = sqlCon;
                command.CommandType = CommandType.Text;
                command.CommandText = "select * from doctors";
                SqlDataAdapter adapter = new SqlDataAdapter(command);
                DataSet ds = new DataSet();
                adapter.Fill(ds);
                GridView2.DataSource = ds;
                GridView2.DataBind();
            }

            else if (DropDownList2.SelectedIndex == 2)
            {
                SqlConnection sqlCon = new SqlConnection(connectionString);
                SqlCommand command = new SqlCommand();
                command.Connection = sqlCon;
                command.CommandType = CommandType.Text;
                command.CommandText = "select * from doctors where d_id=@value";

                command.Parameters.AddWithValue("@value", valuebox2.Text);

                SqlDataAdapter adapter = new SqlDataAdapter(command);
                DataSet ds = new DataSet();
                adapter.Fill(ds);
                GridView2.DataSource = ds;
                GridView2.DataBind();

            }

            else if (DropDownList2.SelectedIndex == 3)
            {
                SqlConnection sqlCon = new SqlConnection(connectionString);
                SqlCommand command = new SqlCommand();
                command.Connection = sqlCon;
                command.CommandType = CommandType.Text;
                command.CommandText = "select * from doctors where d_name=@value";

                command.Parameters.AddWithValue("@value", valuebox2.Text);


                SqlDataAdapter adapter = new SqlDataAdapter(command);
                DataSet ds = new DataSet();
                adapter.Fill(ds);
                GridView2.DataSource = ds;
                GridView2.DataBind();

            }

            else if (DropDownList2.SelectedIndex == 4)
            {
                SqlConnection sqlCon = new SqlConnection(connectionString);
                SqlCommand command = new SqlCommand();
                command.Connection = sqlCon;
                command.CommandType = CommandType.Text;
                command.CommandText = "select * from doctors where d_dob>@value";

                command.Parameters.AddWithValue("@value", valuebox2.Text);


                SqlDataAdapter adapter = new SqlDataAdapter(command);
                DataSet ds = new DataSet();
                adapter.Fill(ds);
                GridView2.DataSource = ds;
                GridView2.DataBind();

            }

            else if (DropDownList2.SelectedIndex == 5)
            {
                SqlConnection sqlCon = new SqlConnection(connectionString);
                SqlCommand command = new SqlCommand();
                command.Connection = sqlCon;
                command.CommandType = CommandType.Text;
                command.CommandText = "select * from doctors where d_dob<@value";

                command.Parameters.AddWithValue("@value", valuebox2.Text);


                SqlDataAdapter adapter = new SqlDataAdapter(command);
                DataSet ds = new DataSet();
                adapter.Fill(ds);
                GridView2.DataSource = ds;
                GridView2.DataBind();

            }
            else if (DropDownList2.SelectedIndex == 6)
            {
                SqlConnection sqlCon = new SqlConnection(connectionString);
                SqlCommand command = new SqlCommand();
                command.Connection = sqlCon;
                command.CommandType = CommandType.Text;
                command.CommandText = "select * from doctors where d_city=@value";

                command.Parameters.AddWithValue("@value", valuebox2.Text);


                SqlDataAdapter adapter = new SqlDataAdapter(command);
                DataSet ds = new DataSet();
                adapter.Fill(ds);
                GridView2.DataSource = ds;
                GridView2.DataBind();

            }
            else if (DropDownList2.SelectedIndex == 7)
            {
                SqlConnection sqlCon = new SqlConnection(connectionString);
                SqlCommand command = new SqlCommand();
                command.Connection = sqlCon;
                command.CommandType = CommandType.Text;
                command.CommandText = "select * from doctors where d_hiredate<@value";

                command.Parameters.AddWithValue("@value", valuebox2.Text);


                SqlDataAdapter adapter = new SqlDataAdapter(command);
                DataSet ds = new DataSet();
                adapter.Fill(ds);
                GridView2.DataSource = ds;
                GridView2.DataBind();

            }
            else if (DropDownList2.SelectedIndex == 8)
            {
                SqlConnection sqlCon = new SqlConnection(connectionString);
                SqlCommand command = new SqlCommand();
                command.Connection = sqlCon;
                command.CommandType = CommandType.Text;
                command.CommandText = "select * from doctors where d_hiredate>@value";

                command.Parameters.AddWithValue("@value", valuebox2.Text);


                SqlDataAdapter adapter = new SqlDataAdapter(command);
                DataSet ds = new DataSet();
                adapter.Fill(ds);
                GridView2.DataSource = ds;
                GridView2.DataBind();

            }
            else if (DropDownList2.SelectedIndex == 9)
            {
                SqlConnection sqlCon = new SqlConnection(connectionString);
                SqlCommand command = new SqlCommand();
                command.Connection = sqlCon;
                command.CommandType = CommandType.Text;
                command.CommandText = "select * from doctors where d_salary<@value";

                command.Parameters.AddWithValue("@value", valuebox2.Text);


                SqlDataAdapter adapter = new SqlDataAdapter(command);
                DataSet ds = new DataSet();
                adapter.Fill(ds);
                GridView2.DataSource = ds;
                GridView2.DataBind();

            }
            else if (DropDownList2.SelectedIndex == 10)
            {
                SqlConnection sqlCon = new SqlConnection(connectionString);
                SqlCommand command = new SqlCommand();
                command.Connection = sqlCon;
                command.CommandType = CommandType.Text;
                command.CommandText = "select * from doctors where d_salary>@value";

                command.Parameters.AddWithValue("@value", valuebox2.Text);


                SqlDataAdapter adapter = new SqlDataAdapter(command);
                DataSet ds = new DataSet();
                adapter.Fill(ds);
                GridView2.DataSource = ds;
                GridView2.DataBind();

            }
            else if (DropDownList2.SelectedIndex == 11)
            {
                SqlConnection sqlCon = new SqlConnection(connectionString);
                SqlCommand command = new SqlCommand();
                command.Connection = sqlCon;
                command.CommandType = CommandType.Text;
                command.CommandText = "select * from doctors where d_qualification=@value";

                command.Parameters.AddWithValue("@value", valuebox2.Text);


                SqlDataAdapter adapter = new SqlDataAdapter(command);
                DataSet ds = new DataSet();
                adapter.Fill(ds);
                GridView2.DataSource = ds;
                GridView2.DataBind();

            }
            else if (DropDownList2.SelectedIndex == 12)
            {
                SqlConnection sqlCon = new SqlConnection(connectionString);
                SqlCommand command = new SqlCommand();
                command.Connection = sqlCon;
                command.CommandType = CommandType.Text;
                command.CommandText = "";

                command.Parameters.AddWithValue("@value", valuebox2.Text);


                SqlDataAdapter adapter = new SqlDataAdapter(command);
                DataSet ds = new DataSet();
                adapter.Fill(ds);
                GridView2.DataSource = ds;
                GridView2.DataBind();

            }


        }

        protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
        {

            if (DropDownList3.SelectedIndex == 1)
            {
                SqlConnection sqlCon = new SqlConnection(connectionString);
                SqlCommand command = new SqlCommand();
                command.Connection = sqlCon;
                command.CommandType = CommandType.Text;
                command.CommandText = "select * from departments";
                SqlDataAdapter adapter = new SqlDataAdapter(command);
                DataSet ds = new DataSet();
                adapter.Fill(ds);
                GridView2.DataSource = ds;
                GridView2.DataBind();
            }

            else if (DropDownList3.SelectedIndex == 2)
            {
                SqlConnection sqlCon = new SqlConnection(connectionString);
                SqlCommand command = new SqlCommand();
                command.Connection = sqlCon;
                command.CommandType = CommandType.Text;
                command.CommandText = "select * from departments where dep_supervisor=@value";

                command.Parameters.AddWithValue("@value", valuebox3.Text);

                SqlDataAdapter adapter = new SqlDataAdapter(command);
                DataSet ds = new DataSet();
                adapter.Fill(ds);
                GridView2.DataSource = ds;
                GridView2.DataBind();

            }

            else if (DropDownList3.SelectedIndex == 3)
            {
                SqlConnection sqlCon = new SqlConnection(connectionString);
                SqlCommand command = new SqlCommand();
                command.Connection = sqlCon;
                command.CommandType = CommandType.Text;
                command.CommandText = "select dep_supervisor from departments where dep_id=@value";

                command.Parameters.AddWithValue("@value", valuebox3.Text);


                SqlDataAdapter adapter = new SqlDataAdapter(command);
                DataSet ds = new DataSet();
                adapter.Fill(ds);
                GridView2.DataSource = ds;
                GridView2.DataBind();

            }

            else if (DropDownList3.SelectedIndex == 4)
            {
                SqlConnection sqlCon = new SqlConnection(connectionString);
                SqlCommand command = new SqlCommand();
                command.Connection = sqlCon;
                command.CommandType = CommandType.Text;
                command.CommandText = "select dep_supervisor from departments where dep_name=@value";

                command.Parameters.AddWithValue("@value", valuebox3.Text);


                SqlDataAdapter adapter = new SqlDataAdapter(command);
                DataSet ds = new DataSet();
                adapter.Fill(ds);
                GridView2.DataSource = ds;
                GridView2.DataBind();

            }

            else if (DropDownList3.SelectedIndex == 5)
            {
                SqlConnection sqlCon = new SqlConnection(connectionString);
                SqlCommand command = new SqlCommand();
                command.Connection = sqlCon;
                command.CommandType = CommandType.Text;
                command.CommandText = "select dep_doctors from departments where dep_id=@value";

                command.Parameters.AddWithValue("@value", valuebox3.Text);


                SqlDataAdapter adapter = new SqlDataAdapter(command);
                DataSet ds = new DataSet();
                adapter.Fill(ds);
                GridView2.DataSource = ds;
                GridView2.DataBind();

            }
            else if (DropDownList3.SelectedIndex == 6)
            {
                SqlConnection sqlCon = new SqlConnection(connectionString);
                SqlCommand command = new SqlCommand();
                command.Connection = sqlCon;
                command.CommandType = CommandType.Text;
                command.CommandText = "select dep_rooms from departments where dep_id=@value";

                command.Parameters.AddWithValue("@value", valuebox3.Text);


                SqlDataAdapter adapter = new SqlDataAdapter(command);
                DataSet ds = new DataSet();
                adapter.Fill(ds);
                GridView2.DataSource = ds;
                GridView2.DataBind();

            }
            else if (DropDownList3.SelectedIndex == 7)
            {
                SqlConnection sqlCon = new SqlConnection(connectionString);
                SqlCommand command = new SqlCommand();
                command.Connection = sqlCon;
                command.CommandType = CommandType.Text;
                command.CommandText = "select dep_staff from departments where dep_id=@value";

                command.Parameters.AddWithValue("@value", valuebox3.Text);


                SqlDataAdapter adapter = new SqlDataAdapter(command);
                DataSet ds = new DataSet();
                adapter.Fill(ds);
                GridView2.DataSource = ds;
                GridView2.DataBind();

            }
            else if (DropDownList3.SelectedIndex == 8)
            {
                SqlConnection sqlCon = new SqlConnection(connectionString);
                SqlCommand command = new SqlCommand();
                command.Connection = sqlCon;
                command.CommandType = CommandType.Text;
                command.CommandText = "select dep_nurses from departments where dep_id=@value";

                command.Parameters.AddWithValue("@value", valuebox3.Text);


                SqlDataAdapter adapter = new SqlDataAdapter(command);
                DataSet ds = new DataSet();
                adapter.Fill(ds);
                GridView2.DataSource = ds;
                GridView2.DataBind();

            }
        }

        protected void DropDownList4_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (DropDownList4.SelectedIndex == 1)
            {
                SqlConnection sqlCon = new SqlConnection(connectionString);
                SqlCommand command = new SqlCommand();
                command.Connection = sqlCon;
                command.CommandType = CommandType.Text;
                command.CommandText = "select * from Appointments where app_id=@value";
                SqlDataAdapter adapter = new SqlDataAdapter(command);
                DataSet ds = new DataSet();
                adapter.Fill(ds);
                GridView2.DataSource = ds;
                GridView2.DataBind();
            }

            else if (DropDownList4.SelectedIndex == 2)
            {
                SqlConnection sqlCon = new SqlConnection(connectionString);
                SqlCommand command = new SqlCommand();
                command.Connection = sqlCon;
                command.CommandType = CommandType.Text;
                command.CommandText = "select * from Appointments where p_id=@value";

                command.Parameters.AddWithValue("@value", valuebox4.Text);

                SqlDataAdapter adapter = new SqlDataAdapter(command);
                DataSet ds = new DataSet();
                adapter.Fill(ds);
                GridView2.DataSource = ds;
                GridView2.DataBind();

            }

            else if (DropDownList4.SelectedIndex == 3)
            {
                SqlConnection sqlCon = new SqlConnection(connectionString);
                SqlCommand command = new SqlCommand();
                command.Connection = sqlCon;
                command.CommandType = CommandType.Text;
                command.CommandText = "select * from Appointments where d_id=@value";

                command.Parameters.AddWithValue("@value", valuebox4.Text);


                SqlDataAdapter adapter = new SqlDataAdapter(command);
                DataSet ds = new DataSet();
                adapter.Fill(ds);
                GridView2.DataSource = ds;
                GridView2.DataBind();

            }

            else if (DropDownList4.SelectedIndex == 4)
            {
                SqlConnection sqlCon = new SqlConnection(connectionString);
                SqlCommand command = new SqlCommand();
                command.Connection = sqlCon;
                command.CommandType = CommandType.Text;
                command.CommandText = "select * from Appointments where dep_id=@value";

                command.Parameters.AddWithValue("@value", valuebox4.Text);


                SqlDataAdapter adapter = new SqlDataAdapter(command);
                DataSet ds = new DataSet();
                adapter.Fill(ds);
                GridView2.DataSource = ds;
                GridView2.DataBind();

            }

            else if (DropDownList4.SelectedIndex == 5)
            {
                SqlConnection sqlCon = new SqlConnection(connectionString);
                SqlCommand command = new SqlCommand();
                command.Connection = sqlCon;
                command.CommandType = CommandType.Text;
                command.CommandText = "select * from Appointments where app_fee<@value";

                command.Parameters.AddWithValue("@value", valuebox4.Text);


                SqlDataAdapter adapter = new SqlDataAdapter(command);
                DataSet ds = new DataSet();
                adapter.Fill(ds);
                GridView2.DataSource = ds;
                GridView2.DataBind();

            }
            else if (DropDownList4.SelectedIndex == 6)
            {
                SqlConnection sqlCon = new SqlConnection(connectionString);
                SqlCommand command = new SqlCommand();
                command.Connection = sqlCon;
                command.CommandType = CommandType.Text;
                command.CommandText = "select * from Appointments where app_fee>@value";

                command.Parameters.AddWithValue("@value", valuebox4.Text);


                SqlDataAdapter adapter = new SqlDataAdapter(command);
                DataSet ds = new DataSet();
                adapter.Fill(ds);
                GridView2.DataSource = ds;
                GridView2.DataBind();

            }
        }

        protected void home_Click(object sender, EventArgs e)
        {
            Response.Redirect("main.aspx");
        }

        
    }
}