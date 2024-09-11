<%@ Page Language="C#" AutoEventWireup="true" CodeFile="WebForm1.aspx.cs" Inherits="ResumeBuilder3.WebForm1" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Professional Portfolio Generator</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f0f2f5;
            margin: 0;
            padding: 0;
            color: #333;
        }
        .container {
            max-width: 800px;
            margin: 40px auto;
            background-color: #fff;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
        }
        h2 {
            text-align: center;
            margin-bottom: 30px;
            color: #2c3e50;
            font-size: 28px;
        }
        .form-group {
            margin-bottom: 20px;
        }
        label {
            font-weight: 600;
            margin-bottom: 8px;
            display: block;
            color: #34495e;
        }
        input[type="text"], textarea {
            width: 100%;
            padding: 10px;
            border: 1px solid #bdc3c7;
            border-radius: 4px;
            font-size: 16px;
            transition: border-color 0.3s ease;
        }
        input[type="text"]:focus, textarea:focus {
            outline: none;
            border-color: #3498db;
        }
        button {
            display: block;
            width: 100%;
            padding: 12px;
            background-color: #3498db;
            color: white;
            border: none;
            border-radius: 4px;
            font-size: 18px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }
        button:hover {
            background-color: #2980b9;
        }
        #generatedResume {
            margin-top: 40px;
            padding: 30px;
            background-color: #fff;
            border-radius: 8px;
            border: 1px solid #e0e0e0;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.05);
        }
        #generatedResume h3 {
            margin-top: 0;
            color: #2c3e50;
            border-bottom: 2px solid #3498db;
            padding-bottom: 10px;
        }
        #generatedResume p {
            margin-bottom: 15px;
            line-height: 1.6;
        }
        #generatedResume strong {
            color: #34495e;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h2>Professional Portfolio Generator</h2>
            
            <div class="form-group">
                <label for="fullName">Full Name:</label>
                <asp:TextBox ID="TextBoxFullName" runat="server" placeholder="e.g., John Doe"></asp:TextBox>
            </div>
            
            <div class="form-group">
                <label for="designation">Designation:</label>
                <asp:TextBox ID="TextBoxDesignation" runat="server" placeholder="e.g., Senior Software Engineer"></asp:TextBox>
            </div>
            
            <div class="form-group">
                <label for="experience">Professional Summary:</label>
                <asp:TextBox ID="TextBoxExperience" runat="server" TextMode="MultiLine" Rows="4" placeholder="Briefly describe your professional background and key skills"></asp:TextBox>
            </div>
            
            <div class="form-group">
                <label for="projects">Key Projects:</label>
                <asp:TextBox ID="TextBoxProjects" runat="server" TextMode="MultiLine" Rows="6" placeholder="List your significant projects with brief descriptions"></asp:TextBox>
            </div>
            
            <div class="form-group">
                <label for="education">Education:</label>
                <asp:TextBox ID="TextBoxEducation" runat="server" TextMode="MultiLine" Rows="3" placeholder="List your educational qualifications"></asp:TextBox>
            </div>
            
            <div class="form-group">
                <label for="socialLinks">Professional Links:</label>
                <asp:TextBox ID="TextBoxSocialLinks" runat="server" TextMode="MultiLine" Rows="3" placeholder="e.g., LinkedIn: [URL], GitHub: [URL]"></asp:TextBox>
            </div>
            
            <button type="submit" runat="server" onserverclick="Button1_Click">Generate Professional Portfolio</button>
            
            <div id="generatedResume">
                <asp:Literal ID="LiteralOutput" runat="server"></asp:Literal>
            </div>
        </div>
    </form>
</body>
</html>