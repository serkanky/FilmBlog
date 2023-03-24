using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DiziYorumProje.Entity;
namespace DiziYorumProje.AdminSayfalar
{
	public partial class Hakkimda : System.Web.UI.Page
	{
		BlogDiziEntities1 db = new BlogDiziEntities1();
		protected void Page_Load(object sender, EventArgs e)
		{

            var hakkimizda = (from x in db.TBLHAKKIMIZDA
                            select new
                            {
                                x.ACIKLAMA,
                               
                            }).ToList();

            Repeater1.DataSource = hakkimizda;
            Repeater1.DataBind();
        }
    }
	}
