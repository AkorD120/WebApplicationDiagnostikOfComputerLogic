using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplicationForms
{
    public partial class Tests : System.Web.UI.Page
    {
        Random rnd = new Random();

        void ErrorLinkBool()
        {
            if ((int)ViewState["k"] < 9) ViewState["osn1"] = true;
            if ((int)ViewState["k"] >= 9 && (int)ViewState["k"] < 24) ViewState["pers2"] = true;
            if ((int)ViewState["k"] >= 24 && (int)ViewState["k"] < 28) ViewState["kod3"] = true;
            if ((int)ViewState["k"] >= 28 && (int)ViewState["k"] < 32) ViewState["arith4"] = true;
            if ((int)ViewState["k"] >= 32 && (int)ViewState["k"] < 36) ViewState["digEOM5"] = true;
            if ((int)ViewState["k"] >= 36 && (int)ViewState["k"] < 44) ViewState["DDK6"] = true;
        }

        void ResOut()
        {
            questl.Visible = false;
            questionLBL.Text = "Вітаємо з проходженням тесту! Ви відповіли на " + (int)ViewState["score"] + " з 10 питань.";
            ErrorUser.Visible = true;
            osn1.Visible = (bool)ViewState["osn1"];
            pers2.Visible = (bool)ViewState["pers2"];
            kod3.Visible = (bool)ViewState["kod3"];
            arith4.Visible = (bool)ViewState["arith4"];
            digEOM5.Visible = (bool)ViewState["digEOM5"];
            DDK6.Visible = (bool)ViewState["DDK6"];
        }

        void InitState()
        {
            ViewState["osn1"] = false;
            ViewState["pers2"] = false;
            ViewState["kod3"] = false;
            ViewState["arith4"] = false;
            ViewState["digEOM5"] = false;
            ViewState["DDK6"] = false;
        }

        protected void Okbtn_Click(object sender, EventArgs e)
        {
            if ((int)ViewState["inc"] < 10)
            {
                if (Question.answer[(int)ViewState["k"]] == ResAnswer())
                    ViewState["score"] = (int)ViewState["score"] + 1;
                else
                {
                    ErrorLinkBool();
                }

                QuestionsUs();
            }
            else
            {
                ResOut();
                ButtonAnswer.Visible = false;
                
            }
            questiontxt1.Checked = false;
            questiontxt2.Checked = false;
            questiontxt3.Checked = false;
            questiontxt4.Checked = false;
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (ViewState["inc"] == null)
            {
                ViewState["score"] = 0;
                ViewState["inc"] = 0;
                QuestionsUs();

                InitState();
            }
        }

        int ResAnswer()
        {
            if (questiontxt1.Checked)
                return 1;
            if (questiontxt2.Checked)
                return 2;
            if (questiontxt3.Checked)
                return 3;
            if (questiontxt4.Checked)
                return 4;
            else
                return 0;
        }

        void QuestionsUs()
        {
            int k = rnd.Next(43);
            ViewState["inc"] = (int)ViewState["inc"] + 1;
            ViewState["k"] = k;
            questionLBL.Text = Question.questi[k][0];
            questiontxt1.Text = Question.questi[k][1];
            questiontxt2.Text = Question.questi[k][2];
            questiontxt3.Text = Question.questi[k][3];
            questiontxt4.Text = Question.questi[k][4];
            Labelinc.Text = (int)ViewState["inc"] + " /10";
            LabelScore.Text = "Правильно: " + (int)ViewState["score"];
        }
    }
}