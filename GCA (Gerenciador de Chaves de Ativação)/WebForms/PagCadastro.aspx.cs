using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GCA__Gerenciador_de_Chaves_de_Ativação_.WebForms
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void EscondePaineis()
        {
            PnlCadastro_Software.Visible = false;
            PanPnlCadastro_Maquina.Visible = false;
            PanPnlCadastro_Usuario.Visible = false;
            PnlRevisaoCadastro.Visible = false;
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

        }
    }
}