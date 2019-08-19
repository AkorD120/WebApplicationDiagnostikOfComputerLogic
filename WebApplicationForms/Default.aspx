<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplicationForms.log" %>

<!DOCTYPE html>

<head runat="server">

    <link href="CSS/LogicInf.css" rel="stylesheet" />
    <link href="CSS/bootstrap-theme.css" rel="stylesheet" />
    <link href="CSS/bootstrap.css" rel="stylesheet" />
    <link href="Content/Site.css" rel="stylesheet" />

    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Комп'ютерна арифметика</title>
</head>

<style>
    @import url(http://weloveiconfonts.com/api/?family=entypo);
    @import url(http://weloveiconfonts.com/api/?family=openwebicons);
    @import url(http://weloveiconfonts.com/api/?family=fontawesome);
    @import url(http://weloveiconfonts.com/api/?family=zocial);
    @import url(http://weloveiconfonts.com/api/?family=fontelico);

    * {
        -webkit-box-sizing: border-box;
        -moz-box-sizing: border-box;
        box-sizing: border-box;
        -webkit-font-smoothing: antialiased;
        font-weight: 300;
        line-height: 1.5;
    }

    /* entypo */
    [class*="entypo-"]:before {
        font-family: "entypo", sans-serif;
    }

    /* openwebicons */
    [class*="openwebicons-"]:before {
        font-family: "openwebicons", sans-serif;
    }

    /* fontawesome */
    [class*="fontawesome-"]:before {
        font-family: "fontawesome", sans-serif;
    }

    /* zocial */
    [class*="zocial-"]:before {
        font-family: "zocial", sans-serif;
    }

    /* fontelico */
    [class*="fontelico-"]:before {
        font-family: "fontelico", sans-serif;
    }

    /* Fix OPW
        ----------------------------------------------------------*/
    /* openwebicons */
    [class*="openwebicons-"]:before {
        font-family: 'OpenWeb Icons', sans-serif;
    }

    .container {
        max-width: 830px;
    }

    .header .text-muted {
        padding: .4em .8em;
    }

        .header .text-muted span:hover {
            -webkit-filter: blur(1px);
            filter: blur(1px);
            filter: url(#blurLogo);
            filter: progid:DXImageTransform.Microsoft.Blur(PixelRadius='1');
        }

        .header .text-muted span span.bl {
            font-weight: 400;
            -webkit-animation: blur 5s ease infinite;
            animation: blur 5s ease infinite;
        }

        .header .text-muted .starter {
            float: right;
            line-height: 2.5;
            color: #17a689;
        }

    .nav li:hover a {
        background: transparent;
    }

        .nav li:hover a span {
            background: #0078ff;
            color: #f3f3f3;
        }

    .nav li a {
        color: #004898;
    }

        .nav li a.active span {
            background: #0078ff;
            color: #f3f3f3;
        }

        .nav li a span {
            -webkit-box-shadow: inset 0 0 0 0.1em #0078ff;
            box-shadow: inset 0 0 0 0.1em #0078ff;
            font-size: 1.6em;
            padding: .2em .4em;
            height: 30px !important;
            border-radius: 3px;
        }

    /* Jumbotron
        ----------------------------------------------*/
    .jumbotron {
        color: #fff;
        background: #0078ff;
    }

    /* Sidebar
        -----------------------------------------------------------------------------------------*/
    .menusign {
        display: block;
        width: 10px;
        line-height: .3;
        font-size: 2em;
        margin: .5em;
    }

        .menusign br {
            height: 0;
        }

    .sidebar {
        position: fixed;
        z-index: 9999999;
        left: 0;
        top: 0;
        height: 100%;
        width: 260px;
        background: #303030;
        -webkit-transition: left 0.3s ease, -webkit-box-shadow 0.3s ease 0.2s;
        transition: left 0.3s ease, box-shadow 0.3s ease 0.2s;
        -webkit-box-shadow: 0.5em 0 0 0 #0078ff, 0.6em 0 0 0 #17a689;
        box-shadow: 0.5em 0 0 0 #0078ff, 0.6em 0 0 0 #17a689;
    }

        .sidebar #close {
            float: right;
            margin: -5.5rem 1rem;
            font-size: 1.4em;
            color: #fa598d;
            text-align: right;
        }

        .sidebar.closed {
            left: -260px;
            -webkit-box-shadow: 0 0 0 #0078ff;
            box-shadow: 0 0 0 #0078ff;
        }

        .sidebar h2 {
            padding: .5em;
            color: #0078ff;
        }

        .sidebar ul {
            padding: 0;
            margin: 0;
        }

            .sidebar ul li {
                width: 90%;
                margin: 5px 10px;
                float: left;
                display: inline-block;
                margin-bottom: 0;
                font-weight: 400;
                text-align: center;
                vertical-align: middle;
                cursor: pointer;
                background-image: none;
                border: 1px solid transparent;
                white-space: nowrap;
                padding: 3px 6px;
                font-size: 14px;
                line-height: 1.42857143;
                border-radius: 4px;
                -webkit-user-select: none;
                -moz-user-select: none;
                -ms-user-select: none;
                user-select: none;
                border: 2px solid #0078ff;
                background: #0078ff;
                color: #f3f3f3;
            }

                .sidebar ul li a {
                    color: white;
                }

                .sidebar ul li:hover {
                    background: #17a689;
                    border-color: #17a689;
                }

    .footer a {
        color: #17a689;
    }

    /* Blurred class

        This class is added to the container
        (#blurMe) when the sidebar is open.
        -----------------------------------*/
    .blurred {
        -webkit-transition: all 0.6s ease;
        transition: all 0.6s ease;
        -webkit-filter: blur(10px);
        filter: blur(10px);
        filter: url(#blur);
        filter: progid:DXImageTransform.Microsoft.Blur(PixelRadius='10');
    }

    /* Logo effect
        -----------------------------*/
    @-webkit-keyframes blur {
        66% {
            -webkit-filter: blur(1px);
            filter: blur(1px);
            filter: url(#blurLogo);
            filter: progid:DXImageTransform.Microsoft.Blur(PixelRadius='1');
        }
    }

    @keyframes blur {
        66% {
            -webkit-filter: blur(1px);
            filter: blur(1px);
            filter: url(#blurLogo);
            filter: progid:DXImageTransform.Microsoft.Blur(PixelRadius='1');
        }
    }

    table.MsoNormalTable {
        font-size: 10.0pt;
        font-family: "Times New Roman","serif";
    }

    .auto-style12 {
        font-size: 14.0pt;
        font-family: "Times New Roman", serif;
        margin-left: 0cm;
        margin-right: 0cm;
        margin-top: 0cm;
        margin-bottom: .0001pt;
    }

    .auto-style13 {
        text-align: justify;
        font-size: 14.0pt;
        font-family: "Times New Roman", serif;
        margin-left: 0cm;
        margin-right: 0cm;
        margin-top: 0cm;
        margin-bottom: .0001pt;
    }

    .auto-style14 {
        text-decoration: underline;
    }

    .auto-style15 {
        width: 288px;
        height: 74px;
    }

    .auto-style16 {
        width: 138px;
        height: 28px;
    }

    .auto-style18 {
        width: 108px;
        height: 65px;
    }

    .auto-style19 {
        text-align: center;
        text-indent: 36.0pt;
        font-size: 14.0pt;
        font-family: "Times New Roman", serif;
        margin-left: 0cm;
        margin-right: 0cm;
        margin-top: 0cm;
        margin-bottom: .0001pt;
    }

    .auto-style20 {
        width: 637px;
        height: 409px;
    }

    .auto-style21 {
        width: 121px;
        height: 202px;
    }

    .auto-style22 {
        width: 130px;
        height: 205px;
    }

    .shape {
        behavior: url(#default#VML);
    }
</style>

<div class="container">
    <div class="navbar navbar-inverse navbar-fixed-top">

        <div class="navbar-header">
            <ul class="nav nav-pills pull-left">
                <li><a id="trigger"><span class="entypo-menu"></span></a></li>
            </ul>
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" runat="server" href="~/Default">Комп'ютерна арифметика</a>
        </div>
        <div class="sidebar closed">
            <header>
                <h2 align="center">Комп'ютерна арифметика</h2>
                <a id="close"><span class="entypo-cancel"></span></a>
            </header>
            <ul>
                <li><a href="#Systems">Системи числення</a></li>
                <li><a href="#Binary-10">Двійково-десяткові коди</a></li>
                <li><a href="#EOMZnak">Кодування чисел в ЕОМ зі знаком</a></li>
                <li><a href="#DigitInEOM">Представлення чисел в ЕОМ</a></li>
                <li><a href="#Arithmetic">Арифметичні операції</a></li>
            </ul>
        </div>
        <div class="navbar-collapse collapse">
            <ul class="nav navbar-nav">
                <li><a runat="server" href="~/Information">Інформація</a></li>
                <li><a runat="server" href="~/FApplication">Діагностика знань</a></li>
                <li><a runat="server" href="~/Tests">Тестування</a></li>
            </ul>
        </div>

    </div>

</div>

<div class="baseCont" align="center">
    <h1 align="center" id="Systems" class="b1">Комп'ютерна арифметика</h1>
    <div>
        <h3 align="center">Системи числення</h3>
        <p>
            У повсякденній практиці для представлення чисел люди користуються в основному десятковою системою числення. Лише у окремих 
            випадках зустрічаються залишки інших систем - римське лічення, двенадцатирична система (годинник), шестидесятирична (хвилини).
            Однак система зображення чисел, яка віками складалася стосовно ручної праці, не дозволяє отримати найбільш ефективні методи 
            виконання обчислень. З цієї причини в обчислювальній техніці застосовуються інші системи числення і найчастіше - двійкова. 
            Введемо декілька визначень.
        </p>
        <p>
            <i><span lang="UK">Система числення </span></i><span lang="UK">- сукупність символів і правил для позначення чисел. </span>
        </p>
        <p>
            <span lang="UK">Розділяють системи числення позиційні і непозиційні. </span>
        </p>
        <p>
            <i><span lang="UK">Непозиційна система числення </span></i><span lang="UK">задається перерахуванням значень, що зображаються в ній. 
            </span>
        </p>
        <p>
            <i><span lang="UK">Позиційна система числення </span></i><span lang="UK">характеризується основою і тим, що числа, як правило, 
                представляються декількома розрядами (є багаторозрядними), а вага будь-якого розряду визначається його позицією в числі.</span>
        </p>
        <p>
            <i><span lang="UK">Основа позиційної системи числення </span></i><span lang="UK">визначає кількість різних цифр (символів), з яких 
                складається<span>&nbsp; </span>система числення. Це ж число визначає, в скільки разів вага цифри даного розряду менше ваги цифри 
                сусіднього старшого розряду. Так, в десятковій системі числення, підстава якої дорівнює 10, розрізняють 10 арабських цифр -
                0, 1, 2..., 9. Отже, при її використанні для запису числа, що не перевищує дев&#39;яти, достатньо однієї цифри, і таке число 
                записується як однорозрядне. А у разі запису числа, більшого дев&#39;яти, воно представляється як багаторозрядне. При цьому вага 
                кожного більш старшого (розташованого зліва від поточного) розряду вдесятеро більше поточного.</span>
        </p>
        <p>
            <span lang="UK">Так, наприклад, число 359 - трьохрозрядне, і в нім 9 - цифра розряду одиниць, 5 - цифра розряду десятків, 3 - цифра 
                розряду сотень (у 10 разів перевищує вагу розряду десятків). При цьому значення трьохрозрядного числа 359 виходить підсумовуванням 
                три доданків :</span>
        </p>
        <p>
            <span lang="UK"><span>&nbsp;</span>3 сотні + 5 десятків + 9 одиниць.</span>
        </p>
        <p>
            <span lang="UK">Загальне правило визначення ваги розряду багаторозрядного числа таке:</span>
        </p>
        <p>
            Якщо пронумерувати розряди цілого числа справа наліво, починаючи від 0 для розряду одиниць, то вага будь-якого розряду виходить 
            піднесенням основи системи числення до степеню, значення якого дорівнює номеру розряду.  Так, вага самого молодшого розряду цілих
            чисел дорівнює 1, оскільки номер розряду дорівнює 0, а будь-яке число, у тому числі і число 10, підведене в нульовий ступінь,
            дає в результаті одиницю. Вага наступного зліва розряду дорівнює 10 в степені 1, тобто рівний десяти, і так далі. 
        </p>
        <p>
            <span lang="UK">Це ж правило справедливо і для запису дробових чисел. При цьому розрядам праворуч від розряду одиниць, що має номер 0,
                присвоюються негативні значення: -1, -2, і так далі, а їх ваги виходять також при піднесенні основи 10 у відповідний степінь. Так,
                наприклад, вага третього розряду в дробовій частині числа 42,9724 дорівнюватиме 10 в степені (-3),
                тобто рівний однією тисячною.</span>
        </p>
        <p class="text-justify">
            <span lang="UK">Вказане правило можна проілюструвати за допомогою таблиці:</span>
        </p>
        <p>
            <span lang="UK">
                <o:p>&nbsp;</o:p>
            </span>
        </p>
        <div align="center">

            <table border="1">
                <tr>
                    <td valign="center" width="71">
                        <p>
                            <span lang="UK">Число</span>
                        </p>
                    </td>
                    <td valign="center" width="71">
                        <p>
                            <span lang="UK">5</span>
                        </p>
                    </td>
                    <td valign="center" width="71">
                        <p>
                            <span lang="UK">7</span>
                        </p>
                    </td>
                    <td valign="center" width="71">
                        <p>
                            <span lang="UK">3</span>
                        </p>
                    </td>
                    <td valign="center" width="71">
                        <p>
                            <span lang="UK">8,</span>
                        </p>
                    </td>
                    <td valign="center" width="71">
                        <p>
                            <span lang="UK">9</span>
                        </p>
                    </td>
                    <td valign="center" width="71">
                        <p>
                            <span lang="UK">1</span>
                        </p>
                    </td>
                    <td valign="center" width="71">
                        <p>
                            <span lang="UK">0</span>
                        </p>
                    </td>
                    <td valign="center" width="71">
                        <p>
                            <span lang="UK">5</span>
                        </p>
                    </td>
                </tr>
                <tr>
                    <td valign="center" width="71">
                        <p>
                            <span lang="UK">Номер розряду</span>
                        </p>
                    </td>
                    <td valign="center" width="71">
                        <p>
                            <span lang="UK">3</span>
                        </p>
                    </td>
                    <td valign="center" width="71">
                        <p>
                            <span lang="UK">2</span>
                        </p>
                    </td>
                    <td valign="center" width="71">
                        <p>
                            <span lang="UK">1</span>
                        </p>
                    </td>
                    <td valign="center" width="71">
                        <p>
                            <span lang="UK">0</span>
                        </p>
                    </td>
                    <td valign="center" width="71">
                        <p>
                            <span lang="UK">-1</span>
                        </p>
                    </td>
                    <td valign="center" width="71">
                        <p>
                            <span lang="UK">-2</span>
                        </p>
                    </td>
                    <td valign="center" width="71">
                        <p>
                            <span lang="UK">-3</span>
                        </p>
                    </td>
                    <td valign="center" width="71">
                        <p>
                            <span lang="UK">-4</span>
                        </p>
                    </td>
                </tr>
                <tr>
                    <td valign="center" width="71">
                        <p>
                            <span lang="UK">Вага розряду</span>
                        </p>
                    </td>
                    <td valign="center" width="71">
                        <p>
                            <span lang="UK">1000</span>
                        </p>
                    </td>
                    <td valign="center" width="71">
                        <p>
                            <span lang="UK">100</span>
                        </p>
                    </td>
                    <td valign="center" width="71">
                        <p>
                            <span lang="UK">10</span>
                        </p>
                    </td>
                    <td valign="center" width="71">
                        <p>
                            <span lang="UK">1</span>
                        </p>
                    </td>
                    <td valign="center" width="71">
                        <p>
                            <span lang="UK">0,1</span>
                        </p>
                    </td>
                    <td valign="center" width="71">
                        <p>
                            <span lang="UK">0,01</span>
                        </p>
                    </td>
                    <td valign="center" width="71">
                        <p>
                            <span lang="UK">0,001</span>
                        </p>
                    </td>
                    <td valign="center" width="71">
                        <p>
                            <span lang="UK">0,0001</span>
                        </p>
                    </td>
                </tr>
            </table>

        </div>
        <p align="center">&nbsp;</p>
        <p>
            Можна побачити з прикладу, в позиційній системі числення досить знати значення основи системи числення, символи, 
            що зображають окремі цифри, і вказане правило, щоб представити будь-яке число. У обчислювальній техніці широко 
            застосовують двійкову, вісімкову і шістнадцяткову системи числення.
        </p>
        <p>
            Двійкова система числення має основу 2, і, отже, дві  цифри - 0 і 1; вісімкова - вісім різних цифр - 0, 1, 2, 3, 4, 5, 6, 7, 
            а шістнадцяткова - шістнадцять цифр - десять арабських цифр від 0 до 9 і ще шість символів - А (цифра десять),D (цифра тринадцять),
            В (цифра одинадцять), E (цифра чотирнадцять), C (цифра дванадцять), F (цифра п'ятнадцять).
        </p>
        <p>Найпростіше зіставити запис одних і тих же чисел в цих системах числення можна з використанням таблиці 1.2.</p>
        <p>Ми вже говорили про те, що сучасні цифрові ЕОМ всі використовують двійкову систему числення як основну. До її достоїнств відноситься:</p>
        <p>
            &nbsp;&nbsp;&nbsp;&nbsp; 1. простота виконання арифметичних і логічних операцій, що спричиняє за собою простоту пристроїв,
            що реалізовують ці операції;
        </p>
        <p>
            &nbsp;&nbsp;&nbsp;&nbsp; 2. можливість використання апарату алгебри логіки (булевої алгебри) для аналізу і синтезу операційних 
            пристроїв ЕОМ.
        </p>
        <p>
            До незручностей двійкової системи числення відноситься необхідність переведення чисел з десяткової СЧ в двійкову і навпаки, 
            а також те, що запис числа в двійковій системі громіздкий (вимагає більшого числа розрядів, чим звична для людини десяткова). 
            З цієї і з ряду інших причин, крім двійкової застосовуються вісімкова і шістнадцяткова системи числення.
        </p>
        <p>&nbsp;</p>
        <div align="center">
            <table border="1" cellpadding="0" cellspacing="0">
                <tr>
                    <td colspan="4">
                        <p align="center">
                            <span lang="UK">Системи числення з основою</span>
                        </p>
                    </td>
                </tr>
                <tr>
                    <td width="113">
                        <p align="center">
                            <span lang="UK">10</span>
                        </p>
                    </td>
                    <td width="113">
                        <p align="center">
                            <span lang="UK">2</span>
                        </p>
                    </td>
                    <td width="113">
                        <p align="center">
                            <span lang="UK">8</span>
                        </p>
                    </td>
                    <td width="113">
                        <p align="center">
                            <span lang="UK">16</span>
                        </p>
                    </td>
                </tr>
                <tr>
                    <td width="113">
                        <p align="center">
                            <span lang="UK">0</span>
                        </p>
                    </td>
                    <td width="113">
                        <p align="center">
                            <span lang="UK">0000</span>
                        </p>
                    </td>
                    <td width="113">
                        <p align="center">
                            <span lang="UK">0</span>
                        </p>
                    </td>
                    <td width="113">
                        <p align="center">
                            <span lang="UK">0</span>
                        </p>
                    </td>
                </tr>
                <tr>
                    <td width="113">
                        <p align="center">
                            <span lang="UK">1</span>
                        </p>
                    </td>
                    <td width="113">
                        <p align="center">
                            <span lang="UK">0001</span>
                        </p>
                    </td>
                    <td width="113">
                        <p align="center">
                            <span lang="UK">1</span>
                        </p>
                    </td>
                    <td width="113">
                        <p align="center">
                            <span lang="UK">1</span>
                        </p>
                    </td>
                </tr>
                <tr>
                    <td width="113">
                        <p align="center">
                            <span lang="UK">2</span>
                        </p>
                    </td>
                    <td width="113">
                        <p align="center">
                            <span lang="UK">0010</span>
                        </p>
                    </td>
                    <td width="113">
                        <p align="center">
                            <span lang="UK">2</span>
                        </p>
                    </td>
                    <td width="113">
                        <p align="center">
                            <span lang="UK">2</span>
                        </p>
                    </td>
                </tr>
                <tr>
                    <td width="113">
                        <p align="center">
                            <span lang="UK">3</span>
                        </p>
                    </td>
                    <td width="113">
                        <p align="center">
                            <span lang="UK">0011</span>
                        </p>
                    </td>
                    <td width="113">
                        <p align="center">
                            <span lang="UK">3</span>
                        </p>
                    </td>
                    <td width="113">
                        <p align="center">
                            <span lang="UK">3</span>
                        </p>
                    </td>
                </tr>
                <tr>
                    <td width="113">
                        <p align="center">
                            <span lang="UK">4</span>
                        </p>
                    </td>
                    <td width="113">
                        <p align="center">
                            <span lang="UK">0100</span>
                        </p>
                    </td>
                    <td width="113">
                        <p align="center">
                            <span lang="UK">4</span>
                        </p>
                    </td>
                    <td width="113">
                        <p align="center">
                            <span lang="UK">4</span>
                        </p>
                    </td>
                </tr>
                <tr>
                    <td width="113">
                        <p align="center">
                            <span lang="UK">5</span>
                        </p>
                    </td>
                    <td width="113">
                        <p align="center">
                            <span lang="UK">0101</span>
                        </p>
                    </td>
                    <td width="113">
                        <p align="center">
                            <span lang="UK">5</span>
                        </p>
                    </td>
                    <td width="113">
                        <p align="center">
                            <span lang="UK">5</span>
                        </p>
                    </td>
                </tr>
                <tr>
                    <td width="113">
                        <p align="center">
                            <span lang="UK">6</span>
                        </p>
                    </td>
                    <td width="113">
                        <p align="center">
                            <span lang="UK">0110</span>
                        </p>
                    </td>
                    <td width="113">
                        <p align="center">
                            <span lang="UK">6</span>
                        </p>
                    </td>
                    <td width="113">
                        <p align="center">
                            <span lang="UK">6</span>
                        </p>
                    </td>
                </tr>
                <tr>
                    <td width="113">
                        <p align="center">
                            <span lang="UK">7</span>
                        </p>
                    </td>
                    <td width="113">
                        <p align="center">
                            <span lang="UK">0111</span>
                        </p>
                    </td>
                    <td width="113">
                        <p align="center">
                            <span lang="UK">7</span>
                        </p>
                    </td>
                    <td width="113">
                        <p align="center">
                            <span lang="UK">7</span>
                        </p>
                    </td>
                </tr>
                <tr>
                    <td width="113">
                        <p align="center">
                            <span lang="UK">8</span>
                        </p>
                    </td>
                    <td width="113">
                        <p align="center">
                            <span lang="UK">1000</span>
                        </p>
                    </td>
                    <td width="113">
                        <p align="center">
                            <span lang="UK">10</span>
                        </p>
                    </td>
                    <td width="113">
                        <p align="center">
                            <span lang="UK">8</span>
                        </p>
                    </td>
                </tr>
                <tr>
                    <td width="113">
                        <p align="center">
                            <span lang="UK">9</span>
                        </p>
                    </td>
                    <td width="113">
                        <p align="center">
                            <span lang="UK">1001</span>
                        </p>
                    </td>
                    <td width="113">
                        <p align="center">
                            <span lang="UK">11</span>
                        </p>
                    </td>
                    <td width="113">
                        <p align="center">
                            <span lang="UK">9</span>
                        </p>
                    </td>
                </tr>
                <tr>
                    <td width="113">
                        <p align="center">
                            <span lang="UK">10</span>
                        </p>
                    </td>
                    <td width="113">
                        <p align="center">
                            <span lang="UK">1010</span>
                        </p>
                    </td>
                    <td width="113">
                        <p align="center">
                            <span lang="UK">12</span>
                        </p>
                    </td>
                    <td width="113">
                        <p align="center">
                            <span lang="UK">A</span>
                        </p>
                    </td>
                </tr>
                <tr>
                    <td width="113">
                        <p align="center">
                            <span lang="UK">11</span>
                        </p>
                    </td>
                    <td width="113">
                        <p align="center">
                            <span lang="UK">1011</span>
                        </p>
                    </td>
                    <td width="113">
                        <p align="center">
                            <span lang="UK">13</span>
                        </p>
                    </td>
                    <td width="113">
                        <p align="center">
                            <span lang="UK">B</span>
                        </p>
                    </td>
                </tr>
                <tr>
                    <td width="113">
                        <p align="center">
                            <span lang="UK">12</span>
                        </p>
                    </td>
                    <td width="113">
                        <p align="center">
                            <span lang="UK">1100</span>
                        </p>
                    </td>
                    <td width="113">
                        <p align="center">
                            <span lang="UK">14</span>
                        </p>
                    </td>
                    <td width="113">
                        <p align="center">
                            <span lang="UK">C</span>
                        </p>
                    </td>
                </tr>
                <tr>
                    <td width="113">
                        <p align="center">
                            <span lang="UK">13</span>
                        </p>
                    </td>
                    <td width="113">
                        <p align="center">
                            <span lang="UK">1101</span>
                        </p>
                    </td>
                    <td width="113">
                        <p align="center">
                            <span lang="UK">15</span>
                        </p>
                    </td>
                    <td width="113">
                        <p align="center">
                            <span lang="UK">D</span>
                        </p>
                    </td>
                </tr>
                <tr>
                    <td width="113">
                        <p align="center">
                            <span lang="UK">14</span>
                        </p>
                    </td>
                    <td width="113">
                        <p align="center">
                            <span lang="UK">1110</span>
                        </p>
                    </td>
                    <td width="113">
                        <p align="center">
                            <span lang="UK">16</span>
                        </p>
                    </td>
                    <td width="113">
                        <p align="center">
                            <span lang="UK">E</span>
                        </p>
                    </td>
                </tr>
                <tr>
                    <td width="113">
                        <p align="center">
                            <span lang="UK">15</span>
                        </p>
                    </td>
                    <td width="113">
                        <p align="center">
                            <span lang="UK">1111</span>
                        </p>
                    </td>
                    <td width="113">
                        <p align="center">
                            <span lang="UK">17</span>
                        </p>
                    </td>
                    <td width="113">
                        <p align="center">
                            <span lang="UK">F</span>
                        </p>
                    </td>
                </tr>
            </table>
        </div>
        <p>&nbsp;</p>
        <p>Сумісне використання вказаних систем обумовлене двома причинами:</p>
        <p>•&nbsp;&nbsp;&nbsp;&nbsp;	у вісімковій і шістнадцятковій системах будь-яке число записується компактніше, ніж двійкове;</p>
        <p>•&nbsp;&nbsp;&nbsp;&nbsp;	простотою перетворення з двійкової у вісімкову (шістнадцяткову) систему числення і навпаки.</p>
        <p>Наведемо правила переведення чисел з двійкової системи у вісімкову (шістнадцяткову) і навпаки.</p>
        <p>&nbsp;</p>
        <p>
            <i><span lang="UK">П1. Правило переведення “8 c/ч -&gt; 2c/ч”</span></i>
        </p>
        <p>При переведенні багаторозрядного числа кожну цифру вісімкового числа потрібно представити трьома двійковими цифрами, узятими з приведеної вище таблиці. При цьому, якщо для запису відповідної вісімкової цифри у вигляді двійкової потрібний менше трьох двійкових цифр, двійковий еквівалент доповнюється зліва нулями (незначущі нулі не змінять значення числа). Після закінчення такого перетворення можна відкинути старші для всього числа незначущі двійкові цифри (нулі). Відмітимо, що три цифри прийнято називати тріадою. Тому можна сказати, що при описуваному  кожна вісімкова цифра замінюється відповідною нею тріадою двійкових цифр.</p>
        <p>Якщо початкове число дріб, тобто має цілу і дробову частину, то в двійковому числі кома ставиться між тріадами, що представляють відповідні цифри вихідного числа.</p>
        <p>Приклад:  Перетворимо вісімкове число 371,62.</p>
        <p>Для цього запишемо для кожної цифри відповідну тріаду:</p>
        <p align="center">
            <span lang="UK">3 --&gt; 011</span>
        </p>
        <p align="center">
            <span lang="UK">7 --&gt; 111</span>
        </p>
        <p align="center">
            <span lang="UK">1 --&gt; 001</span>
        </p>
        <p align="center">
            <span lang="UK">6 --&gt; 110</span>
        </p>
        <p align="center">
            <span lang="UK">2 --&gt; 010</span>
        </p>
        <p>Тепер можна записати число в двійковій формі (для наочності між тріадами помістимо пропуски):</p>
        <p align="center">
            <span lang="UK">371,62 --&gt; 011 111 001, 110 010</span>
        </p>
        <p>
            І, нарешті, запишемо отримане двійкове число так, як це прийнято в математиці, без незначущих нулів, 
                а також відкинувши праві нулів дробовій частині числа:
        </p>
        <p align="center">
            <span lang="UK">371,62 --&gt; 11111001,11001</span>
        </p>
        <p>&nbsp;</p>
        <p>
            <i><span lang="UK">П2. Правило переведення “2c/ч -&gt;8 c/ч”</span></i>
        </p>
        <p>
            <span lang="UK">При переведенні багаторозрядного двійкового числа у вісімкову форму поступають таким чином: двійкове число
                <span>&nbsp; </span>розбивають на тріади. При цьому для цілої частини числа розбиття проводять від місцезнаходження коми 
                вліво, а для дробової частини - від цього ж місця управо. Потім остання ліва група при необхідності доповнюється незначущими
                нулями до утворення тріади, а остання права група <span>лише</span> в дробовій частині доповнюється нулями справа також до 
                утворення повної тріади. Після цього кожна тріада замінюється відповідною вісімковою цифрою. Місцеположення коми зберігається
                по тих же правилах, що і в правилі П1.</span>
        </p>
        <p>
            <span lang="UK">Приклад:</span>
        </p>
        <p>
            <span lang="UK">Представити двійкове число 1101100,01111101 у вигляді вісімкового.</span>
        </p>
        <p>
            <span lang="UK">Розіб&#39;ємо вихідне число на групи по три цифри, прийнявши як точку відліку місцеположення коми (для наочності між тріадами помістимо пропуски):</span>
        </p>
        <p align="center">
            <span lang="UK">1 101 100, 011 111 01</span>
        </p>
        <p>
            <span lang="UK">Тепер доповнимо до трьох цифр нулями найлівішу групу ліворуч і найправішу групу праворуч:</span>
        </p>
        <p align="center">
            <span lang="UK">001 101 100, 011 111 010</span>
        </p>
        <p>
            <span lang="UK">І, нарешті, замінимо кожну тріаду відповідною вісімковою цифрою:</span>
        </p>
        <p align="center">
            <span lang="UK">001 101 100, 011 111 100 --&gt; 154,372</span>
        </p>
        <p>
            <span lang="UK">
                <o:p>&nbsp;</o:p>
            </span>
        </p>
        <p>
            <span lang="UK"><em>П3. Правило переведення</em> “<i>16c/ч -&gt; 2c/ч”</i></span>
        </p>
        <p>
            <span lang="UK">При переведенні багаторозрядного шістнадцяткового числа в двійкову форму кожну цифру початкового числа замінюють групою точно <span>з</span> чотирьох двійкових цифр (замінюють тетрадою двійкових цифр). Місцеположення коми зберігається по тих же правилах, що і в правилі П1. У остаточному записі можна відкинути най лівіші (незначущі) нулі і най правіші нулі дробової частини.</span>
        </p>
        <p>
            <span lang="UK">Приклад: Перетворити шістнадцяткове число “6C,7D” в двійкову форму.</span>
        </p>
        <p>
            <span lang="UK">Для цього запишемо для кожної цифри відповідну тетраду:</span>
        </p>
        <p>
            <span lang="UK">6 --&gt; 0110</span>
        </p>
        <p>
            <span lang="UK">C --&gt; 1100</span>
        </p>
        <p>
            <span lang="UK">7 --&gt; 0111</span>
        </p>
        <p>
            <span lang="UK">D --&gt; 1101</span>
        </p>
        <p>
            <span lang="UK">Тепер можна записати число в двійковій формі (для наочності між тетрадами помістимо пропуски):</span>
        </p>
        <p align="center">
            <span lang="UK">6C,7D -&gt; 0110 1100, 0111 1101</span>
        </p>
        <p>
            <span lang="UK">І, нарешті, запишемо отримане двійкове число так, як це прийнято в математиці, без незначущих нулів:</span>
        </p>
        <p class="text-center">
            <span lang="UK">6C,7D -&gt; 1101100,01111101</span>
        </p>
        <p>
            <span lang="UK">
                <o:p>&nbsp;</o:p>
            </span>
        </p>
        <p>
            <i><span lang="UK">П4. Правило переведення “2с/ч -&gt; 16c/ч”</span></i>
        </p>
        <p>
            <span lang="UK">При переведенні багаторозрядного двійкового числа в шістнадцяткову форму використовують такий алгоритм: початкове число розбивають на тетради. При цьому для цілої частини числа розбиття проводять від місцезнаходження коми вліво, а для дробової частини від цього ж місця управо. Потім най лівіша група при необхідності доповнюється незначущими нулями до утворення тетради, а най правіша група тільки в дробовій частині доповнюється нулями справа також до утворення повної тетради. Після цього кожна тетрада замінюється відповідною шістнадцятковою цифрою. Місцеположення коми зберігається по тих же правилах, що і в правилі П1.</span>
        </p>
        <p>
            <span lang="UK">Приклад:
                
            </span>
        </p>
        <p>
            <span lang="UK">Представити двійкове число 1101100,01111101 у формі шістнадцяткового.</span>
        </p>
        <p>
            <span lang="UK">Розіб&#39;ємо початковечисло на групи по чотири цифри, прийнявши як точку відліку місцеположення коми (для наочності між тетрадами помістимо пропуски:</span>
        </p>
        <p align="center">
            <span lang="UK">110 1100, 0111 1101</span>
        </p>
        <p>
            <span lang="UK">Тепер доповнимо до чотирьох цифр нулями зліва найлівішу групу:</span>
        </p>
        <p align="center">
            <span lang="UK">0110 1100, 0111 1101</span>
        </p>
        <p>
            <span lang="UK">І, нарешті, замінимо кожну тетраду відповідною шістнадцятковою цифрою:</span>
        </p>
        <p align="center">
            <span lang="UK">0110 1100, 0111 1101 -&gt; 6С,7D.</span>
        </p>
        <p>
            <span lang="UK">Шістнадцяткова і вісімкова системи числення використовуються для компактнішого і зручнішого запису двійкових чисел.</span>
        </p>
        <p>
            <span lang="UK">Так, популярність шістнадцятковій системі принесло те, що з її використанням зручно представляти програми в кодах більшості сучасних ЕОМ.</span>
        </p>
        <p>
            <span lang="UK">
                <o:p>&nbsp;</o:p>
            </span>
        </p>
        <h4 class="text-center">
            <span lang="UK">Переведення чисел з однієї системи числення в іншу<b></b></span></h4>
        <p align="center">
            <b><span lang="UK">
                <o:p>&nbsp;</o:p>
            </span></b>
        </p>
        <p>
            <span lang="UK">Оскільки в практичній діяльності люди звикли оперувати десятковою системою числення, а в ЕОМ числа представляються в двійковій, необхідно навчитися перетворювати числа з однієї системи числення в іншу. Розглянуті вище за правило переведення з двійкової системи числення у вісімкову і шістнадцяткову і навпаки носять приватний характер і не можуть бути поширені на інші системи. Тут же ми розглянемо загальні правила переведення, справедливі для будь-якої систем числення, хоча і громіздкі і трудомісткі в порівнянні з розглянутими вище.</span>
        </p>
        <p>
            <span lang="UK">Правила переведення цілих і дробових чисел не збігаються, тому приведемо три правила переведення чисел <span>з|</span> системи числення з основою R в систему числення з основою Q.</span>
        </p>
        <p>
            &nbsp;
        </p>
        <p>
            <i><span lang="UK">Правило 1</span></i><span lang="UK">. Переклад цілих чисел</span>
        </p>
        <p>
            <span lang="UK">Для переведення цілого числа N, представленого в системі числення (СЧ) з основою R, в СЧ з основою Q необхідне дане число ділити на основу Q по правилах СЧ з основою R до отримання цілого залишку, меншого Q. Отриманий результат знову необхідно ділити на основу Q до отримання нового цілого залишку меншого Q, і так далі, до тих пір, поки останній результат буде менше за Q. Число N в СЧ з основою Q представиться у вигляді не впорядкованої послідовності залишків ділення в порядку, зворотному їх отриманню (іншими словами, старшу цифру числа N дає останній результат).</span>
        </p>
        <p>
            &nbsp;
        </p>
        <p>
            <span lang="UK">Приклад:<span>&nbsp;</span>Перетворити десяткове число 67 в двійкову форму.<br />
                Основа початкової системи числення R=10. Основа нової системи числення Q=2<span>|</span>.</span>
        </p>
        <p>
            <span lang="UK">Згідно приведеному правилу треба початкове число 67 ділити на основу нової системи (на 2) по правилах десяткової системи числення, як показано нижче.</span>
        </p>
        <p>
            <span lang="UK">
                <br />
                Тепер можна записати число 67 в новій системі числення. Воно дорівнює: 1000011.<b></b></span>
        </p>
        <p align="center">
            <img src="image/3.png" />
        </p>
        <p>&nbsp;</p>
        <p>
            <i><span lang="UK">Правило 2. Переклад правильного дробу</span></i><span lang="UK"></span>
        </p>
        <p>Переведення правильного дробу, представленого в СЧ з основою R, в СЧ з основою Q полягає в послідовному множенні цього дробу на основу Q по правилах системи числення з основою R, причому перемножують тільки дробові частини. Дріб N в СЧ з основою Q представляється у вигляді впорядкованої послідовності цілих часток добутків в порядку їх отримання. (Іншими словами, старший розряд є першою цифрою добутку). Кількість послідовних добутків визначає кількість цифр в отриманому числі. </p>
        <p>Для багатьох чисел вказаний процес множення потенційно ніколи не кінчається. Тому він продовжується до тих пір, поки не буде отримано необхідне число цифр дробової частини. При переведенні числа з метою представлення її в “машинній” формі можна точно вказати необхідну кількість цифр. (Це розглядатиметься пізніше, в розділі 1.5).</p>
        <p>Приклад: Перевести в двійкову систему числення десятковий дріб 0,7243.</p>
        <p>Підстава початкової системи числення R=10. Підстава нової системи числення Q=2.</p>
        <p>Згідно приведеного правила початкове число 0,7243 треба умножати на підставу нової системи (на 2) по правилах десяткової системи числення (початкова СЧ). Виконаємо серію множень до отримання, наприклад, шести цифр в двійковому числі:</p>
        <p>
            <span lang="UK">Шукані цифри дробу:</span>
        </p>
        <p>
            <span lang="UK">0,7243 * 2 = 1,4486 1 -&gt; старша цифра</span>
        </p>
        <p>
            <span lang="UK">0,4486 * 2 = 0,8972 0</span>
        </p>
        <p>
            <span lang="UK">0,8942 * 2 = 1,7944 1</span>
        </p>
        <p>
            <span lang="UK">0,7944 * 2 = 1,5888 1</span>
        </p>
        <p>
            <span lang="UK">0,5888 * 2 = 1,1776 1</span>
        </p>
        <p>
            <span lang="UK">0,1776 * 2 = 0,3552 0</span>
        </p>
        <p>
            <span lang="UK">0,3552 * 2 = 0,7104 0</span>
        </p>
        <p>Шукане  число 0,7243 в двійковій системі числення -> 0,101110.</p>
        <p>Звернете увагу, що для отримання шести цифр дробу виконано сім множень.</p>
        <p>Це пов'язано з необхідністю виконати округлення, щоб представити дріб заданої довжини точніше.</p>
        <p>Із останнього прикладу, кінцевий дріб в одній системі числення може стати нескінченним в іншій. Це твердження справедливе для всіх випадків, коли одна система числення не може бути отримана піднесенням в цілу степінь основи інший.</p>
        <p>Приклади:</p>
        <p>•&nbsp;&nbsp;&nbsp;&nbsp; Десятковий дріб 0,2 представляється нескінченним дробом 0,33333... у шістнадцятковій системі числення (підстави СЧ 10 і 16).</p>
        <p>•&nbsp;&nbsp;&nbsp;&nbsp; Шістнадцятковий дріб 0,В1 представляється кінцевим дробом 0,10110001 в двійковій системі числення (підстави СЧ 16 і 2).</p>
        <p>&nbsp;</p>
        <p>
            <i><span lang="UK">Правило 3. Переведення неправильного дробу</span></i>
        </p>
        <p>Переведення неправильного дробу з однієї системи числення в іншу здійснюється окремо для цілої і дробової частини по правилах, викладеним вище.</p>

    </div>
    <p id="Binary-10">&nbsp;</p> <br />
    <div>
        <h3 align="center"><span lang="UK">Двійково-десяткові коди</span></h3>
        <p>
            <span lang="UK">У ряді випадків в обчислювальній техніці застосовується не лише двійкова, але і десяткова система числення. Проте і в цьому випадку для представлення десяткових цифр використовується обладнання, розроблене для представлення двійкових цифр. В цьому випадку говорять про двійково-десяткові коди десяткових цифр.</span>
        </p>
        <p>
            <span lang="UK">Згідно формули Хартлі для представлення<span> </span>&nbsp;10 різних цифр потрібно чотири біта інформації:</span>
        </p>
        <p>
            <span lang="UK">3 бита &lt; I = log(10)&lt; 4 бита.&gt;</span>
        </p>
        <p>
            <span lang="UK">Таким чином, при необхідності представити десять різних десяткових цифр комбінаціями двійкових цифр, кожну з них можна представити мінімум тетрадою двійкових чисел. Більшість кодів десяткових цифр використовують тетради, хоча є і коди, в яких для кодування використовується більша кількість бітів.</span>
        </p>
        <p>
            <span lang="UK">Найбільш поширені двійково-десяткові коди, в яких для представлення десяткових цифр використовуються позиційні методи кодування. Так, якщо розглядати чотири двійкові розряди тетради як чотирирозрядне двійкове число, то ваги її окремих розрядів зліва направо будуть рівні відповідно<span> до </span>8, 4, 2 і 1.</span>
        </p>
        <p>
            <span lang="UK">Тому перший двійково-десятковий код, який ми розглянемо, позначається як код “8421”. Його можна назвати кодом з природними вагами.</span>
        </p>
        <p>
            <span lang="UK">У цьому коді кожна десяткова цифра представляється її двійковим еквівалентом :</span>
        </p>
        <p>
            <span lang="UK">цифра 0 як 0000</span>
        </p>
        <p>
            <span lang="UK">цифра 1 як 0001</span>
        </p>
        <p>
            <span lang="UK">цифра 2 як 0010</span>
        </p>
        <p>
            <span lang="UK">цифра 5 як 0101</span>
        </p>
        <p>
            <span lang="UK">цифра 8 як 1000</span>
        </p>
        <p>
            <span lang="UK">цифра 9 як 1001.</span>
        </p>
        <p>
            <span lang="UK">В той же час, маючи чотири двійкові цифри, можна представити не 10, а 16 різних комбінацій. Таким чином, 
                при використанні коди “8421” шість комбінацій : 1010, 1011..., 1111 залишаться невикористаними, тобто не зображатимуть 
                жодної з десяткових цифр. Ці комбінації вважаються забороненими.</span>
        </p>
        <p>&nbsp;</p>
        <h4 align="center">Коди з надлишком</h4>
        <p>
            <span lang="UK">Окрім розглянутої системи кодування досить широко використовуються також так звані коди з надлишком. Розглянемо групу код “8421” з надлишком”.</span>
        </p>
        <p>
            <span lang="UK">Код “8421” з надлишком W” будується за наступними правилами:</span>
        </p>
        <p>
            <span lang="UK">При кодуванні десяткової цифри, до неї спочатку додають W, і потім отримане число представляють як двійкове в коді “8421”</span>
        </p>
        <p>
            <span lang="UK">Значення W може бути рівним 1, 2, 3, 4, 5 або 6. При будь-якому значенні надлишку W шість з шістнадцяти комбінацій залишаться невикористаними. Тільки для різних надлишків ці значення будуть різними.</span>
        </p>
        <p>
            <span lang="UK">Приклад: Розглянемо код “8421” з лишком 3”.</span>
        </p>
        <p style="tab-stops: 56.1pt">
            <span lang="UK">а)<span>&nbsp; </span>Представимо цифру 8 в даному коді.</span>
        </p>
        <p style="mso-list: l1 level1 lfo1; tab-stops: list -289.85pt">
            <![if !supportLists]><span lang="UK">•<span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span><![endif]><span lang="UK">Спочатку збільшимо 8 на 3. Вийде 11.</span>
        </p>
        <p style="mso-list: l1 level1 lfo1; tab-stops: list -289.85pt">
            <![if !supportLists]><span lang="UK">•<span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span><![endif]><span lang="UK">Потім запишемо 11 в коді “8421”. Вийде 1011.</span>
        </p>
        <p style="tab-stops: -289.85pt">
            <span lang="UK">Число 1011 і є представленням цифри 8 в даному коді.</span>
        </p>
        <p style="tab-stops: 56.1pt">
            <span lang="UK">б)<span>&nbsp; </span>Відновимо цифру, яка зображається комбінацією 0101.</span>
        </p>
        <p style="mso-list: l2 level1 lfo2; tab-stops: list -299.2pt">
            <![if !supportLists]><span lang="UK">•<span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span><![endif]><span lang="UK">Спочатку представимо десяткове число, розглядаючи комбінацію 0101, як його зображення в коді “8421”. Вийде число 5.</span>
        </p>
        <p style="mso-list: l2 level1 lfo2; tab-stops: list -299.2pt">
            <![if !supportLists]><span lang="UK">•<span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span><![endif]><span lang="UK">Потім віднімемо з нього (з 5) надлишок 3. Вийде 2.</span>
        </p>
        <p>
            <span lang="UK">Це і є шукана відповідь: Комбінація 0101 зображає десяткову цифру 2 в коді “8421” з надміром 3”.</span>
        </p>
        <p style="tab-stops: -289.85pt 56.1pt">
            <span lang="UK">в)<span>&nbsp; </span>Відновимо цифру, яка зображається комбінацією 1110.</span>
        </p>
        <p style="mso-list: l0 level1 lfo3; tab-stops: -289.85pt 56.1pt list 73.4pt">
            <![if !supportLists]><span lang="UK">•<span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span><![endif]><span lang="UK">Відновимо десяткове число. Отримуємо 14</span>
        </p>
        <p style="mso-list: l0 level1 lfo3; tab-stops: -289.85pt list 73.4pt">
            <![if !supportLists]><span lang="UK">•<span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span><![endif]><span lang="UK">Віднімемо з нього надлишок 3. Вийде 11</span>
        </p>
        <p>
            <span lang="UK">Оскільки 11 не є десятковою цифрою (це дворозрядне десяткове число), робимо висновок, що комбінація 1110 не зображає ніякої десяткової цифри і є забороненою.</span>
        </p>
        <p>
            <span lang="UK">
                <o:p>&nbsp;</o:p>
            </span>
        </p>
        <p>
            <span lang="UK">Код “2421”</span>
        </p>
        <p>
            <span lang="UK">Окрім кодів з природними вагами розрядів застосовуються також інші. Одним з широко відомих код є позиційний код, побудований з використанням тетради двійкових цифр, ваги яких зліва направо рівні відповідно : 2, 4, 2 і 1. 9 1111</span>
        </p>
        <p>
            <span lang="UK">Представимо коди цифр в таблиці:</span>
        </p>
        <p>
            <span lang="UK">
                <o:p>&nbsp;</o:p>
            </span>
        </p>
        <div align="center">
            <table border="1" cellpadding="0" cellspacing="0">
                <tr>
                    <td valign="top" width="70">
                        <p align="center">
                            <b><span lang="UK">Цифра</span></b>
                        </p>
                    </td>
                    <td valign="top" width="137">
                        <p align="center">
                            <b><span lang="UK">Код “2421”</span></b>
                        </p>
                    </td>
                    <td valign="top" width="68">
                        <p align="center">
                            <b><span lang="UK">Цифра</span></b>
                        </p>
                    </td>
                    <td valign="top" width="132">
                        <p align="center">
                            <b><span lang="UK">Код “2421”</span></b>
                        </p>
                    </td>
                </tr>
                <tr>
                    <td valign="top" width="70">
                        <p align="center">
                            <span lang="UK">0</span>
                        </p>
                    </td>
                    <td valign="top" width="137">
                        <p>
                            <span lang="UK">0000</span>
                        </p>
                    </td>
                    <td valign="top" width="68">
                        <p align="center">
                            <span lang="UK">5</span>
                        </p>
                    </td>
                    <td valign="top" width="132">
                        <p>
                            <span lang="UK">0101 або 1011</span>
                        </p>
                    </td>
                </tr>
                <tr>
                    <td valign="top" width="70">
                        <p align="center">
                            <span lang="UK">1</span>
                        </p>
                    </td>
                    <td valign="top" width="137">
                        <p>
                            <span lang="UK">0001</span>
                        </p>
                    </td>
                    <td valign="top" width="68">
                        <p align="center">
                            <span lang="UK">6</span>
                        </p>
                    </td>
                    <td valign="top" width="132">
                        <p>
                            <span lang="UK">0110 або 1100</span>
                        </p>
                    </td>
                </tr>
                <tr>
                    <td valign="top" width="70">
                        <p align="center">
                            <span lang="UK">2</span>
                        </p>
                    </td>
                    <td valign="top" width="137">
                        <p>
                            <span lang="UK">0010 або 1000</span>
                        </p>
                    </td>
                    <td valign="top" width="68">
                        <p align="center">
                            <span lang="UK">7</span>
                        </p>
                    </td>
                    <td valign="top" width="132">
                        <p>
                            <span lang="UK">0111 або 1101</span>
                        </p>
                    </td>
                </tr>
                <tr>
                    <td valign="top" width="70">
                        <p align="center">
                            <span lang="UK">3</span>
                        </p>
                    </td>
                    <td valign="top" width="137">
                        <p>
                            <span lang="UK">0011 або 1001</span>
                        </p>
                    </td>
                    <td valign="top" width="68">
                        <p align="center">
                            <span lang="UK">8</span>
                        </p>
                    </td>
                    <td valign="top" width="132">
                        <p>
                            <span lang="UK">1110</span>
                        </p>
                    </td>
                </tr>
                <tr>
                    <td valign="top" width="70">
                        <p align="center">
                            <span lang="UK">4</span>
                        </p>
                    </td>
                    <td valign="top" width="137">
                        <p>
                            <span lang="UK">0100 або 1010</span>
                        </p>
                    </td>
                    <td valign="top" width="68">
                        <p align="center">
                            <span lang="UK">9</span>
                        </p>
                    </td>
                    <td valign="top" width="132">
                        <p>
                            <span lang="UK">1111</span>
                        </p>
                    </td>
                </tr>
            </table>
        </div>
        <p>
            <span lang="UK">
                <o:p>&nbsp;</o:p>
            </span>
        </p>
        <p>
            <span lang="UK">З таблиці можна побачити, ряд десяткових цифр, які можуть бути представлені двома не співпадаючими двійковими комбінаціями.</span>
        </p>
        <p>
            <span lang="UK">Наприклад, комбінації 0100 і 0010 зображають цифру 2, комбінації 1010 і 0100 зображають цифру 4 і так далі Відмітною особливістю даної коди є те, що в ньому немає невикористаних (заборонених) комбінацій.</span>
        </p>
        <p>
            <span lang="UK">
                <o:p>&nbsp;</o:p>
            </span>
        </p>
        <p>
            <span lang="UK">Код “2 <span>з</span> 5”</span>
        </p>
        <p>
            <span lang="UK">Даний код належить до непозиційних кодів. Як і всі непозиційні коди він визначається табличним способом. Його назву відображає принцип побудови коди: будь-яка десяткова цифра представляється комбінацією з 5 двійкових цифр, в якій дві цифри обов’язково 1 і, отже, три цифри 0.</span>
        </p>
        <p>
            <span lang="UK">Представимо таблицю одного з можливих варіантів для даної коди:</span>
        </p>
        <p>
            <span lang="UK">
                <o:p>&nbsp;</o:p>
            </span>
        </p>
        <div align="center">
            <table border="1" cellpadding="0" cellspacing="0">
                <tr>
                    <td valign="top" width="72">
                        <p align="center">
                            <b><span lang="UK">Цифра</span></b>
                        </p>
                    </td>
                    <td valign="top" width="66">
                        <p align="center">
                            <b><span lang="UK">Код</span></b>
                        </p>
                    </td>
                    <td valign="top" width="69">
                        <p align="center">
                            <b><span lang="UK">Цифра</span></b>
                        </p>
                    </td>
                    <td valign="top" width="70">
                        <p align="center">
                            <b><span lang="UK">Код</span></b>
                        </p>
                    </td>
                </tr>
                <tr>
                    <td valign="top" width="72">
                        <p align="center">
                            <span lang="UK">0</span>
                        </p>
                    </td>
                    <td valign="top" width="66">
                        <p align="center">
                            <span lang="UK">11000</span>
                        </p>
                    </td>
                    <td valign="top" width="69">
                        <p align="center">
                            <span lang="UK">5</span>
                        </p>
                    </td>
                    <td valign="top" width="70">
                        <p align="center">
                            <span lang="UK">01010</span>
                        </p>
                    </td>
                </tr>
                <tr>
                    <td valign="top" width="72">
                        <p align="center">
                            <span lang="UK">1</span>
                        </p>
                    </td>
                    <td valign="top" width="66">
                        <p align="center">
                            <span lang="UK">00011</span>
                        </p>
                    </td>
                    <td valign="top" width="69">
                        <p align="center">
                            <span lang="UK">6</span>
                        </p>
                    </td>
                    <td valign="top" width="70">
                        <p align="center">
                            <span lang="UK">01100</span>
                        </p>
                    </td>
                </tr>
                <tr>
                    <td valign="top" width="72">
                        <p align="center">
                            <span lang="UK">2</span>
                        </p>
                    </td>
                    <td valign="top" width="66">
                        <p align="center">
                            <span lang="UK">00101</span>
                        </p>
                    </td>
                    <td valign="top" width="69">
                        <p align="center">
                            <span lang="UK">7</span>
                        </p>
                    </td>
                    <td valign="top" width="70">
                        <p align="center">
                            <span lang="UK">10001</span>
                        </p>
                    </td>
                </tr>
                <tr>
                    <td valign="top" width="72">
                        <p align="center">
                            <span lang="UK">3</span>
                        </p>
                    </td>
                    <td valign="top" width="66">
                        <p align="center">
                            <span lang="UK">00110</span>
                        </p>
                    </td>
                    <td valign="top" width="69">
                        <p align="center">
                            <span lang="UK">8</span>
                        </p>
                    </td>
                    <td valign="top" width="70">
                        <p align="center">
                            <span lang="UK">10010</span>
                        </p>
                    </td>
                </tr>
                <tr>
                    <td valign="top" width="72">
                        <p align="center">
                            <span lang="UK">4</span>
                        </p>
                    </td>
                    <td valign="top" width="66">
                        <p align="center">
                            <span lang="UK">01001</span>
                        </p>
                    </td>
                    <td valign="top" width="69">
                        <p align="center">
                            <span lang="UK">9</span>
                        </p>
                    </td>
                    <td valign="top" width="70">
                        <p align="center">
                            <span lang="UK">10100</span>
                        </p>
                    </td>
                </tr>
            </table>
        </div>
        <p>
            <span lang="UK">
                <o:p>&nbsp;</o:p>
            </span>
        </p>
        <p>
            <span lang="UK">Решта всіх можливих комбінацій, в яких число одиниць не рівне двом, є забороненою.</span>
        </p>
        <p>
            <span lang="UK">Також як і всі коди на основі тетради “8421”, останній код належить до групи кодів, що володіють так званими 
                діагностичними можливостями: Якщо відомо, що деяка комбінація повинна зображати десяткову цифру, але потрапляє в область 
                заборонених, то це означає, що відбулося спотворення інформації. Це властивість кода активно використовується в апаратурі
                ЕОМ.</span>
        </p>
    </div>
    <p id="EOMZnak">&nbsp;</p>
    <br />
    <div>
        <h3 class="text-center"><span lang="UK">Кодування чисел в ЕОМ зі знаком</span></h3>
        <p>
            Як вже вказувалося вище, практично всі сучасні цифрові ЕОМ в якості основної використовують двійкову систему числення. А всі 
            арифметичні операції над двійковими числами можна звести до двох елементарних - складанню і зсуву двійкових кодів, що зображають
            числа. Це дозволяє технічно реалізувати чотири дії арифметики в одному пристрої, що називається арифметико-логічним (АЛП), 
            використовуючи одні і ті ж електричні схеми.
        </p>
        <p>При виконанні арифметичних операцій в ЕОМ застосовують прямий, зворотний і доповнюючий коди.</p>
        <p>
            Як вже зазначалось вище, кодом називають такий запис числа, який відрізняється від природного і загальноприйнятого. В математиці 
            природною формою запису числа є запис, при якому безпосередньо перед старшою значущою цифрою числа поміщається знак плюс (+) або 
            мінус (-), а довжина запису визначається величиною числа (інакше, кількість символів, використаних для запису різних чисел, як 
            правило, не збігається). У ЕОМ це не так. Однією з найважливіших характеристик будь-якої ЕОМ є довжина слова в ній. Довжина слова 
            визначається кількістю двійкових розрядів слова.
        </p>
        <p>Тому в ЕОМ, незалежно від величини числа, його код завжди має фіксовану кількість двійкових цифр.</p>
        <p>
            Окрім цього, в двійковому алфавіті немає ніяких символів, окрім цифр 0 і 1, і необхідні нові правила для вказування знаку числа.
            Суть цих правил зводиться до того, що знак плюс зображається цифрою 0, знак мінус - цифрою 1, а цифра, що зображає знак завжди
            ставиться попереду в запису числа.
        </p>
        <p>
            Зверніть увагу, що код числа завжди містить зображення його знаку, на відміну від математичного запису, який дозволяє опускати
            знак плюс при зображенні позитивного числа.
        </p>
        <p>Так, код 011101, згідно з цим правилом, зображає позитивне (найлівіша цифра - 0) двійкове число 11101.</p>
        <p>
            Для того, щоб простіше, і, отже, економічно реалізувати пристрій АЛП застосовує декілька різних кодів чисел. 
            Це пов'язано з тим, що різні операції в ЕОМ простіше реалізуються в різних кодах.
        </p>
        <p>При виконанні арифметичних операцій в ЕОМ застосовують прямий, зворотний і додатковий коди чисел.</p>
        <p>
            Прямий код двійкового числа - це саме двійкове число, в якому всі цифри, що зображають його значення, 
            записуються як в математичному запису, а знак числа записується двійковою цифрою.
        </p>
        <p>
            При цьому ніякого символу, що відокремлює цифру знака від цифри старшого розряду не допускається. У таких випадках говорять про те,
            що призначення цифри в коді визначається його позицією.
        </p>
        <p style="tab-stops: list 54.0pt">
            <span lang="UK">Приклади. <span>&nbsp;</span>(У прикладах коди зображаються вісьма цифрами)</span>
        </p>
        <p style="tab-stops: list 54.0pt">
            <span lang="UK">
                <o:p>&nbsp;</o:p>
            </span>
        </p>
        <div align="center">
            <table border="1" cellpadding="0" cellspacing="0" class="MsoNormalTable">
                <tr>
                    <td colspan="2" valign="top" width="158">
                        <p class="auto-style12">
                            <span lang="UK">Число</span>
                        </p>
                    </td>
                    <td valign="top" width="99">
                        <p class="auto-style12">
                            <span lang="UK">Код</span>
                        </p>
                    </td>
                </tr>
                <tr>
                    <td valign="top" width="94">
                        <p class="auto-style12">
                            <span lang="UK">+1101</span>
                        </p>
                    </td>
                    <td valign="top" width="63">
                        <p class="auto-style12">
                            <span lang="UK">+13</span>
                        </p>
                    </td>
                    <td valign="top" width="99">
                        <p class="auto-style12">
                            <span lang="UK">0000 1101</span>
                        </p>
                    </td>
                </tr>
                <tr>
                    <td valign="top" width="94">
                        <p class="auto-style12">
                            <span lang="UK">+1011101</span>
                        </p>
                    </td>
                    <td valign="top" width="63">
                        <p class="auto-style12">
                            <span lang="UK">+93</span>
                        </p>
                    </td>
                    <td valign="top" width="99">
                        <p class="auto-style12">
                            <span lang="UK">0101 1101</span>
                        </p>
                    </td>
                </tr>
                <tr>
                    <td valign="top" width="94">
                        <p class="auto-style12">
                            <span lang="UK">–1101</span>
                        </p>
                    </td>
                    <td valign="top" width="63">
                        <p class="auto-style12">
                            <span lang="UK">–13</span>
                        </p>
                    </td>
                    <td valign="top" width="99">
                        <p class="auto-style12">
                            <span lang="UK">1000 1101</span>
                        </p>
                    </td>
                </tr>
            </table>
        </div>
        <p>
            <span lang="UK">
                <o:p>&nbsp;</o:p>
            </span>
        </p>
        <p>
            Отже, прямий код майже не відрізняється від прийнятого в математиці: для виявлення абсолютної величини
            (модуля) числа, треба відкинути цифру, що позначає його знак.
        </p>
        <p>
            Проте стосовно операцій складання і віднімання такий код незручний: правила обчислювань для позитивних і негативних 
            чисел розрізняються. Щоб прояснити цю обставину, представимо що довжина коду (слова) дорівнює 5 двійковим розрядам і
            запишемо декілька чисел в нім:
        </p>
        <p>
            <span lang="UK">
                <o:p>&nbsp;</o:p>
            </span>
        </p>
        <div align="center">
            <table border="1" cellpadding="0" cellspacing="0" class="MsoNormalTable">
                <tr>
                    <td valign="top" width="70">
                        <p class="auto-style12">
                            <span lang="UK">Число</span>
                        </p>
                    </td>
                    <td valign="top" width="62">
                        <p class="auto-style12">
                            <span lang="UK">-2</span>
                        </p>
                    </td>
                    <td valign="top" width="62">
                        <p class="auto-style12">
                            <span lang="UK">-1</span>
                        </p>
                    </td>
                    <td valign="top" width="62">
                        <p class="auto-style12">
                            <span lang="UK">0</span>
                        </p>
                    </td>
                    <td valign="top" width="62">
                        <p class="auto-style12">
                            <span lang="UK">+1</span>
                        </p>
                    </td>
                    <td valign="top" width="62">
                        <p class="auto-style12">
                            <span lang="UK">+2</span>
                        </p>
                    </td>
                </tr>
                <tr>
                    <td valign="top" width="70">
                        <p class="auto-style12">
                            <span lang="UK">Код</span>
                        </p>
                    </td>
                    <td valign="top" width="62">
                        <p class="auto-style12">
                            <span lang="UK">10010</span>
                        </p>
                    </td>
                    <td valign="top" width="62">
                        <p class="auto-style12">
                            <span lang="UK">10001</span>
                        </p>
                    </td>
                    <td valign="top" width="62">
                        <p class="auto-style12">
                            <span lang="UK">00000</span>
                        </p>
                    </td>
                    <td valign="top" width="62">
                        <p class="auto-style12">
                            <span lang="UK">00001</span>
                        </p>
                    </td>
                    <td valign="top" width="62">
                        <p>
                            <span lang="UK">00010</span>
                        </p>
                    </td>
                </tr>
            </table>
        </div>
        <p>
            <span lang="UK">
                <o:p>&nbsp;</o:p>
            </span>
        </p>
        <p>
            Як видно з прикладу, при використанні прямого коду під час переходу значення числа через нуль, відбувається стрибкоподібна зміна коду.
            Тому побудова пристрою, в якому повинні виконуватися такі дії арифметики, як складання чисел з різними знаками і віднімання, стає 
            складним завданням.
        </p>
        <p>Прямий код використовується при зберіганні чисел в пам'яті ЕОМ, а також при виконанні операцій множення і ділення.</p>
        <p>
            Щоб побудувати простіші схеми АЛП запропоновані і активно застосовуються <b>зворотний</b> і <b>доповняльні</b>
            коди.
        </p>
        <p>
            <b>Зворотний</b> код позитивного числа збігається з прямим, а при запису негативного числа всі його цифри, окрім цифри, що зображає знак
            числа, замінюються на протилежні ( 0 замінюється на 1, а 1 - на 0).
        </p>
        <p>
            <span lang="UK">Приклади запису. ( У прикладах коди зображаються вісьма цифрами )</span>
        </p>
        <p>
            <o:p>&nbsp;</o:p>
        </p>
        <div align="center">
            <table border="1" cellpadding="0" cellspacing="0" class="MsoNormalTable">
                <tr>
                    <td colspan="2" valign="top" width="257">
                        <p class="auto-style12">
                            <span lang="UK">Число, що зображається<span>|змальовує|</span></span>
                        </p>
                    </td>
                    <td valign="top" width="100">
                        <p class="auto-style12">
                            <span lang="UK">Код</span>
                        </p>
                    </td>
                </tr>
                <tr>
                    <td valign="top" width="119">
                        <p class="auto-style12">
                            <span lang="UK">+1101</span>
                        </p>
                    </td>
                    <td valign="top" width="137">
                        <p class="auto-style12">
                            <span lang="UK">+13</span>
                        </p>
                    </td>
                    <td valign="top" width="100">
                        <p class="auto-style12">
                            <span lang="UK">0000 1101
                                
                            </span>
                        </p>
                    </td>
                </tr>
                <tr>
                    <td valign="top" width="119">
                        <p class="auto-style12">
                            <span lang="UK">+1011101</span>
                        </p>
                    </td>
                    <td valign="top" width="137">
                        <p class="auto-style12">
                            <span lang="UK">+93</span>
                        </p>
                    </td>
                    <td valign="top" width="100">
                        <p class="auto-style12">
                            <span lang="UK">0101 1101</span>
                        </p>
                    </td>
                </tr>
                <tr>
                    <td valign="top" width="119">
                        <p class="auto-style12">
                            <span lang="UK">–1101</span>
                        </p>
                    </td>
                    <td valign="top" width="137">
                        <p class="auto-style12">
                            <span lang="UK">-13</span>
                        </p>
                    </td>
                    <td valign="top" width="100">
                        <p class="auto-style12">
                            <span lang="UK">1111 0010
                                
                            </span>
                        </p>
                    </td>
                </tr>
            </table>
        </div>
        <p>
            <span lang="UK">
                <o:p>&nbsp;</o:p>
            </span>
        </p>
        <p>
            Зрівняння цього запису з прямим кодом показує, що безпосередньо відновити абсолютну величину модуль) негативного числа непросто.
            Проте, в цьому коді як до позитивних, так і до негативних чисел можна застосовувати одні і ті ж правила, а операцію А-В можна 
            замінити операцією складання чисел А і “мінус В”.
        </p>
        <p>Подивимося, як представляється послідовні числа під час переходу через нуль:</p>
        <p>&nbsp;</p>
        <div align="center">
            <table border="1" cellpadding="0" cellspacing="0" class="MsoNormalTable">
                <tr>
                    <td valign="top" width="70">
                        <p class="auto-style12">
                            <span lang="UK">Число</span>
                        </p>
                    </td>
                    <td valign="top" width="62">
                        <p class="auto-style12">
                            <span lang="UK">-2</span>
                        </p>
                    </td>
                    <td valign="top" width="62">
                        <p class="auto-style12">
                            <span lang="UK">-1</span>
                        </p>
                    </td>
                    <td valign="top" width="62">
                        <p class="auto-style12">
                            <span lang="UK">0</span>
                        </p>
                    </td>
                    <td valign="top" width="62">
                        <p class="auto-style12">
                            <span lang="UK">+1</span>
                        </p>
                    </td>
                    <td valign="top" width="62">
                        <p class="auto-style12">
                            <span lang="UK">+2</span>
                        </p>
                    </td>
                </tr>
                <tr>
                    <td valign="top" width="70">
                        <p class="auto-style12">
                            <span lang="UK">Код</span>
                        </p>
                    </td>
                    <td valign="top" width="62">
                        <p class="auto-style12">
                            <span lang="UK">11101</span>
                        </p>
                    </td>
                    <td valign="top" width="62">
                        <p class="auto-style12">
                            <span lang="UK">11110</span>
                        </p>
                    </td>
                    <td valign="top" width="62">
                        <p class="auto-style12">
                            <span lang="UK">00000</span>
                        </p>
                    </td>
                    <td valign="top" width="62">
                        <p class="auto-style12">
                            <span lang="UK">00001</span>
                        </p>
                    </td>
                    <td valign="top" width="62">
                        <p class="auto-style12">
                            <span lang="UK">00010</span>
                        </p>
                    </td>
                </tr>
            </table>
        </div>
        <p>&nbsp;</p>
        <p>
            З прикладу видно, що перехід через нуль також не виглядає природним. Відмічена особливість спричиняє за собою і наступне - в 
            зворотному коді нуль зображають дві комбінації, що розрізняються: 00000 +0) і 11111 -0), що ускладнює апаратну реалізацію 
            операцій.
        </p>
        <p>
            Для відновлення прямого коду негативного числа із зворотного треба всі цифри, окрім цифри, що зображає знак числа, замінити 
            на протилежні.
        </p>
        <p>
            <b>Додатковий</b> код позитивного числа збігається з прямим, а код негативного числа утворюється як результат збільшення на 1 його 
            зворотного коду.
        </p>
        <p>Іншими словами, процес побудови додаткового коду негативного числа можна розбити на два етапи - побудувати зворотний код, а потім з нього побудувати додатковий.</p>
        <p>
            <span lang="UK">Проілюструємо це на прикладі.</span>
        </p>
        <p>
            <span lang="UK">Число <span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>- 101101</span>
        </p>
        <p>
            <span lang="UK">Прямий код <span>&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; </span>1101101</span>
        </p>
        <p>
            <span lang="UK">Зворотний код <span>&nbsp;&nbsp; </span>1010010</span>
        </p>
        <p>
            <span lang="UK"><span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; </span>+ 1</span>
        </p>
        <p>
            <span lang="UK">Додатковий код<span>&nbsp; </span>1010011</span>
        </p>
        <p>
            <span lang="UK">Приклади запису.</span>
        </p>
        <p>
            <span lang="UK">
                <o:p>&nbsp;</o:p>
            </span>
        </p>
        <div align="center">
            <table border="1" cellpadding="0" cellspacing="0" class="MsoNormalTable">
                <tr>
                    <td colspan="2" valign="top" width="257">
                        <p class="auto-style12">
                            <span lang="UK">Число, що зображається</span>
                        </p>
                    </td>
                    <td valign="top" width="100">
                        <p class="auto-style12">
                            <span lang="UK">Код</span>
                        </p>
                    </td>
                </tr>
                <tr>
                    <td valign="top" width="119">
                        <p class="auto-style12">
                            <span lang="UK">+1101</span>
                        </p>
                    </td>
                    <td valign="top" width="137">
                        <p class="auto-style12">
                            <span lang="UK">+13</span>
                        </p>
                    </td>
                    <td valign="top" width="100">
                        <p class="auto-style12">
                            <span lang="UK">0000 1101
                                
                            </span>
                        </p>
                    </td>
                </tr>
                <tr>
                    <td valign="top" width="119">
                        <p class="auto-style12">
                            <span lang="UK">+1011101</span>
                        </p>
                    </td>
                    <td valign="top" width="137">
                        <p class="auto-style12">
                            <span lang="UK">+93</span>
                        </p>
                    </td>
                    <td valign="top" width="100">
                        <p class="auto-style12">
                            <span lang="UK">0101 1101</span>
                        </p>
                    </td>
                </tr>
                <tr>
                    <td valign="top" width="119">
                        <p class="auto-style12">
                            <span lang="UK">–1101</span>
                        </p>
                    </td>
                    <td valign="top" width="137">
                        <p class="auto-style12">
                            <span lang="UK">-13</span>
                        </p>
                    </td>
                    <td valign="top" width="100">
                        <p class="auto-style12">
                            <span lang="UK">1111 0011
                                
                            </span>
                        </p>
                    </td>
                </tr>
            </table>
        </div>
        <p>
            <span lang="UK">
                <o:p>&nbsp;</o:p>
            </span>
        </p>
        <p>
            Для відновлення прямого коду числа з додаткового потрібно повністю повторити (і саме в тому ж порядку!) дії, які 
            використовувалися при перекладі з прямого в додатковий код: спочатку всі цифри, окрім цифри, що зображає знак, 
            замінити на протилежні, а потім додати 1.
        </p>
        <p>
            Основною перевагою додаткового коду є те, що в нім однаково реалізуються операції складання чисел різних знаків 
            (алгебраїчне додавання), а операцію віднімання можна звести до операції додавання заміною знаку від'ємника на зворотний.
            Пригадавши, що в пам'яті ЕОМ числа зберігаються в прямому коді, стане ясно, що заміна знаку від'ємника може бути виконана
            надзвичайно просто заміною знаку числа в прямому коді на зворотний). Саме з вказаної причини додатковий код застосовується
            частіше зворотного.
        </p>
    </div>
    <p id="DigitInEOM">&nbsp;</p>
    <br />
    <div>
        <h3 align="center">Представлення чисел в ЕОМ</h3>
        <p>У ЕОМ застосовується частіше всього одна з двох форм представлення чисел:</p>
        <p>
            <i><span lang="UK">з фіксованою комою;</span></i>
        </p>
        <p>
            <i><span lang="UK">з плаваючою комою.</span></i><span lang="UK"></span>
        </p>
        <p>
            Числа представляються в машинному слові, що має для конкретної ЕОМ завжди фіксоване число розрядів бітів). Це число є одній 
            з найважливіших характеристик будь-якої ЕОМ і називається розрядністю машини. Різні розряди слова при кодуванні команд і
            даних мають неспівпадаючі функціональні призначення. При розгляді їх функцій використовують також термін “розрядна сітка машини”.
        </p>
        <p>&nbsp;</p>
        <h4 align="center">Числа з фіксованою комою</h4>
        <p>
            У числах з фіксованою комою положення коми в розрядній сітці машини заздалегідь обумовлене для всіх чисел раз і назавжди. 
            Тому в коді числа кома ніяк не позначається. У більшості машин місце коми мається на увазі після останньої цифри праворуч
            від неї). А такі числа - цілі. При необхідності представляти дробові числа з використанням форми з фіксованою комою програміст 
            повинен алгоритмічними засобами забезпечити використання множника, що виконує функцію масштабування масштабного множника).
        </p>
        <p>Визначимо діапазон уявних чисел.</p>
        <p>
            Спочатку розглянемо приклад, в якому покладемо, що ми маємо справу з десятковою а не двійковою) системою числення, і що для запису
            абсолютної величини числа без урахування його знаку) в нашому розпорядженні є шість розрядів.
        </p>
        <p>
            Тоді максимальне по абсолютній величині) ціле дорівнюватиме 999999 або інакше 10**6-1. А оскільки в розрядній сітці машини для запису
            знаку числа завжди передбачається один розряд, то для нашого випадку діапазон уявних чисел складе всі цілі числа, починаючи від
        </p>
        <p>-999999 до +999999, а кількість різних цілих - 2*10**6-1.</p>
        <p>
            У двійкових ЕОМ їх розрядність визначається числом розрядів в слові. Так, якщо розрядність деякої ЕОМ дорівнює 16, то один розряд 
            відводиться для кодування знаку числа, а останні 15 - для запису його величини. При цьому максимальне по модулю ціле значення в 
            машинному слові дорівнюватиме 2**15-1, що складе 32767. Подивитеся діапазон цілих integer) чисел в мові програмування Поскаль 
            для ПЕВМ типу IMB РС).
        </p>
        <p>
            У загальному випадку, якщо розрядність машини складає N бітів. Тоді максимальне по абсолютній величині ціле число, яке можна в ній
            записати, буде рівне 2**N-1)-1.
        </p>
        <p>&nbsp;</p>
        <h4 align="center">Особливості арифметичних операцій над числами</h4>
        <p>
            Оскільки якщо положення коми фіксоване після останньої цифри числа) числа з фіксованою комою - цілі, вони представляються в машині точно. 
            А тому операції складання, віднімання і множення коректні завжди: як операнди, так і результат - цілі числа.
        </p>
        <p>
            Єдиною особливістю, про яку необхідно згадати, є ситуація, яка носить назву “Переповнювання розрядної сітки” FixedOverflow - 
            переповнювання з фіксованою комою) і яка виникає, коли результат множення перевищує максимально можливе для даної розрядності 
            значення. Ця ситуація вважається в ЕОМ винятковій. При її виникненні записати значення, що вийшло, неможливо. В цьому випадку 
            встановлюється в “1” спеціальний прапор переповнювання, старший біт результату біт перенесення із старшого розряду слова) 
            втрачається, а як результат видається спотворене число. Описувана ситуація не вважається за критичну, і після закінчення даної 
            операції обчислення продовжуються. Таким чином, програміст сам повинен поклопотатися про коректну реакцію на виникнення 
            переповнювання, використовуючи для виявлення вказаної ситуації вміст прапора переповнювання.
        </p>
        <p>
            Інакше йде справа з операцією ділення. При діленні цілого числа на інше ціле результат зовсім не обов'язково має бути цілим.
            А оскільки і результат має бути представлений цілим числом, виникає колізія, яку проілюструємо прикладом:
        </p>
        <p class="auto-style13">
            <span lang="UK">5 / 2 = 2</span>
        </p>
        <p class="auto-style13">
            <span lang="UK">5 / 3 = 1</span>
        </p>
        <p class="auto-style13">
            <span lang="UK">5 / 4 = 1</span>
        </p>
        <p class="auto-style13">
            <span lang="UK">5 / 5 = 1</span>
        </p>
        <p class="auto-style13">
            <span lang="UK">5 / 6 = 0</span>
        </p>
        <p>
            І на відміну від множення, з позицій ЕОМ ніяких помилок при цьому не немає, і ніякі прапори не встановлюються, а вказані
            особливості ділення цілих повинні враховуватися програмістом самостійно. У ряді мов програмування ці особливості
            відбиваються набором допустимих арифметичних операцій. Так, наприклад, в мові Поскаль для цілих integer) визначено дві операції:
        </p>
        <p>div - цілочисельне ділення, при якому як результат представляється ціла частина приватного.</p>
        <p>
            mod - залишок від ділення цілих ділення по модулю), при якому як результат представляється цілий залишок від ділення, по
            абсолютній величині менший дільника.
        </p>
        <p>&nbsp;</p>
        <h4 align="center">Подання чисел в ЕОМ з плаваючою комою. </h4>
        <p>Для представлення інформації в ЦОМ можна використовувати 2 способи, або 2 форми представлення чисел.</p>
        <p>
            <span class="auto-style14">Природна форма</span> представлення чисел полягає в тому, що числа вводяться у вигляді цілої та 
            дробової частини. 
            При цьому положення коми фіксовано. Природна форма представлення чисел використовується в машинах, де не потрібна 
            висока швидкодія, так як організація виконання арифметичних дій в даному випадку дуже спрощена. Для введення чисел в
            ЦОМ з фіксованою комою використовують масштабні коефіцієнти.
        </p>
        <p>Приклад 1.</p>
        <p>
            Нехай в ЕОМ числа представляються у вигляді 10 розрядів, а кома фіксована так, що усі числа за абсолютним
            значенням менше 1. Тому, якщо вводити задані числа у таку машину, до них необхідно знайти масштабний коефіцієнт М:
        </p>
        <p>
            <span lang="UK">а) 0,0000101010111= 0,010101011*М, де М=10<sup>-11</sup><sub>(2)</sub>=2<sup>-3</sup><sub>(10)</sub>;</span>
        </p>
        <p>
            <span lang="UK">б) 100110,1010=0,1001101010*М, де М=10<sup>+110</sup><sub>(2)</sub>=2<sup>+6</sup><sub>(10)</sub>;</span>
        </p>
        <p>
            <span lang="UK">в) 1001010011=0,1001010011*М, де М=10<sup>+1010</sup><sub>(2)</sub>=2<sup>+10</sup><sub>(10)</sub>.</span>
        </p>
        <p>
            <span lang="UK">Недоліком природної форми подання чисел в ЕОМ є :</span>
        </p>
        <p>
            <![if !supportLists]><span lang="UK">-<span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span><![endif]><span lang="UK">необхідність масштабірування (процес не автоматизований);</span>
        </p>
        <p>
            <![if !supportLists]><span lang="UK">-<span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span><![endif]><span lang="UK">обмежена точність обчислень;</span>
        </p>
        <p>
            <![if !supportLists]><span lang="UK">-<span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span><![endif]><span lang="UK">малий діапазон представлення чисел.</span>
        </p>
        <p>
            <u><span lang="UK">Нормальна форма</span></u><span lang="UK"> представлення чисел полягає в тому, що числа в ЕОМ вводяться у напівлогарифмічному вигляді та складаються з двох частин – мантиси числа та порядку числа.
                
            </span>
        </p>
        <p>
            <span lang="UK">Мантиса числа позначається буквою <i>m</i>, за абсолютним значенням вона менш 1:
                
            </span>
        </p>
        <p align="center">
            <span lang="UK">[m] &lt;1.</span>
        </p>
        <p>
            <span lang="UK">Порядок числа позначається буквою <i>p</i> та є цілим числом.</span>
        </p>
        <p>
            <span lang="UK">Число А у системі числення <i>q</i> в напівлогарифмічному вигляді записується так:</span>
        </p>
        <p align="center">
            <span lang="UK">A=mp<sup>q</sup>.</span>
        </p>
        <p>
            <span lang="UK">Напівлогарифмічною ця форма називається тому, що тільки група порядку p<sup>q</sup> представляється 
                у<sup> </sup><span>&nbsp;</span>логарифмічній формі. Розрядна сітка ЦОМ для форми представлення чисел з плаваючою
                комою (рис.1) містить дві групи цифр – для мантиси та для порядку.</span>
        </p>
        <p>
            <span lang="UK">Положення коми у числі залежить від порядку <i>p</i>, тому ЦОМ, які використовують такий вид представлення
                чисел, отримали назву машин з плаваючою комою, яка переміщується по запису числа. Наприклад, число 1010010<sub>(2) </sub>
                у нормальній формі буде записано таким чином: 0,1010010*10<sup>111</sup>, та у розрядній сітці машини буде мати вигляд,
                як показано на рисунку, де порядок<i> p</i> =111<sub>(2) </sub>=7<sub>(10)</sub>.</span>
        </p>
        <p>
            <o:p>&nbsp;</o:p>
        </p>
        <p align="center">
            <img src="image/7.png" />
        </p>
        <p>&nbsp;</p>
        <p>
            Якщо число представлено з фіксованою комою, але його необхідно записати з плаваючою комою, то необхідно в розрядну сітку 
            мантиси записати мантису числа, заповнюючи лишні молодші розряди нулями, а потім порядок числа зсунути  вліво, а лишні 
            старші розряди заповнити нулями.
        </p>
        <p>
            <span lang="UK">Приклад 2:</span>
        </p>
        <p>
            <span lang="UK">Якщо число<i> а</i>=110010, а розрядна сітка машини має 6 розрядів для мантиси та 6 розрядів для порядку, то число <i>а</i> запишеться таким чином:</span>
        </p>
        <p>
            &nbsp;&nbsp;
        </p>
        <p align="center">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<u><sub><span lang="UK">знак</span></sub></u><sub><span lang="UK"><span>&nbsp;&nbsp; </span><u><span>&nbsp;</span>мантиса<span>&nbsp; </span><i>m</i> </u><span>&nbsp;&nbsp;&nbsp;</span><u>знак </u><span>&nbsp;&nbsp;</span><u>порядок <i>p</i></u></span></sub>
        </p>
        <p align="center">
            <span lang="UK">А=<span>&nbsp;&nbsp; </span>+<span>&nbsp;&nbsp;&nbsp; </span>110010<span>&nbsp;&nbsp;&nbsp; </span>+<span>&nbsp;&nbsp; </span>000100</span>
        </p>
        <p>
            <span lang="UK">
                <o:p>&nbsp;</o:p>
                &nbsp;
            </span>
        </p>
        <p>
            <span lang="UK">Приклади запису чисел в двійковій системі числення у формі з плаваючою комою, якщо вони задані в десятковій системі числення:</span>
        </p>
        <p>
            <span lang="UK">А = 1</span><span>3<sub>10</sub></span><span lang="UK"> = 1101<sub>2</sub></span>
        </p>
        <p>
            <span lang="EN-US">m = 0.1101; p = 0100; </span><span lang="UK">А = 0,1101*10<sup>0100</sup>;</span>
        </p>
        <p>
            <span lang="UK">В = 19,5</span><sub><span>10</span></sub><span lang="UK"> = 10011,1<sub>2</sub></span>
        </p>
        <p>
            <span lang="EN-US">m = 0.</span><span lang="UK">100111</span><span lang="EN-US">; p = 010</span><span lang="UK">1</span><span lang="EN-US">; </span><span lang="UK">А = 0,100111*10<sup>0101</sup>.</span>
        </p>
        <p>&nbsp;</p>
        <h4 align="center">Нормалізація числа.</h4>
        <p>Всі числа в ЕОМ записуються у нормалізованому вигляді.</p>
        <p>
            Число вважається нормалізованим, якщо старша цифра не дорівнює нулю; якщо старша цифра нуль – число ненормалізоване. 
            При нормалізації числа, слід здійснити зсув мантиси числа вліво на необхідну кількість
            нулів, а порядок зменшити на кількість зсунутих нулів.
        </p>
        <p>Приклад ненормалізованого числа: x = 0.011001*10-11. Приклад нормалізованого числа: x = 0.110010*10-100.</p>
        <p>
            Вся обробка чисел у ЦОМ здійснюється автоматично, але так як для виконання визначених дій потрібні окремі операції 
            з мантисами та з порядками, а це викликає ускладнення цифрових пристроїв та зменшує швидкодію виконання операцій.
            У той же час цей спосіб при заданої точності забезпечує більший діапазон представлення чисел, ніж природній спосіб.
        </p>
        <p>&nbsp;</p>
        <p>
            <span lang="UK">Приклади з нормалізації чисел:</span>
        </p>
        <p>
            <span lang="UK">Здійснити зсув та нормалізацію чисел:</span>
        </p>
        <p>
            <span>а) 0, 00</span><span lang="UK">01101</span><span>*10<sup>1</sup></span><sup><span lang="UK">1</span><span>0</span></sup><span>;</span>
        </p>
        <p>
            <span>б) 0,0</span><span lang="UK">0</span><span>11010*10<sup>-0</sup></span><sup><span lang="UK">10</span></sup><span>;</span>
        </p>
        <p>
            <span>в) 0,001001*10<sup>01</sup></span><sup><span lang="UK">1</span></sup><span>.</span>
        </p>
        <p>
            <span lang="UK">
                <o:p>&nbsp;</o:p>
                &nbsp;
            </span>
        </p>
        <p>
            <span lang="UK">Розв’язок:</span>
        </p>
        <p>
            <span lang="UK">а)<span>&nbsp; </span></span><span lang="EN-US">m = 0.0001101; p = 110<sub>2</sub> = 6<sub>10</sub>.</span>
        </p>
        <p>
            <span lang="EN-US"><span>&nbsp;&nbsp;&nbsp;&nbsp; </span>m<sub>n</sub>= 0.1101000; p<sub>n </sub>= 6<sub>10</sub>-3<sub>10 </sub>=3<sub>10</sub> =011<sub>2</sub>;</span>
        </p>
        <p>
            <span lang="UK"><span>&nbsp;&nbsp;&nbsp;&nbsp; </span>відповідь: 0,1101000*10<sup>011</sup>.</span>
        </p>
        <p>
            <span lang="UK">
                <o:p>&nbsp;</o:p>
            </span>
        </p>
        <p>
            <span lang="UK">б)<span>&nbsp; </span></span><span lang="EN-US">m = 0.001101</span><span lang="UK">0</span><span lang="EN-US">; p = </span><span lang="UK">-010</span><sub><span lang="EN-US">2</span></sub><span lang="EN-US"> = </span><span lang="UK">2</span><sub><span lang="EN-US">10</span></sub><span lang="EN-US">.</span>
        </p>
        <p>
            <span lang="EN-US"><span>&nbsp;&nbsp;&nbsp;&nbsp; </span>m<sub>n</sub>= 0.1101000; p<sub>n </sub>= </span><span lang="UK">-2</span><sub><span lang="EN-US">10</span></sub><span lang="EN-US">-</span><span lang="UK">2</span><sub><span lang="EN-US">10 </span></sub><span lang="EN-US">=</span><span lang="UK">-4</span><sub><span lang="EN-US">10</span></sub><span lang="EN-US"> =</span><span lang="UK">-100</span><sub><span lang="EN-US">2</span></sub><span lang="EN-US">;</span>
        </p>
        <p>
            <span lang="UK"><span>&nbsp;&nbsp;&nbsp;&nbsp; </span>відповідь: 0,1101000*10<sup>-100</sup>.</span>
        </p>
        <p>
            <span lang="UK">
                <o:p>&nbsp;</o:p>
            </span>
        </p>
        <p>
            <span lang="UK">в)<span>&nbsp; </span></span><span lang="EN-US">m = 0.00</span><span lang="UK">1001</span><span lang="EN-US">; 
                p = </span><span lang="UK">011</span><sub><span lang="EN-US">2</span></sub><span lang="EN-US"> = </span><span lang="UK">3
                </span><sub><span lang="EN-US">10</span></sub><span lang="EN-US">.</span>
        </p>
        <p>
            <span lang="EN-US"><span>&nbsp;&nbsp;&nbsp;&nbsp; </span>m<sub>n</sub>= 0.</span><span lang="UK">100100</span><span lang="EN-US">; 
                p<sub>n </sub>= </span><span lang="UK">3</span><sub><span lang="EN-US">10</span></sub><span lang="EN-US">-</span><span lang="UK">
                    2</span><sub><span lang="EN-US">10 </span></sub><span lang="EN-US">=</span><span lang="UK">1</span><sub><span lang="EN-US">
                        10</span></sub><span lang="EN-US"> =0</span><span lang="UK">0</span><span lang="EN-US">1<sub>2</sub>;</span>
        </p>
        <p>
            <span lang="UK"><span>&nbsp;&nbsp;&nbsp;&nbsp; </span>відповідь: 0,100100*10<sup>001</sup>.</span>
        </p>
    </div>
    <p id="Arithmetic">&nbsp;</p>
    <br />
    <div>
        <h3 align="center">Арифметичні операції над двійковими числами</h3>
        <h4 align="center">Додавання двійкових чисел в оберненому та доповнюючому кодах. </h4>
        <p>
            Для здійснення операцій над числовою інформацією в ЕОМ можна використовувати будь яке кодування від’ємних чисел. Це призводить 
            до заміни операції віднімання до операцій додавання і до виконання різних елементарних дій та перетворень.
        </p>
        <p>Розглянемо порядок виконання операцій додавання чисел, представлених в машинах з фіксованою комою.</p>
        <p>
            При додаванні в оберненому коді розряди чисел додаються порозрядно справа наліво, а знакові розряди додаються як розряди цілих 
            чисел; одиниця переповнення, яка створюється у знаковому розряді додається до молодшого розряду результату. Остання дія носить 
            назву циклічного переносу.
        </p>
        <p>
            <span>Приклад:</span>
        </p>
        <p>
            <span lang="UK">Додавання двох чисел в оберненому коді:</span>
        </p>
        <p>
            <span lang="EN-US">x</span><span> = -0.10101;&nbsp;&nbsp;&nbsp; [</span><span lang="EN-US">x</span><span>]<sub>об</sub>. = 1.01010;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                
            </span>
        </p>
        <p>
            <span lang="EN-US">y</span><span> = -0.00101;&nbsp; [</span><span lang="EN-US">y</span><span>]<sub>об</sub>. = 1.11010;&nbsp;
                
            </span>
        </p>
        <p>
            <img src="image/6.png" height="140" />
        </p>
        <p>
            <span>[</span><span lang="EN-US">x</span><span>+</span><span lang="EN-US">y</span><span>]<sub>об.</sub>=1,11010; &nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;[</span><span lang="EN-US">x</span><span>+</span><span lang="EN-US">y</span><span>]<sub>пр.</sub>=1,00101.
                </span>
        </p>
        <p>
            <span lang="UK">Таким чином, в машині здійснюються такі мікро операції:</span>
        </p>
        <p>
            <![if !supportLists]><span lang="UK">1)<span>&nbsp;&nbsp;&nbsp; </span></span><![endif]><span lang="UK">створюється обернений код 
                першого доданку;</span>
        </p>
        <p>
            <![if !supportLists]><span lang="UK">2)<span>&nbsp;&nbsp;&nbsp; </span></span><![endif]><span lang="UK">створюється обернений код
                другого доданку;</span>
        </p>
        <p>
            <![if !supportLists]><span lang="UK">3)<span>&nbsp;&nbsp;&nbsp; </span></span><![endif]><span lang="UK">здійснюється порозрядне 
                додавання;</span>
        </p>
        <p>
            <![if !supportLists]><span lang="UK">4)<span>&nbsp;&nbsp;&nbsp; </span></span><![endif]><span lang="UK">враховується одиниця 
                переповнення – циклічний перенос;</span>
        </p>
        <p>
            <![if !supportLists]><span lang="UK">5)<span>&nbsp;&nbsp;&nbsp; </span></span><![endif]><span lang="UK">отриманий результат 
                перетворюється в прямий код.
                
            </span>
        </p>
        <p>
            <span lang="UK">Розглянемо ще 2 випадки: </span>
        </p>
        <p>
            <span lang="UK">а) </span><span lang="EN-US">x &gt;0, y &lt; </span><span lang="UK">0, x + y </span><span lang="EN-US">&gt;0;</span>
        </p>
        <p>
            <span lang="UK">б) </span><span lang="EN-US">x &lt; 0, y &gt; </span><span lang="UK">0, x + y </span><span lang="EN-US">&lt;
                0.</span><span lang="UK"></span>
        </p>
        <p>
            <span lang="UK">
                <o:p>&nbsp;</o:p>
            </span>
        </p>
        <p>
            <span lang="UK">а) Прямий код<span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp; </span>Обернений код</span>
        </p>
        <p>
            <span lang="EN-US"><span>&nbsp; </span>[x]</span><sub>
                <span lang="UK">пр.</span></sub><span lang="EN-US"> = 0.10101<span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>[x]</span><sub><span lang="UK">об.</span></sub><span lang="EN-US"> = 0.10101;</span>
        </p>
        <p>
            <span lang="UK">&nbsp;&nbsp;</span><span lang="EN-US">[y]</span>
            <sub><span lang="UK">пр.</span></sub><span lang="EN-US"> =1.01001<span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>[y]</span><sub><span lang="UK">об.</span></sub><span lang="EN-US"> = 1.10110;</span>
        </p>
        <p>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Додавання
        </p>
        <p>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <img src="image/8.png" height="110" />
        </p>
        <p>
            <span lang="UK">Перевіримо в десятковому коді еквівалентними цілими числами: </span><span lang="EN-US">x </span>
            <span lang="UK">= +21</span><span lang="EN-US">, y </span><span lang="UK">= -9, x + y = 12<sub>10</sub>= 01100<sub>2
            </sub>.</span>
        </p>
        <p>
            &nbsp;
        </p>
        <p>
            <span lang="UK">б) Прямий код<span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>Обернений код</span>
        </p>
        <p>
            <span lang="EN-US">&nbsp;[x]</span><sub>
                <span lang="UK">пр.</span></sub><span lang="EN-US"> = </span><span lang="UK">1,10101</span><span lang="EN-US">
                    <span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>[x]</span><sub><span lang="UK">об.</span></sub>
            <span lang="EN-US">= </span><span lang="UK">1,01010</span><span lang="EN-US">;</span>
        </p>
        <p>
            &nbsp; <span lang="EN-US">[y]</span><sub>
                <span lang="UK">пр.</span></sub><span lang="EN-US"> =</span><span lang="UK"> 0,01001</span><span lang="EN-US">
                    <span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>[y]</span><sub><span lang="UK">об.</span>
                    </sub><span lang="EN-US">= </span><span lang="UK">0,01001</span><span lang="EN-US">;</span>
        </p>
        <p class="text-left">
            <span lang="UK">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Додавання</span>
        </p>
        <p class="text-left">
            &nbsp;
            <img alt="" class="auto-style15" src="image/9.png" />
        </p>
        <p>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <img alt="" class="auto-style16" src="image/10.png" />
        </p>
        <p>
            <span lang="UK">Перевірка: </span><span lang="EN-US">x </span><span lang="UK">= -21</span><span lang="EN-US">, y </span>
            <span lang="UK">= +9, x + y = -12<sub>10</sub>= -01100<sub>2</sub>.</span>
        </p>
        <p>&nbsp;</p>
        <h4 align="center">Додавання чисел в доповнюючому коді.</h4>
        <p>
            При додаванні в доповнюючому коді значущі розряди додаються порозрядно, знакові розряди, як розряди цілих чисел, а 
            одиниця переповнення, яка утворилась в знаковому розряді губиться (не враховується).
        </p>
        <p>
            <span>
                <o:p>&nbsp;</o:p>
            </span>
        </p>
        <p>
            <span>Приклад:</span>
        </p>
        <p>
            <span lang="EN-US">x</span><span> =-26<sub>(10)</sub>;&nbsp;&nbsp; </span><span lang="EN-US">y</span><span> = -12(<sub>10)</sub>; </span>
        </p>
        <p>
            <span lang="UK">
                <o:p>&nbsp;</o:p>
            </span>
        </p>
        <p><span lang="UK">Прямий код <span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;</span>Обернений код <span>&nbsp; &nbsp;&nbsp;</span>Доповнюючий код</span></p>
        <p>
            <span>[</span><span lang="EN-US">x</span><span>]<sub>пр</sub>= 1,011010;&nbsp;&nbsp;&nbsp;&nbsp; [</span><span lang="EN-US">x</span><span>]<sub>об</sub>.= 1,100101;&nbsp; </span><span lang="UK">&nbsp;&nbsp;&nbsp;&nbsp;</span><span>[</span><span lang="EN-US">x</span><span>]<sub>доп</sub>.= 1,100110;</span>
        </p>
        <p>
            <span>[</span><span lang="EN-US">y</span><span>]<sub>пр</sub>.=1,001100;&nbsp;&nbsp;&nbsp;&nbsp; [</span><span lang="EN-US">y</span><span>]<sub> об</sub>.= 1,110011; </span><span lang="UK">&nbsp;&nbsp;&nbsp;&nbsp;</span><span>[</span><span lang="EN-US">y</span><span>]<sub>доп</sub>.=&nbsp; 1,110100.</span>
        </p>
        <p>
            <span lang="UK">
                <o:p>&nbsp;</o:p>
            </span>
        </p>
        <p>
            <span lang="UK">Операція додавання</span>
        </p>
        <p>
            <img src="image/11.png" />
        </p>
        <p>&nbsp;</p>
        <p>Отримання результату додавання в оберненому коді шляхом віднімання одиниці з молодшого розряду суми доповнюючого коду:</p>
        <p>
            <img src="image/12.png" />
        </p>
        <p><span>[</span><span lang="EN-US">x</span><span>+</span><span lang="EN-US">y</span><span>]</span><sub><span lang="UK">доп.</span></sub><span lang="UK"> = 1,011010;<span>&nbsp; </span></span><span>[</span><span lang="EN-US">x</span><span>+</span><span lang="EN-US">y</span><span>]</span><sub><span lang="UK">об.</span></sub><span lang="UK"> = 1,011001;<span>&nbsp; </span></span><span>[</span><span lang="EN-US">x</span><span>+</span><span lang="EN-US">y</span><span>]</span><sub><span lang="UK">пр. </span></sub><span lang="UK">= 1,100110.</span></p>
        <p>
            <span lang="UK">
                <o:p>&nbsp;</o:p>
            </span>
        </p>
        <p>
            <span lang="UK">Перевірка: </span><span>-26<sub>(10) </sub>+ (-12<sub>(10)</sub>) = -38<sub>(10) </sub>= -100110<sub>(2)</sub> </span><span lang="UK">.</span>
        </p>
        <p>
            <span lang="UK">Таким чином, в ЕОМ виконується такий набір мікро операцій:</span>
        </p>
        <p>
            <![if !supportLists]><span lang="UK">1)<span>&nbsp;&nbsp;&nbsp;&nbsp; </span></span><![endif]><span lang="UK">отримується доповнюючий код першого доданку;</span>
        </p>
        <p>
            <![if !supportLists]><span lang="UK">2)<span>&nbsp;&nbsp;&nbsp;&nbsp; </span></span><![endif]><span lang="UK">отримується доповнюючий код другого доданку;</span>
        </p>
        <p>
            <![if !supportLists]><span lang="UK">3)<span>&nbsp;&nbsp;&nbsp;&nbsp; </span></span><![endif]><span lang="UK">здійснюється порозрядне додавання;</span>
        </p>
        <p>
            <![if !supportLists]><span lang="UK">4)<span>&nbsp;&nbsp;&nbsp;&nbsp; </span></span><![endif]><span lang="UK">у випадку від’ємного результату, віднімається одиниця з молодшого розряду суми;</span>
        </p>
        <p>
            <![if !supportLists]><span lang="UK">5)<span>&nbsp;&nbsp;&nbsp;&nbsp; </span></span><![endif]><span lang="UK">здійснюється зворотне перетворення результату в прямий код.</span>
        </p>
        <p>
            <span lang="UK">Розглянемо приклади додавання для:</span>
        </p>
        <p>
            <span lang="UK">а) </span><span lang="EN-US">x &gt;0, y &lt; </span><span lang="UK">0, x + y </span><span lang="EN-US">&gt;0; </span>
        </p>
        <p>
            <span lang="UK">б) </span><span lang="EN-US">x &lt; 0, y &gt; </span><span lang="UK">0, x + y </span><span lang="EN-US">&lt; 0.</span>
        </p>
        <p>
            <o:p>&nbsp;&nbsp; </o:p>
        </p>
        <p>
            <span lang="UK">а) </span><span lang="EN-US">x</span><span> = +26<sub>(10)</sub>;&nbsp;&nbsp; </span><span lang="EN-US">y</span><span> = -12(<sub>10)</sub>; </span>
        </p>
        <p><span lang="UK">Прямий код <span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</span>Обернений код <span>&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</span>Доповнюючий код</span></p>
        <p>
            <span>[</span><span lang="EN-US">x</span><span>]<sub>пр</sub>= </span><span lang="UK">0</span><span>,011010;&nbsp;&nbsp;&nbsp;&nbsp; [</span><span lang="EN-US">x</span><span>]<sub>об</sub>.= </span><span lang="UK">0,011010</span><span>;&nbsp; </span><span lang="UK">&nbsp;&nbsp;&nbsp;&nbsp;</span><span>[</span><span lang="EN-US">x</span><span>]<sub>доп</sub>.= </span><span lang="UK">0,011010</span><span>;</span>
        </p>
        <p>
            <span>[</span><span lang="EN-US">y</span><span>]<sub>пр</sub>.=1,001100;&nbsp;&nbsp;&nbsp;&nbsp; [</span><span lang="EN-US">y</span><span>]<sub> об</sub>.= 1,110011; </span><span lang="UK">&nbsp;&nbsp;&nbsp;&nbsp;</span><span>[</span><span lang="EN-US">y</span><span>]<sub>доп</sub>.=&nbsp; 1,110100.</span>
        </p>
        <p>
            <span lang="UK">Операція додавання</span>
        </p>
        <p>
            <img alt="" src="image/13.png" />
        </p>
        <p>
            <span lang="EN-US">x + y &gt;0, </span><span lang="UK">тому </span><span>[</span><span lang="EN-US">x</span><span>+</span><span lang="EN-US">y</span><span>]<sub>доп.</sub>= [</span><span lang="EN-US">x</span><span>+</span><span lang="EN-US">y</span><span>]<sub>об.</sub>= [</span><span lang="EN-US">x</span><span>+</span><span lang="EN-US">y</span><span>]<sub>пр.</sub>=</span><span lang="UK">0,001110<sub>2</sub></span><span>.</span><span lang="UK"></span>
        </p>
        <p>
            <span lang="UK">Перевірка: +</span><span>26<sub>(10)</sub>+(-12<sub>(10)</sub>)=</span><span lang="UK">+14</span><sub><span>(10)</span></sub><span>= </span><span lang="UK">0,001110</span><sub><span>(2)</span></sub><span> </span><span lang="UK">.</span>
        </p>
        <p>
            <span lang="UK">
                <o:p>&nbsp;</o:p>
            </span>
        </p>
        <p>
            <span lang="UK">б) </span><span lang="EN-US">x</span><span> =</span><span lang="UK"> -</span><span>26<sub>(10)</sub>;&nbsp;&nbsp; </span><span lang="EN-US">y</span><span> = </span><span lang="UK">+</span><span>12(<sub>10)</sub>; </span>
        </p>
        <p>
            <span lang="UK">
                <o:p>&nbsp;</o:p>
            </span>
        </p>
        <h4><span lang="UK">Прямий код <span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;</span>Обернений код <span>&nbsp; &nbsp;&nbsp;</span>Доповнюючий код</span></h4>
        <p>
            <span>[</span><span lang="EN-US">x</span><span>]<sub>пр</sub>= </span><span lang="UK">1</span><span>,011010;&nbsp;&nbsp;&nbsp;&nbsp; [</span><span lang="EN-US">x</span><span>]<sub>об</sub>.= </span><span lang="UK">1,100101</span><span>;&nbsp; </span><span lang="UK">&nbsp;&nbsp;&nbsp;&nbsp;</span><span>[</span><span lang="EN-US">x</span><span>]<sub>доп</sub>.= </span><span lang="UK">1,100110</span><span>;</span>
        </p>
        <p>
            <span>[</span><span lang="EN-US">y</span><span>]<sub>пр</sub>.=</span><span lang="UK">0</span><span>,001100;&nbsp;&nbsp;&nbsp;&nbsp; [</span><span lang="EN-US">y</span><span>]<sub> об</sub>.= </span><span lang="UK">0,001100</span><span>; </span><span lang="UK">&nbsp;&nbsp;&nbsp;&nbsp;</span><span>[</span><span lang="EN-US">y</span><span>]<sub>доп</sub>.=&nbsp; </span><span lang="UK">0,001100</span><span>.</span>
        </p>
        <p align="center">
            <span lang="UK">
                <o:p>&nbsp;</o:p>
            </span>
        </p>
        <p>
            <span lang="UK">Операція додавання</span>
        </p>
        <p>
            <img src="image/14.png" />
        </p>
        <p>x + y < 0, тому, тому від суми необхідно відняти одиницю з молодшого розряду, а потім отримати прямий код числа.</p>
        <p>
            <img src="image/15.png" />
        </p>
        <p>
            <span>&nbsp;[</span><span lang="EN-US">x</span><span>+</span><span lang="EN-US">y</span><span>]<sub>пр.</sub>=</span><span lang="EN-US">1</span><span lang="UK">,001110<sub>2.</sub></span>
        </p>
        <p>
            <span lang="UK">Перевірка: </span><span lang="EN-US">-</span><span>26<sub>(10)</sub>+(</span><span lang="EN-US">+</span><span>12<sub>(10)</sub>)=</span><span lang="EN-US"> -</span><span lang="UK">14</span><sub><span>(10)</span></sub><span>= </span><span lang="EN-US">1</span><span lang="UK">,001110</span><sub><span>(2)</span></sub><span> </span><span lang="UK">.</span><span lang="EN-US"></span>
        </p>
        <p>
            <span lang="UK">
                <o:p>&nbsp;</o:p>
            </span>
        </p>
        <p>
            <span lang="UK">Додавання в прямому коді можна виконувати тільки для додатних чисел. Операція додавання здійснюється порозрядно починаючи з молодшого розряду.</span>
        </p>
        <p>&nbsp;</p>
        <h4 align="center">Додавання двійкових чисел з плаваючою комою </h4>
        <p><span lang="UK">В машинах з плаваючою комою дії додавання та віднімання над числами у напівлогарифмічному вигляді об’єднує слідуючи операції та перетворення: </span></p>
        <p><span lang="UK">1) порівнюються порядки чисел, якщо необхідно вони вирівнюються, а слід -<span>&nbsp; </span>мантиси чисел зсуваються; </span></p>
        <p><span lang="UK">2) виконується операція додавання над мантисами чисел, за правилами додавання чисел з фіксованою комою в оберненому або доповнюючому кодах;</span></p>
        <p><span lang="UK">3) результат нормалізується (якщо потрібно).</span></p>
        <p>
            <span lang="UK">
                <o:p>&nbsp;</o:p>
            </span>
        </p>
        <p>
            <span>Приклад:</span>
        </p>
        <p>
            <span>А<sub>1</sub>=-0,010011*10<sup>100</sup>;&nbsp; </span><span lang="UK">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span>А<sub>2</sub>=+0,001011*10<sup>110</sup>.</span><span lang="UK"></span>
        </p>
        <p>
            <span lang="UK">Запис в машині:</span>
        </p>
        <p>
            <img src="image/17.png" />
        </p>
        <p>
            <span lang="UK">Починати додавання одразу же не можна, так як порядки в числах різні</span><span> (</span><span lang="EN-US">p<sub>A</sub></span><sub><span>1</span></sub><span>=0.100<sub>(2)</sub>;&nbsp; </span><span lang="EN-US">p<sub>A</sub></span><sub><span>2 </span></sub><span>=0.110<sub>(2)</sub>), а </span><span lang="UK">слід, положення коми в числах неоднакове. В даному випадку слід зменшити на 2 порядок числа А<sub>2, </sub>а слід, зсунути мантису числа вліво на два розряди для збільшення її значення.</span>
        </p>
        <p>
            <span lang="EN-US">[p<sub>A1</sub>] =0</span><span lang="UK">,</span><span lang="EN-US">100 ;<span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span><span lang="UK"><span>&nbsp;</span></span>
        </p>
        <p>
            <span lang="EN-US">[m<sub>A1</sub>]<sub>пр</sub> = 1</span><span lang="UK">,</span><span lang="EN-US">010011;<span>&nbsp; </span></span><span lang="UK">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span lang="EN-US"><span>&nbsp;</span>[m<sub>A1</sub>]<sub>об</sub> = 1</span><span lang="UK">,</span><span lang="EN-US">101100;<span>&nbsp; </span></span><span lang="UK">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span lang="EN-US">[m<sub>A1</sub>]<sub>доп</sub> = 1</span><span lang="UK">,</span><span lang="EN-US">101101;</span>
        </p>
        <p>
            <span lang="EN-US">[p<sub>A2</sub>] =0</span><span lang="UK">,</span><span lang="EN-US">100;<span>&nbsp; </span></span><span lang="UK"></span>
        </p>
        <p>
            <span lang="EN-US">[m<sub>A2</sub>]<sub>пр</sub> = [m<sub>A2</sub>]<sub>об</sub> =<sub> </sub>[m<sub>A2</sub>]<sub>доп</sub></span><sub><span lang="EN-US"> </span></sub><span lang="EN-US">= 0</span><span lang="UK">,</span><span lang="EN-US">101100.</span>
        </p>
        <p>
            <img alt="" class="auto-style18" src="image/18.png" />
        </p>
        <p>
            <span lang="EN-US"><span>&nbsp;</span>[m<sub>A1</sub>+m<sub>A2</sub>]</span><sub><span lang="UK">доп</span></sub><span> = 0.011001 – </span><span lang="UK">число позитивне, тому в прямому коді результат не змінюється [m<sub>A1</sub>+m<sub>A2</sub>]<sub>пр</sub><span>&nbsp; </span>=<span>&nbsp; </span></span><span lang="EN-US">[m<sub>A1</sub>+m<sub>A2</sub>]</span><sub><span lang="UK">доп</span></sub><span> = </span><span lang="UK">0.011001.</span>
        </p>
        <p>
            <span lang="UK">Необхідна нормалізація числа: здійснюється зсув числа вправо на один розряд та зменшення порядку числа також на один розряд.</span>
        </p>
        <p>
            <span lang="UK">Відповідь:<span>&nbsp; </span>А<sub>1 </sub>+ А<sub>2 </sub>= 0,11001*10<sup>011</sup>.</span>
        </p>
        <p>
            <span>Додавання в </span><span lang="UK">оберненому коді чисел А<sub>1 </sub>та А<sub>2 </sub>здійснюється аналогічно:</span>
        </p>
        <p>
            <img alt="" src="image/19.png" height="120" />
        </p>
        <p>
            <span lang="UK">Так як<span>&nbsp; </span>[m<sub>A1</sub>+m<sub>A2</sub>]<sub>пр</sub><span>&nbsp; </span></span><span lang="EN-US">&gt; 0,</span><span lang="UK"> то [m<sub>A1</sub>+m<sub>A2</sub>]<sub>об</sub><span>&nbsp; </span>=<span>&nbsp; </span></span><span lang="EN-US">[m<sub>A1</sub>+m<sub>A2</sub>]</span><sub><span lang="UK">пр</span></sub><span> = </span><span lang="UK">0,011001.</span>
        </p>
        <p>
            <span lang="UK">
                <o:p>&nbsp;</o:p>
            </span>
        </p>
        <p>
            <span>Приклад:</span><span lang="UK"> Додати числа, які подані в машині з плаваючою комою.</span>
        </p>
        <p>
            <span>А<sub>1 </sub>= </span><span lang="UK">+</span><span>0,</span><span lang="UK">1</span><span>10011*10<sup>100</sup>;&nbsp; </span><span lang="UK">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span>А<sub>2 </sub>= </span><span lang="UK">-</span><span>0,</span><span lang="UK">1</span><span>01011*10<sup>1</sup></span><sup><span lang="UK">01</span></sup><span>.</span><span lang="UK"></span>
        </p>
        <p>
            <span lang="UK">Розв’язок:</span>
        </p>
        <p>
            <![if !supportLists]><span lang="UK">1)<span>&nbsp; </span>вирівнюємо порядки чисел: </span><span>(</span><span lang="EN-US">p<sub>A</sub></span><sub><span>1</span></sub><span>=0.100<sub>(2)</sub>;&nbsp; </span><span lang="EN-US">p<sub>A</sub></span><sub><span>2 </span></sub><span>=0.</span><span lang="UK">101</span><sub><span>(2)</span></sub><span>)</span><span lang="UK">;</span>
        </p>
        <p>
            <span lang="UK">В даному випадку<span>&nbsp; </span>порядок </span><span lang="EN-US">p<sub>A</sub></span><sub><span>1</span></sub><span lang="UK"> збільшуємо на одиницю, а мантису числа зсуваємо на один розряд для зменшення її значення.</span>
        </p>
        <p>
            <span lang="EN-US">p<sub>A</sub></span><sub><span>1</span></sub><span>=0</span><span lang="UK">,</span><span>10</span><span lang="UK">1</span><sub><span>(2)</span></sub><span>;&nbsp; </span><span lang="UK"><span>&nbsp;&nbsp;</span></span>
        </p>
        <p>
            <span lang="EN-US">[m<sub>A1</sub>]<sub>пр</sub> =<span>&nbsp; </span>[m<sub>A1</sub>]<sub>об</sub> </span><span lang="UK">= </span><span lang="EN-US"><span>&nbsp;</span>[m<sub>A1</sub>]</span><sub><span lang="UK">доп.</span></sub><span lang="UK"> = 0,0110011, так як А<sub>1</sub> </span><span lang="EN-US">&gt;0;</span><span lang="UK"></span>
        </p>
        <p>
            <span lang="EN-US">p<sub>A</sub></span><sub><span>2 </span></sub><span>=0</span><span lang="UK">,101</span><sub><span>(2)</span></sub><span>)</span><span lang="UK">;</span>
        </p>
        <p>
            <span lang="EN-US">[m<sub>A2</sub>]<sub>пр</sub> = </span><span lang="UK">1,1010110</span><span lang="EN-US">;<span>&nbsp; </span></span><span lang="UK">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span lang="EN-US"><span>&nbsp;</span>[m<sub>A2</sub>]<sub>об</sub> = 1</span><span lang="UK">,0101001</span><span lang="EN-US">;<span>&nbsp; </span></span><span lang="UK">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span lang="EN-US">[m<sub>A2</sub>]<sub>доп</sub> = 1</span><span lang="UK">,0101010</span><span lang="EN-US">;</span><span lang="UK"></span>
        </p>
        <p>
            <![if !supportLists]><span lang="UK">2)<span>&nbsp; </span></span><![endif]><span lang="UK">виконується операція додавання над мантисами чисел, за правилами додавання чисел з фіксованою комою в оберненому коді:</span>
        </p>
        <p>
            <img alt="" height="65" src="image/20.png" />
        </p>
        <p>
            <span lang="EN-US">[m<sub>A1</sub></span><span lang="UK">+ </span><span lang="EN-US">m<sub>A</sub></span><sub><span lang="UK">2</span></sub><span lang="EN-US">]</span><sub><span lang="UK">об</span></sub><span lang="EN-US"> = 1</span><span lang="UK">,1011100;</span>
        </p>
        <p>
            <span lang="EN-US">[m<sub>A1</sub></span><span lang="UK">+ </span><span lang="EN-US">m<sub>A</sub></span><sub><span lang="UK">2</span></sub><span lang="EN-US">]<sub>пр</sub> = 1</span><span lang="UK">,0100011</span><span lang="EN-US">.</span><span lang="UK"></span>
        </p>
        <p style="mso-list: l0 level1 lfo1; tab-stops: list 45.0pt left 54.0pt">
            <![if !supportLists]><span lang="UK">1)<span>&nbsp;&nbsp;&nbsp; </span></span><![endif]><span lang="UK">результат нормалізується:</span>
        </p>
        <p>
            <span lang="EN-US">[m<sub>A1</sub></span><span lang="UK">+ </span><span lang="EN-US">m<sub>A</sub></span><sub><span lang="UK">2</span></sub><span lang="EN-US">]<sub>пр</sub> = 1</span><span lang="UK">,100011;<span>&nbsp;&nbsp; </span></span><span lang="EN-US">p<sub>A</sub></span><sub><span>1</span><span lang="UK">+А2</span></sub><span>=0</span><span lang="UK">,</span><span>10</span><span lang="UK">1 – 0,001 = 0,100.</span>
        </p>
        <p>
            <span lang="UK">Відповідь:А<sub>1</sub>+А<sub>2</sub> = -1,100011*10<sup>100</sup>.</span>
        </p>
        <p>&nbsp;</p>
        <h4 align="center">Ділення двійкових чисел.</h4>
        <p>Ділення двійкових чисел в ЕОМ починається з визначення знаку результату ділення, шляхом додавання за модулем два двійкових чисел, які зображують знак:</p>
        <p align="center" class="auto-style19">
            (+)*(+)=(+);<span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>0+0=0;
        </p>
        <p align="center" class="auto-style19">
            (+)*(-)=(-);<span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;</span>0+1=1;
        </p>
        <p align="center" class="auto-style19">
            (-)*(+)=(-);<span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;</span>1+0=0;
        </p>
        <p align="center" class="auto-style19">
            ( -)*( -)=(+);<span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>1+1=0<span lang="UK">.</span>
        </p>
        <p>
            <span lang="UK">Ділення в машині з фіксованою комою здійснюється за допомогою багаторазового віднімання та зсувам чисел, але так як віднімання в ЕОМ замінюється на операцію додавання в доповнюючому або зворотному кодах, то процес організації ділення складається з операцій:</span>
        </p>
        <p style="mso-list: l0 level1 lfo1; tab-stops: list 81.0pt 115.5pt">
            <![if !supportLists]><span lang="UK">1)<span>&nbsp;&nbsp;</span></span><![endif]><span lang="UK">додавання діленого з дільником в зворотному або доповнюючому коді, як число від’ємне;</span>
        </p>
        <p style="mso-list: l0 level1 lfo1; tab-stops: list 81.0pt 115.5pt">
            <![if !supportLists]><span lang="UK">2)<span>&nbsp;&nbsp;</span></span><![endif]><span lang="UK">зсув результату додавання;</span>
        </p>
        <p style="mso-list: l0 level1 lfo1; tab-stops: list 81.0pt 115.5pt">
            <![if !supportLists]><span lang="UK">3)<span> </span></span><![endif]><span lang="UK">додавання дільника з остачею, обов’язкове здійснювання зсуву на кожному кроку ділення вліво на один розряд.</span>
        </p>
        <p>
            <span lang="UK">Операція ділення належить до розряду неточних операцій, оскільки результат, як правило отримують з деякою похибкою. Тому, ознакою закінчення операції ділення може бути або досягнення заданої точності (кількість розрядів у частці), або отримання чергової остачі, яка буде дорівнювати “0”.</span>
        </p>
        <p>
            <span lang="UK">В машині з плаваючою комою процес ділення передбачає визначення порядку результату, який знаходиться відніманням порядку дільника від порядку діленого та ділення мантис за правилами ділення чисел з фіксованою комою: </span><span lang="EN-US">D = m<sub>1</sub>/m<sub>2</sub>*q<sup>p1-p2</sup></span><span lang="UK">, де</span>
        </p>
        <p>
            <span lang="EN-US">D – </span><span lang="UK">результат ділення чисел з плаваючою комою</span>
        </p>
        <p>
            <span lang="EN-US">m<sub>1,</sub> m<sub>2 </sub></span><span lang="UK"><span>&nbsp;</span>- мантиси діленого та дільника;</span>
        </p>
        <p>
            <span lang="EN-US">q – </span><span lang="UK">основа системи числення;</span>
        </p>
        <p>
            <span lang="EN-US">p<sub>1</sub>, p<sub>2</sub> – </span><span lang="UK">порядки діленого та дільника відповідно.</span>
        </p>
        <p>
            <span lang="UK">Результат ділення нормалізується у разі необхідності.</span>
        </p>

        <p>
            <span lang="UK">Процес ділення може реалізовуватись двома способами: з відновленням остачі та без відновлення остачі. Другий метод потребує менших перетворень та елементарних дій, тому розглянемо приклади організації ділення без відновлення остачі.</span>
        </p>
        <p>&nbsp;</p>
        <h4 align="center">
            <span lang="UK">Ділення двійкових чисел на суматорі доповняльного коду.</span></h4>
        <p>
            <span lang="UK">Правило ділення двійкових чисел на суматорі доповнюючого коду без відновлення остачі: </span>
        </p>
        <p>
            <span lang="UK">Розряди частки знаходяться за таким принципом: якщо різниця між діленим або черговою часткою додатна, то у відповідний розряд заноситься одиниця, а якщо від’ємна – заноситься 0. Крім того, для визначення чергового розряду частки від’ємна остача зсувається на один розряд вліво і до неї додається дільник. Якщо остача позитивна, то здійснюється зсув, а потім до остачі додається дільник в доповнюючому коді (як від’ємне число).</span>
        </p>
        <p>
            <span lang="UK">Приклад ділення чисел:</span> А<sub>1</sub>=0,1100 – ділене; А<sub>2</sub>=1,1110 – <span lang="UK">дільник.</span>
        </p>
        <p>
            <span lang="UK">Знак частки визначається аналогічно знаку добутку, тобто 0+1=1 (результат – число від’ємне); </span>
        </p>
        <p class="text-center">
            <span lang="UK">процес ділення:</span>
        </p>
        <p align="center">
            <img alt="" class="auto-style20" src="image/21.png" />
        </p>
        <p>Якщо продовжити ділення до 10 значущих знаків то перевірка дасть вірний результат. Процес ділення продовжується до визначеної точності.</p>
        <p>&nbsp;</p>
        <h4 align="center">Множення двійкових чисел</h4>
        <p>
            <span lang="UK"><span class="auto-style14">Множення чисел в ЕОМ</span> з фіксованою комою представляє багаторазове додавання та зсув проміжного результату додавання вліво або вправо в залежності від того, множення здійснюється зі старших чи з молодших розрядів. Розглянемо приклад, де множення розглядається:</span>
        </p>
        <p>
            <span lang="UK">а) з молодших розрядів; </span>
        </p>
        <p>
            <span lang="UK">б) зі старших розрядів.</span>
        </p>
        <p>
            <span lang="UK">а)<span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>б)</span>
        </p>
        <p>
            <img alt="" class="auto-style21" src="image/23.png" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <img alt="" class="auto-style22" src="image/24.png" />
        </p>
        <p>
            <span lang="UK">Незалежно від способу організації множення отримана проміжна сума S<sub>i</sub> кожен раз додається зі зсувом на один розряд множником. </span>
        </p>
        <p>
            <span lang="UK">В машині з плаваючою комою добуток двох чисел буде П=m<sub>1</sub> m <sub>2 </sub>q<sup>p1+p2</sup>, </span>
        </p>
        <p>
            <span lang="UK">A<sub>1</sub>= m<sub>1</sub> q<sup>p1</sup>; A<sub>2</sub>= m<sub>2</sub> q<sup>p2 </sup>.</span>
        </p>
        <p>
            <span lang="UK">Процес множення починається в машині з визначення знаку добутку шляхом додавання по модулю два двійкових числа, що зображують знак:</span>
        </p>
        <p align="center" class="auto-style19">
            <span lang="UK">(+)*(+)=(+);<span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>0+0=0;</span>
        </p>
        <p align="center" class="auto-style19">
            <span lang="UK">(+)*(-)=(-);<span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>0+1=1;</span>
        </p>
        <p align="center" class="auto-style19">
            <span lang="UK">(-)*(+)=(-);<span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>1+0=0;</span>
        </p>
        <p align="center" class="auto-style19">
            <span lang="UK">(-)*(-)=(+);<span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>1+1=0<o:p>&nbsp;&nbsp; </o:p>
            </span>
        </p>
        <p align="center" class="auto-style19">
            <o:p>&nbsp; </o:p>
        </p>
        <p>
            <span lang="UK">Потім визначається порядок добутку та мантиса результату – множенням мантис двох множників. 
                Розглянемо чотири мікро операції на прикладі множення чисел А<sub>1 </sub>та А<sub>2 </sub>:</span>
        </p>
        <p>
            <img alt="" src="image/25.png" />
        </p>
        <p style="mso-list: l0 level1 lfo1; tab-stops: list 45.0pt">
            <![if !supportLists]><span lang="UK">1)<span>&nbsp;&nbsp;&nbsp; </span></span><![endif]><span lang="UK">порядок множення: p (П) = -3+2 = -1;</span>
        </p>
        <p style="mso-list: l0 level1 lfo1; tab-stops: list 45.0pt">
            <![if !supportLists]><span lang="UK">2)<span>&nbsp;&nbsp;&nbsp; </span></span><![endif]><span lang="UK">знак добутку:<span>&nbsp; </span>(-)*(-)=(+);<span>&nbsp; </span>1+1=0;</span>
        </p>
        <p style="mso-list: l0 level1 lfo1; tab-stops: list 45.0pt">
            <![if !supportLists]><span lang="UK">3)<span>&nbsp;&nbsp;&nbsp; </span></span><![endif]><span lang="UK">мантиса результату m(П) :</span>
        </p>
        <p>
            <img alt="" class="auto-style22" src="image/26.png" />
        </p>
        <p>
            <span lang="UK">m(П) =0,0111100;</span>
        </p>
    </div>
