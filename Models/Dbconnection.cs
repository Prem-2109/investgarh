using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
namespace investchattigarh.Models
{
    class DbConnection
    {
        static String _sqlConstring = "Data Source=(local);Initial Catalog=weexpo;Persist Security Info=True;User ID=sa; Password=Sql@123; pooling=true;max pool size=10000;MultipleActiveResultSets=true;";
        //private static String _sqlConstring = "Data Source=localhost\\SQLExpress;Initial Catalog=ksetu;Integrated Security=True;";
        //Development - dev.knowledgesetu.com
        //private static String _sqlConstring = "Data Source=localhost;Initial Catalog=weexpo;Persist Security Info=True;User ID=sa; Password=evisql@0507; pooling=true;max pool size=10000;";
        //Production - knowledgesetu.com
        //private static String _sqlConstring = "Data Source=localhost;Initial Catalog=ksetu;Persist Security Info=True;User ID=sa; Password=evisql@0507; pooling=true;max pool size=10000;";
        //private static String _sqlConstring = "Data Source=vmA9D8CD3; Initial Catalog=ksetu; User ID=sa; Password=mgsissql@121;";


        public static int conn_counter;
        static SqlConnection SqlConn;
        public static string _erquery;
        public static string userid;

        public SqlConnection getConnection()
        {
            try
            {
                SqlConn = new SqlConnection(_sqlConstring);
                if (SqlConn == null)
                {
                    SqlConn.Open();
                    //var path = HttpContext.Current.Server.MapPath("~/error_coo"); ;
                    //conn_counter++;
                    //byte[] data = Encoding.ASCII.GetBytes("Count :" + conn_counter.ToString() + " - ID :" + userid);
                    //string newFileName = Guid.NewGuid() + ".txt";
                    //File.WriteAllBytes(Path.Combine(path, newFileName), data);
                    return SqlConn;
                }
                else
                {
                    if (SqlConn.State == ConnectionState.Closed)
                    {
                        //var path = HttpContext.Current.Server.MapPath("~/error_coo"); ;
                        //conn_counter++;
                        //byte[] data = Encoding.ASCII.GetBytes("Count :" + conn_counter.ToString() + " - ID :" + userid);
                        //string newFileName = Guid.NewGuid() + ".txt";
                        //File.WriteAllBytes(Path.Combine(path, newFileName), data);
                        SqlConn.Open();
                    }
                }
                return SqlConn;
            }
            catch (Exception Ex)
            {
                //var path = HttpContext.Current.Server.MapPath("~/error"); ;

                //string text = Ex.Message.ToString() + _erquery;
                //byte[] data = Encoding.ASCII.GetBytes(text);
                //string newFileName = Guid.NewGuid() + ".txt";
                //File.WriteAllBytes(Path.Combine(path, newFileName), data);
                if (SqlConn.State == ConnectionState.Open)
                {
                    SqlConn.Close();
                }

                String SS = Ex.Message;
                throw Ex;
            }
        }
        public SqlConnection testConnection()
        {
            try
            {
                SqlConn = new SqlConnection(_sqlConstring);
                if (SqlConn == null)
                {
                    SqlConn.Open();
                    return SqlConn;
                }
                else
                {
                    if (SqlConn.State == ConnectionState.Closed)
                        SqlConn.Open();
                    return SqlConn;
                }
            }
            catch (Exception Ex)
            {
                throw Ex;
            }
        }
        // this method to close a current connection
        public void CloseConnection()
        {
            SqlConn = new SqlConnection(_sqlConstring);
            try
            {
                SqlConn.Close();
            }
            catch (Exception Ex)
            {
                String St = Ex.Message;
            }
        }
        public void returnConnection(SqlConnection sqlCon)
        {

        }

        public void getquery(string _qs)
        {
            _erquery = _qs;

        }

        public void getuserid(string id)
        {
            userid = id;
        }

    }
}