﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Kayit.aspx.cs" Inherits="WebSitem.Kayit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
 <meta charset='utf-8'>
   <meta name='viewport' content='width=device-width, initial-scale=1'>
   <title>Snippet - BBBootstrap</title>
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
                        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                        <ContentTemplate>
                        <div class="row justify-content-center px-3 mb-3"> 
                            <a href="Default.aspx"><img id="logo" src="template/img/core-img/leaf.png"></a> 
                        </div>
                        <a href="Default.aspx"><h3 class="mb-5 text-center heading">ALAZEA</h3></a>
                        <h6 class="msg-info">Lütfen Eksiksiz Bir Şekilde Doldurunuz</h6>

                         <div class="form-group"> 
                            <label class="form-control-label text-muted">Adınız Soyadınız:</label> 
                            <asp:TextBox ID="kullaniciadsoyad" CssClass="form-control" runat="server"></asp:TextBox>
                             <asp:RequiredFieldValidator ID="Requiredadsoyad" runat="server" ControlToValidate="kullaniciadsoyad" ForeColor="Red" ErrorMessage="Bu bölüm boş bırakılamaz!"></asp:RequiredFieldValidator>
                               
                        </div>

                        <div class="form-group"> 
                            <label class="form-control-label text-muted">Tc Kimlik Numaranız:</label> 
                             <asp:TextBox ID="kullanicitcno" CssClass="form-control" MaxLength="11"  runat="server"></asp:TextBox>
                             <asp:RequiredFieldValidator ID="RequiredTcNo" ControlToValidate="kullanicitcno" ForeColor="Red" runat="server" ErrorMessage="Bu bölüm boş bırakılamaz!"></asp:RequiredFieldValidator>
                         </div>
                         <div class="form-group"> 
                            <label class="form-control-label text-muted">E-mailiniz:</label> 
                            <asp:TextBox ID="kullanicimail" CssClass="form-control" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="Requiredkullanimail" runat="server" ControlToValidate="kullanicimail" ForeColor="Red" ErrorMessage="Bu bölüm boş bırakılamaz!"></asp:RequiredFieldValidator><br />
                            <asp:RegularExpressionValidator ID="RegularExpressionmail" runat="server" ControlToValidate="kullanicimail" ForeColor="Red" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ErrorMessage="Girilen Eposta geçersiz"></asp:RegularExpressionValidator>
                         </div>
                        
                        <div class="form-group"> 
                            <label class="form-control-label text-muted">Telefon Numaranız:</label> 
                            <asp:TextBox ID="kullanicitel" CssClass="form-control" MaxLength="11" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="Requiredkullanicitel" runat="server" ControlToValidate="kullanicitel" ForeColor="Red" ErrorMessage="Bu bölüm boş bırakılamaz!"></asp:RequiredFieldValidator>
                        </div>

                        <div class="form-group"> 
                            <label class="form-control-label text-muted">Şifreniz:</label> 
                            <asp:TextBox ID="kullanicisifre1" CssClass="form-control" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="Requiredkullanicisifre1" runat="server" ControlToValidate="kullanicisifre1" ForeColor="Red" ErrorMessage="Bu bölüm boş bırakılamaz!"></asp:RequiredFieldValidator>
                        </div>
                        
                        <div>
                            <label class="form-control-label text-muted">Şifre Tekrar</label>
                             <asp:TextBox ID="kullanicisifre2" CssClass="form-control" runat="server"></asp:TextBox>
                             <asp:RequiredFieldValidator ID="Requiredkullanicisifre2" runat="server" ControlToValidate="kullanicisifre2" ForeColor="Red" ErrorMessage="Bu bölüm boş bırakılamaz!"></asp:RequiredFieldValidator>
                        </div>

                        <div class="row justify-content-center my-3 px-3"> 
                            <asp:Button ID="Kaydet" CssClass="btn-block btn-color" runat="server" ForeColor="White" Text="Giris" OnClick="Kaydet_Click" /><br /><br /><br /><br />
                            <asp:Label ID="kayitsonuc" runat="server" ForeColor="Red" BackColor="Yellow" Text=""></asp:Label>
                        </div>
                        
                        </ContentTemplate>
                        </asp:UpdatePanel>
                        
                        </form>
                    </div>
                </div>
                <div class="bottom text-center mb-5">
                    <p class="sm-text mx-auto mb-3">Kayıtlı bir hesabınız var mı?
                        <a href="Login.aspx"><button class="btn btn-white ml-2">Giriş Yap</button></a>
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
    <script>    
        window.onload = function () {
        document.getElementById("kullanicisifre1").onchange = validatePassword;
        document.getElementById("kullanicisifre2").onchange = validatePassword;
        document.getElementById("kullanicitcno").onchange = TcDogrula;
        /*document.getElementById("kullanicimail").onchange = EmailDogrula;*/
        
        }

        function validatePassword() {
        var pass2 = document.getElementById("kullanicisifre2").value;
        var pass1 = document.getElementById("kullanicisifre1").value;
        if (pass1 != pass2)
             document.getElementById("kullanicisifre2").setCustomValidity("Şifreleriniz eşleşmiyor");
        else
             document.getElementById("kullanicisifre2").setCustomValidity('');
            //empty string means no validation error
        }
        function TcDogrula() {
        var tcno = document.getElementById("kullanicitcno").value;
        var toplam;
        toplam = Number(tcno.substring(0, 1)) + Number(tcno.substring(1, 2)) +
            Number(tcno.substring(2, 3)) + Number(tcno.substring(3, 4)) +
            Number(tcno.substring(4, 5)) + Number(tcno.substring(5, 6)) +
            Number(tcno.substring(6, 7)) + Number(tcno.substring(7, 8)) +
            Number(tcno.substring(8, 9)) + Number(tcno.substring(9, 10));
        strtoplam = String(toplam); onunbirlerbas = strtoplam.substring(strtoplam.length, strtoplam.length - 1);

        if (onunbirlerbas == tcno.substring(10, 11)) {
            document.getElementById("kullanicitcno").setCustomValidity('');
        } else {
            document.getElementById("kullanicitcno").setCustomValidity("TC numarası doğru değil!");
            }
        }
        
        
       
                    </script>
</body>
</html>