</div>
<div class="container body-content">
    <hr />
    <footer>
        <p>&copy; <%: DateTime.Now.Year %> - Ruslan Pavlenko</p>
    </footer>
</div>

<p>
    &nbsp;
</p>

<!-- /container -->
<!-- SVG filter for Firefox -->
<svg xmlns="http://www.w3.org/2000/svg" version="1.1">
    <filter id="blur">
        <feGaussianBlur stdDeviation="10" />
    </filter>

    <filter id="blurLogo">
        <feGaussianBlur stdDeviation="1" />
    </filter>
</svg>
<script src='http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js'></script>
<script>
    $(document).ready(function () {


        // Toggle the blurred class
        function sidebar() {
            var trigger = $('#trigger, #close'),
                menu = $('.sidebar');

            trigger.on('click', function () {
                $(this).toggleClass('active');
                menu.toggleClass('closed');
                $('#blurrMe').toggleClass('blurred'); // just here
            });
        }




        function deploy() {
            sidebar();
        }

        deploy();

    });
</script>
<script type="text/javascript">

    var _gaq = _gaq || [];
    _gaq.push(['_setAccount', 'UA-36251023-1']);
    _gaq.push(['_setDomainName', 'jqueryscript.net']);
    _gaq.push(['_trackPageview']);

    (function () {
        var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
        ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
        var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
    })();

</script>
