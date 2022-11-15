namespace SQLServer01
{
    partial class frmMain
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.btnConnect = new System.Windows.Forms.Button();
            this.btnGetData = new System.Windows.Forms.Button();
            this.lstBrands = new System.Windows.Forms.ListBox();
            this.grdProducts = new System.Windows.Forms.DataGridView();
            this.btnVIPmembers = new System.Windows.Forms.Button();
            ((System.ComponentModel.ISupportInitialize)(this.grdProducts)).BeginInit();
            this.SuspendLayout();
            // 
            // btnConnect
            // 
            this.btnConnect.Location = new System.Drawing.Point(34, 27);
            this.btnConnect.Name = "btnConnect";
            this.btnConnect.Size = new System.Drawing.Size(178, 110);
            this.btnConnect.TabIndex = 0;
            this.btnConnect.Text = "Connect";
            this.btnConnect.UseVisualStyleBackColor = true;
            this.btnConnect.Click += new System.EventHandler(this.btnConnect_Click);
            // 
            // btnGetData
            // 
            this.btnGetData.Location = new System.Drawing.Point(34, 169);
            this.btnGetData.Name = "btnGetData";
            this.btnGetData.Size = new System.Drawing.Size(178, 130);
            this.btnGetData.TabIndex = 1;
            this.btnGetData.Text = "Get Data";
            this.btnGetData.UseVisualStyleBackColor = true;
            this.btnGetData.Click += new System.EventHandler(this.btnGetData_Click);
            // 
            // lstBrands
            // 
            this.lstBrands.FormattingEnabled = true;
            this.lstBrands.Location = new System.Drawing.Point(240, 27);
            this.lstBrands.Name = "lstBrands";
            this.lstBrands.Size = new System.Drawing.Size(510, 264);
            this.lstBrands.TabIndex = 2;
            this.lstBrands.SelectedIndexChanged += new System.EventHandler(this.lstBrands_SelectedIndexChanged);
            // 
            // grdProducts
            // 
            this.grdProducts.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.grdProducts.Location = new System.Drawing.Point(34, 322);
            this.grdProducts.Name = "grdProducts";
            this.grdProducts.RowHeadersWidth = 62;
            this.grdProducts.Size = new System.Drawing.Size(1379, 796);
            this.grdProducts.TabIndex = 3;
            // 
            // btnVIPmembers
            // 
            this.btnVIPmembers.Location = new System.Drawing.Point(778, 29);
            this.btnVIPmembers.Name = "btnVIPmembers";
            this.btnVIPmembers.Size = new System.Drawing.Size(381, 121);
            this.btnVIPmembers.TabIndex = 4;
            this.btnVIPmembers.Text = "VIP Management";
            this.btnVIPmembers.UseVisualStyleBackColor = true;
            this.btnVIPmembers.Click += new System.EventHandler(this.btnVIPmembers_Click);
            // 
            // frmMain
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1459, 1155);
            this.Controls.Add(this.btnVIPmembers);
            this.Controls.Add(this.grdProducts);
            this.Controls.Add(this.lstBrands);
            this.Controls.Add(this.btnGetData);
            this.Controls.Add(this.btnConnect);
            this.Name = "frmMain";
            this.Text = "Welcome to SQL Server Tester";
            ((System.ComponentModel.ISupportInitialize)(this.grdProducts)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Button btnConnect;
        private System.Windows.Forms.Button btnGetData;
        private System.Windows.Forms.ListBox lstBrands;
        private System.Windows.Forms.DataGridView grdProducts;
        private System.Windows.Forms.Button btnVIPmembers;
    }
}

