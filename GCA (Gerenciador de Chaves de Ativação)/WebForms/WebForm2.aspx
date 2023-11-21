<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="GCA__Gerenciador_de_Chaves_de_Ativação_.WebForms.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Barra Lateral</title>
    <link href="../CSS/Reset.css" rel="stylesheet" />
    <link rel="preconnect" href="https://fonts.googleapis.com"/>
    <link rel="preconnect" href="https://fonts.gstatic.com"/>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;600&family=Montserrat:wght@400;600;800&family=Open+Sans:ital,wght@0,600;1,400&family=Roboto:wght@300;400;500&family=Sora:wght@400;600&display=swap" rel="stylesheet"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css" />
    <style>
        html {
            background-color: #4F78C4;
            font-family: 'Montserrat', sans-serif;
        }

        body{
            height: 100vh;
            background-color:inherit;
            margin: 0;
        }

        .menu-lateral{
            background-color: #202020;
            width: 250px;
            height: 100vh;
            display: flex;
            justify-content: flex-start;
            color: white;
        }

        .menu-lateral ul{
            padding-left: 0;
            border-right: 1px solid red;
            height: 100%;
            width: 250px;
        }

        .menu-lateral  i{
            color: white;
            margin-right: 20px;
            font-size: 32px;
        }

        .txt-link{
            color: white;
            
        }


        .menu-lateral ul li a{
            text-decoration: none;
            padding: 10px 0 10px 20px;
            display:flex;
            align-items:center;
            border-bottom: 1px solid #4F78C4;
            transition: .60s;
            
        }

        .menu-lateral ul li a:hover{
            background-color: #4F78C4;
        }


        .icone{
            align-items:center;
            margin-bottom: 2px;
        }

        .txt-link{
            align-items:center;
        }

    </style>
</head>
<body>
    <form id="form1" runat="server">
        <nav class="menu-lateral">
            <ul>
                <li class="item-menu">
                    <a href="#">
                        <span class="icone"><i class="bi bi-house"></i></span>
                        <span class="txt-link">Home</span>
                    </a>
                </li>
                <li class="item-menu">
                    <a href="#">
                        <span class="icone"><i class="bi bi-key"></i></span>
                        <span class="txt-link">Chaves</span>
                    </a>
                </li>
                <li class="item-menu">
                    <a href="#">
                        <span class="icone"><i class="bi bi-people"></i></span>
                        <span class="txt-link">Usuários</span>
                    </a>
                </li>
            </ul>
        </nav>
    </form>
</body>
</html>
