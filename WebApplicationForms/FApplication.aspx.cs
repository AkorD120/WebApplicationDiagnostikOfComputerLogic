using System;
using System.Drawing;
using System.Web.UI.WebControls;

namespace WebApplicationForms
{
    public partial class FApplication : System.Web.UI.Page
    {
        #region field
        Random rnd = new Random();
        public int m1, m2, m;
        #endregion
        protected void Page_Load(object sender, EventArgs e)
        {
            LinkExlbl.Text = null;
        }

        protected void RefreshButton_Click(object sender, EventArgs e)
        {
            if (OperDDL.SelectedItem == OperDDL.Items[0])
            {
                PanelProgram.Visible = true;
                PanelSCH.Visible = false;
                Refresh();
            }
            else
            {
                Trnsltlbl.Visible = false;
                PanelProgram.Visible = false;
                PanelSCH.Visible = true;
            }

        }

        void Refresh()
        {
            LinkExlbl.Text = null;
            string[] znak = new string[] { "-", "+" };
            m1 = rnd.Next(-15, 15);
            m2 = rnd.Next(-15, 15);
            ViewState["m1"] = m1;
            ViewState["m2"] = m2;
            ViewState["rndD1"] = rnd.Next(-15, 15);
            ViewState["rndD2"] = rnd.Next(-15, 15);

            TextBox1.Text = ViewState["m1"].ToString();
            TextBox2.Text = znak[rnd.Next(0, 2)];
            TextBox3.Text = ViewState["m2"].ToString();

            Clear();
        }

        protected void TranslateBtn_Click(object sender, EventArgs e)
        {
            TinputSCH.BorderStyle = BorderStyle.None;
            TinputSCH.BorderColor = Color.White;
            Trnsltlbl.Visible = false;
            int InpDigit = 0;
            if (!string.IsNullOrEmpty(TinputSCH.Text))
            {
                switch (SCHDDL0.SelectedItem.Value)
                {
                    case "2":
                        try
                        {
                            InpDigit = Convert.ToInt32(BinaryOperation.DelZNK(TinputSCH.Text), 2);
                            TraslateTo(InpDigit);
                        }
                        catch
                        {
                            CatchNONWR();
                        }
                        break;
                    case "8":
                        try
                        {
                            InpDigit = Convert.ToInt32(TinputSCH.Text, 8);
                            TraslateTo(InpDigit);
                        }
                        catch
                        {
                            CatchNONWR();
                        }
                        break;
                    case "10":
                        try
                        {
                            InpDigit = Convert.ToInt32(TinputSCH.Text);
                            TraslateTo(InpDigit);
                        }
                        catch
                        {
                            CatchNONWR();
                        }
                        break;
                    case "16":
                        try
                        {
                            InpDigit = Convert.ToInt32(TinputSCH.Text, 16);
                            TraslateTo(InpDigit);
                        }
                        catch
                        {

                            CatchNONWR();

                        }
                        break;
                }
            }
        }

        void CatchNONWR()
        {
            Trnsltlbl.Visible = true;
            TinputSCH.BorderStyle = BorderStyle.Double;
            TinputSCH.BorderColor = Color.Red;
        }

        void TraslateTo(int InpDigit)
        {
            switch (SCHDDL.SelectedItem.Value)
            {
                case "2":
                    TresTranslate.Text = BinaryOperation.DelZNK(ConvertDigit.ConvertToBIN(InpDigit));
                    break;
                case "8":
                    TresTranslate.Text = ConvertDigit.ConvertToOCT(InpDigit);
                    break;
                case "10":
                    TresTranslate.Text = ConvertDigit.ConvertToDEC(InpDigit);
                    break;
                case "16":
                    TresTranslate.Text = ConvertDigit.ConvertToHEX(InpDigit);
                    break;
            }
        }

