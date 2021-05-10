<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="KişiselBilgiler.aspx.cs" Inherits="WebSitem.KişiselBilgiler" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadAlan" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="SayfaBaslik" runat="server">
     <div class="top-breadcrumb-area bg-img bg-overlay d-flex align-items-center justify-content-center" style="background-image: url(template/img/bg-img/24.jpg);">
            <h2>İletişim</h2>
        </div>

        <div class="container">
            <div class="row">
                <div class="col-12">
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a href="Default.aspx"><i class="fa fa-home"></i> Anasayfa</a></li>
                            <li class="breadcrumb-item active" aria-current="page">Kişisel Bilgiler</li>
                        </ol>
                    </nav>
                </div>
            </div>
        </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="OrtaAlan" runat="server">
    <!-- ##### Checkout Area Start ##### -->
    <div class="checkout_area mb-100">
        <div class="container">
            <div class="row justify-content-between">
                <div class="col-12 col-lg-7">
                    <div class="checkout_details_area clearfix">
                        <h5>Adres Detayları</h5>
                        <form action="#" method="post" runat="server">
                            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                <ContentTemplate>
                                     <div class="row">
                                <div class="col-md-12 mb-4">
                                    <label>Adınız Soyadınız:</label> 
                                    <asp:TextBox ID="kullaniciadsoyad" CssClass="form-control" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="Requiredadsoyad" runat="server" ControlToValidate="kullaniciadsoyad" ForeColor="Red" ErrorMessage="Bu bölüm boş bırakılamaz!"></asp:RequiredFieldValidator>
                                </div>
                                <div class="col-md-12 mb-4">
                                    <label class="form-control-label text-muted">Tc Kimlik Numaranız:</label> 
                                    <asp:TextBox ID="kullanicitcno" CssClass="form-control" MaxLength="11"  runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredTcNo" ControlToValidate="kullanicitcno" ForeColor="Red" runat="server" ErrorMessage="Bu bölüm boş bırakılamaz!"></asp:RequiredFieldValidator>
                                </div>
                                <div class="col-12 mb-4">
                                   <label class="form-control-label text-muted">E-mailiniz:</label> 
                                   <asp:TextBox ID="kullanicimail" CssClass="form-control" runat="server"></asp:TextBox>
                                   <asp:RequiredFieldValidator ID="Requiredkullanimail" runat="server" ControlToValidate="kullanicimail" ForeColor="Red" ErrorMessage="Bu bölüm boş bırakılamaz!"></asp:RequiredFieldValidator><br />
                                   <asp:RegularExpressionValidator ID="RegularExpressionmail" runat="server" ControlToValidate="kullanicimail" ForeColor="Red" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ErrorMessage="Girilen Eposta geçersiz"></asp:RegularExpressionValidator>
                                </div>
                                <div class="col-md-12 mb-4">
                                   <label class="form-control-label text-muted">Telefon Numaranız:</label> 
                                   <asp:TextBox ID="kullanicitel" CssClass="form-control" MaxLength="11" runat="server"></asp:TextBox>
                                   <asp:RequiredFieldValidator ID="Requiredkullanicitel" runat="server" ControlToValidate="kullanicitel" ForeColor="Red" ErrorMessage="Bu bölüm boş bırakılamaz!"></asp:RequiredFieldValidator>
                                </div>
                                <div class="col-12 mb-4">
                                   <label class="form-control-label text-muted">Şifreniz:</label> 
                                    <asp:TextBox ID="kullanicisifre1" CssClass="form-control" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="Requiredkullanicisifre1" runat="server" ControlToValidate="kullanicisifre1" ForeColor="Red" ErrorMessage="Bu bölüm boş bırakılamaz!"></asp:RequiredFieldValidator>
                                </div>
                                <div class="col-12 mb-4"> 
                                    <asp:Button ID="Guncelle" CssClass="btn alazea-btn btn-danger" runat="server" BackColor="#33cc33" ForeColor="White"  Text="Güncelle" OnClick="Guncelle_Click" /><br /><br /><br /><br />
                                    <asp:Label ID="kayitsonuc" runat="server" ForeColor="Red" BackColor="Yellow" Text=""></asp:Label>
                                </div>
                             </div>
                            </div>
                                </ContentTemplate>
                            </asp:UpdatePanel>
                               
                        
                            
                        </form>
                    </div>
                </div>
                </div>
            </div>
        </div>

    <!-- ##### Checkout Area End ##### -->
     <script>    
        window.onload = function () {
        document.getElementById("kullanicitcno").onchange = TcDogrula;
        
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
</asp:Content>
