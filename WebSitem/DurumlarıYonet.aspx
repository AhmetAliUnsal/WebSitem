<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DurumlarıYonet.aspx.cs" Inherits="WebSitem.DurumlarıYonet" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadAlan" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="SayfaBaslik" runat="server">
    <div class="top-breadcrumb-area bg-img bg-overlay d-flex align-items-center justify-content-center" style="background-image: url(template/img/bg-img/24.jpg);">
            <h2>Durum Yönetim Paneli</h2>
        </div>

        <div class="container">
            <div class="row">
                <div class="col-12">
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a href="Default.aspx"><i class="fa fa-home"></i> Anasayfa</a></li>
                            <li class="breadcrumb-item active" aria-current="page">Durum Yönetim</li>
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
                               <div id="durumad" class="col-md-12 mb-4">
                                    <label for="durum_ad">Durum Ad:</label>
                                    <asp:TextBox ID="durum_ad" CssClass="form-control" runat="server"></asp:TextBox>
                               </div>
                                
                                <div class="col-12">
                                    <div class="checkout-btn mt-30">
                                        <asp:Button ID="DurumEkle" CssClass="btn btn-primary" runat="server" OnClick="DurumEkle_Click" Text="Durum Ekle" />
                                        <asp:Label ID="EklemeSonuc" runat="server" ForeColor="#cc0099" Text=""></asp:Label>
                                    </div>

                                </div>
                                <div class="col-md-12 mb-4">
                                    <label for="dropdowndurum">Silmek İstediğiniz Durumunu Seçiniz:</label>
                                    <asp:DropDownList id="dropdowndurum" AppendDataBoundItems="true" runat="server"></asp:DropDownList>
                                </div>
                                 <div class="col-12">
                                    <div class="checkout-btn mt-30">
                                        <asp:Button ID="DurumSil" CssClass="btn  btn-danger" runat="server" OnClick="DurumSil_Click" Text="Durum Sil" />
                                        <asp:Label ID="SilSonuc" runat="server" ForeColor="#cc0099" Text=""></asp:Label>
                                    </div>

                                </div>
                                <div class="col-12">
                                    <div class="checkout-btn mt-30">
                                        <asp:Button ID="DurumListele" CssClass="btn  btn-secondary" BackColor="#99ff99" runat="server" OnClick="DurumListele_Click" Text="Durumları Listele" />
                                        <asp:Label ID="ListeSonuc" runat="server" ForeColor="#cc0099" Text=""></asp:Label>
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
