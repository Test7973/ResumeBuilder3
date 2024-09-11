<%@ Page Language="C#" AutoEventWireup="true" CodeFile="WebForm1.aspx.cs" Inherits="ResumeBuilder3.WebForm1" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Portfolio Generator</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
        }

        .container {
            max-width: 800px;
            margin: 50px auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        h2 {
            text-align: center;
            margin-bottom: 30px;
            color: #333;
        }

        label {
            font-weight: bold;
            margin-top: 10px;
            display: block;
            color: #333;
        }

        input[type="text"], textarea, input[type="url"] {
            width: 100%;
            padding: 10px;
            margin-top: 5px;
            margin-bottom: 20px;
            border: 1px solid #ddd;
            border-radius: 4px;
        }

        button {
            display: block;
            width: 100%;
            padding: 10px;
            background-color: #007bff;
            color: white;
            border: none;
            border-radius: 4px;
            font-size: 16px;
            cursor: pointer;
        }

        button:hover {
            background-color: #0056b3;
        }

        #generatedResume {
            margin-top: 30px;
            padding: 20px;
            background-color: #f8f9fa;
            border-radius: 8px;
            border: 1px solid #ddd;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h2>Portfolio Generator</h2>

            <!-- Full Name Field -->
            <label for="fullName">Full Name:</label>
            <asp:TextBox ID="TextBoxFullName" runat="server" placeholder="Enter your full name"></asp:TextBox>

            <!-- Designation Field -->
            <label for="designation">Designation:</label>
            <asp:TextBox ID="TextBoxDesignation" runat="server" placeholder="Enter your designation"></asp:TextBox>

            <!-- Experience Field -->
            <label for="experience">Experience:</label>
            <asp:TextBox ID="TextBoxExperience" runat="server" placeholder="Enter your work experience"></asp:TextBox>

            <!-- Projects Field -->
            <label for="projects">Projects:</label>
            <asp:TextBox ID="TextBoxProjects" runat="server" TextMode="MultiLine" Rows="4" placeholder="Describe your key projects"></asp:TextBox>

            <!-- Social Links Field -->
            <label for="socialLinks">Social Links (e.g., LinkedIn, GitHub):</label>
            <asp:TextBox ID="TextBoxSocialLinks" runat="server" TextMode="MultiLine" Rows="3" placeholder="Enter your social links"></asp:TextBox>

            <!-- Submit Button -->
            <button type="submit" runat="server" onserverclick="Button1_Click">Generate Portfolio</button>

            <!-- Label to display the generated resume -->
            <div id="generatedResume">
                <asp:Label ID="LabelOutput" runat="server" Text=""></asp:Label>
            </div>
        </div>
    </form>
</body>
</html>
