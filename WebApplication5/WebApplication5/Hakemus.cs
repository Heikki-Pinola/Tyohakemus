using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebApplication5
{
    public class Hakemus
    {
        public int hakemusid { get; set; }

        public byte avoinhakemus { get; set; }

        public string tyonantaja { get; set; }

        public string tehtavanimike { get; set; }

        public string vaadittuosaaminen { get; set; }

        public byte tulikovastausta { get; set; }

        public byte tulikopakit { get; set; }

        public string perusteluvalitsematta { get; set; }

        public DateTime hakemustehty { get; set; }


    }
}