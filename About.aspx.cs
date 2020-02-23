using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class About : Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        string txtValue = txtName.Text;
        EncryptDecrypt encryptDecrypt = new EncryptDecrypt();
        encryptDecrypt.OpenSSLDecrypt(txtValue, "Secret Passphrase");
    }
}