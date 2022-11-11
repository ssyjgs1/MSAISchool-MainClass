using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

using System.Data.SqlClient;
using System.Collections;

namespace SQLServer01
{
    public partial class frmMain : Form
    {
        private const string CONNECTION_STRING = "ㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁ;";
        private SqlConnection SqlCon = null;
        private SqlCommand SqlCmd = null;
        private SqlDataAdapter SqlApt = new SqlDataAdapter();
        private DataSet dataMain = new DataSet();
        public frmMain()
        {
            InitializeComponent();
        }

        private void btnConnect_Click(object sender, EventArgs e)
        {
            SqlCon = new SqlConnection(CONNECTION_STRING); /*SQL DB하고 연결*/
            btnConnect.Enabled = false; /*연결하고나면 사용할 수 없는 상태가 됨*/
        }


        private void btnGetData_Click(object sender, EventArgs e)
        {
            string query = "SELECT * FROM production.brands";
            SqlCommand cmd = SqlCon.CreateCommand();
            cmd.CommandText = query;

            SqlApt.SelectCommand = cmd;
            SqlApt.Fill(dataMain);

            lstBrands.Items.Clear();

            DataRowCollection dataRows = dataMain.Tables[0].Rows;

            for(int i = 0; i<dataRows.Count; i++)
            {
                lstBrands.Items.Add(dataRows[i][1].ToString());
            }

            btnGetData.Enabled = false;
        }


        //이벤트 핸들러
        private void lstBrands_SelectedIndexChanged(object sender, EventArgs e)
        {
            if(lstBrands.SelectedIndex == -1) /*아무것도 선택하지 않았다면 [-1]*/
            {
                return;
            }


            // Fill to DataGridView
            int SelectedIndex = lstBrands.SelectedIndex;
            
            //상단의 list box에서 무언가를 선택함. 선택한 것이 SelectedIndex에 저장됨.
            //list box에서 보이는 순서와 table set에서 보이는 순서가 동일함.
            //첫 번째 항목(=index 0)을 가지고 와서 이를 문자열로 변환해서 query를 날림.
            //이는 선택한 index가 변화할 때마다 실행됨.
            int selectedBrandId = Int32.Parse(dataMain.Tables[0].Rows[SelectedIndex][0].ToString());


            DataSet dataProducts = new DataSet();
            string query = "SELECT * FROM production.products WHERE brand_id = @brand_id";
            SqlCommand cmd = SqlCon.CreateCommand();
            cmd.Parameters.Add(new SqlParameter("@brand_id", SqlDbType.Int)).Value = selectedBrandId;
            cmd.CommandText = query;
            SqlApt.SelectCommand = cmd; /*새로 만든 cmd객체가 Apt객체에 반영되도록 함*/

            SqlApt.Fill(dataProducts);
            grdProducts.DataSource = dataProducts.Tables[0];
        }

        private void btnVIPmembers_Click(object sender, EventArgs e)
        {
            frmVIPMembers vip = new frmVIPMembers();
            vip.ShowDialog();
        }
    }
}