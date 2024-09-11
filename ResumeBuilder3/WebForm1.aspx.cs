using System;
using System.Web.UI;

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
            string socialLinks = TextBoxSocialLinks.Text;

            // Generate the portfolio content
            string portfolio = GeneratePortfolio(fullName, designation, experience, projects, socialLinks);

            // Display the portfolio in the Label control
            LabelOutput.Text = portfolio.Replace("\n", "<br/>");
        }

        // Function to generate the portfolio as a formatted string
        private string GeneratePortfolio(string fullName, string designation, string experience, string projects, string socialLinks)
        {
            return $"<strong>Full Name:</strong> {fullName}\n" +
                   $"<strong>Designation:</strong> {designation}\n" +
                   $"<strong>Experience:</strong> {experience}\n" +
                   $"<strong>Projects:</strong> {projects}\n" +
                   $"<strong>Social Links:</strong> {socialLinks}";
        }
    }
}
