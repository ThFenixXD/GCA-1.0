<%@ Page Title="" Language="C#" MasterPageFile="~/WebForms/Principal.Master" AutoEventWireup="true" CodeBehind="PagConsultaChaves.aspx.cs" Inherits="GCA__Gerenciador_de_Chaves_de_Ativação_.WebForms.PagConsultaChaves" %>

<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <telerik:RadScriptManager ID="RadScriptManager1" runat="server"></telerik:RadScriptManager>

    <asp:Panel ID="PnlGridConsulta" runat="server">

        <telerik:RadGrid 
            ID="GridConsultaChaveAtivacao" 
            runat="server" CssClass="Grid" 
            OnNeedDataSource="GridConsultaChaveAtivacao_NeedDataSource" 
            OnItemCommand="GridConsultaChaveAtivacao_ItemCommand" 
            AutoGenerateColumns="false">
            <GroupingSettings CollapseAllTooltip="Collapse all columns" />
            <MasterTableView DataKeyNames="">
                <Columns>
                    <telerik:GridTemplateColumn UniqueName="OP" AllowFiltering="false">
                        <ItemTemplate>
                            <asp:Button ID="Btn__Editar_GridConsulta" runat="server" CommandName="OpEditar" Text="Editar" OnClick="Btn__Editar_GridConsulta_Click" />
                        </ItemTemplate>
                    </telerik:GridTemplateColumn>
                    <%-- Dados Software --%>
                    <telerik:GridBoundColumn UniqueName="NomeSoftware" DataField="NomeDoSoftware" HeaderText="Nome do Software"></telerik:GridBoundColumn>
                    <telerik:GridBoundColumn UniqueName="TipoSoftware" DataField="TipoDeSoftware" HeaderText="Tipo do Software"></telerik:GridBoundColumn>
                    <telerik:GridBoundColumn UniqueName="TipoLicença" DataField="TipoLicença" HeaderText="Tipo de Licença"></telerik:GridBoundColumn>
                    <telerik:GridBoundColumn UniqueName="Idioma" DataField="Idioma" HeaderText="Idioma"></telerik:GridBoundColumn>
                    <telerik:GridBoundColumn UniqueName="Sistema" DataField="Sistema" HeaderText="Sistema"></telerik:GridBoundColumn>
                    <telerik:GridBoundColumn UniqueName="Fabricante" DataField="Fabricante" HeaderText="Fabricante"></telerik:GridBoundColumn>
                    <telerik:GridBoundColumn UniqueName="Versao" DataField="Versao" HeaderText="Versao"></telerik:GridBoundColumn>
                    <telerik:GridBoundColumn UniqueName="ChaveAtivacao" DataField="ChaveDeAtivacao" HeaderText="Chave de Ativação"></telerik:GridBoundColumn>
                    <telerik:GridBoundColumn UniqueName="Status" DataField="Status" HeaderText="Status"></telerik:GridBoundColumn>
                    <%-- Dados Maquina --%>
                    <telerik:GridBoundColumn UniqueName="NomeMaquina" DataField="NomeMaquina" HeaderText="Nome da Máquina"></telerik:GridBoundColumn>
                    <telerik:GridBoundColumn UniqueName="SistemaOP" DataField="SistemaOperacional" HeaderText="Sistema Operacional"></telerik:GridBoundColumn>
                    <telerik:GridBoundColumn UniqueName="Processador" DataField="Processador" HeaderText="Processador"></telerik:GridBoundColumn>
                    <telerik:GridBoundColumn UniqueName="MemoriaRam" DataField="MemoriaRam" HeaderText="Memoria Ram"></telerik:GridBoundColumn>
                    <telerik:GridBoundColumn UniqueName="Armazenamento" DataField="Armazenamento" HeaderText="Armazenamento"></telerik:GridBoundColumn>
                    <%-- Dados Usuario --%>
                    <telerik:GridBoundColumn UniqueName="NomeUsuario" DataField="NomeUsuario" HeaderText="Nome de Usuário"></telerik:GridBoundColumn>
                    <telerik:GridBoundColumn UniqueName="Funcao" DataField="Funcao" HeaderText="Função"></telerik:GridBoundColumn>
                    <telerik:GridBoundColumn UniqueName="Setor" DataField="Setor" HeaderText="Setor"></telerik:GridBoundColumn>
                </Columns>

            </MasterTableView>
        </telerik:RadGrid>

    </asp:Panel>

</asp:Content>
