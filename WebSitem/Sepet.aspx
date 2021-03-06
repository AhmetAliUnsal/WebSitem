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
    <form runat="server">
    <div class="cart-area section-padding-0-100 clearfix">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="cart-table clearfix">
                        <table class="table table-responsive">
                            
                            
                            <asp:Repeater ID="repeaterurunalan" runat="server">
                                <HeaderTemplate>
                                    <thead>
                                        <tr>
                                             <th>Ürün</th>
                                             <th>Adet</th>
                                             <th>Fiyat</th>
                                             <th>Toplam</th>
                                            
                                        </tr>
                                     </thead>
                                    <tbody>
                                </HeaderTemplate>
                                <ItemTemplate>
                                    <tr>
                                    <form action="Sepet.aspx" method="get" >
                                    <td class="cart_product_img">
                                        <a href="#"><img src="<%# Eval("urunresimi") %>" alt=""></a>
                                        <h5><%# Eval("urunadi") %></h5>
                                    </td>
                                    <td class="qty">
                                        <div class="quantity">
                                            <%--<span class="qty-minus" onclick="var effect = document.getElementById('qty'); var qty = effect.value; if( !isNaN( qty ) &amp;&amp; qty &gt; 1 ) effect.value--;return false;"><i class="fa fa-minus" aria-hidden="true"></i></span>--%>
                                            <input type="hidden" name="Urunid1" value="<%# Eval("urunfkid") %>" />
                                            <input type="hidden" name="Sepetid" value="<%# Eval("sepetid") %>" />
                                            <input type="hidden" name="Urunfiyat" value="<%# Eval("urunfiyat") %>"/>
                                            <input type="hidden" name="urunad" value="<%# Eval("urunadi") %>"/>
                                            <input type="hidden" name="urunresimadres" value="<%# Eval("urunresimi") %>" />
                                            <input type="number" class="qty-text" id="qty" step="1" min="1" max="99" name="quantity" value="<%# Eval("urunadet") %>">
                                            <%--<span class="qty-plus" onclick="var effect = document.getElementById('qty'); var qty = effect.value; if( !isNaN( qty )) effect.value++;return false;"><i class="fa fa-plus" aria-hidden="true"></i></span>--%>
                                        </div>
                                    </td>
                                    <td class="price"><span><%# Eval("urunfiyat") %></span></td>
                                    <td class="total_price"><%# Eval("fiyat") %><span></span></td>
                                    <td>
                                        <input type="hidden" name="guncelleneceksepetid" value="<%# Eval("sepetid") %>"/>
                                        <input type="submit" class="btn btn-success" value="Guncelle" style="width:100px"/>

                                    </td>
                                    
                                </form> 
                                <form action="Sepet.aspx" method="get">
                                    <input type="hidden" name="Silineceksepetid" value="<%# Eval("sepetid") %>" />
                                    <td><input type="submit" class="btn btn-danger" value="Sil" style="width:100px" /></td>
                                </form>
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
                        <asp:Label ID="ToplamTutar" runat="server" Font-Size="Large" Font-Bold="true" Text="Sepet Tutar:"></asp:Label>
                        <div class="checkout-btn">
                            <br /><br /><asp:Button ID="SiparisEkranınaGec" CssClass="btn alazea-btn" Width="1100px" Font-Size="Large" Font-Bold="true" runat="server" OnClick="SiparisEkranınaGec_Click" Text="Ödemeye Geç" />
                            
                        </div>
                    </div>
                </div>
           

        </div>
    </div>
    <!-- ##### Cart Area End ##### -->
    </form>
</asp:Content>
