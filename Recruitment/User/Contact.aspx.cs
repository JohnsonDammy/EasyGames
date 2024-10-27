using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace Recruitment.User
{
    public partial class Contact : System.Web.UI.Page
    {

     

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSend_Click(object sender, EventArgs e)
        {
            SqlConnection conn;
            SqlCommand cmd;

            string str = ConfigurationManager.ConnectionStrings["cs"].ConnectionString;

            string query;
            int r;

            string enteredName = name.Value.Trim();
            string enteredEmail = email.Value.Trim();
            string enteredSubject = subject.Value.Trim();
            string enteredMessage = message.Value.Trim();

            conn = new SqlConnection(str);


            try
            {
                conn.Open();

                query = "INSERT INTO Contacts (Name, Email, Subject, Message) VALUES (@Name, @Email, @Subject, @Message)";
                cmd = new SqlCommand(query, conn);
                cmd.Parameters.AddWithValue("@Name", enteredName);
                cmd.Parameters.AddWithValue("@Email", enteredEmail);
                cmd.Parameters.AddWithValue("@Subject", enteredSubject);
                cmd.Parameters.AddWithValue("@Message", enteredMessage);

                r = cmd.ExecuteNonQuery();

                if (r > 0)
                {
                    Response.Write("<script>alert('Message Sents, we will get back you');</script>");

                    ClearFields();
                }
                else
                {
                    Response.Write("<script>alert('Messages not sent');</script>");

                    ClearFields();

                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
            finally
            {
                if (conn != null)
                {
                    // Close the connection and perform any necessary cleanup
                    conn.Close();
                }
            }




        }

        private void ClearFields()
        {
            name.Value = "";
            email.Value = "";
            subject.Value = "";
            message.Value = "";
        }
    }
}
   