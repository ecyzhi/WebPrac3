using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Practical3
{
    public partial class BusTicketing : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack == true) //You can also type as - if (!IsPostBack)
            {
                lblTime.Text = "You are accessing this page on " + DateTime.Now.ToString();
            }

            txtDepartDt.Text = DateTime.Now.ToShortDateString();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void calDepartDt_SelectionChanged(object sender, EventArgs e)
        {
            txtDepartDt.Text = calDepartDt.SelectedDate.ToShortDateString();
        }

        protected void ddlTo_SelectedIndexChanged(object sender, EventArgs e)
        {
            int noOfAdult;
            int noOfChild;
            double price = 0;

            //Check the value of adult and child textbox
            if (string.IsNullOrEmpty(txtAdult.Text))
                noOfAdult = 0;
            else
                noOfAdult = int.Parse(txtAdult.Text);

            if (string.IsNullOrEmpty(txtChild.Text))
                noOfChild = 0;
            else
                noOfChild = int.Parse(txtChild.Text);

            //validate the source and destination of user chosen
            if (ddlFrom.Text.Equals("Hentian Duta"))
            {
                if (ddlTo.Text.Equals("Seremban"))
                    lblError.Text = " Sorry.We do not provide trip from Hentian Duta to Seremban ";
                else
                {
                    lblError.Text = "";
                    price += noOfAdult * 34.00 + noOfChild * 25.50;

                }
            }
            else if (ddlFrom.Text.Equals("Hentian Putra"))
            {
                if (ddlTo.Text.Equals("Butterworth"))
                    lblError.Text = " Sorry.We do not provide trip from Hentian Putra to Butterworth ";
                else
                {
                    lblError.Text = "";
                    price += noOfAdult * 6.00 + noOfChild * 4.30;
                }
            }

            txtPrice.Text = "RM " + price.ToString("0.##");
        }
    }
}