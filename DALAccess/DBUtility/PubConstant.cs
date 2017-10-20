using System;
using System.Configuration;

namespace Maticsoft.DBUtility
{
    public class PubConstant
    {
        /// <summary>
        /// 获取连接字符串
        /// </summary>
        public static string ConnectionString
        {
            get
            {
                return ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString.ToString();
            }
        }
    }
}