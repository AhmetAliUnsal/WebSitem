<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Magaza.aspx.cs" Inherits="WebSitem.Magaza" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadAlan" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="SayfaBaslik" runat="server">
    <div class="top-breadcrumb-area bg-img bg-overlay d-flex align-items-center justify-content-center" style="background-image: url(template/img/bg-img/24.jpg);">
            <h2>Mağaza</h2>
        </div>

        <div class="container">
            <div class="row">
                <div class="col-12">
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a href="Default.aspx"><i class="fa fa-home"></i> Anasayfa</a></li>
                            <li class="breadcrumb-item active" aria-current="page">Mağaza</li>
                        </ol>
                    </nav>
                </div>
            </div>
        </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="OrtaAlan" runat="server">
    <!-- ##### Shop Area Start ##### -->
    <section class="shop-page section-padding-0-100">
        <div class="container">
            <div class="row">
                <!-- Shop Sorting Data -->
                <div class="col-12">
                    <div class="shop-sorting-data d-flex flex-wrap align-items-center justify-content-between">
                       
                    </div>
                </div>
            </div>
            <form runat="server">
            <div class="row">
                <!-- Sidebar Area -->
                <div class="col-12 col-md-4 col-lg-3">
                    <div class="shop-sidebar-area">


                        <!-- Shop Widget -->
                        <div class="shop-widget catagory mb-50">
                            <h4 class="widget-title">Kategoriler</h4>
                            <div class="widget-desc">
                                <!-- Single Checkbox -->
                                <div class="custom-control custom-checkbox d-flex align-items-center mb-2">
                                    <asp:CheckBox ID="CheckBoxAll" CssClass="form-check-input"  Width="35px" Height="35px" runat="server" />
                                    <label>Tüm Ürünler</label>
                                </div>
                                <!-- Single Checkbox -->
                                <div class="custom-control custom-checkbox d-flex align-items-center mb-2">
                                    <asp:CheckBox ID="CheckBoxMeyve" CssClass="form-check-input"  Width="35px" Height="35px" runat="server" />
                                    <label>Meyve Fidanları</label>
                                </div>
                                <!-- Single Checkbox -->
                                <div class="custom-control custom-checkbox d-flex align-items-center mb-2">
                                    <asp:CheckBox ID="CheckBoxAgac" CssClass="form-check-input"  Width="35px" Height="35px" runat="server" />
                                    <label>Ağaç Fidanları</label>
                                   
                                </div>
                                <!-- Single Checkbox -->
                                <div class="custom-control custom-checkbox d-flex align-items-center mb-2">
                                    <asp:CheckBox ID="CheckBoxTropikal" CssClass="form-check-input"  Width="35px" Height="35px" runat="server" />
                                    <label>Tropikal Meyve Fidanları</label>
                                </div>
                                <!-- Single Checkbox -->
                                <div class="custom-control custom-checkbox d-flex align-items-center mb-2">
                                    <asp:CheckBox ID="CheckBoxCicek" CssClass="form-check-input"  Width="35px" Height="35px" runat="server" />
                                    <label>Çiçekler</label>
                                </div>
                                <br />
                                <asp:Button id="KategoriSırala" runat="server" CssClass="btn-dark align-items-center alazea-btn" OnClick="KategoriSırala_Click" Text="Getir"  />
                            </div>
                        </div>

                        <!-- Shop Widget -->
                        <div class="shop-widget sort-by mb-50">
                            <h4 class="widget-title">Akıllı Sıralamalar</h4>
                            <div class="widget-desc">
                                <!-- Single Checkbox -->
                                <div class="custom-control custom-checkbox d-flex align-items-center mb-2">
                                    <asp:CheckBox ID="CheckBoxisimAZ" CssClass="form-check-input"  Width="35px" Height="35px" runat="server" />
                                    <label>Alfabetik Sıralama A-Z</label>
                                </div>
                                <!-- Single Checkbox -->
                                <div class="custom-control custom-checkbox d-flex align-items-center mb-2">
                                     <asp:CheckBox ID="CheckBoxisimZA" CssClass="form-check-input"  Width="35px" Height="35px" runat="server" />
                                    <label>Alfabetik Sıralama Z-A</label>
                                </div>
                                <!-- Single Checkbox -->
                                <div class="custom-control custom-checkbox d-flex align-items-center mb-2">
                                    <asp:CheckBox ID="CheckBoxFiyatDY" CssClass="form-check-input"  Width="35px" Height="35px" runat="server" />
                                    <label>Fiyat: Düşükten Yükseğe</label>
                                </div>
                                <!-- Single Checkbox -->
                                <div class="custom-control custom-checkbox d-flex align-items-center">
                                    <asp:CheckBox ID="CheckBoxFiyatYD" CssClass="form-check-input" Width="35px" Height="35px" runat="server" />
                                    <label> Fiyat: Yüksekten Düşüğe</label>
                                </div>
                                <br />
                                <asp:Button ID="Urunsirala" runat="server" CssClass="btn-primary align-items-center alazea-btn" OnClick="Urunsirala_Click"  Text="Sırala"  />
                            </div>
                        </div>
                    </div>
                </div>

                <!-- All Products Area -->
                <div class="col-12 col-md-8 col-lg-9">
                    <div class="shop-products-area">
                        <asp:Label id="HatalariYaz" ForeColor="Red" CssClass="align-content-center" Font-Size="Large" runat="server" Text=""></asp:Label><br /><br /><br />
                        <div class="row">
                        
                        <asp:Repeater id="rpturun" runat="server">
                            <ItemTemplate>
                                <!-- Single Product Area -->
                            <div id="sirala" class="col-12 col-sm-6 col-lg-4">
                                <div class="single-product-area mb-50">
                                    <!-- Product Image -->
                                    <div class="product-img">
                                        <a href="shop-details.html"><img src="<%# Eval("urunresimadres") %>" style="width:300px; height:300px " alt=""></a>
                                        <!-- Product Tag -->
                                        <div class="product-tag">
                                            <a href="#"><%# Eval("urunid") %></a>
                                        </div>
                                        <div class="product-meta d-flex">
                                            <a href="#" class="wishlist-btn"><i class="icon_heart_alt"></i></a>
                                            <a href="cart.html" class="add-to-cart-btn">Sepete Ekle</a>
                                            <a href="#" class="compare-btn"><i class="arrow_left-right_alt"></i></a>
                                        </div>
                                    </div>
                                    <!-- Product Info -->
                                    <div class="product-info mt-15 text-center">
                                            <h6 style="color:red"><%# Eval("urunadi") %></h6>
                                            <div>Urun Stok:<%# Eval("urunstok") %> Adet</div>
                                        <div>Adet Fiyatı:<%# Eval("urunbirimfiyat") %> TL</div>
                                    </div>
                                </div>
                            </div>
                            </ItemTemplate>
                        </asp:Repeater>
                        </div>

                    </div>
                </div>
            </div>
          </form>
        </div>
    </section>
    <!-- ##### Shop Area End ##### -->
   
</asp:Content>
