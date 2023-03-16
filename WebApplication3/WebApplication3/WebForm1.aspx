<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication3.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Registration Form</title>
    <link rel="stylesheet" type="text/css" href="style.css" />
    <style>
        body {
    font-family: Arial, sans-serif;
}

form {
    width: 50%;
    margin: 0 auto;
}

label {
    display: inline-block;
    width: 150px;
    margin-bottom: 10px;
}

input[type="text"], input[type="password"], input[type="file"] {
    display: block;
    width: 100%;
    padding: 5px;
    margin-bottom: 20px;
}

button[type="submit"] {
    background-color: #4CAF50;
    color: white;
    padding: 12px 20px;
    border: none;
    border-radius: 4px;
    cursor: pointer;
}

button[type="submit"]:hover {
    background-color: #45a049;
}

.error {
    color: red;
    font-size: 12px;
    margin-top: 5px;
}

    </style>
</head>
<body>
    <form id="RegistrationForm" runat="server">
        <div>
            <h1>Registration Form</h1>
            <hr />

            <label for="FirstNameTextBox">First Name:</label>
            <asp:TextBox ID="FirstNameTextBox" runat="server" Required="true"></asp:TextBox>

            <label for="LastNameTextBox">Last Name:</label>
            <asp:TextBox ID="LastNameTextBox" runat="server" Required="true"></asp:TextBox>

            <label for="EmailTextBox">Email:</label>
            <asp:TextBox ID="EmailTextBox" runat="server" Required="true"></asp:TextBox>

            <label for="PasswordTextBox">Password:</label>
            <asp:TextBox ID="PasswordTextBox" runat="server" TextMode="Password" Required="true"></asp:TextBox>

            <label for="FileUploadControl">File Upload:</label>
            <asp:FileUpload ID="FileUploadControl" runat="server" />

            <asp:Button ID="SubmitButton" runat="server" Text="Submit" OnClick="SubmitButton_Click" />
        </div>
    </form>
</body>
</html>