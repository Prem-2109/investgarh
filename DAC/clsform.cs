using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;

namespace investchattigarh.DAC
{
    public class clsform
    {
        Models.TSql _sql = null;
        public clsform()
        {
            _sql = new TSql();
        }




        //public String insertNewRecord(string data)
        //{

        //    string[] user_data = data.Split('$');

        //    string strquery = @"insert into investform ( orgName, resName, designation, mobile, mail,  country, inserteddate, sector) 
        //                        values('" + user_data[0] + "','" + user_data[1] + "','" + user_data[2] + "','" + user_data[3] + "','" + user_data[4] + "','" + user_data[5] + "','" + DateTime.Now.ToString("yyyy-MM-dd") + "','" + user_data[7] + "')";
        //    _sql.doInsert(strquery);


        //    send_ExhibitorThankyouMail(user_data);

        //    return "success";

        //}

        public String insertNewRecord(string data)
        {

            string[] user_data = data.Split('$');

            string strquery = @"insert into registerationinvest ( orgName, resName, mobile, mail,  sector, inserteddate,message) 
                                values('" + user_data[0] + "','" + user_data[1] + "','" + user_data[2] + "','" + user_data[3] + "','" + user_data[4] + "','" + DateTime.Now.ToString("yyyy-MM-dd") + "','" + user_data[5] + "')";
            _sql.doInsert(strquery);


            strquery = @"insert into evi_registration (name, mail,contact,institute ,designation,location,reg_date, reg_type)
                                        values('" + user_data[1] + "','" + user_data[3] + "','" + user_data[2] + "','" + user_data[0] + "','" + user_data[4] + "','" + user_data[5] + "','" + DateTime.Now.ToString("yyyy-MM-dd") + "','" + 1033 + "')";
            _sql.doInsert(strquery);

            //send_ExhibitorThankyouMail(user_data);

            return "success";

        }

        //sign up registration code
        public String signUpinvest(string data)
        {
            string[] user_data = data.Split('$');

            string strquery = @"insert into signupreg ( fullname, org_name, designation, mail,  mobile, country, attendingas,str,ntw,addsup, inserteddate,message) 
                                values('" + user_data[0] + "','" + user_data[1] + "','" + user_data[2] + "','" + user_data[3] + "','" + user_data[4] + "','" + user_data[5] + "','" + user_data[6] + "','" + user_data[7] + "','" + user_data[8] + "','" + user_data[9] + "','" + DateTime.Now.ToString("yyyy-MM-dd") + "','" + user_data[10] + "')";
            _sql.doInsert(strquery);

            strquery = @"insert into evi_registration (name, mail,contact,institute ,designation,location,reg_date, reg_type)
                                        values('" + user_data[0] + "','" + user_data[3] + "','" + user_data[4] + "','" + user_data[1] + "','" + user_data[2] + "','" + user_data[5] + "','" + DateTime.Now.ToString("yyyy-MM-dd") + "','" + 1031 + "')";
            _sql.doInsert(strquery);
            send_SignUpThankyouMail(user_data);
            return "success";
        }



        //webinar registration
        public String regweb(string data)
        {
            string[] user_data = data.Split('$');

            string strquery = @"insert into regwebinar_ic ( fullname, org_name, designation, mail,  mobile, inserteddate,city) 
                                values('" + user_data[0] + "','" + user_data[1] + "','" + user_data[2] + "','" + user_data[4] + "','" + user_data[3] + "','" + DateTime.Now.ToString("yyyy-MM-dd") + "','" + user_data[5] + "')";
            _sql.doInsert(strquery);

            strquery = @"insert into evi_registration (name, mail,contact,institute ,designation, location,reg_date, reg_type)
                                        values('" + user_data[0] + "','" + user_data[4] + "','" + user_data[3] + "','" + user_data[1] + "','" + user_data[2] + "','" + user_data[5] + "','" + DateTime.Now.ToString("yyyy-MM-dd") + "','" + 1032 + "')";
            _sql.doInsert(strquery);
            send_webregThankyouMail(user_data);
            return "success";
        }

