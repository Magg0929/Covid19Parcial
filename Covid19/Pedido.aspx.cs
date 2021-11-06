using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.SessionState;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Covid19
{
    public partial class Pedido : System.Web.UI.Page
    {
        private static HttpSessionState session { get { return HttpContext.Current.Session; } }
        public static string Nuevopedido
        {
            get { return session["nroPedido"] as string; }
            set { session["nroPedido"] = value; }
        }
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            if(Nuevopedido is null)
            {
                SqlDataSource5.Insert();

            }
            else
            {
                this.Session["IdPedido"] = Nuevopedido;
                SqlDataSource6.Insert();
            }

        }

        protected void SqlDataSource3_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void SqlDataSource5_Inserted(object sender, SqlDataSourceStatusEventArgs e)
        {
            Nuevopedido = e.Command.Parameters["@Id"].Value.ToString();



        }
    }
}