<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="KişiselBilgiler.aspx.cs" Inherits="WebSitem.KişiselBilgiler" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadAlan" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="SayfaBaslik" runat="server">
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
                                    <label for="state">İlçe</label>
                                    <asp:DropDownList id="dropdownilce" runat="server"></asp:DropDownList>
                                </div>
                                <div class="col-12 mb-4">
                                    <label for="company">Adres:</label>
                                    <asp:TextBox ID="address" CssClass="form-control" MaxLength="300" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidatoradres" runat="server" ControlToValidate="address" ForeColor="Red" ErrorMessage="Boş Bırakılamaz"></asp:RequiredFieldValidator>
                                </div>
                                <div class="col-12">
                                    <div class="d-flex align-items-center">
                                        <!-- Single Checkbox -->
                                        <div class="custom-control custom-checkbox d-flex align-items-center mr-30">
                                            <input type="checkbox" class="custom-control-input" id="customCheck1">
                                            <label class="custom-control-label" for="customCheck1">Adresiniz Sisteme Kayıt Edilsin Mi?</label>
                                        </div>
                                    </div>
                                    <div class="d-flex align-items-center">
                                            <!-- Single Checkbox -->
                                            <div class="custom-control custom-checkbox d-flex align-items-center">
                                                 <input type="checkbox" class="custom-control-input" id="customCheck2">
                                                <label class="custom-control-label" for="customCheck2">Fatura Adresi Aynı Mı?</label>
                                            </div>
                                    </div>
                                    <div class="checkout-btn mt-30">
                                        <asp:Label ID="FaturaEkleSonuc" runat="server" Text=""></asp:Label>
                                        <asp:Button ID="Button1" CssClass="btn alazea-btn w-100 btn-primary" OnClick="Button1_Click" runat="server" Text="Kaydet" />
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
