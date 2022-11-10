using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using System.Data.SqlClient;
using System.Data;

namespace CRUD_Sample1
{
    internal class Program
    {
        private const string ConnectionString = "ㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁ";
        //바뀌지 않는 값은 상수로 선언
        static void Main(string[] args) /*프로젝트의 시작점*/
        {
            SqlConnection con = new SqlConnection(ConnectionString);
            SqlCommand cmd = con.CreateCommand(); /*connection 개체에 종속적인 객체*/
            IDataReader reader = null;

            //Query에서 Parameter 분리
            string query = "SELECT * FROM production.brands WHERE brand_id > @id";
            cmd.CommandText = query;
            cmd.Parameters.Add(new SqlParameter("@id", SqlDbType.Int)).Value = 5;

            con.Open();
            Console.WriteLine("Database Connected!");
            reader = cmd.ExecuteReader();

           
            while (reader.Read())
            {
                Console.WriteLine("{0} - {1}", reader.GetInt32(0), reader.GetString(1));
            }
            
            con.Close();

            Console.ReadLine();
        }
    }
}