        protected void Result_Click(object sender, EventArgs e)
        {
            ErrorMSlb.Text = "";
            if (Diagnostics.Validate3(txtPRD1, AnswMSlb, LinkExlbl) && Diagnostics.Validate3(txtPRD2, AnswMSlb, LinkExlbl)
                && Diagnostics.Validate3(txtPRD3, AnswMSlb, LinkExlbl) &&
                Diagnostics.Validate3(txtZVD1, AnswMSlb, LinkExlbl) && Diagnostics.Validate3(txtZVD2, AnswMSlb, LinkExlbl)
                && Diagnostics.Validate3(txtZVD3, AnswMSlb, LinkExlbl) &&
                Diagnostics.Validate3(txtDDD1, AnswMSlb, LinkExlbl) && Diagnostics.Validate3(txtDDD2, AnswMSlb, LinkExlbl)
                && Diagnostics.Validate3(txtDDD3, AnswMSlb, LinkExlbl))
            {
                if (Diagnostics.ValidateZNK(txtPRD1, AnswMSlb, LinkExlbl) && Diagnostics.ValidateZNK(txtPRD2, AnswMSlb, LinkExlbl)
                    && Diagnostics.ValidateZNK(txtPRD3, AnswMSlb, LinkExlbl) &&
                    Diagnostics.ValidateZNK(txtZVD1, AnswMSlb, LinkExlbl) && Diagnostics.ValidateZNK(txtZVD2, AnswMSlb, LinkExlbl)
                    && Diagnostics.ValidateZNK(txtZVD3, AnswMSlb, LinkExlbl) &&
                    Diagnostics.ValidateZNK(txtDDD1, AnswMSlb, LinkExlbl) && Diagnostics.ValidateZNK(txtDDD2, AnswMSlb, LinkExlbl)
                    && Diagnostics.ValidateZNK(txtDDD3, AnswMSlb, LinkExlbl))
                {
                    if (!Diagnostics.ComparisonPK(txtPRD1, (int)ViewState["m1"], ErrorMSlb, LinkExlbl))
                    { ErrorMSlb.Text += " Перегляньте матеріал по переведеню чисел в двійковий код."; }
                    if (!Diagnostics.ComparisonPK(txtPRD2, (int)ViewState["m2"], ErrorMSlb, LinkExlbl))
                    { ErrorMSlb.Text += " Перегляньте матеріал по переведеню чисел в двійковий код."; }
                    if (TextBox2.Text == "-")
                    {
                        if (!Diagnostics.ComparisonPK(txtPRD3, (int)ViewState["m1"] - (int)ViewState["m2"], ErrorMSlb, LinkExlbl))
                        { ErrorMSlb.Text += " Перегляньте матеріал по переведеню чисел в двійковий код."; }
                    }
                    else
                    {
                        if (!Diagnostics.ComparisonPK(txtPRD3, (int)ViewState["m1"] + (int)ViewState["m2"], ErrorMSlb, LinkExlbl))
                        { ErrorMSlb.Text += " Перегляньте матеріал по переведеню чисел в двійковий код."; }
                    }

                    if (!Diagnostics.ComparisonZV(txtZVD1, (int)ViewState["m1"], ErrorMSlb, LinkExlbl))
                    { ErrorMSlb.Text += " Перегляньте матеріал по переведеню двійкових чисел в зворотний код."; }
                    if (!Diagnostics.ComparisonZV(txtZVD2, (int)ViewState["m2"], ErrorMSlb, LinkExlbl))
                    { ErrorMSlb.Text += " Перегляньте матеріал по переведеню двійкових чисел в зворотний код."; }
                    if (TextBox2.Text == "-")
                    {
                        if (!Diagnostics.ComparisonZV(txtZVD3, (int)ViewState["m1"] - (int)ViewState["m2"], ErrorMSlb, LinkExlbl))
                        { ErrorMSlb.Text += " Перегляньте матеріал по переведеню двійкових чисел в зворотний код."; }
                    }
                    else
                    {
                        if (!Diagnostics.ComparisonZV(txtZVD3, (int)ViewState["m1"] + (int)ViewState["m2"], ErrorMSlb, LinkExlbl))
                        { ErrorMSlb.Text += " Перегляньте матеріал по переведеню двійкових чисел в зворотний код."; }
                    }

                    if (!Diagnostics.ComparisonDD(txtDDD1, (int)ViewState["m1"], ErrorMSlb, LinkExlbl))
                    { ErrorMSlb.Text += " Перегляньте матеріал по переведеню двійкових чисел в доповняльний код."; }
                    if (!Diagnostics.ComparisonDD(txtDDD2, (int)ViewState["m2"], ErrorMSlb, LinkExlbl))
                    { ErrorMSlb.Text += " Перегляньте матеріал по переведеню двійкових чисел в доповняльний код."; }
                    if (TextBox2.Text == "-")
                    {
                        if (!Diagnostics.ComparisonDD(txtDDD3, (int)ViewState["m1"] - (int)ViewState["m2"], ErrorMSlb, LinkExlbl))
                        { ErrorMSlb.Text += " Перегляньте матеріал по переведеню двійкових чисел в доповняльний код."; }
                    }
                    else
                    {
                        if (!Diagnostics.ComparisonDD(txtDDD3, (int)ViewState["m1"] + (int)ViewState["m2"], ErrorMSlb, LinkExlbl))
                        { ErrorMSlb.Text += " Перегляньте матеріал по переведеню двійкових чисел в доповняльний код."; }
                    }
                    AllTrue();
                }
            }
        }

        bool AllTrue()
        {
            if (txtPRD1.BorderColor == Color.Green && txtPRD2.BorderColor == Color.Green && txtPRD3.BorderColor == Color.Green &&
                txtZVD1.BorderColor == Color.Green && txtZVD2.BorderColor == Color.Green && txtZVD3.BorderColor == Color.Green &&
                txtDDD1.BorderColor == Color.Green && txtDDD2.BorderColor == Color.Green && txtDDD3.BorderColor == Color.Green)
            {
                AnswMSlb.ForeColor = Color.Green;
                AnswMSlb.Text = " Правильна відповідь!";
                ErrorMSlb.Text = "";
                return true;
            }
            else
            {
                AnswMSlb.ForeColor = Color.Red;
                AnswMSlb.Text = " Не правильна відповідь!";
                return false;
            }
        }

        void Clear()
        {
            txtPRD1.Text = ""; txtPRD2.Text = ""; txtPRD3.Text = "";
            txtZVD1.Text = ""; txtZVD2.Text = ""; txtZVD3.Text = "";
            txtDDD1.Text = ""; txtDDD2.Text = ""; txtDDD3.Text = "";

            txtPRD1.BorderStyle = BorderStyle.None; txtPRD2.BorderStyle = BorderStyle.None; txtPRD3.BorderStyle = BorderStyle.None;
            txtZVD1.BorderStyle = BorderStyle.None; txtZVD2.BorderStyle = BorderStyle.None; txtZVD3.BorderStyle = BorderStyle.None;
            txtDDD1.BorderStyle = BorderStyle.None; txtDDD2.BorderStyle = BorderStyle.None; txtDDD3.BorderStyle = BorderStyle.None;
        }
        
    }
}