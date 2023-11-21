<%@ Page Title="" Language="C#" MasterPageFile="~/WebForms/Principal.Master" AutoEventWireup="true" CodeBehind="PagCadastro.aspx.cs" Inherits="GCA__Gerenciador_de_Chaves_de_Ativação_.WebForms.WebForm1" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <%--<link href="../CSS/Reset.css" rel="stylesheet" />--%>
    <link href="../CSS/PagCadastro.css" rel="stylesheet" />
    <%--<link href="../Bootstrap/Css/bootstrap-reboot.css" rel="stylesheet" />--%>
    <link rel="preconnect" href="https://fonts.googleapis.com"/>
    <link rel="preconnect" href="https://fonts.gstatic.com"/>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;600&family=Montserrat:wght@400;600;800&family=Open+Sans:ital,wght@0,600;1,400&family=Roboto:wght@300;400;500&family=Sora:wght@400;600&display=swap" rel="stylesheet"/>
    

    <asp:Panel ID="PnlCadastro_Software" CssClass="PnlCadastro" runat="server">
        <fieldset id="PnlCadastroSoftware__Fieldset" class="PnlCadastro__fieldset" runat="server">
            <legend class="PnlCadastro__Legend">Cadastro</legend>
            <section class="PnlCadastro__Section">
                <article class="PnlCadastro__Software__BlockText">
                    <asp:Label ID="LbNomeSoftware" CssClass="PnlCadastro__Label" runat="server" Text="Nome do Software"></asp:Label>
                    <asp:TextBox ID="txtNomeSoftware" CssClass="PnlCadastro__TextBox" runat="server"></asp:TextBox>
                </article>
                <section class="PnlCadastro__Software__BlockDdl">
                    <article class="PnlCadastro__Software__BlockDdl1">
                        <asp:Label ID="LbTipoSoftware" CssClass="PnlCadastro__Label" runat="server" Text="Tipo de Software"></asp:Label>
                        <asp:DropDownList ID="DdlTipoSoftware" CssClass="PnlCadastroSoftware__Ddl" DataTextField="TipoDeSoftware" DataValueField="ID_Software" runat="server"></asp:DropDownList>

                        <asp:Label ID="LbIdioma" CssClass="PnlCadastro__Label" runat="server" Text="Idioma"></asp:Label>
                        <asp:DropDownList ID="DdlIdioma" CssClass="PnlCadastroSoftware__Ddl" DataTextField="Idioma" DataValueField="ID_Software" runat="server"></asp:DropDownList>
                    </article>
                    <article class="PnlCadastro__Software__BlockDdl2 ">
                        <asp:Label ID="LbTipoLicenca" CssClass="PnlCadastro__Label" runat="server" Text="Tipo de Licença"></asp:Label>
                        <asp:DropDownList ID="DdlLicenca" CssClass="PnlCadastroSoftware__Ddl" runat="server"></asp:DropDownList>

                        <asp:Label ID="LbSistema" CssClass="PnlCadastro__Label" runat="server" Text="Sistema"></asp:Label>
                        <asp:DropDownList ID="DdlSistema" CssClass="PnlCadastroSoftware__Ddl" DataTextField="Sistema" DataValueField="ID_Software" runat="server"></asp:DropDownList>
                    </article>
                </section>
                <article class="PnlCadastro__Software__BlockText , PnlCadastro__Software__BlockText#2">
                    <asp:Label ID="LbFabricante" CssClass="PnlCadastro__Label" runat="server" Text="Fabricante"></asp:Label>
                    <asp:TextBox ID="txtFabricante" CssClass="PnlCadastro__TextBox" runat="server"></asp:TextBox>

                    <asp:Label ID="LbVersao" CssClass="PnlCadastro__Label" runat="server" Text="Versão"></asp:Label>
                    <asp:TextBox ID="txtVersao" CssClass="PnlCadastro__TextBox" runat="server"></asp:TextBox>

                    <asp:Label ID="LbChaveAtivacao" CssClass="PnlCadastro__Label" runat="server" Text="Chave de Ativação"></asp:Label>
                    <asp:TextBox ID="txtChaveAtivacao" CssClass="PnlCadastro__TextBox" runat="server"></asp:TextBox>

                    <asp:Label ID="LbConfirmaChaveAtivacao" CssClass="PnlCadastro__Label" runat="server" Text="Confirmar Chave de Ativação"></asp:Label>
                    <asp:TextBox ID="txtConfirmatxtChaveAtivacao" CssClass="PnlCadastro__TextBox" runat="server"></asp:TextBox>
                </article>
            </section>
            <div class="PnlCadastro__Btn">
                <asp:Button ID="Btn__Avançar__Software" CssClass="Btn" runat="server" Text="Avançar" OnClick="Btn__Avançar__Software_Click" />
            </div>
        </fieldset>
    </asp:Panel>

    <asp:Panel ID="PanPnlCadastro_Maquina" CssClass="PnlCadastro" runat="server" Visible="false">
        <fieldset id="PnlCadastroMaquina__Fieldset" class="PnlCadastro__fieldset" runat="server">
            <legend class="PnlCadastro__Legend">Cadastro</legend>
            <section class="PnlCadastro__Section">
                <article class="PnlCadastro__Maquina__BlockText">
                    <asp:Label ID="LbNomeMaquina" CssClass="PnlCadastro__Label" runat="server" Text="Nome da Máquina"></asp:Label>
                    <asp:TextBox ID="txtNomeMaquina" CssClass="PnlCadastro__TextBox" runat="server"></asp:TextBox>

                    <asp:Label ID="LbSistemaOperacional" CssClass="PnlCadastro__Label" runat="server" Text="Sistema Operacional"></asp:Label>
                    <asp:DropDownList ID="DdlSistemaOperacional" CssClass="PnlCadastroSoftware__Ddl" DataTextField="SistemaOperacional" DataValueField="ID_Maquina" runat="server"></asp:DropDownList>
                </article>
                <section class="PnlCadastro__Software__BlockDdl">
                    <article class="PnlCadastro__Software__BlockDdl1">
                        <asp:Label ID="LbMemoriaRam" CssClass="PnlCadastro__Label" runat="server" Text="Memória Ram"></asp:Label>
                        <asp:DropDownList ID="DdlMemoriaRam" CssClass="PnlCadastroSoftware__Ddl" DataTextField="MemoriaRam" DataValueField="ID_Maquina" runat="server"></asp:DropDownList>

                        <asp:Label ID="LbQtdMemoria" CssClass="PnlCadastro__Label" runat="server" Text="Qtd Memória"></asp:Label>
                        <asp:DropDownList ID="DdlQtdMemoria" CssClass="PnlCadastroSoftware__Ddl" DataTextField="MemoriaRam" DataValueField="ID_Maquina" runat="server"></asp:DropDownList>
                    </article>
                    <article class="PnlCadastro__Software__BlockDdl2 ">
                        <asp:Label ID="LbArmazenamento" CssClass="PnlCadastro__Label" runat="server" Text="Armazenamento"></asp:Label>
                        <asp:DropDownList ID="DdlArmazenamento" CssClass="PnlCadastroSoftware__Ddl" DataTextField="Armazenamento" DataValueField="ID_Maquina" runat="server"></asp:DropDownList>

                        <asp:Label ID="LbQtdArmazenamento" CssClass="PnlCadastro__Label" runat="server" Text="Qtd Armazenamento"></asp:Label>
                        <asp:DropDownList ID="DdlQtdArmazenamento" CssClass="PnlCadastroSoftware__Ddl" DataTextField="Armazenamento" DataValueField="ID_Maquina" runat="server"></asp:DropDownList>
                    </article>
                </section>
            </section>
            <div class="PnlCadastro__Btn">
                <asp:Button ID="Btn__Avançar__Maquina" CssClass="Btn" runat="server" Text="Avançar" OnClick="Btn__Avançar__Maquina_Click" />
            </div>
        </fieldset>
    </asp:Panel>

    <asp:Panel ID="PanPnlCadastro_Usuario" CssClass="PnlCadastro" runat="server" Visible="false">
        <fieldset id="PnlCadastroUsuario__Fieldset" class="PnlCadastro__fieldset" runat="server">
            <legend class="PnlCadastro__Legend">Cadastro</legend>
            <article class="PnlCadastro__Usuario__BlockText">
                <asp:Label ID="LbUsuario" CssClass="PnlCadastro__Label" runat="server" Text="Usuário"></asp:Label>
                <asp:TextBox ID="txtUsuario" CssClass="PnlCadastro__TextBox" runat="server"></asp:TextBox>

                <asp:Label ID="LbMaquina" CssClass="PnlCadastro__Label" runat="server" Text="Máquina"></asp:Label>
                <asp:DropDownList ID="DdlMaquina" CssClass="PnlCadastroSoftware__Ddl" DataTextField="NomeMaquina" DataValueField="ID_Maquina" runat="server"></asp:DropDownList>
            </article>
            <div class="PnlCadastro__Btn">
                <asp:Button ID="Btn__Avançar__Usuário" CssClass="Btn" runat="server" Text="Avançar" OnClick="Btn__Avançar__Usuário_Click" />
            </div>
        </fieldset>
    </asp:Panel>

    <asp:Panel ID="PnlRevisaoCadastro" CssClass="PnlCadastro , PnlRevisaoCadastro" runat="server" Visible="false">
        <fieldset id="PnlRevisaoCadastro__Fieldset" class="PnlCadastro__fieldset" runat="server">
            <legend class="PnlCadastro__Legend">Cadastro</legend>
            <section class="PnlCadastro__Section">
                <article class="PnlCadastro__Revisao__BlockText">
                    <asp:Label ID="LbNomeSoftwareRV" CssClass="PnlCadastro__Label" runat="server" Text="Nome do Software"></asp:Label>
                    <asp:TextBox ID="txtNomeSoftwareRV" CssClass="PnlCadastro__TextBox , PnlCadastro__TextBox_Revisao" runat="server"></asp:TextBox>

                    <asp:Label ID="LbTipoSoftwareRV" CssClass="PnlCadastro__Label" runat="server" Text="Tipo de Software"></asp:Label>
                    <asp:TextBox ID="txtTipoSoftwareRV" CssClass="PnlCadastro__TextBox, PnlCadastro__TextBox_Revisao" runat="server"></asp:TextBox>

                    <asp:Label ID="LbTipoLicencaRV" CssClass="PnlCadastro__Label" runat="server" Text="Tipo de Licença"></asp:Label>
                    <asp:TextBox ID="txtTipoLicencaRV" CssClass="PnlCadastro__TextBox, PnlCadastro__TextBox_Revisao" runat="server"></asp:TextBox>

                    <asp:Label ID="LbIdiomaRV" CssClass="PnlCadastro__Label" runat="server" Text="Idioma"></asp:Label>
                    <asp:TextBox ID="txtIdiomaRV" CssClass="PnlCadastro__TextBox, PnlCadastro__TextBox_Revisao" runat="server"></asp:TextBox>

                    <asp:Label ID="LbSistemaRV" CssClass="PnlCadastro__Label" runat="server" Text="Sistema"></asp:Label>
                    <asp:TextBox ID="txtSistemaRV" CssClass="PnlCadastro__TextBox, PnlCadastro__TextBox_Revisao" runat="server"></asp:TextBox>

                    <asp:Label ID="LbFabricanteRV" CssClass="PnlCadastro__Label" runat="server" Text="Fabricante"></asp:Label>
                    <asp:TextBox ID="txtFabricanteRV" CssClass="PnlCadastro__TextBox, PnlCadastro__TextBox_Revisao" runat="server"></asp:TextBox>

                    <asp:Label ID="LbVersaoRV" CssClass="PnlCadastro__Label" runat="server" Text="Versão"></asp:Label>
                    <asp:TextBox ID="txtVersãoRV" CssClass="PnlCadastro__TextBox, PnlCadastro__TextBox_Revisao" runat="server"></asp:TextBox>

                    <asp:Label ID="LbChaveAtivacaoRV" CssClass="PnlCadastro__Label" runat="server" Text="Chave de Ativação"></asp:Label>
                    <asp:TextBox ID="txtChaveAtivacaoRV" CssClass="PnlCadastro__TextBox" runat="server"></asp:TextBox>

                    <asp:Label ID="LbNomeMaquinaRV" CssClass="PnlCadastro__Label" runat="server" Text="Nome da Máquina"></asp:Label>
                    <asp:TextBox ID="txtNomaMaquinaRV" CssClass="PnlCadastro__TextBox, PnlCadastro__TextBox_Revisao" runat="server"></asp:TextBox>

                    <asp:Label ID="LbSistemaOperacionalRV" CssClass="PnlCadastro__Label" runat="server" Text="Sistema Operacional"></asp:Label>
                    <asp:TextBox ID="txtSistemaOperacionalRV" CssClass="PnlCadastro__TextBox, PnlCadastro__TextBox_Revisao" runat="server"></asp:TextBox>

                    <asp:Label ID="LbProcessador" CssClass="PnlCadastro__Label" runat="server" Text="Processador"></asp:Label>
                    <asp:TextBox ID="txtProcessadorRV" CssClass="PnlCadastro__TextBox, PnlCadastro__TextBox_Revisao" runat="server"></asp:TextBox>

                    <asp:Label ID="LbMemoriaRamRV" CssClass="PnlCadastro__Label" runat="server" Text="Memória Ram"></asp:Label>
                    <asp:TextBox ID="txtMemoriaRamRV" CssClass="PnlCadastro__TextBox, PnlCadastro__TextBox_Revisao" runat="server"></asp:TextBox>

                    <asp:Label ID="LbQtdMemoriaRamRV" CssClass="PnlCadastro__Label" runat="server" Text="Qtd Memória Ram"></asp:Label>
                    <asp:TextBox ID="txtQtdMemoriaRamRV" CssClass="PnlCadastro__TextBox, PnlCadastro__TextBox_Revisao" runat="server"></asp:TextBox>

                    <asp:Label ID="LbArmazenamentoRV" CssClass="PnlCadastro__Label" runat="server" Text="Armazenamento"></asp:Label>
                    <asp:TextBox ID="txtArmazenamentoRV" CssClass="PnlCadastro__TextBox, PnlCadastro__TextBox_Revisao" runat="server"></asp:TextBox>

                    <asp:Label ID="LbQtdArmazenamentoRV" CssClass="PnlCadastro__Label" runat="server" Text="Qtd Armazenamento"></asp:Label>
                    <asp:TextBox ID="txtQtdArmazenamentoRV" CssClass="PnlCadastro__TextBox, PnlCadastro__TextBox_Revisao" runat="server"></asp:TextBox>

                    <asp:Label ID="LbUsuarioRV" CssClass="PnlCadastro__Label" runat="server" Text="Usuário"></asp:Label>
                    <asp:TextBox ID="txtUsuarioRV" CssClass="PnlCadastro__TextBox, PnlCadastro__TextBox_Revisao" runat="server"></asp:TextBox>

                    <asp:Label ID="LbSetorRV" CssClass="PnlCadastro__Label" runat="server" Text="Setor"></asp:Label>
                    <asp:TextBox ID="txtSetorRV" CssClass="PnlCadastro__TextBox, PnlCadastro__TextBox_Revisao" runat="server"></asp:TextBox>

                    <div class="PnlCadastro__Btn">
                        <asp:Button ID="Btn__Cancelar" CssClass="Btn" runat="server" Text="Cancelar" OnClick="Btn__Cancelar_Click" />
                        <asp:Button ID="Btn__Salvar" CssClass="Btn" runat="server" Text="Salvar" OnClick="Btn__Salvar_Click" />
                    </div>

                </article>
            </section>

        </fieldset>

    </asp:Panel>

</asp:Content>
