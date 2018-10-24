using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{//check
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void CheckChars(object source, ServerValidateEventArgs args)
        {
            args.IsValid = args.Value.Length >= 5;

        }


        protected void Button2_Click(object sender, EventArgs e)
        {
            numberTextBox.Text = "";
            emailTextBox.Text = "";
            passwordTextBox.Text = "";
            confirmPasswordTextBox.Text = "";
            userTextBox.Text = "";
            birthDate.Text = "";
        }

        protected void CustomValidator2_ServerValidate(object source, ServerValidateEventArgs args)
        {
            args.IsValid = int.Parse(numberTextBox.Text) % 2 == 0;
        }
    }
}
