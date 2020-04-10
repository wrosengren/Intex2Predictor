﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Newtonsoft.Json.Linq;
using RestSharp;

namespace PlzWork
{
    public partial class Donators : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void submit_Click(object sender, EventArgs e)
        {
            var client = new RestClient("https://ussouthcentral.services.azureml.net/workspaces/6df5bab55a3943b5be2b12a3e4ce5afb/services/428a079357c74a06bb7f09b899ede058/execute?api-version=2.0&details=true");
            client.Timeout = -1;
            var request = new RestRequest(Method.POST);
            request.AddHeader("Authorization", "Bearer UaVAmiOrOhMO/yqhOhP7BVS3BsmnvVlxnPIC3ba8Cl2WpvwB2v1MxeW8001gHzMj6QJ1Ir6ffyGUumCTy7PIfw==");
            request.AddHeader("Content-Type", "application/json");
            //request.AddHeader("Content-Type", "text/plain");
            request.AddParameter("application/json,text/plain", "{\r\n  \"Inputs\": {\r\n    \"input1\": {\r\n      \"ColumnNames\": [\r\n        \"auto_fb_post_mode\",\r\n        \"category_id\",\r\n        \"category\",\r\n        \"donators\",\r\n        \"title\",\r\n        \"description\",\r\n        \"has_beneficiary\",\r\n        \"media_type\",\r\n        \"project_type\",\r\n        \"location_country\",\r\n        \"is_charity\",\r\n        \"charity_valid\",\r\n        \"has_facebook\",\r\n        \"goal_in_usd\",\r\n        \"current_amount_in_usd\",\r\n        \"avg_amount_per_donor\",\r\n        \"category_Accidents & Emergencies\",\r\n        \"category_Animals & Pets\",\r\n        \"category_Babies & Kids & Family\",\r\n        \"category_Business & Entrepreneurs\",\r\n        \"category_Celebrations & Events\",\r\n        \"category_Community & Neighbors\",\r\n        \"category_Competitions & Pageants\",\r\n        \"category_Creative Arts & Music & Film\",\r\n        \"category_Dreams & Hopes & Wishes\",\r\n        \"category_Education & Learning\",\r\n        \"category_Funerals & Memorials\",\r\n        \"category_Medical & Illness & Healing\",\r\n        \"category_Missions & Faith & Church\",\r\n        \"category_Other\",\r\n        \"category_Sports & Teams & Clubs\",\r\n        \"category_Travel & Adventure\",\r\n        \"category_Volunteer & Service\",\r\n        \"category_Weddings & Honeymoons\",\r\n        \"location_country_AU\",\r\n        \"location_country_CA\",\r\n        \"location_country_CH\",\r\n        \"location_country_DE\",\r\n        \"location_country_ES\",\r\n        \"location_country_FR\",\r\n        \"location_country_GB\",\r\n        \"location_country_IE\",\r\n        \"location_country_IT\",\r\n        \"location_country_NL\",\r\n        \"location_country_Other\",\r\n        \"location_country_US\"\r\n      ],\r\n      \"Values\": [\r\n        [\r\n          \"" + facebookupdate.SelectedValue + "\",\r\n          \"9\",\r\n          \"Funerals & Memorials\",\r\n          \"0\",\r\n          \"" + ctitle.Text + "\",\r\n          \"" + description.Text + "\",\r\n          \"" + beneficiary.SelectedValue + "\",\r\n          \"3\",\r\n          \"1\",\r\n          \"USD\",\r\n          \"" + charity.SelectedValue + "\",\r\n          \"0\",\r\n          \"1\",\r\n          \"" + goal.Text + "\",\r\n          \"0\",\r\n          \"0\",\r\n          \"" + Accident.SelectedValue + "\",\r\n          \"" + animals.SelectedValue + "\",\r\n          \"" + baby.SelectedValue + "\",\r\n          \"" + business.SelectedValue + "\",\r\n          \"" + celebrate.SelectedValue + "\",\r\n          \"" + community.SelectedValue + "\",\r\n          \"" + competitions.SelectedValue + "\",\r\n          \"" + creative.SelectedValue + "\",\r\n          \"" + dream.SelectedValue + "\",\r\n          \"" + education.SelectedValue + "\",\r\n          \"" + funerals.SelectedValue + "\",\r\n          \"" + medical.SelectedValue + "\",\r\n          \"" + mission.SelectedValue + "\",\r\n          \"" + other.SelectedValue + "\",\r\n          \"" + sports.SelectedValue + "\",\r\n          \"" + Travel.SelectedValue + "\",\r\n          \"" + volunteer.SelectedValue + "\",\r\n          \"" + wedding.SelectedValue + "\",\r\n          \"" + Australlia.SelectedValue + "\",\r\n          \"" + Canada.SelectedValue + "\",\r\n          \"" + Switzerland.SelectedValue + "\",\r\n          \"" + Germany.SelectedValue + "\",\r\n          \"" + Spain.SelectedValue + "\",\r\n          \"" + France.SelectedValue + "\",\r\n          \"" + UnitedK.SelectedValue + "\",\r\n          \"" + Ireland.SelectedValue + "\",\r\n          \"" + italy.SelectedValue + "\",\r\n          \"" + netherlands.SelectedValue + "\",\r\n          \"" + other2.SelectedValue + "\",\r\n          \"" + united.SelectedValue + "\"\r\n        ]\r\n      ]\r\n    }\r\n  },\r\n  \"GlobalParameters\": {}\r\n}", ParameterType.RequestBody);
            IRestResponse response = client.Execute(request);

            var results = JObject.Parse(response.Content);
            string prediction = results["Results"]["output1"]["value"]["Values"].ToString();
            prediction = prediction.Replace("[", "").Replace("]", "").Replace("\"", "");
            lblResults.Text = Convert.ToString(Math.Round(Convert.ToDecimal(prediction), 0)) + " Donators";
        }
    }
}