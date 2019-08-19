<%@ Page Title="Діагностика знань" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="FApplication.aspx.cs" Inherits="WebApplicationForms.FApplication" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <div align="Center" class="panel1" align="center">

                <asp:Label ID="Operlbl" runat="server" Text="Тип дій:"  Font-Bold="True" ></asp:Label>
                <asp:DropDownList ID="OperDDL" runat="server" CssClass="input1" OnSelectedIndexChanged="RefreshButton_Click" Height="35px" Width="300px" AutoPostBack="True" Font-Bold="True">
                    <asp:ListItem>Арифметичні операції</asp:ListItem>
                    <asp:ListItem>Переведення в с.ч.</asp:ListItem>
                </asp:DropDownList>
                <asp:Button ID="Button2" runat="server" OnClick="RefreshButton_Click" CssClass="buttonrefresh" Height="35px" Width="35px" />
                <asp:Panel ID="PanelProgram" runat="server"  Visible="false">
                    <div align="Center">
                        <div class="ellements">
                        <asp:Label ID="Label1" runat="server" Text="Виконайте арифметичну операцію над числами в двійковій системі числення" Font-Bold="True" ></asp:Label>
                            &nbsp;<br />
                        <asp:TextBox ID="TextBox1" runat="server" ReadOnly="True" CssClass="input1" Font-Bold="true" >число №1</asp:TextBox>
                        <asp:TextBox ID="TextBox2" runat="server" ReadOnly="True" Width="50px" CssClass="input1"  Font-Bold="true" Height="50px"></asp:TextBox>
                        <asp:TextBox ID="TextBox3" runat="server" ReadOnly="True" CssClass="input1"  Font-Bold="true">число №2</asp:TextBox>
                        <br />
                        <asp:Label ID="AnswMSlb" runat="server" Font-Names="Bernard MT Condensed" ForeColor="Red"></asp:Label>

                            <br />
                            <asp:Label ID="ErrorMSlb" runat="server" Font-Names="Bernard MT Condensed" ForeColor="Red"></asp:Label>

                    </div>
                        <asp:Table runat="server" ID="ConvertDigTable" Width="700" CssClass="ellements">
                            <asp:TableRow>
                                <asp:TableCell></asp:TableCell>
                                <asp:TableCell HorizontalAlign="Center">Переведіть перший доданок</asp:TableCell>
                                <asp:TableCell HorizontalAlign="Center">Переведіть другий доданок</asp:TableCell>
                                <asp:TableCell HorizontalAlign="Center">Відповідь</asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow>
                                <asp:TableCell Width="180" HorizontalAlign="Right" VerticalAlign="Middle">Прямий код&nbsp;</asp:TableCell>
                                <asp:TableCell><asp:TextBox runat="server" Width="150" CssClass="input2" ID="txtPRD1"></asp:TextBox></asp:TableCell>
                                <asp:TableCell><asp:TextBox runat="server" Width="150" CssClass="input2" ID="txtPRD2"></asp:TextBox></asp:TableCell>
                                <asp:TableCell><asp:TextBox runat="server" Width="150" CssClass="input2" ID="txtPRD3"></asp:TextBox></asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow>
                                <asp:TableCell Width="180" HorizontalAlign="Right" VerticalAlign="Middle">Зворотний код&nbsp;</asp:TableCell>
                                <asp:TableCell><asp:TextBox runat="server" Width="150" CssClass="input2" ID="txtZVD1"></asp:TextBox></asp:TableCell>
                                <asp:TableCell><asp:TextBox runat="server" Width="150" CssClass="input2" ID="txtZVD2"></asp:TextBox></asp:TableCell>
                                <asp:TableCell><asp:TextBox runat="server" Width="150" CssClass="input2" ID="txtZVD3"></asp:TextBox></asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow>
                                <asp:TableCell Width="180" HorizontalAlign="Right" VerticalAlign="Middle">Доповняльний код&nbsp;</asp:TableCell>
                                <asp:TableCell><asp:TextBox runat="server" Width="150" CssClass="input2" ID="txtDDD1"></asp:TextBox></asp:TableCell>
                                <asp:TableCell><asp:TextBox runat="server" Width="150" CssClass="input2" ID="txtDDD2"></asp:TextBox></asp:TableCell>
                                <asp:TableCell><asp:TextBox runat="server" Width="150" CssClass="input2" ID="txtDDD3"></asp:TextBox></asp:TableCell>
                            </asp:TableRow>
                        </asp:Table>
                            <asp:Button ID="Button1" runat="server" BorderStyle="None" CssClass="button1" Font-Bold="True" Height="40px" OnClick="Result_Click" Text="Результат" Width="167px" />
                        <br />
                            <asp:LinkButton ID="LinkExlbl" runat="server" PostBackUrl="~/log.aspx#Arithmetic"></asp:LinkButton>
                    </div>
                </asp:Panel>
                <asp:Panel ID="PanelSCH" runat="server" Visible="false">
                    <br />
                   <asp:Label runat="server" ForeColor="Black">З</asp:Label>&nbsp;
                    <asp:DropDownList ID="SCHDDL0" runat="server" Width="50" CssClass="input1" OnSelectedIndexChanged="TranslateBtn_Click" AutoPostBack="True" Font-Bold="True" ForeColor="Black">
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>8</asp:ListItem>
                        <asp:ListItem>10</asp:ListItem>
                        <asp:ListItem>16</asp:ListItem>
                    </asp:DropDownList>
                    <asp:TextBox runat="server" ID="TinputSCH" CssClass="input1" Font-Bold="true" ForeColor="Black" OnTextChanged="TranslateBtn_Click" AutoPostBack="true"></asp:TextBox>
                    <asp:Label runat="server"  ForeColor="Black">В</asp:Label>&nbsp;&nbsp;
                    <asp:DropDownList ID="SCHDDL" runat="server" Width="50" CssClass="input1" OnSelectedIndexChanged="TranslateBtn_Click" AutoPostBack="True" Font-Bold="True" ForeColor="Black">
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>8</asp:ListItem>
                        <asp:ListItem>10</asp:ListItem>
                        <asp:ListItem>16</asp:ListItem>
                    </asp:DropDownList>
                    <asp:Button ID="TranslateBtn" runat="server" OnClick="TranslateBtn_Click" Text="Перевести" Height="40px" Width="167px" CssClass="button1" BorderStyle="None" Font-Bold="True" />
                     <asp:TextBox runat="server" ID="TresTranslate" CssClass="input1" Font-Bold="true" ForeColor="Black" ReadOnly="true" Width="150"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Label ID="Trnsltlbl" runat="server" Text="Не правильний запис числа" Visible="False" ForeColor="Red"></asp:Label>
                </asp:Panel>
            </div>

        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
