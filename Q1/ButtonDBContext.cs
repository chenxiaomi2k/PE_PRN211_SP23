using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Q1
{
    internal class ButtonDBContext : BaseDAL
    {
        public List<Buttonss> GetButtonss()
        {
            IDataReader reader = null;
            string query = "select * from Buttons";
            List<Buttonss> buttons = new List<Buttonss>();
            try
            {
                reader = dataProvider.GetDataReader(query, CommandType.Text, out connection);
                while (reader.Read())
                {
                    buttons.Add(new Buttonss
                    {
                        Id = reader.GetInt32(0),
                        Text = reader.GetString(1),
                        Color = reader.GetString(2)
                    });
                }
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
            finally
            {
                reader.Close();
                CloseConnection();
            }
            return buttons;
        }
    }
}
