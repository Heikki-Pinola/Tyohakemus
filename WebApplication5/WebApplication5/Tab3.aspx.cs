using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Dynamic;
using System.Linq;
using System.Web;
using System.Web.ModelBinding;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication5
{
    public partial class Tab3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        public IQueryable<Hakemus> GetHakemukset([QueryString("id")] int? hakemusid)
        {
            var _db = new WebApplication5.HakemusContext();
            IQueryable<Hakemus> query = _db.Hakemus;
            return query;
        }

    }
}