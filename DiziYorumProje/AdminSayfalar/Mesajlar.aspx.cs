using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DiziYorumProje.Entity;
namespace DiziYorumProje.AdminSayfalar
{
	
	public partial class Mesajlar : System.Web.UI.Page
	{
		BlogDiziEntities1 db = new BlogDiziEntities1();
		protected void Page_Load(object sender, EventArgs e)
		{
			var iletisim = (from x in db.TBLILETISIM
							  select new
							  {
								  x.MESAJID,
								  x.ADSOYAD,
								  x.MAIL,
								  x.TELEFON,
								  x.KONU,
								  x.MESAJ

							  }).ToList();
			Repeater1.DataSource = iletisim;
			Repeater1.DataBind();
		}
	}
}