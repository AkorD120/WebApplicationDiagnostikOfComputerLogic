using System.Drawing;
using System.Web.UI.WebControls;

namespace WebApplicationForms
{
    public static class Diagnostics
    {
        public static bool Comparison(TextBox t, string str, Label ErrorMSlb, LinkButton LinkExlbl)
        {
            if (t.Text != str)
            {
                FalseAnsw(t);
                if (t.Text[1] != str[0] && t.Text[2] != ',') ErrorMSlb.Text += " Не правильно вказаний знак.";
                else
                    ErrorMSlb.Text += " Помилка в значущих розрядах.";

                LinkExlbl.Text = "При виникненні труднощів в обчисленні ви можете ознайомитись з теорією виконання " +
                    "арифметичних операції з двійковими числами. Для цього натисніть по даному посиланні";
                return false;
            }
            else
            {
                TrueAnsw(t);
                return true;
            }
        }

        public static bool ComparisonPK(TextBox t, int s, Label ErrorMSlb, LinkButton LinkExlbl)
        {
            string str = BinaryOperation.ravenstvo(s);
            if (t.Text != str)
            {
                FalseAnsw(t);
                if (t.Text[1] != str[0] && t.Text[2] != ',') ErrorMSlb.Text += " Не правильно вказаний знак.";
                else
                    ErrorMSlb.Text += " Помилка в значущих розрядах.";

                LinkExlbl.Text = "При виникненні труднощів в обчисленні ви можете ознайомитись з теорією виконання " +
                    "арифметичних операції з двійковими числами. Для цього натисніть по даному посиланні";
                return false;
            }
            else
            {
                TrueAnsw(t);
                return true;
            }
        }

        public static bool ComparisonZV(TextBox t, int s, Label ErrorMSlb, LinkButton LinkExlbl)
        {
            string str = BinaryOperation.ConvertToZV(s, 4);
            if (t.Text != str)
            {
                FalseAnsw(t);
                if (t.Text[1] != str[0] && t.Text[2] != ',') ErrorMSlb.Text += " Не правильно вказаний знак.";
                else
                    ErrorMSlb.Text += " Помилка в значущих розрядах.";

                LinkExlbl.Text = "При виникненні труднощів в обчисленні ви можете ознайомитись з теорією виконання " +
                    "арифметичних операції з двійковими числами. Для цього натисніть по даному посиланні";
                return false;
            }
            else
            {
                TrueAnsw(t);
                return true;
            }
        }

        public static bool ComparisonDD(TextBox t, int s, Label ErrorMSlb, LinkButton LinkExlbl)
        {
            string str = BinaryOperation.ConvertToDD(s, 4);
            if (t.Text != str)
            {
                FalseAnsw(t);
                if (t.Text[1] != str[0] && t.Text[2] != ',')
                    ErrorMSlb.Text += " Не правильно вказаний знак.";
                else
                    ErrorMSlb.Text += " Помилка в значущих розрядах.";
                if(t.Text == BinaryOperation.ConvertToZV(s, 4))
                    ErrorMSlb.Text += " Можливо не врахована одиниця доповнення.";

                LinkExlbl.Text = "При виникненні труднощів в обчисленні ви можете ознайомитись з теорією виконання " +
                    "арифметичних операції з двійковими числами. Для цього натисніть по даному посиланні";
                return false;
            }
            else
            {
                TrueAnsw(t);
                return true;
            }
        }

        static void TrueAnsw(TextBox t)
        {
            t.BorderStyle = BorderStyle.Double;
            t.BorderColor = Color.Green;
        }

        static void FalseAnsw(TextBox t)
        {
            t.BorderStyle = BorderStyle.Double;
            t.BorderColor = Color.Red;
        }

        public static bool Validate3(TextBox t, Label AnswMSlb, LinkButton LinkExlbl)
        {
            if (t.Text.Length < 3)
            {
                FalseAnsw(t);
                AnswMSlb.Text = "Не правильний запис";
                LinkExlbl.Text = "При виникненні труднощів в обчисленні ви можете ознайомитись з теорією виконання " +
                    "арифметичних операції з двійковими числами.";
                return false;
            }
            else
            {
                FalseAnsw(t);
                return true;
            }
        }

        public static bool ValidateZNK(TextBox t, Label AnswMSlb, LinkButton LinkExlbl)
        {
            if ((t.Text[2] != ',' || (t.Text[0] != '1' && t.Text[0] != '0'
                    && t.Text[1] != '1' && t.Text[1] != '0')))
            {
                FalseAnsw(t);
                AnswMSlb.Text = "Не вказаний знак";
                LinkExlbl.Text = "При виникненні труднощів в обчисленні ви можете ознайомитись з теорією виконання " +
                    "арифметичних операції з двійковими числами.";
                return false;
            }
            else
            {
                for (int i = 3; i < t.Text.Length; i++)
                    if (t.Text[i] != '0' && t.Text[i] != '1')
                    {
                        FalseAnsw(t);
                        AnswMSlb.Text = "Відповідь повинна бути дана в двійковій системі числення. ";
                        LinkExlbl.Text = "При виникненні труднощів в обчисленні ви можете ознайомитись з теорією виконання " +
                            "арифметичних операції з двійковими числами.";
                        return false;
                    }
                FalseAnsw(t);
                return true;
            }
        }
    }
}