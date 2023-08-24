using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace investchattigarh.Models
{
    public class Master
    {
        public int key1 { get; set; }
        public int key2 { get; set; }
    }
    public class JsonReturn
    {
        public string key { get; set; }
        public string kpi { get; set; }
        public object value { get; set; }

    }
    public class jsonArray
    {
        public int key { get; set; }
        public string value { get; set; }
    }
    public class MasterExhibitor
    {
        public string comapny_name { get; set; }
        public string comapny_add { get; set; }
        public string representative { get; set; }
        public string designation { get; set; }
        public string mail { get; set; }
        public string contact { get; set; }
        public string category { get; set; }
        public string space_type { get; set; }
        public string gst_number { get; set; }

    }
    public class MasterRegisterDetail
    {
        public string name { get; set; }
        public string mail { get; set; }
        public string contact { get; set; }
        public string city { get; set; }
        public string interested_date { get; set; }
        public string interested_in { get; set; }
        public string register_as { get; set; }

    }
    public class SignUp
    {
        public string name { get; set; }
        public string mail_id { get; set; }
        public string password { get; set; }
        public int user_type { get; set; }
    }
    public class MasterSignUpType
    {
        public int type_id { get; set; }
        public string type_des { get; set; }
    }
    public class EducatorInfo
    {

    }

    public class SlotBooking
    {
        public string slotid { get; set; }
        public string bookingstatus { get; set; }
        public string customerid { get; set; }
    }

    public class SlotData
    {
        public string slot_title { get; set; }
        public int slot_id { get; set; }
        public int status_id { get; set; }
        public string bookingstatus { get; set; }
        public string space { get; set; }
    }
    public class masterDelegateDetails
    {
        public int delegate_id { get; set; }
        public string Name { get; set; }
        public string Description { get; set; }
        public string logo_path { get; set; }
        public object img_path { get; set; }
    }
    public class masterStudentReplyMail
    {
        public int student_id { get; set; }
        public string name { get; set; }
        public string parent_name { get; set; }
        public string email { get; set; }
    }
}