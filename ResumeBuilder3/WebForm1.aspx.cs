using System;
using System.Web.UI;
using System.Text;

namespace ResumeBuilder3
{
    public partial class WebForm1 : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // This is called when the page is loaded or refreshed
        }

        protected void ButtonSubmit_Click(object sender, EventArgs e)
        {
            // Retrieve input values from the textboxes
            string fullName = TextBoxFullName.Text;
            string designation = TextBoxDesignation.Text;
            string experience = TextBoxExperience.Text;
            string projects = TextBoxProjects.Text;
            string education = TextBoxEducation.Text;
            string socialLinks = TextBoxSocialLinks.Text;

            // Generate the portfolio content
            string portfolio = GeneratePortfolio(fullName, designation, experience, projects, education, socialLinks);

            // You can decide what to do with the generated portfolio here.
            // For example, you could save it to a file, send it via email, or display it in a new page.
            // For now, we'll just display an alert to the user.
            ScriptManager.RegisterStartupScript(this, GetType(), "alert", "alert('Portfolio generated successfully!');", true);
        }

        // Function to generate the portfolio as formatted HTML
        private string GeneratePortfolio(string fullName, string designation, string experience, string projects, string education, string socialLinks)
        {
            StringBuilder sb = new StringBuilder();

            sb.Append("<div class='portfolio'>");
            sb.Append($"<h1>{fullName}</h1>");
            sb.Append($"<h2>{designation}</h2>");

            sb.Append("<section><h3>Professional Summary</h3>");
            sb.Append($"<p>{experience}</p></section>");

            sb.Append("<section><h3>Key Projects</h3>");
            sb.Append($"<p>{projects.Replace("\n", "<br>")}</p></section>");

            sb.Append("<section><h3>Education</h3>");
            sb.Append($"<p>{education.Replace("\n", "<br>")}</p></section>");

            sb.Append("<section><h3>Professional Links</h3>");
            sb.Append($"<p>{socialLinks.Replace("\n", "<br>")}</p></section>");

            sb.Append("</div>");

            return sb.ToString();
        }
    }
}