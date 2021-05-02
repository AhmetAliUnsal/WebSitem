<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UrunEkle.aspx.cs" Inherits="WebSitem.UrunEkle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadAlan" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="SayfaBaslik" runat="server">
    <div class="top-breadcrumb-area bg-img bg-overlay d-flex align-items-center justify-content-center" style="background-image: url(template/img/bg-img/24.jpg);">
            <h2>Ürün Ekle</h2>
        </div>

        <div class="container">
            <div class="row">
                <div class="col-12">
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a href="Default.aspx"><i class="fa fa-home"></i> Anasayfa</a></li>
                            <li class="breadcrumb-item active" aria-current="page">Ürün Ekle</li>
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
                            <Triggers>
                                    <asp:PostBackTrigger ControlID="Button1" />
                            </Triggers>
                            <ContentTemplate>
                                <div class="row">
                                <div class="col-md-12 mb-4">
                                    <label for="urun_ad">Urun Adı:</label>
                                    <asp:TextBox ID="urun_ad" CssClass="form-control" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorad" runat="server" ControlToValidate="urun_ad" ForeColor="Red" ErrorMessage="Boş Bırakılamaz!!"></asp:RequiredFieldValidator>
                                </div>
                                <div class="col-md-6 mb-4">
                                    <label for="urun_stok">Urun Stok Adedi:</label>
                                    <asp:TextBox ID="urun_stok" CssClass="form-control" MaxLength="5" TextMode="Number" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorsoyad" runat="server" ControlToValidate="urun_stok" ForeColor="Red" ErrorMessage="Boş Bırakılamaz"></asp:RequiredFieldValidator>
                               </div>
                                <div class="col-6 mb-4">
                                    <label for="urun_fiyat">Urun Birim Fiyatı:</label>
                                    <asp:TextBox ID="urun_fiyat" CssClass="form-control" TextMode="Number" MaxLength="5" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidatortel" runat="server" ControlToValidate="urun_fiyat" ForeColor="Red" ErrorMessage="Boş Bırakılamaz!"></asp:RequiredFieldValidator>
                                </div>
                                <div class="col-md-6 mb-4">
                                    <label for="city">Kategori Seçiniz:</label>
                                    <asp:DropDownList id="dropdownkategori" AppendDataBoundItems="true" runat="server">
                                    </asp:DropDownList>
                                </div>
                                <div class="col-md-6 mb-4">
                                    <label for="dropdowndurum">Durumunu Seçiniz:</label>
                                    <asp:DropDownList id="dropdowndurum" AppendDataBoundItems="true" runat="server"></asp:DropDownList>
                                </div>
                              
                                <div class="col-md-12 mb-4">
                                    <label >Urun Resmini Yükleyiniz:</label>
                                    <asp:FileUpload ID="FileUpload1" runat="server"  />
                                </div>
                                <div class="col-12">
                                    <div class="checkout-btn mt-30">
                                        <asp:Label ID="EklemeSonuc" runat="server" ForeColor="Red" Text=""></asp:Label>
                                        <asp:Button ID="Button1" CssClass="btn alazea-btn w-100 btn-danger" OnClick="Button1_Click" runat="server" Text="Kaydet" />
                                        <asp:Label ID="Label1" runat="server" ForeColor="#cc0099" Text=""></asp:Label>
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
