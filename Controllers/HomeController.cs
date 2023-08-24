using Newtonsoft.Json.Linq;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Http;


namespace investchattigarh.Controllers
{
    public class HomeController
    {
    }
    public class investRegController : ApiController
    {
        public String Post(JObject jObject)
        {

            DAC.clsform _in = new clsform();
            jsonData _json = new jsonData();
            dynamic json = jObject;
            string data = json.data;
            return _in.insertNewRecord(data);
        }


    }
    public class signupController : ApiController
    {
        public String Post(JObject jObject)
        {

            DAC.clsform _in = new clsform();
            jsonData _json = new jsonData();
            dynamic json = jObject;
            string data = json.data;
            return _in.signUpinvest(data);
        }


    }


    public class registerController : ApiController
    {
        public String Post(JObject jObject)
        {

            DAC.clsform _in = new clsform();
            jsonData _json = new jsonData();
            dynamic json = jObject;
            string data = json.data;
            return _in.regweb(data);
        }


    }


    internal class clsform : DAC.clsform
    {
    }

    public class jsonData
    {
        public object d { get; set; }
    }

    public class jsonArray
    {
        public string status { get; set; }
        public string message { get; set; }
        public object data { get; set; }
    }

}