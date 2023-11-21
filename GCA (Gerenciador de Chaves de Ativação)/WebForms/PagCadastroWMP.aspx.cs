using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using GCA__Gerenciador_de_Chaves_de_Ativação_.Útil;

namespace GCA__Gerenciador_de_Chaves_de_Ativação_.WebForms
{
    public partial class PagCadastroWMP : System.Web.UI.Page
    {
        protected void EscondePaineis()
        {
            PnlCadastro_Software.Visible = false;
            PanPnlCadastro_Maquina.Visible = false;
            PanPnlCadastro_Usuario.Visible = false;
            PnlRevisaoCadastro.Visible = false;
        }

        protected void AtualizaDdlTipoSoftware()
        {
            DdlTipoSoftware.DataSource = Framework.GetDataTable("select ID_Software, TipoDeSoftware from tb_software");
            DdlTipoSoftware.DataBind();
        }

        protected void AtualizaDdlIdioma()
        {
            DdlIdioma.DataSource = Framework.GetDataTable("select ID_Software, Idioma from tb_software");
            DdlIdioma.DataBind();
        }

        protected void AtualizaDdlSistema()
        {
            DdlSistema.DataSource = Framework.GetDataTable("select ID_Software, Sistema from tb_software");
            DdlSistema.DataBind();
        }

        protected void AtualizaDdlOS()
        {
            DdlSistemaOperacional.DataSource = Framework.GetDataTable("select ID_Maquina, SistemaOperacional from tb_Maquina");
            DdlSistemaOperacional.DataBind();
        }

        protected void AtualizaDdlMemoriaRam()
        {
            DdlMemoriaRam.DataSource = Framework.GetDataTable("select ID_Maquina, MemoriaRam from tb_Maquina");
            DdlMemoriaRam.DataBind();
        }

        protected void AtualizaDdlQtdMemoriaRam()
        {
            DdlQtdMemoria.DataSource = Framework.GetDataTable("select ID_Maquina, MemoriaRam from tb_maquina");
            DdlQtdMemoria.DataBind();
        }

        protected void AtualizaDdlArmazenamento()
        {
            DdlArmazenamento.DataSource = Framework.GetDataTable("select ID_Maquina, Armazenamento from tb_maquina");
            DdlArmazenamento.DataBind();
        }

        protected void AtualizaDdlQtdArmazenamento()
        {
            DdlQtdArmazenamento.DataSource = Framework.GetDataTable("select ID_Maquina, Armazenamento from tb_maquina");
            DdlQtdArmazenamento.DataBind();
        }

        protected void Btn__Avançar__Software_Click(object sender, EventArgs e)
        {
            EscondePaineis();
            PanPnlCadastro_Maquina.Visible = true;
        }

        protected void Btn__Avançar__Maquina_Click(object sender, EventArgs e)
        {
            EscondePaineis();
            PanPnlCadastro_Usuario.Visible = true;
        }

        protected void Btn__Avançar__Usuário_Click(object sender, EventArgs e)
        {
            EscondePaineis();
            PnlRevisaoCadastro.Visible = true;
        }

        protected void Btn__Salvar_Click(object sender, EventArgs e)
        {

        }

        protected void Btn__Cancelar_Click(object sender, EventArgs e)
        {

        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                AtualizaDdlTipoSoftware();
                AtualizaDdlIdioma();
                AtualizaDdlSistema();
                AtualizaDdlOS();
                AtualizaDdlMemoriaRam();
                AtualizaDdlQtdMemoriaRam();
                AtualizaDdlArmazenamento();
                AtualizaDdlQtdArmazenamento();
            }
        }
    }
}