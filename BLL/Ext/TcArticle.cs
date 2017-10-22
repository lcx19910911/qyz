using System;
using System.Collections.Generic;
using System.Data;
using Tc.Model;

namespace Tc.BLL
{
    /// <summary>
    /// TcArticle
    /// </summary>
    public partial class TcArticle : BLLBase<TcArticle>
    {
        /// <summary>
        /// 获取前多少条数据
        /// </summary>
        /// <param name="Top"></param>
        /// <param name="strWhere"></param>
        /// <param name="filedOrder"></param>
        /// <returns></returns>
        public DataSet GetList(int Top, string strWhere, string filedOrder)
        {
            return dal.GetList(Top, strWhere, filedOrder);
        }
    }
}