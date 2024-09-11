<%@ Page Language="C#" AutoEventWireup="true" CodeFile="WebForm1.aspx.cs" Inherits="ResumeBuilder3.WebForm1" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Professional Portfolio Builder</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" rel="stylesheet">
    <style>
        :root {
            --primary-color: #3498db;
            --secondary-color: #2c3e50;
            --background-color: #ecf0f1;
            --text-color: #34495e;
            --border-color: #bdc3c7;
        }

        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: var(--background-color);
            margin: 0;
            padding: 0;
            color: var(--text-color);
        }

        .container {
            max-width: 1200px;
            margin: 40px auto;
            display: flex;
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
            overflow: hidden;
        }

        .form-container {
            flex: 1;
            padding: 30px;
        }

        .preview-container {
            flex: 1;
            background-color: #f8f9fa;
            padding: 30px;
            border-left: 1px solid var(--border-color);
        }

        h2 {
            text-align: center;
            color: var(--secondary-color);
            font-size: 24px;
            margin-bottom: 30px;
        }

        .form-step {
            display: none;
        }

        .form-step.active {
            display: block;
        }

        .form-group {
            margin-bottom: 20px;
        }

        label {
            font-weight: 600;
            margin-bottom: 8px;
            display: block;
            color: var(--secondary-color);
        }

        input[type="text"], textarea {
            width: 100%;
            padding: 12px;
            border: 1px solid var(--border-color);
            border-radius: 4px;
            font-size: 16px;
            transition: border-color 0.3s ease;
        }

        input[type="text"]:focus, textarea:focus {
            outline: none;
            border-color: var(--primary-color);
        }

        .btn-container {
            display: flex;
            justify-content: space-between;
            margin-top: 20px;
        }

        .btn {
            padding: 12px 20px;
            background-color: var(--primary-color);
            color: white;
            border: none;
            border-radius: 4px;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .btn:hover {
            background-color: #2980b9;
        }

        .btn-prev {
            background-color: #95a5a6;
        }

        .btn-prev:hover {
            background-color: #7f8c8d;
        }

        .progress-bar {
            width: 100%;
            height: 5px;
            background-color: #e0e0e0;
            margin-bottom: 20px;
            border-radius: 5px;
            overflow: hidden;
        }

        .progress {
            width: 0;
            height: 100%;
            background-color: var(--primary-color);
            transition: width 0.3s ease;
        }

        #previewContent {
            background-color: white;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.05);
        }

        #previewContent h3 {
            color: var(--secondary-color);
            border-bottom: 2px solid var(--primary-color);
            padding-bottom: 10px;
            margin-top: 0;
        }

        #previewContent p {
            margin-bottom: 15px;
            line-height: 1.6;
        }

        #previewContent strong {
            color: var(--secondary-color);
        }

        @media (max-width: 768px) {
            .container {
                flex-direction: column;
            }

            .preview-container {
                border-left: none;
                border-top: 1px solid var(--border-color);
            }
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="form-container">
                <h2>Professional Portfolio Builder</h2>
                <div class="progress-bar">
                    <div class="progress" id="progressBar"></div>
                </div>

                <div class="form-step active" data-step="1">
                    <div class="form-group">
                        <label for="fullName"><i class="fas fa-user"></i> Full Name:</label>
                        <asp:TextBox ID="TextBoxFullName" runat="server" placeholder="e.g., John Doe"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label for="designation"><i class="fas fa-briefcase"></i> Designation:</label>
                        <asp:TextBox ID="TextBoxDesignation" runat="server" placeholder="e.g., Senior Software Engineer"></asp:TextBox>
                    </div>
                    <div class="btn-container">
                        <div></div>
                        <button type="button" class="btn btn-next">Next <i class="fas fa-arrow-right"></i></button>
                    </div>
                </div>

                <div class="form-step" data-step="2">
                    <div class="form-group">
                        <label for="experience"><i class="fas fa-star"></i> Professional Summary:</label>
                        <asp:TextBox ID="TextBoxExperience" runat="server" TextMode="MultiLine" Rows="4" placeholder="Briefly describe your professional background and key skills"></asp:TextBox>
                    </div>
                    <div class="btn-container">
                        <button type="button" class="btn btn-prev"><i class="fas fa-arrow-left"></i> Previous</button>
                        <button type="button" class="btn btn-next">Next <i class="fas fa-arrow-right"></i></button>
                    </div>
                </div>

                <div class="form-step" data-step="3">
                    <div class="form-group">
                        <label for="projects"><i class="fas fa-project-diagram"></i> Key Projects:</label>
                        <asp:TextBox ID="TextBoxProjects" runat="server" TextMode="MultiLine" Rows="6" placeholder="List your significant projects with brief descriptions"></asp:TextBox>
                    </div>
                    <div class="btn-container">
                        <button type="button" class="btn btn-prev"><i class="fas fa-arrow-left"></i> Previous</button>
                        <button type="button" class="btn btn-next">Next <i class="fas fa-arrow-right"></i></button>
                    </div>
                </div>

                <div class="form-step" data-step="4">
                    <div class="form-group">
                        <label for="education"><i class="fas fa-graduation-cap"></i> Education:</label>
                        <asp:TextBox ID="TextBoxEducation" runat="server" TextMode="MultiLine" Rows="3" placeholder="List your educational qualifications"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label for="socialLinks"><i class="fas fa-link"></i> Professional Links:</label>
                        <asp:TextBox ID="TextBoxSocialLinks" runat="server" TextMode="MultiLine" Rows="3" placeholder="e.g., LinkedIn: [URL], GitHub: [URL]"></asp:TextBox>
                    </div>
                    <div class="btn-container">
                        <button type="button" class="btn btn-prev"><i class="fas fa-arrow-left"></i> Previous</button>
                        <asp:Button ID="ButtonSubmit" runat="server" Text="Generate Portfolio" CssClass="btn" OnClick="ButtonSubmit_Click" />
                    </div>
                </div>
            </div>

            <div class="preview-container">
                <h2>Real-time Preview</h2>
                <div id="previewContent"></div>
            </div>
        </div>
    </form>

    <script>
        document.addEventListener('DOMContentLoaded', function() {
            const formSteps = document.querySelectorAll('.form-step');
            const nextButtons = document.querySelectorAll('.btn-next');
            const prevButtons = document.querySelectorAll('.btn-prev');
            const progressBar = document.getElementById('progressBar');
            let currentStep = 0;

            function updateStep(step) {
                formSteps.forEach((formStep, index) => {
                    if (index === step) {
                        formStep.classList.add('active');
                    } else {
                        formStep.classList.remove('active');
                    }
                });
                progressBar.style.width = `${(step / (formSteps.length - 1)) * 100}%`;
            }

            nextButtons.forEach(button => {
                button.addEventListener('click', () => {
                    currentStep++;
                    updateStep(currentStep);
                });
            });

            prevButtons.forEach(button => {
                button.addEventListener('click', () => {
                    currentStep--;
                    updateStep(currentStep);
                });
            });

            const inputs = document.querySelectorAll('input, textarea');
            const previewContent = document.getElementById('previewContent');

            function updatePreview() {
                const fullName = document.getElementById('<%= TextBoxFullName.ClientID %>').value;
                const designation = document.getElementById('<%= TextBoxDesignation.ClientID %>').value;
                const experience = document.getElementById('<%= TextBoxExperience.ClientID %>').value;
                const projects = document.getElementById('<%= TextBoxProjects.ClientID %>').value;
                const education = document.getElementById('<%= TextBoxEducation.ClientID %>').value;
                const socialLinks = document.getElementById('<%= TextBoxSocialLinks.ClientID %>').value;

                previewContent.innerHTML = `
                    <h3>${fullName}</h3>
                    <p><strong>${designation}</strong></p>
                    <h4>Professional Summary</h4>
                    <p>${experience}</p>
                    <h4>Key Projects</h4>
                    <p>${projects.replace(/\n/g, '<br>')}</p>
                    <h4>Education</h4>
                    <p>${education.replace(/\n/g, '<br>')}</p>
                    <h4>Professional Links</h4>
                    <p>${socialLinks.replace(/\n/g, '<br>')}</p>
                `;
            }

            inputs.forEach(input => {
                input.addEventListener('input', updatePreview);
            });

            updatePreview(); // Initial preview update
        });
    </script>
</body>
</html>