        public string send_SignUpThankyouMail(string[] detail)
        {

            string html = "";
            html = html + "<div class='' style='padding:50px;padding-top:25px;'><p></p>";
            html = html + "<h3>Hi  " + detail[0] + ",</h3>";
            html = html + "<p style='text-align:justify;'>You are one step closer to joining us at the Global Investment Summit of Chhattisgarh 2022!</ p>";
            html = html + "<p style='text-align:justify;'>Investgarh Chhattisgarh welcomes you to the world of opportunities exclusively curated to build synergy with the Government of Chhattisgarh. Envisioned by The Honorable Chief Minister Mr Bhupesh Baghel, this initiative opens multiple gates to ideate, innovate and improvise the industrial status quo of the state. This global event is organized with utmost care to make your experience fruitful.</p>";
            html = html + "<p style='text-align:justify;'>We are manifesting careful agendas for the meet with state of the art venue and a post-summit retreat. The meetings and networking are carefully managed to prioritize your requirements and needs. We envisage building a close-knit network of investing communities from around the world. The summit also facilitates exclusive keynote speeches and one-on-one closed room discussions with the key decision-makers and industrial stalwarts. The Summit covers topics ranging from investment & market trends, untapped targets,  financial assistance, funding opportunities, global business partnerships, suppliers & distributor connect and promotion, branding and expansion of businesses.</ p>";
            html = html + "<div><ul style='text-align:justify;'>";
            html = html + "<li>Meet Potential Investors from around the world</li>";
            html = html + "<li>Face to Face Meetings with CM & Key Government Officials of Chhattisgarh</li>";
            html = html + "<li>Pitch or Present Business & Investment Opportunities at the Summit</li>";
            html = html + "<li>Explore Collaborations & Partnership with 1000+ Native Companies</li>";
            html = html + "<li>Network and Interact with International Suppliers and Distributors</li>";
            html = html + "<li>Connect with Top fund managers, private equity firms, HNI’s, Industrialists & Entrepreneurs</li>";
            html = html + "</ul></div>";
            html = html + "<div style='padding-top:0px!important;'>";
            html = html + "<p>Our investor relations team will get in touch with you shortly</p>";
            html = html + "<p>In case of queries, please reach out to us @ mailto:parvatha@icsummit2022.com /+91 8778875516</p>";
            html = html + "<p>Regards,</p>";
            html = html + "<div> <p style='margin:0 !important;'><b>INVESTGARH CHHATTISGARH</b></p>";
            html = html + "<p style='margin:0 !important;'>https://investgarhchhattisgarh.com/</p></div></div>";
            html = html + "<div style='float:left;'><img src='http://it.weexpoindia.com/image/mail/Mailer_2_11.jpg' style='width:100%;'></div>";


            try
            {
                MailMessage mail = new MailMessage();
                SmtpClient SmtpServer = new SmtpClient("smtp.ionos.com");
                mail.From = new MailAddress("info@icsummit2022.com");
                mail.To.Add(detail[3]);
                mail.Subject = "Investgarh Chhattisgarh Global Investors Summit 2022 Sign-up Confirmation";
                mail.IsBodyHtml = true;
                mail.Body = html;
                SmtpServer.Port = 587;
                SmtpServer.Credentials = new System.Net.NetworkCredential("premkumar.g@weexpoindia.com", "Reset&123");
                SmtpServer.EnableSsl = true;
                SmtpServer.Send(mail);
            }
            catch (Exception ex)
            {
                return "FAIL";
            }
            return "SUCCESS";
        }

        public string send_webregThankyouMail(string[] detail)
        {

            string html = "";
            html = html + "<div class='' style='padding:50px;padding-top:25px;'><p></p>";
            html = html + "<h3>Hi  " + detail[0] + ",</h3>";
            html = html + "<p>You’re signed up for Pre-Summit Investors Online Meet</p>";
            html = html + "<p>Here's the details you need:</p>";
            html = html + "<p>Time: 05:30 PM India</p>";
            html = html + "<p>When: 12 Oct 2021</p>";
            html = html + "<p>Webinar ID: 831 0424 7066 </p>";
            html = html + "<p>Passcode: 867984</p>";
            html = html + "<p>Webinar Link:https://us02web.zoom.us/j/83104247066?pwd=QkVhdUIvQ1I0Tkpkck5LWVpjbmM2Zz09 </ p>";
            html = html + "<p>We look forward to seeing you at the meeting! </p>";
            html = html + "<p>Regards,</p>";
            html = html + "<div> <p style='margin:0 !important;'><b>INVESTGARH CHHATTISGARH</b></p>";
            html = html + "<p style='margin:0 !important;'>https://investgarhchhattisgarh.com/</p></div></div>";
            html = html + "<div style='float:left;'><img src='http://it.weexpoindia.com/image/mail/mail-logo.png' style='width:50%;padding-left:50px;'></div>";
            try
            {
                MailMessage mail = new MailMessage();
                SmtpClient SmtpServer = new SmtpClient("smtp.ionos.com");
                mail.From = new MailAddress("info@icsummit2022.com");
                mail.To.Add(detail[4]);
                mail.Subject = "Pre-Summit Investors Online Meet of INVESTGARH CHHATTISGARH";
                mail.IsBodyHtml = true;
                mail.Body = html;
                SmtpServer.Port = 587;
                SmtpServer.Credentials = new System.Net.NetworkCredential("premkumar.g@weexpoindia.com", "Reset&123");
                SmtpServer.EnableSsl = true;
                SmtpServer.Send(mail);
            }
            catch (Exception ex)
            {
                return "FAIL";
            }
            return "SUCCESS";
        }
    }

    internal class TSql : Models.TSql
    {
    }
}