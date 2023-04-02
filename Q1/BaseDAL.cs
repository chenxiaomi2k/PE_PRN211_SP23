﻿using Microsoft.Data.SqlClient;
using Microsoft.Extensions.Configuration;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Q1
{
    internal class BaseDAL
    {
        public ButtonDataProvider dataProvider { get; set; }
        public SqlConnection connection = null;
        public BaseDAL()
        {
            var connectionString = GetConnectionString();
            dataProvider = new ButtonDataProvider(connectionString);
        }

        public string GetConnectionString()
        {
            string conn;
            IConfiguration configuration = new ConfigurationBuilder().SetBasePath(Directory.GetCurrentDirectory())
                .AddJsonFile("appsettings.json", true, true).Build();
            conn = configuration["ConnectionStrings:PE"];
            return conn;
        }

        public void CloseConnection() => dataProvider.CloseConnection(connection);

    }
}
