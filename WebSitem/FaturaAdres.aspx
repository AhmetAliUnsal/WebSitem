<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="FaturaAdres.aspx.cs" Inherits="WebSitem.FaturaAdres" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadAlan" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="SayfaBaslik" runat="server">
    <div class="top-breadcrumb-area bg-img bg-overlay d-flex align-items-center justify-content-center" style="background-image: url(template/img/bg-img/24.jpg);">
            <h2>Fatura Adres</h2>
        </div>

        <div class="container">
            <div class="row">
                <div class="col-12">
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a href="Default.aspx"><i class="fa fa-home"></i> Anasayfa</a></li>
                            <li class="breadcrumb-item active" aria-current="page">Fatura Adres</li>
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
                                <div class="col-md-6 mb-4">
                                    <label for="first_name">Adınız:</label>
                                    <asp:TextBox ID="first_name" CssClass="form-control" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorad" runat="server" ControlToValidate="first_name" ForeColor="Red" ErrorMessage="Boş Bırakılamaz!!"></asp:RequiredFieldValidator>
                                </div>
                                <div class="col-md-6 mb-4">
                                    <label for="last_name">Soyadınız:</label>
                                    <asp:TextBox ID="last_name" CssClass="form-control" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorsoyad" runat="server" ControlToValidate="last_name" ForeColor="Red" ErrorMessage="Boş Bırakılamaz"></asp:RequiredFieldValidator>
                               </div>
                                <div class="col-12 mb-4">
                                    <label for="phone_number">Telefon Numarası:</label>
                                    <asp:TextBox ID="phone_number" CssClass="form-control" MaxLength="11" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidatortel" runat="server" ControlToValidate="phone_number" ForeColor="Red" ErrorMessage="Boş Bırakılamaz!"></asp:RequiredFieldValidator>
                                </div>
                                <div class="col-md-6 mb-4">
                                    <label for="city">Şehir</label>
                                    <asp:DropDownList id="dropdownil" AutoPostBack="true" AppendDataBoundItems="true" OnSelectedIndexChanged="dropdownil_SelectedIndexChanged" runat="server">
                                    </asp:DropDownList>
                                </div>
                                <div class="col-md-6 mb-4">
                                    <label for="state">İlçe</label>
                                    <asp:DropDownList id="dropdownilce" runat="server"></asp:DropDownList>
                                </div>
                                <div class="col-12 mb-4">
                                    <label for="company">Adres:</label>
                                    <asp:TextBox ID="address" CssClass="form-control" MaxLength="300" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidatoradres" runat="server" ControlToValidate="address" ForeColor="Red" ErrorMessage="Boş Bırakılamaz"></asp:RequiredFieldValidator>
                                </div>
                                <div class="col-12">
                                    <div class="checkout-btn mt-30">
                                        <asp:Label ID="FaturaEkleSonuc" runat="server" ForeColor="#cc00ff" BackColor="#00ffff" Font-Size="Large" Font-Bold="true" Text=""></asp:Label><br />
                                        <asp:Button ID="Button1" CssClass="btn btn alazea-btn btn-danger" BackColor="#ff3300" OnClick="Button1_Click" runat="server" Text="Kaydet" />
                                        <asp:Button ID="Guncelle" CssClass="btn alazea-btn btn-secondary" BackColor="#33cc33" runat="server" Font-Bold="true" Font-Size="Large" Visible="false" OnClick="Guncelle_Click" Text="Güncelle" /><br /><br />
                                        <asp:Button ID="siparis" CssClass="btn alazea-btn btn-danger" BackColor="#990000" Font-Bold="true" Font-Size="Large" runat="server" Visible="false" OnClick="siparis_Click" Text="Siparişi Onayla" />
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
</asp:Content>
