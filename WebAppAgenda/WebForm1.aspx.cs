using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebAppAgenda.ServiceReferenceAgenda;

namespace WebAppAgenda
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            ServiceMyAgendaClient cliente = new ServiceMyAgendaClient();
            MyAgenda agenda = new MyAgenda();

            if (txtId.Text.Trim() != "")
            {
                agenda = cliente.BuscarContacto(int.Parse(txtId.Text));
                txtNombre.Text = agenda.Nombre;
                txtApellidos.Text = agenda.Apellidos;
                txtTelefono.Text = agenda.Telefono;
                txtCorreo.Text = agenda.Correo;
            }
            else
            {
                lbMensaje.Text = "Escriba el ID del Contacto...";
            }
        }

        protected void btnMostrarTodos_Click(object sender, EventArgs e)
        {
            ServiceMyAgendaClient cliente = new ServiceMyAgendaClient();
            gvDatos.DataSource = cliente.MostrarContactos();
            gvDatos.DataBind();
        }

        protected void btnNuevo_Click(object sender, EventArgs e)
        {
            ServiceMyAgendaClient cliente = new ServiceMyAgendaClient();
            MyAgenda agenda = new MyAgenda();

            agenda.Id = int.Parse(txtId.Text);
            agenda.Nombre = txtNombre.Text;
            agenda.Apellidos = txtApellidos.Text;
            agenda.Telefono = txtTelefono.Text;
            agenda.Correo = txtCorreo.Text;

            if (cliente.NuevoContacto(agenda) > 0)
            {
                lbMensaje.Text = "Contacto agregado con Exito...";
            }
        }

        protected void btnEditar_Click(object sender, EventArgs e)
        {
            ServiceMyAgendaClient cliente = new ServiceMyAgendaClient();
            MyAgenda agenda = new MyAgenda();

            agenda.Id = int.Parse(txtId.Text);
            agenda.Nombre = txtNombre.Text;
            agenda.Apellidos = txtApellidos.Text;
            agenda.Telefono = txtTelefono.Text;
            agenda.Correo = txtCorreo.Text;

            if (cliente.EditarContacto(agenda) > 0)
            {
                lbMensaje.Text = "Contacto editado con Exito...";
            }
        }

        protected void btnEliminar_Click(object sender, EventArgs e)
        {
            ServiceMyAgendaClient cliente = new ServiceMyAgendaClient();

            if (cliente.ElimirarContacto(int.Parse(txtId.Text)) > 0)
            {
                lbMensaje.Text = "Contacto eliminado con Exito...";
            }
        }
    }
}