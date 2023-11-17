<%@ Page Title="" Language="C#" MasterPageFile="~/WebForms/Principal.Master" AutoEventWireup="true" CodeBehind="PagCadastro.aspx.cs" Inherits="GCA__Gerenciador_de_Chaves_de_Ativação_.WebForms.WebForm1" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <link href="../CSS/Reset.css" rel="stylesheet" />
    <link href="../CSS/PagCadastro.css" rel="stylesheet" />
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;600&family=Montserrat:wght@400;600;800&family=Open+Sans:ital,wght@0,600;1,400&family=Roboto:wght@300;400;500&family=Sora:wght@400;600&display=swap" rel="stylesheet">
    <link href="../Bootstrap/Css/bootstrap.min.css" rel="stylesheet" />
    
    <script src="../Bootstrap/Js/bootstrap.min.js"></script>

    <asp:Panel ID="PnlCadastro" CssClass="PnlCadastro" runat="server">
        <fieldset id="PnlCadastroSoftware__Fieldset" class="PnlCadastro__fieldset" runat="server">
            <legend class="PnlCadastro__Software__Legend">Cadastro</legend>
            <section class="PnlCadastro__Section">
                <article class="PnlCadastro__Software__BlockText">
                    <asp:Label ID="LbNomeSoftware" CssClass="PnlCadastroSoftware__Label" runat="server" Text="Nome do Software"></asp:Label>
                    <asp:TextBox ID="txtNomeSoftware" CssClass="PnlCadastroSoftware__TextBox" runat="server"></asp:TextBox>
                </article>
                <section class="PnlCadastro__Software__BlockDdl">
                    <article class="PnlCadastro__Software__BlockDdl1">
                        <asp:Label ID="LbTipoSoftware" CssClass="PnlCadastroSoftware__Label" runat="server" Text="Tipo de Software"></asp:Label>
                        <asp:DropDownList ID="DdlTipoSoftware" CssClass="PnlCadastroSoftware__Ddl" runat="server"></asp:DropDownList>

                        <asp:Label ID="LbIdioma" CssClass="PnlCadastroSoftware__Label" runat="server" Text="Idioma"></asp:Label>
                        <asp:DropDownList ID="DdlIdioma" CssClass="PnlCadastroSoftware__Ddl" runat="server"></asp:DropDownList>
                    </article>
                    <article class="PnlCadastro__Software__BlockDdl2 ">
                        <asp:Label ID="LbTipoLicenca" CssClass="PnlCadastroSoftware__Label" runat="server" Text="Tipo de Licença"></asp:Label>
                        <asp:DropDownList ID="DdlLicenca" CssClass="PnlCadastroSoftware__Ddl" runat="server"></asp:DropDownList>

                        <asp:Label ID="LbSistema" CssClass="PnlCadastroSoftware__Label" runat="server" Text="Sistema"></asp:Label>
                        <asp:DropDownList ID="DdlSistema" CssClass="PnlCadastroSoftware__Ddl" runat="server"></asp:DropDownList>
                    </article>
                </section>
                <article class="PnlCadastro__Software__BlockText , PnlCadastro__Software__BlockText#2">
                    <asp:Label ID="LbFabricante" CssClass="PnlCadastroSoftware__Label" runat="server" Text="Fabricante"></asp:Label>
                    <asp:TextBox ID="txtFabricante" CssClass="PnlCadastroSoftware__TextBox" runat="server"></asp:TextBox>

                    <asp:Label ID="LbVersao" CssClass="PnlCadastroSoftware__Label" runat="server" Text="Versão"></asp:Label>
                    <asp:TextBox ID="txtVersao" CssClass="PnlCadastroSoftware__TextBox" runat="server"></asp:TextBox>
                </article>
            </section>
            <div class="PnlCadastro__Btn">
            <asp:Button ID="Btn__Avançar__Software" CssClass="Btn" runat="server" Text="Avançar" />
        </div>
        </fieldset>
    </asp:Panel>

</asp:Content>
