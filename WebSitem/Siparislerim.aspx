<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Siparislerim.aspx.cs" Inherits="WebSitem.Siparislerim" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadAlan" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="SayfaBaslik" runat="server">
    <div class="top-breadcrumb-area bg-img bg-overlay d-flex align-items-center justify-content-center" style="background-image: url(template/img/bg-img/24.jpg);">
        <h2>Siparislerim</h2>
    </div>

    <div class="container">
        <div class="row">
            <div class="col-12">
                <nav aria-label="breadcrumb">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="Default.aspx"><i class="fa fa-home"></i>Anasayfa</a></li>
                        <li class="breadcrumb-item active" aria-current="page">Siparislerim</li>
                    </ol>
                </nav>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="OrtaAlan" runat="server">
    <div class="cart-area section-padding-0-100 clearfix">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="cart-table clearfix">
                        <table class="table table-responsive">
                            <thead>
                                <tr>
                                    <th>Ürünler</th>
                                    <th>Adet</th>
                                    <th>Adet Fiyat</th>
                                    <th>Toplam Fiyat</th>
                                    <th>Alış Tarihi</th>
                                    <th></th>
                                </tr>
                            </thead>
                            <tbody>

                                <asp:Repeater ID="repeaterurunalan" runat="server">
                                    <itemtemplate>
                                    <tr>
                                    <form action="Sepet.aspx" method="get" >
                                    <td class="cart_product_img">
                                        <a href="#"><img src="<%# Eval("urunresmi") %>" alt=""></a>
                                        <h5><%# Eval("urunadi") %></h5>
                                    </td>
                                    <td><span><%# Eval("urunadet") %></span></td>
                                    <td class="price"><span><%# Eval("urunbirimfiyat") %></span></td>
                                    <td class="total_price"><span><%# Eval("toplamfiyat") %></span></td>
                                    <td><span><%# Eval("siparistarihi") %></span></td>
                                    
                                </form> 
                                </tr>
                                    
                                </itemtemplate>
                                </asp:Repeater>


                            </tbody>
                        </table>
                    </div>
                </div>
            </div>

        </div>
    </div>
    <!-- ##### Cart Area End ##### -->
</asp:Content>
