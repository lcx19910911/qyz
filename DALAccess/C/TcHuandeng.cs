﻿using Maticsoft.DBUtility;//Please add references

using System;
using System.Data;
using System.Data.OleDb;
using System.Data.SqlClient;
using System.Text;

namespace Tc.DAL
{
    /// <summary>
    /// 数据访问类:TcHuandeng
    /// </summary>
    public partial class TcHuandeng
    {
        public TcHuandeng()
        { }

        #region BasicMethod

        /// <summary>
        /// 得到最大ID
        /// </summary>
        public int GetMaxId()
        {
            return DbHelper.GetMaxID("ID", "TcHuandeng");
        }

        /// <summary>
        /// 是否存在该记录
        /// </summary>
        public bool Exists(int ID)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("select count(1) from TcHuandeng");
            strSql.Append(" where ID=@ID");
            SqlParameter[] parameters = {
					new SqlParameter("@ID", SqlDbType.Int,4)
			};
            parameters[0].Value = ID;

            return DbHelper.Exists(strSql.ToString(), parameters);
        }

        /// <summary>
        /// 增加一条数据
        /// </summary>
        public int Add(Tc.Model.TcHuandeng model)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("insert into TcHuandeng(");
            strSql.Append("Types,Title,Tupian,Shuoming,Url,Paixu)");
            strSql.Append(" values (");
            strSql.Append("@Types,@Title,@Tupian,@Shuoming,@Url,@Paixu)");
            SqlParameter[] parameters = {
					new SqlParameter("@Types", SqlDbType.VarChar,255),
					new SqlParameter("@Title", SqlDbType.VarChar,255),
					new SqlParameter("@Tupian", SqlDbType.VarChar,255),
					new SqlParameter("@Shuoming", SqlDbType.VarChar,0),
					new SqlParameter("@Url", SqlDbType.VarChar,255),
					new SqlParameter("@Paixu", SqlDbType.Int,4)};
            parameters[0].Value = model.Types;
            parameters[1].Value = model.Title;
            parameters[2].Value = model.Tupian;
            parameters[3].Value = model.Shuoming;
            parameters[4].Value = model.Url;
            parameters[5].Value = model.Paixu;

            int rows = DbHelper.ExecuteSql(strSql.ToString(), parameters);
            if (rows > 0)
            {
                return GetMaxId();
            }
            else
            {
                return 0;
            }
        }

        /// <summary>
        /// 更新一条数据
        /// </summary>
        public bool Update(Tc.Model.TcHuandeng model)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("update TcHuandeng set ");
            strSql.Append("Types=@Types,");
            strSql.Append("Title=@Title,");
            strSql.Append("Tupian=@Tupian,");
            strSql.Append("Shuoming=@Shuoming,");
            strSql.Append("Url=@Url,");
            strSql.Append("Paixu=@Paixu");
            strSql.Append(" where ID=@ID");
            SqlParameter[] parameters = {
					new SqlParameter("@Types", SqlDbType.VarChar,255),
					new SqlParameter("@Title", SqlDbType.VarChar,255),
					new SqlParameter("@Tupian", SqlDbType.VarChar,255),
					new SqlParameter("@Shuoming", SqlDbType.VarChar,0),
					new SqlParameter("@Url", SqlDbType.VarChar,255),
					new SqlParameter("@Paixu", SqlDbType.Int,4),
					new SqlParameter("@ID", SqlDbType.Int,4)};
            parameters[0].Value = model.Types;
            parameters[1].Value = model.Title;
            parameters[2].Value = model.Tupian;
            parameters[3].Value = model.Shuoming;
            parameters[4].Value = model.Url;
            parameters[5].Value = model.Paixu;
            parameters[6].Value = model.ID;

            int rows = DbHelper.ExecuteSql(strSql.ToString(), parameters);
            if (rows > 0)
            {
                return true;
            }
            else
            {
                return false;
            }
        }

        /// <summary>
        /// 删除一条数据
        /// </summary>
        public bool Delete(int ID)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("delete from TcHuandeng ");
            strSql.Append(" where ID=@ID");
            SqlParameter[] parameters = {
					new SqlParameter("@ID", SqlDbType.Int,4)
			};
            parameters[0].Value = ID;

            int rows = DbHelper.ExecuteSql(strSql.ToString(), parameters);
            if (rows > 0)
            {
                return true;
            }
            else
            {
                return false;
            }
        }

        /// <summary>
        /// 批量删除数据
        /// </summary>
        public bool DeleteList(string IDlist)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("delete from TcHuandeng ");
            strSql.Append(" where ID in (" + IDlist + ")  ");
            int rows = DbHelper.ExecuteSql(strSql.ToString());
            if (rows > 0)
            {
                return true;
            }
            else
            {
                return false;
            }
        }

        /// <summary>
        /// 得到一个对象实体
        /// </summary>
        public Tc.Model.TcHuandeng GetModel(int ID)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("select ID,Types,Title,Tupian,Shuoming,Url,Paixu from TcHuandeng ");
            strSql.Append(" where ID=@ID");
            SqlParameter[] parameters = {
					new SqlParameter("@ID", SqlDbType.Int,4)
			};
            parameters[0].Value = ID;

            Tc.Model.TcHuandeng model = new Tc.Model.TcHuandeng();
            DataSet ds = DbHelper.Query(strSql.ToString(), parameters);
            if (ds.Tables[0].Rows.Count > 0)
            {
                return DataRowToModel(ds.Tables[0].Rows[0]);
            }
            else
            {
                return null;
            }
        }

        /// <summary>
        /// 得到一个对象实体
        /// </summary>
        public Tc.Model.TcHuandeng DataRowToModel(DataRow row)
        {
            Tc.Model.TcHuandeng model = new Tc.Model.TcHuandeng();
            if (row != null)
            {
                if (row["ID"] != null && row["ID"].ToString() != "")
                {
                    model.ID = int.Parse(row["ID"].ToString());
                }
                if (row["Types"] != null)
                {
                    model.Types = row["Types"].ToString();
                }
                if (row["Title"] != null)
                {
                    model.Title = row["Title"].ToString();
                }
                if (row["Tupian"] != null)
                {
                    model.Tupian = row["Tupian"].ToString();
                }
                if (row["Shuoming"] != null)
                {
                    model.Shuoming = row["Shuoming"].ToString();
                }
                if (row["Url"] != null)
                {
                    model.Url = row["Url"].ToString();
                }
                if (row["Paixu"] != null && row["Paixu"].ToString() != "")
                {
                    model.Paixu = int.Parse(row["Paixu"].ToString());
                }
            }
            return model;
        }

        /// <summary>
        /// 获得数据列表
        /// </summary>
        public DataSet GetList(string strWhere)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("select ID,Types,Title,Tupian,Shuoming,Url,Paixu ");
            strSql.Append(" FROM TcHuandeng ");
            if (strWhere.Trim() != "")
            {
                strSql.Append(" where " + strWhere);
            }
            return DbHelper.Query(strSql.ToString());
        }

        #endregion BasicMethod

        #region ExtensionMethod

        #endregion ExtensionMethod
    }
}