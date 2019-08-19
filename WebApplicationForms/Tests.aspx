<%@ Page Title="Tests" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Tests.aspx.cs" Inherits="WebApplicationForms.Tests" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="panel1">
        <asp:Panel ID="PanelTitel" runat="server" BacColor="#0078ff" CssClass="panel1 ellements" HorizontalAlign="center">
                <asp:Label ID="TitelLBL" runat="server" Font-Bold="True" ForeColor="White" Text="Узагальнення знань по комп'ютерній арифметиці" Font-Italic="False" Font-Size="X-Large"></asp:Label>
                <br />
            </asp:Panel>
        <asp:Panel ID="PanelTest" runat="server" CssClass="panel1 ellements" HorizontalAlign="center" BackColor="White">
            <asp:UpdatePanel ID="UpdatePanel" runat="server">
                <ContentTemplate>
                    <asp:Label ID="questionLBL" runat="server" Font-Bold="True" ForeColor="Black" Font-Size="X-Large" CssClass="input1"></asp:Label>
                    <br />
                    
                    <asp:Label ID="ErrorUser" runat="server" Font-Bold="True" ForeColor="#CC3300" Font-Size="Large" CssClass="input1" Visible="False">Рекомендуємо переглянути матеріали в яких були допущені помилки: </asp:Label>
                    <br />
                    <asp:LinkButton ID="osn1" runat="server" Visible="False" PostBackUrl="~/log.aspx#Systems">Основні поняття комп'ютерної логіки</asp:LinkButton>
                    &nbsp;<asp:LinkButton ID="pers2" runat="server" Visible="False" PostBackUrl="~/log.aspx#Binary-10">Переведенням систем числення</asp:LinkButton>
                    &nbsp;<asp:LinkButton ID="kod3" runat="server" Visible="False" PostBackUrl="~/log.aspx#EOMZnak">Кодування чисел зі знаком </asp:LinkButton>
                    &nbsp;<asp:LinkButton ID="arith4" runat="server" Visible="False" PostBackUrl="~/log.aspx#Arithmetic">Арифметичні операції</asp:LinkButton>
                    &nbsp;<asp:LinkButton ID="digEOM5" runat="server" Visible="False" PostBackUrl="~/log.aspx#DigitInEOM">Представлення чисел в ЕОМ</asp:LinkButton>
                    &nbsp;<asp:LinkButton ID="DDK6" runat="server" Visible="False" PostBackUrl="~/log.aspx#Binary-10">Двійково-десяткові коди</asp:LinkButton>
                    &nbsp;<br />
                    <div style="text-align: left" id="questl" runat="server">
                        &nbsp;
                        <asp:CheckBox ID="questiontxt1" runat="server" CssClass="input1" />
                        <br />
                        &nbsp;
                        <asp:CheckBox ID="questiontxt2" runat="server" CssClass="input1" />
                        <br />
                        &nbsp;
                        <asp:CheckBox ID="questiontxt3" runat="server" CssClass="input1" />
                        <br />
                        &nbsp;
                        <asp:CheckBox ID="questiontxt4" runat="server" CssClass="input1" />
                    </div>
                    <br />
                    <asp:Button ID="ButtonAnswer" runat="server" Text=">>"  CssClass="input1" Font-Bold="True" Width="70" Height="40" BackColor="#0078ff" OnClick="Okbtn_Click" />
                    <br />
                    <br />
                    <asp:Panel ID="Panel3" runat="server">
                        <asp:Label ID="Labelinc" runat="server" ></asp:Label>
                        <asp:Label ID="LabelScore" runat="server" ></asp:Label>
                    </asp:Panel>
                </ContentTemplate>
            </asp:UpdatePanel>

        </asp:Panel>
    </div>
    <hr />
</asp:Content>
