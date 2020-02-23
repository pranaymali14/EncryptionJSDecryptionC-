<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="About.aspx.cs" Inherits="About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <h3>Your application description page.</h3>
    <p>Use this area to provide additional information.</p>
     <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
    <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClientClick=" return Encryption();" OnClick="btnSubmit_Click" />
    <script type="text/javascript">
        function Encryption() {
            
            var number = document.getElementById('MainContent_txtName').value;
            console.log(number);
            var key = CryptoJS.enc.Utf8.parse('AMINHAKEYTEM32NYTES1234567891234');
            var iv = CryptoJS.enc.Utf8.parse('7061737323313233');
            var encrypted = CryptoJS.AES.encrypt(CryptoJS.enc.Utf8.parse(number), "Secret Passphrase", key,
                {
                    keySize: 128,
                    iv: iv,
                    mode: CryptoJS.mode.CBC,
                    padding: CryptoJS.pad.Pkcs7
                }); 

            document.getElementById('MainContent_txtName').value = encrypted;
        }
    </script>
    <script type="text/javascript" src="Scripts/CryptoJS/js/core.js"></script>
    <script type="text/javascript" src="Scripts/CryptoJS/js/enc-utf16.js"></script>
    <script type="text/javascript" src="Scripts/CryptoJS/js/enc-base64.js"></script>
    <script type="text/javascript" src="Scripts/CryptoJS/js/md5.js"></script>
     <script type="text/javascript" src="Scripts/CryptoJS/js/sha1.js"></script>
    <script type="text/javascript" src="Scripts/CryptoJS/js/sha256.js"></script>
      <script type="text/javascript" src="Scripts/CryptoJS/js/evpkdf.js"></script>
        <script type="text/javascript" src="Scripts/CryptoJS/js/cipher-core.js"></script>
    
  
    

    <script type="text/javascript" src="Scripts/CryptoJS/js/aes.js"></script>
</asp:Content>
