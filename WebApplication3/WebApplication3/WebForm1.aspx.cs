using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace WebApplication3
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SubmitButton_Click(object sender, EventArgs e)
        {
            string firstName = FirstNameTextBox.Text;
            string lastName = LastNameTextBox.Text;
            string email = EmailTextBox.Text;
            string password = PasswordTextBox.Text;
            string fileName = "";

            // Check if a file was uploaded and save it to the server
            if (FileUploadControl.HasFile)
            {
                fileName = FileUploadControl.FileName;
                string path = Server.MapPath("~/uploads/") + fileName;
                FileUploadControl.SaveAs(path);
            }

            // Insert the data into the database
            string connectionString = "Data Source=DESKTOP-EFVSMR6;Initial Catalog=SAIF;Integrated Security=True";
            string query = "INSERT INTO Users (FirstName, LastName, Email, Password, FileName) VALUES (@FirstName, @LastName, @Email, @Password, @FileName)";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                SqlCommand command = new SqlCommand(query, connection);
                command.Parameters.AddWithValue("@FirstName", firstName);
                command.Parameters.AddWithValue("@LastName", lastName);
                command.Parameters.AddWithValue("@Email", email);
                command.Parameters.AddWithValue("@Password", password);
                command.Parameters.AddWithValue("@FileName", fileName);

                connection.Open();
                command.ExecuteNonQuery();
            }

            // Redirect to a success page
            Response.Redirect("WebForm1.aspx");
        }
    }

}
    
