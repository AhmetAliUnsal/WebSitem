<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Sepet.aspx.cs" Inherits="WebSitem.Sepet" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadAlan" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="SayfaBaslik" runat="server">
    <div class="top-breadcrumb-area bg-img bg-overlay d-flex align-items-center justify-content-center" style="background-image: url(template/img/bg-img/24.jpg);">
            <h2>Sepet</h2>
        </div>

        <div class="container">
            <div class="row">
                <div class="col-12">
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a href="Default.aspx"><i class="fa fa-home"></i> Anasayfa</a></li>
                            <li class="breadcrumb-item active" aria-current="page">Sepet</li>
                        </ol>
                    </nav>
                </div>
            </div>
        </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="OrtaAlan" runat="server">
     <!-- ##### Cart Area Start ##### -->
    <div class="cart-area section-padding-0-100 clearfix">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="cart-table clearfix">
                        <table class="table table-responsive">
                            <thead>
                                <tr>
                                    <th>Ürün</th>
                                    <th>Adet</th>
                                    <th>Fiyat</th>
                                    <th>Toplam</th>
                                    <th></th>
                                </tr>
                            </thead>
                            <tbody>
                            <asp:Repeater ID="repeaterurunalan" runat="server">
                                <ItemTemplate>
                                    <tr>
                                    <td class="cart_product_img">
                                        <a href="#"><img src="<%# Eval("urunresimi") %>" alt=""></a>
                                        <h5><%# Eval("urunadi") %></h5>
                                    </td>
                                    <td class="qty">
                                        <div class="quantity">
                                            <span class="qty-minus" onclick="var effect = document.getElementById('qty'); var qty = effect.value; if( !isNaN( qty ) &amp;&amp; qty &gt; 1 ) effect.value--;return false;"><i class="fa fa-minus" aria-hidden="true"></i></span>
                                            <input type="number" class="qty-text" id="qty" step="1" min="1" max="99" name="quantity" value="<%# Eval("urunadet") %>">
                                            <span class="qty-plus" onclick="var effect = document.getElementById('qty'); var qty = effect.value; if( !isNaN( qty )) effect.value++;return false;"><i class="fa fa-plus" aria-hidden="true"></i></span>
                                        </div>
                                    </td>
                                    <td class="price"><span><%# Eval("urunfiyat") %></span></td>
                                    <td class="total_price"><%# Eval("fiyat") %><span></span></td>
                                    <td class="action"><a href="#"><i class="icon_close"></i></a></td>
                                </tr>
                                </ItemTemplate>
                            </asp:Repeater>
                                
                                    
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>

                <!-- Cart Totals -->
                <div class="col-12 col-lg-6 align-content-center">
                    <div class="cart-totals-area mt-70">
                        <h5 class="title--">Sepet Tutar</h5>
                        <div class="subtotal d-flex justify-content-between">
                            <h5>Toplam Tutar</h5>
                            <h5><%# Eval("fiyat") %></h5>
                        </div>
                        <div class="checkout-btn">
                            <a href="GonderimAdres.aspx" class="btn alazea-btn w-100">Ödeme Ekranına Geç</a>
                        </div>
                    </div>
                </div>
           

        </div>
    </div>
    <!-- ##### Cart Area End ##### -->

</asp:Content>
