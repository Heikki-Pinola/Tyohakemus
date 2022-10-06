using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Entity;

namespace WebApplication5
{
    
    public class HakemusContext : DbContext
    {
        public HakemusContext() : base("WebApplication5")
        {
        }
        public DbSet<Hakemus> Hakemus { get; set; }
    }
}