using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Tc
{
    public class LibAdmin
    {
        public static string Session_admin = "admin";

        /// <summary>
        /// 获取当前登陆的
        /// </summary>
        /// <returns></returns>
        public static Model.TcAdmin GetCurrentAdmin()
        {

            try
            {
                if (HttpContext.Current.Session[Session_admin] == null)
                {
                    HttpContext.Current.Response.Redirect("~/admin/login.aspx");
                }
                Model.TcAdmin admin = HttpContext.Current.Session[Session_admin] as Model.TcAdmin;
                if (admin == null)
                {
                    HttpContext.Current.Response.Redirect("~/admin/login.aspx");
                }
                return admin;
            }
            catch
            {
                HttpContext.Current.Response.Redirect("~/admin/login.aspx");
                return null;
            }
        }
    }
}