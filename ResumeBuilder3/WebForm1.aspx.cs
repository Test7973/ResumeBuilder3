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

        protected void Button1_Click(object sender, EventArgs e)
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

            // Display the portfolio in the Literal control
            LiteralOutput.Text = portfolio;
        }

        // Function to generate the portfolio as formatted HTML
        private string GeneratePortfolio(string fullName, string designation, string experience, string projects, string education, string socialLinks)
        {
            StringBuilder sb = new StringBuilder();

            sb.Append($"<h3>{fullName}</h3>");
            sb.Append($"<p><strong>{designation}</strong></p>");

            sb.Append("<h4>Professional Summary</h4>");
            sb.Append($"<p>{experience}</p>");

            sb.Append("<h4>Key Projects</h4>");
            sb.Append($"<p>{projects.Replace("\n", "<br>")}</p>");

            sb.Append("<h4>Education</h4>");
            sb.Append($"<p>{education.Replace("\n", "<br>")}</p>");

            sb.Append("<h4>Professional Links</h4>");
            sb.Append($"<p>{socialLinks.Replace("\n", "<br>")}</p>");

            return sb.ToString();
        }
    }
}