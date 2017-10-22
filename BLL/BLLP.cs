using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;

namespace Tc.BLL
{
    public class BLLP : BLLBase<BLLP>
    {
        public DataTable Get_Page_List(string tablename, string orderby, int startrecordindex, int pagesize, string where, out int sumcount)
        {
            Tc.DAL.DALP dal = new DAL.DALP();
            return dal.Get_Page_List(tablename, orderby, startrecordindex, pagesize, where, out sumcount);
        }
    }
}