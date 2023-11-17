using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using GCA__Gerenciador_de_Chaves_de_Ativação_.Útil;

namespace GCA__Gerenciador_de_Chaves_de_Ativação_.WebForms
{
    public partial class PagConsultaChaves : System.Web.UI.Page
    {
        protected void AtualizaGrid()
        {
            GridConsultaChaveAtivacao.DataSource = Framework.GetDataTable("Select * from tb_Software");
            GridConsultaChaveAtivacao.DataSource = Framework.GetDataTable("SELECT tb_Software.ID_Software, " +
                                                                          "tb_Software.NomeDoSoftware, " +
                                                                          "tb_Software.TipoDeSoftware, " +
                                                                          "tb_Software.PrazoLicenca, " +
                                                                          "tb_Software.Idioma, " +
                                                                          "tb_Software.Sistema," +
                                                                          "tb_Software.Fabricante, " +
                                                                          "tb_Software.Versao, " +
                                                                          "tb_Software.ChaveDeAtivacao, " +
                                                                          "tb_Software.Status, " +
                                                                          "tb_Maquina.ID_Maquina, " +
                                                                          "tb_Maquina.NomeMaquina, " +
                                                                          "tb_Maquina.SistemaOperacional, " +
                                                                          "tb_Maquina.Processador, " +
                                                                          "tb_Maquina.MemoriaRam, " +
                                                                          "tb_Maquina.Armazenamento, " +
                                                                          "tb_Maquina.Status, " +
                                                                          "tb_Usuario.ID_Usuario, " +
                                                                          "tb_Usuario.NomeUsuario, " +
                                                                          "tb_Usuario.Funcao, " +
                                                                          "tb_Usuario.Setor " +
                                                                          "FROM tb_Software " +
                                                                          "INNER JOIN tb_Maquina " +
                                                                          "ON tb_Software.ID_Software = tb_Maquina.ID_Software " +
                                                                          "INNER JOIN tb_Usuario " +
                                                                          "ON tb_Maquina.ID_Usuario = tb_Usuario.ID_Usuario");
            GridConsultaChaveAtivacao.DataBind();

        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridConsultaChaveAtivacao_NeedDataSource(object sender, Telerik.Web.UI.GridNeedDataSourceEventArgs e)
        {
            //GridConsultaChaveAtivacao.DataSource = Framework.GetDataTable("Select * from tb_software inner join tb_maquina on tb_software.id_software = tb_maquina.id_software");

            GridConsultaChaveAtivacao.DataSource = Framework.GetDataTable("SELECT tb_Software.ID_Software, " +
                                                                          "tb_Software.NomeDoSoftware, " +
                                                                          "tb_Software.TipoDeSoftware, " +
                                                                          "tb_Software.PrazoLicenca, " +
                                                                          "tb_Software.Idioma, " +
                                                                          "tb_Software.Sistema," +
                                                                          "tb_Software.Fabricante, " +
                                                                          "tb_Software.Versao, " +
                                                                          "tb_Software.ChaveDeAtivacao, " +
                                                                          "tb_Software.Status, " +
                                                                          "tb_Maquina.ID_Maquina, " +
                                                                          "tb_Maquina.NomeMaquina, " +
                                                                          "tb_Maquina.SistemaOperacional, " +
                                                                          "tb_Maquina.Processador, " +
                                                                          "tb_Maquina.MemoriaRam, " +
                                                                          "tb_Maquina.Armazenamento, " +
                                                                          "tb_Maquina.Status, " +
                                                                          "tb_Usuario.ID_Usuario, " +
                                                                          "tb_Usuario.NomeUsuario, " +
                                                                          "tb_Usuario.Funcao, " +
                                                                          "tb_Usuario.Setor " +
                                                                          "FROM tb_Software " +
                                                                          "INNER JOIN tb_Maquina " +
                                                                          "ON tb_Software.ID_Software = tb_Maquina.ID_Software " +
                                                                          "INNER JOIN tb_Usuario " +
                                                                          "ON tb_Maquina.ID_Usuario = tb_Usuario.ID_Usuario");
        }

        protected void GridConsultaChaveAtivacao_ItemCommand(object sender, Telerik.Web.UI.GridCommandEventArgs e)
        {

        }

        protected void Btn__Editar_GridConsulta_Click(object sender, EventArgs e)
        {

        }
    }
}