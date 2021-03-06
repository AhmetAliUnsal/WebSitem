<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebSitem.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
 <meta charset='utf-8'>
   <meta name='viewport' content='width=device-width, initial-scale=1'>
   <title>Login</title>
    <link rel="icon" href="template/img/core-img/favicon.ico">
   <link href='https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css' rel='stylesheet'>
   <link href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.0.3/css/font-awesome.css' rel='stylesheet'>
    <style>
body {
    color: #000;
    overflow-x: hidden;
    height: 100%;
    background-image: linear-gradient(to right, #D500F9, #FFD54F);
    background-repeat: no-repeat
}

input,
textarea {
    background-color: #F3E5F5;
    border-radius: 50px !important;
    padding: 12px 15px 12px 15px !important;
    width: 100%;
    box-sizing: border-box;
    border: none !important;
    border: 1px solid #F3E5F5 !important;
    font-size: 16px !important;
    color: #000 !important;
    font-weight: 400
}

input:focus,
textarea:focus {
    -moz-box-shadow: none !important;
    -webkit-box-shadow: none !important;
    box-shadow: none !important;
    border: 1px solid #D500F9 !important;
    outline-width: 0;
    font-weight: 400
}

button:focus {
    -moz-box-shadow: none !important;
    -webkit-box-shadow: none !important;
    box-shadow: none !important;
    outline-width: 0
}

.card {
    border-radius: 0;
    border: none
}

.card1 {
    width: 50%;
    padding: 40px 30px 10px 30px
}

.card2 {
    width: 50%;
    background-image: linear-gradient(to right, #FFD54F, #D500F9)
}

#logo {
    width: 70px;
    height: 60px
}

.heading {
    margin-bottom: 60px !important
}

::placeholder {
    color: #000 !important;
    opacity: 1
}

:-ms-input-placeholder {
    color: #000 !important
}

::-ms-input-placeholder {
    color: #000 !important
}

.form-control-label {
    font-size: 12px;
    margin-left: 15px
}

.msg-info {
    padding-left: 15px;
    margin-bottom: 30px
}

.btn-color {
    border-radius: 50px;
    color: #fff;
    background-image: linear-gradient(to right, #FFD54F, #D500F9);
    padding: 15px;
    cursor: pointer;
    border: none !important;
    margin-top: 40px
}

.btn-color:hover {
    color: #fff;
    background-image: linear-gradient(to right, #D500F9, #FFD54F)
}

.btn-white {
    border-radius: 50px;
    color: #D500F9;
    background-color: #fff;
    padding: 8px 40px;
    cursor: pointer;
    border: 2px solid #D500F9 !important
}

.btn-white:hover {
    color: #fff;
    background-image: linear-gradient(to right, #FFD54F, #D500F9)
}

a {
    color: #000
}

a:hover {
    color: #000
}

.bottom {
    width: 100%;
    margin-top: 50px !important
}

.sm-text {
    font-size: 15px
}

@media screen and (max-width: 992px) {
    .card1 {
        width: 100%;
        padding: 40px 30px 10px 30px
    }

    .card2 {
        width: 100%
    }

    .right {
        margin-top: 100px !important;
        margin-bottom: 100px !important
    }
}

@media screen and (max-width: 768px) {
    .container {
        padding: 10px !important
    }

    .card2 {
        padding: 50px
    }

    .right {
        margin-top: 50px !important;
        margin-bottom: 50px !important
    }
}</style>
   <script type='text/javascript' src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>
   <script type='text/javascript' src='https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js'></script>
   <script type='text/javascript'></script>
    </head>
<body oncontextmenu='return false' class='snippet-body'>
<div class="container px-4 py-5 mx-auto">
    <div class="card card0">
        <div class="d-flex flex-lg-row flex-column-reverse">
            
            <div class="card card1">
                <div class="row justify-content-center my-auto">
                    <div class="col-md-8 col-10 my-5">
                        <form runat="server">
                        <asp:ScriptManager ID="ScriptManagerlogin" runat="server"></asp:ScriptManager>
                        <asp:UpdatePanel ID="UpdatePanellogin" runat="server">
                        <ContentTemplate>
                        
                        <div class="row justify-content-center px-3 mb-3"> 
                            <a href="Default.aspx"><img id="logo" src="template/img/core-img/leaf.png"></a>
                        </div>
                        <a href="Default.aspx"><h3 class="mb-5 text-center heading">ALAZEA</h3></a>
                        <h6 class="msg-info">Lütfen Kayıtlı Olan Hesabınızla Gririş Yapınız</h6>
                        
                        <div class="form-group"> 
                            <label class="form-control-label text-muted">E-mailiniz:</label> 
                            <asp:TextBox ID="email" CssClass="form-control" name="email" runat="server"></asp:TextBox>
                            
                        </div>

                        <div class="form-group"> 
                            <label class="form-control-label text-muted">Şifreniz:</label> 
                            <asp:TextBox ID="psw" name="psw" TextMode="Password" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>

                        <div class="row justify-content-center my-3 px-3"> 
                            <asp:Button ID="Giris" CssClass="btn-block btn-color" runat="server" ForeColor="White" Text="Giris" OnClick="Giris_Click" /><br /><br /><br /><hr />
                            <asp:Label ID="sonuc" runat="server" ForeColor="Red" Text=""></asp:Label>
                        </div>
                        <div class="row justify-content-center my-2"> 
                            <a href="HesapDogrula.aspx"><small class="text-muted">Şifrenizi Mi Unuttunuz?</small></a> 
                        </div>
                        </ContentTemplate>
                        </asp:UpdatePanel>
                        </form>
                    </div>
                </div>
                <div class="bottom text-center mb-5">
                    <p class="sm-text mx-auto mb-3">Kayıtlı bir hesabınız yok mu?
                        <a href="Kayit.aspx"><button class="btn btn-white ml-2">Yeni Hesap Aç</button></a>
                    </p>
                </div>
            </div>
            
            <div class="card card2">
                <div class="my-auto mx-md-5 px-md-5 right">
                    <h3 class="text-white">Şirketimiz Hakkında Bilgiler</h3><br /><hr /> <small class="text-white">Firmamız 2019 yılında Antalya'nın Manavgat ilçesinde kurulmuş olup ana faaliyeti fidan yetiştiriciliğidir.Vizyonumuz ülkemizde yetişen tüm tarım ürünlerinin halkımıza birinci elden ulaşması ve uygun fiyatlar ile halkımıza sunulmasıdır.<br /><hr />Koşulsuz müşteri memnuniyetini sağlayarak sektörde tanınan ve güvenilen olmaya çalıştığımız için hata yapmamaya çalışan bir firmayız.<br /><hr />Ürünlerimizde hiçbir şekilde katkı maddesi, hormon ya da kimyasal madde içermez.Üretiminde hiçbir kimyasal gübre ve katkı maddesi kullanılmadan, doğada kendiliğinden yetişmektedirler.</small>
                </div>
            </div>
        </div>
    </div>
</div>
                            </body>
</html>
