﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Kategoriİslemleri.aspx.cs" Inherits="WebSitem.Kategoriİslemleri" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadAlan" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="SayfaBaslik" runat="server">
    <div class="top-breadcrumb-area bg-img bg-overlay d-flex align-items-center justify-content-center" style="background-image: url(template/img/bg-img/24.jpg);">
            <h2>Kategori Yönetim Paneli</h2>
        </div>

        <div class="container">
            <div class="row">
                <div class="col-12">
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a href="Default.aspx"><i class="fa fa-home"></i> Anasayfa</a></li>
                            <li class="breadcrumb-item active" aria-current="page">Kategori Yönetim</li>
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
                               <div id="kategoriad" class="col-md-12 mb-4">
                                    <label for="kategoriad">Durum Ad:</label>
                                    <asp:TextBox ID="kategoriad" CssClass="form-control" runat="server"></asp:TextBox>
                               </div>
                                
                                <div class="col-12">
                                    <div class="checkout-btn mt-30">
                                        <asp:Button ID="KategoriEkle" CssClass="btn btn-primary" runat="server" OnClick="KategoriEkle_Click"  Text="Durum Ekle" />
                                        <asp:Label ID="EklemeSonuc" runat="server" ForeColor="#cc0099" Text=""></asp:Label>
                                    </div>

                                </div>
                                <div class="col-md-12 mb-4">
                                    <label for="dropdownkategori">Silmek İstediğiniz Durumunu Seçiniz:</label>
                                    <asp:DropDownList id="dropdownkategori" AppendDataBoundItems="true" runat="server"></asp:DropDownList>
                                </div>
                                 <div class="col-12">
                                    <div class="checkout-btn mt-30">
                                        <asp:Button ID="KategoriSil" CssClass="btn  btn-danger" runat="server" OnClick="KategoriSil_Click"  Text="Durum Sil" />
                                        <asp:Label ID="SilSonuc" runat="server" ForeColor="#cc0099" Text=""></asp:Label>
                                    </div>

                                </div>
                                <div class="col-12">
                                    <div class="checkout-btn mt-30">
                                        <asp:Button ID="KategoriListele" CssClass="btn  btn-secondary" runat="server" OnClick="KategoriListele_Click"  Text="Durumları Listele" />
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
