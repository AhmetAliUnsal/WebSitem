<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Urunİslemleri.aspx.cs" Inherits="WebSitem.Urunİslemleri" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadAlan" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="SayfaBaslik" runat="server">
    <div class="top-breadcrumb-area bg-img bg-overlay d-flex align-items-center justify-content-center" style="background-image: url(template/img/bg-img/24.jpg);">
            <h2>Ürün İşlemleri</h2>
        </div>

        <div class="container">
            <div class="row">
                <div class="col-12">
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a href="Default.aspx"><i class="fa fa-home"></i> Anasayfa</a></li>
                            <li class="breadcrumb-item active" aria-current="page">Urun İşlemleri</li>
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
                        <form runat="server">
                        <table class="table table-responsive">
                            <thead>
                                <tr>
                                    <th>Ürün</th>
                                    <th>Stok</th>
                                    <th>Ürün Birim Fiyat</th>
                                    <th>Durum</th>
                                    <th>Kategori</th>
                                    <th></th>
                                </tr>
                            </thead>
                            
                            <tbody>
                            <asp:Repeater ID="repeaterurunalan" runat="server">
                                <ItemTemplate>
                                    <tr>
                                    <form action="Urun%20Guncelleme.aspx" method="get" >
                                    <td class="cart_product_img">
                                        <a href="#"><img src="<%# Eval("urunresimadres") %>" alt=""></a>
                                        <h5><%# Eval("urunadi") %></h5>
                                    </td>
                                    <td class="qty">
                                        <div class="quantity">
                                            <input type="hidden" name="Kategorifk" value="<%# Eval("urunkategorifkid") %>" />
                                            <input type="hidden" name="Durumfk" value="<%# Eval("durumfkid") %>"/>
                                            <input type="hidden" name="urunad" value="<%# Eval("urunadi") %>"/>
                                            <input type="hidden" name="urunidsi" value="<%# Eval("urunid") %>"/>
                                            <input type="hidden" name="urunfiyat" value="<%# Eval("urunbirimfiyat") %>"/>
                                            <input type="hidden" name="resimadres" value="<%# Eval("urunresimadres") %>" />
                                            <label><%# Eval("urunstok") %> Adet</label>
                                        </div>
                                    </td>
                                    <td class="price"><label><%# Eval("urunbirimfiyat") %> TL</label></td>
                                   
                                    <td><label><%# Eval("durumfkid") %></label></td>
                                    <td><label><%# Eval("urunkategorifkid") %></label></td>
                                    <td><input type="submit" class="btn btn-success" value="Guncelle" style="width:100px"/></td>
                                    
                                </form> 
                                <form action="Urunİslemleri.aspx" method="get">
                                    <input type="hidden" name="Silinecekurunid" value="<%# Eval("urunid") %>" />
                                    <td><input type="submit" class="btn btn-danger" value="Sil" style="width:100px" /></td>
                                </form>
                                </tr>
                                    
                                </ItemTemplate>
                            </asp:Repeater>
                              
                                
                            </tbody>
                         
                        </table>
                      </form>
                    </div>
                </div>
            </div>


        </div>
    </div>
    <!-- ##### Cart Area End ##### -->

</asp:Content>
