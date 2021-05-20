<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="KullanıcılarıYonet.aspx.cs" Inherits="WebSitem.KullanıcılarıYonet" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadAlan" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="SayfaBaslik" runat="server">
    
    <div class="top-breadcrumb-area bg-img bg-overlay d-flex align-items-center justify-content-center" style="background-image: url(template/img/bg-img/24.jpg);">
        <h2>Kullanıcılar</h2>
    </div>

    <div class="container">
        <div class="row">
            <div class="col-12">
                <nav aria-label="breadcrumb">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="Default.aspx"><i class="fa fa-home"></i>Anasayfa</a></li>
                        <li class="breadcrumb-item active" aria-current="page">Kullanıcılar</li>
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
                            <thead>
                                <tr>
                                    <th>Musteri Tc </th>
                                    <th> MusteriAd </th>
                                    <th> Musteri Email </th>
                                    <th> Musteri Tur </th>
                                    <th> Musteri Tel </th>
                                    <th> Musteri Sifre </th>
                                </tr>
                            </thead>
                            <tbody>
                            
                            <asp:Repeater ID="repeaterurunalan" runat="server">
                                <ItemTemplate>
                                    <tr>
                                    <form action="KullanıcıGuncelle.aspx" method="get" >
                                    <td class="qty">
                                        <div class="quantity">
                                           
                                            <input type="hidden" name="musteriadi" value="<%# Eval("musteriadi") %>" />
                                            <input type="hidden" name="musteriemail" value="<%# Eval("musteriemail") %>" />
                                            <input type="hidden" name="musteritur" value="<%# Eval("musteritur") %>"/>
                                            <input type="hidden" name="musteritel" value="<%# Eval("musteritel") %>" />
                                            <input type="hidden" name="musterisifre" value="<%# Eval("musterisifre") %>"/>
                                            <input type="hidden" max="11" name="musteriTc" value="<%# Eval("musteriTc") %>">
                                            <span><%# Eval("musteriTc") %></span>
                                        </div>
                                    </td>
                                    <td><span><%# Eval("musteriadi") %></span></td>
                                    <td><span><%# Eval("musteriemail") %></span></td>
                                    <td><span><%# Eval("musteritur") %></span></td>
                                    <td><span><%# Eval("musteritel") %></span></td>
                                    <td><%# Eval("musterisifre") %><span></span></td>
                                    <td>
                                        <input type="hidden" name="guncellenecekkullanici" value="<%# Eval("musteriid") %>"/>
                                        <input type="submit" class="btn btn-success" value="Guncelle" style="width:100px"/>

                                    </td>
                                    
                                </form> 
                                <form action="KullanıcılarıYonet.aspx" method="get">
                                    <input type="hidden" name="Silinecekkullanici" value="<%# Eval("musteriid") %>" />
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

        </div>
    </div>
    <!-- ##### Cart Area End ##### -->
    </form>
</asp:Content>
