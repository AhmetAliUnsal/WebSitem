<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Portföyümüz.aspx.cs" Inherits="WebSitem.Portföyümüz" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadAlan" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="SayfaBaslik" runat="server">
        <div class="top-breadcrumb-area bg-img bg-overlay d-flex align-items-center justify-content-center" style="background-image: url(template/img/bg-img/24.jpg);">
            <h2>Portföyümüz</h2>
        </div>

        <div class="container">
            <div class="row">
                <div class="col-12">
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a href="Default.aspx"><i class="fa fa-home"></i> Anasayfa</a></li>
                            <li class="breadcrumb-item active" aria-current="page">Portföyümüz</li>
                        </ol>
                    </nav>
                </div>
            </div>
        </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="OrtaAlan" runat="server">
    <!-- ##### Portfolio Area Start ##### -->
    <section class="alazea-portfolio-area portfolio-page section-padding-0-100">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <!-- Section Heading -->
                    <div class="section-heading text-center">
                        <h2>Portföyümüz</h2>
                        <p>Tüm deneyimlerimizi ve çabalarımızı yaratmaya adadık</p>
                    </div>
                </div>
            </div>
        </div>

        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="alazea-portfolio-filter">
                        <div class="portfolio-filter">
                            <button class="btn active" data-filter="*">All</button>
                            <button class="btn" data-filter=".meyve">Meyve Fidanları</button>
                            <button class="btn" data-filter=".agac">Ağaç Fidanları</button>
                            <button class="btn" data-filter=".tropikal">Tropikal Meyve Fidanları</button>
                            <button class="btn" data-filter=".cicek">Çiçek</button>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row alazea-portfolio">

                <!-- Single Portfolio Area -->
                <div class="col-12 col-sm-6 col-lg-3 single_portfolio_item meyve ">
                    <!-- Portfolio Thumbnail -->
                    <div class="portfolio-thumbnail bg-img" style="background-image: url(template/img/fidanlar/armutfidanı.jpg);"></div>
                    <!-- Portfolio Hover Text -->
                    <div class="portfolio-hover-overlay">
                        <a href="template/img/fidanlar/armutfidanı.jpg" class="portfolio-img d-flex align-items-center justify-content-center" title="Portfolio 1">
                            <div class="port-hover-text">
                                <h3>Armut Fidanı</h3>
                                <h5>Tüplü YarıBodur Erkenci Etruşka(Etrusca) Armut</h5>
                            </div>
                        </a>
                    </div>
                </div>

                <!-- Single Portfolio Area -->
                <div class="col-12 col-sm-6 col-lg-6 single_portfolio_item meyve ">
                    <!-- Portfolio Thumbnail -->
                    <div class="portfolio-thumbnail bg-img" style="background-image: url(template/img/fidanlar/ayvafidanı.jpg);"></div>
                    <!-- Portfolio Hover Text -->
                    <div class="portfolio-hover-overlay">
                        <a href="template/img/fidanlar/ayvafidanı.jpg" class="portfolio-img d-flex align-items-center justify-content-center" title="Portfolio 2">
                            <div class="port-hover-text">
                                <h3>Ayva Fidanı</h3>
                                <h5>Tüplü YarıBodur Eşme Ayva</h5>
                            </div>
                        </a>
                    </div>
                </div>

                <!-- Single Portfolio Area -->
                <div class="col-12 col-sm-6 col-lg-3 single_portfolio_item meyve ">
                    <!-- Portfolio Thumbnail -->
                    <div class="portfolio-thumbnail bg-img" style="background-image: url(template/img/fidanlar/böğürtlen.jpg);"></div>
                    <!-- Portfolio Hover Text -->
                    <div class="portfolio-hover-overlay">
                        <a href="template/img/fidanlar/böğürtlen.jpg" class="portfolio-img d-flex align-items-center justify-content-center" title="Portfolio 4">
                            <div class="port-hover-text">
                                <h3>Böğürtlen Fidanı</h3>
                                <h5>Tüplü Dikensiz Jumbo Böğürtlen</h5>
                            </div>
                        </a>
                    </div>
                </div>

                <!-- Single Portfolio Area -->
                <div class="col-12 col-sm-6 col-lg-3 single_portfolio_item meyve ">
                    <!-- Portfolio Thumbnail -->
                    <div class="portfolio-thumbnail bg-img" style="background-image: url(template/img/fidanlar/cevizfidanı.jpg);"></div>
                    <!-- Portfolio Hover Text -->
                    <div class="portfolio-hover-overlay">
                        <a href="template/img/fidanlar/cevizfidanı.jpg" class="portfolio-img d-flex align-items-center justify-content-center" title="Portfolio 5">
                            <div class="port-hover-text">
                                <h3>Ceviz Fidanı</h3>
                                <h5>Tüplü Chandler Ceviz</h5>
                            </div>
                        </a>
                    </div>
                </div>

                <!-- Single Portfolio Area -->
                <div class="col-12 col-sm-6 col-lg-3 single_portfolio_item meyve ">
                    <!-- Portfolio Thumbnail -->
                    <div class="portfolio-thumbnail bg-img" style="background-image: url(template/img/fidanlar/elmafidanı.jpg);"></div>
                    <!-- Portfolio Hover Text -->
                    <div class="portfolio-hover-overlay">
                        <a href="template/img/fidanlar/elmafidanı.jpg" class="portfolio-img d-flex align-items-center justify-content-center" title="Portfolio 6">
                            <div class="port-hover-text">
                                <h3>Elma Fidanı</h3>
                                <h5>Tüplü Yarıbodur Pink Lady Elma</h5>
                            </div>
                        </a>
                    </div>
                </div>

                    <!-- Single Portfolio Area -->
                <div class="col-12 col-sm-6 col-lg-3 single_portfolio_item meyve ">
                    <!-- Portfolio Thumbnail -->
                    <div class="portfolio-thumbnail bg-img" style="background-image: url(template/img/fidanlar/erikfidanı.jpg);"></div>
                    <!-- Portfolio Hover Text -->
                    <div class="portfolio-hover-overlay">
                        <a href="template/img/fidanlar/erikfidanı.jpg" class="portfolio-img d-flex align-items-center justify-content-center" title="Portfolio 6">
                            <div class="port-hover-text">
                                <h3>Erik Fidanı</h3>
                                <h5>Tüplü Erkenci Tam Bodur Sulu Can Eriği</h5>
                            </div>
                        </a>
                    </div>
                </div>
                      <!-- Single Portfolio Area -->
                <div class="col-12 col-sm-6 col-lg-3 single_portfolio_item meyve ">
                    <!-- Portfolio Thumbnail -->
                    <div class="portfolio-thumbnail bg-img" style="background-image: url(template/img/fidanlar/frenküzümü.jpg);"></div>
                    <!-- Portfolio Hover Text -->
                    <div class="portfolio-hover-overlay">
                        <a href="template/img/fidanlar/frenküzümü.jpg" class="portfolio-img d-flex align-items-center justify-content-center" title="Portfolio 6">
                            <div class="port-hover-text">
                                <h3>Frenk Üzümü Fidanı</h3>
                                <h5>Tüplü İri Meyveli Kokulu Frenk Üzümü</h5>
                            </div>
                        </a>
                    </div>
                </div>
                       <!-- Single Portfolio Area -->
                <div class="col-12 col-sm-6 col-lg-3 single_portfolio_item meyve ">
                    <!-- Portfolio Thumbnail -->
                    <div class="portfolio-thumbnail bg-img" style="background-image: url(template/img/fidanlar/limonfidanı.jpg);"></div>
                    <!-- Portfolio Hover Text -->
                    <div class="portfolio-hover-overlay">
                        <a href="template/img/fidanlar/limonfidanı.jpg" class="portfolio-img d-flex align-items-center justify-content-center" title="Portfolio 6">
                            <div class="port-hover-text">
                                <h3>Limon Fidanı</h3>
                                <h5>Tüplü İnce Kabuklu Yediveren Bol Sulu Limon</h5>
                            </div>
                        </a>
                    </div>
                </div>
                        <!-- Single Portfolio Area -->
                <div class="col-12 col-sm-6 col-lg-3 single_portfolio_item meyve ">
                    <!-- Portfolio Thumbnail -->
                    <div class="portfolio-thumbnail bg-img" style="background-image: url(template/img/fidanlar/mandalinafidanı.jpg);"></div>
                    <!-- Portfolio Hover Text -->
                    <div class="portfolio-hover-overlay">
                        <a href="template/img/fidanlar/mandalinafidanı.jpg" class="portfolio-img d-flex align-items-center justify-content-center" title="Portfolio 6">
                            <div class="port-hover-text">
                                <h3>Mandalina Fidanı</h3>
                                <h5>Tüplü İnce Kabuklu Satsuma Mandalina</h5>
                            </div>
                        </a>
                    </div>
                </div>
                       <!-- Single Portfolio Area -->
                <div class="col-12 col-sm-6 col-lg-3 single_portfolio_item meyve ">
                    <!-- Portfolio Thumbnail -->
                    <div class="portfolio-thumbnail bg-img" style="background-image: url(template/img/fidanlar/nektari.jpg);"></div>
                    <!-- Portfolio Hover Text -->
                    <div class="portfolio-hover-overlay">
                        <a href="template/img/fidanlar/nektari.jpg" class="portfolio-img d-flex align-items-center justify-content-center" title="Portfolio 6">
                            <div class="port-hover-text">
                                <h3>Nektari Fidanı</h3>
                                <h5>Tüplü Venüs Nektari</h5>
                            </div>
                        </a>
                    </div>
                </div>
                      <!-- Single Portfolio Area -->
                <div class="col-12 col-sm-6 col-lg-3 single_portfolio_item meyve ">
                    <!-- Portfolio Thumbnail -->
                    <div class="portfolio-thumbnail bg-img" style="background-image: url(template/img/fidanlar/portakalfidanı.jpg);"></div>
                    <!-- Portfolio Hover Text -->
                    <div class="portfolio-hover-overlay">
                        <a href="template/img/fidanlar/portakalfidanı.jpg" class="portfolio-img d-flex align-items-center justify-content-center" title="Portfolio 6">
                            <div class="port-hover-text">
                                <h3>Portakal Fidanı</h3>
                                <h5>Tüplü Washington Bol Sulu Portakal</h5>
                            </div>
                        </a>
                    </div>
                </div>
                     <!-- Single Portfolio Area -->
                <div class="col-12 col-sm-6 col-lg-3 single_portfolio_item meyve ">
                    <!-- Portfolio Thumbnail -->
                    <div class="portfolio-thumbnail bg-img" style="background-image: url(template/img/fidanlar/üzümfidanı.jpg);"></div>
                    <!-- Portfolio Hover Text -->
                    <div class="portfolio-hover-overlay">
                        <a href="template/img/fidanlar/üzümfidanı.jpg" class="portfolio-img d-flex align-items-center justify-content-center" title="Portfolio 6">
                            <div class="port-hover-text">
                                <h3>Üzüm Fidanı</h3>
                                <h5>Tüplü Siyah Bağ Üzümü</h5>
                            </div>
                        </a>
                    </div>
                </div>
                   <!-- Single Portfolio Area -->
                <div class="col-12 col-sm-6 col-lg-3 single_portfolio_item meyve ">
                    <!-- Portfolio Thumbnail -->
                    <div class="portfolio-thumbnail bg-img" style="background-image: url(template/img/fidanlar/şeftalifidanı.jpg);"></div>
                    <!-- Portfolio Hover Text -->
                    <div class="portfolio-hover-overlay">
                        <a href="template/img/fidanlar/şeftalifidanı.jpg" class="portfolio-img d-flex align-items-center justify-content-center" title="Portfolio 6">
                            <div class="port-hover-text">
                                <h3>Şeftali Fidanı</h3>
                                <h5>Tüplü Spring Crest Şeftali</h5>
                            </div>
                        </a>
                    </div>
                </div>
                   <!-- Single Portfolio Area -->
                <div class="col-12 col-sm-6 col-lg-3 single_portfolio_item meyve ">
                    <!-- Portfolio Thumbnail -->
                    <div class="portfolio-thumbnail bg-img" style="background-image: url(template/img/fidanlar/kayısıfidanı.jpg);"></div>
                    <!-- Portfolio Hover Text -->
                    <div class="portfolio-hover-overlay">
                        <a href="template/img/fidanlar/kayısıfidanı.jpg" class="portfolio-img d-flex align-items-center justify-content-center" title="Portfolio 6">
                            <div class="port-hover-text">
                                <h3>Kayısı Fidanı</h3>
                                <h5>Tüplü YarıBodur Erkenci Kayısı</h5>
                            </div>
                        </a>
                    </div>
                </div>
                  <!-- Single Portfolio Area -->
                <div class="col-12 col-sm-6 col-lg-3 single_portfolio_item meyve ">
                    <!-- Portfolio Thumbnail -->
                    <div class="portfolio-thumbnail bg-img" style="background-image: url(template/img/fidanlar/kirazfidanı.jpg);"></div>
                    <!-- Portfolio Hover Text -->
                    <div class="portfolio-hover-overlay">
                        <a href="template/img/fidanlar/kirazfidanı.jpg" class="portfolio-img d-flex align-items-center justify-content-center" title="Portfolio 6">
                            <div class="port-hover-text">
                                <h3>Kiraz Fidanı</h3>
                                <h5>Tüplü Napolyon İri Kiraz</h5>
                            </div>
                        </a>
                    </div>
                </div>
                  <!-- Single Portfolio Area -->
                <div class="col-12 col-sm-6 col-lg-3 single_portfolio_item meyve ">
                    <!-- Portfolio Thumbnail -->
                    <div class="portfolio-thumbnail bg-img" style="background-image: url(template/img/fidanlar/vişnefidanı.jpg);"></div>
                    <!-- Portfolio Hover Text -->
                    <div class="portfolio-hover-overlay">
                        <a href="template/img/fidanlar/vişnefidanı.jpg" class="portfolio-img d-flex align-items-center justify-content-center" title="Portfolio 6">
                            <div class="port-hover-text">
                                <h3>Vişne Fidanı</h3>
                                <h5>Tüplü Rubin Van Weichesel Vişne</h5>
                            </div>
                        </a>
                    </div>
                </div>
                 <!-- Single Portfolio Area -->
                <div class="col-12 col-sm-6 col-lg-3 single_portfolio_item meyve ">
                    <!-- Portfolio Thumbnail -->
                    <div class="portfolio-thumbnail bg-img" style="background-image: url(template/img/fidanlar/yenidünya.jpg);"></div>
                    <!-- Portfolio Hover Text -->
                    <div class="portfolio-hover-overlay">
                        <a href="template/img/fidanlar/yenidünya.jpg" class="portfolio-img d-flex align-items-center justify-content-center" title="Portfolio 6">
                            <div class="port-hover-text">
                                <h3>Yeni Dünya Fidanı</h3>
                                <h5>Tüplü (Malta Eriği) Yeni Dünya</h5>
                            </div>
                        </a>
                    </div>
                </div>
                 <!-- Single Portfolio Area -->
                <div class="col-12 col-sm-6 col-lg-3 single_portfolio_item meyve ">
                    <!-- Portfolio Thumbnail -->
                    <div class="portfolio-thumbnail bg-img" style="background-image: url(template/img/fidanlar/Trabzonhurması.jpg);"></div>
                    <!-- Portfolio Hover Text -->
                    <div class="portfolio-hover-overlay">
                        <a href="template/img/fidanlar/Trabzonhurması.jpg" class="portfolio-img d-flex align-items-center justify-content-center" title="Portfolio 6">
                            <div class="port-hover-text">
                                <h3>Trabzon Hurması Fidanı</h3>
                                <h5>Tüplü Morali Trabzon Hurması</h5>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="col-12 col-sm-6 col-lg-3 single_portfolio_item meyve ">
                    <!-- Portfolio Thumbnail -->
                    <div class="portfolio-thumbnail bg-img" style="background-image: url(template/img/fidanlar/narfidanı.jpg);"></div>
                    <!-- Portfolio Hover Text -->
                    <div class="portfolio-hover-overlay">
                        <a href="template/img/fidanlar/narfidanı.jpg" class="portfolio-img d-flex align-items-center justify-content-center" title="Portfolio 6">
                            <div class="port-hover-text">
                                <h3>Nar Fidanı</h3>
                                <h5>Tüplü Hicaz Narı</h5>
                            </div>
                        </a>
                    </div>
                </div>
                  <div class="col-12 col-sm-6 col-lg-3 single_portfolio_item meyve ">
                    <!-- Portfolio Thumbnail -->
                    <div class="portfolio-thumbnail bg-img" style="background-image: url(template/img/fidanlar/kumkatfidanı.jpg);"></div>
                    <!-- Portfolio Hover Text -->
                    <div class="portfolio-hover-overlay">
                        <a href="template/img/fidanlar/kumkatfidanı.jpg" class="portfolio-img d-flex align-items-center justify-content-center" title="Portfolio 6">
                            <div class="port-hover-text">
                                <h3>Kumkat Fidanı</h3>
                                <h5>Tüplü-Saksıda Kumkat</h5>
                            </div>
                        </a>
                    </div>
                </div>
                  <div class="col-12 col-sm-6 col-lg-3 single_portfolio_item meyve ">
                    <!-- Portfolio Thumbnail -->
                    <div class="portfolio-thumbnail bg-img" style="background-image: url(template/img/fidanlar/ahududufidanı.jpg);"></div>
                    <!-- Portfolio Hover Text -->
                    <div class="portfolio-hover-overlay">
                        <a href="template/img/fidanlar/ahududufidanı.jpg" class="portfolio-img d-flex align-items-center justify-content-center" title="Portfolio 6">
                            <div class="port-hover-text">
                                <h3>Ahududu Fidanı</h3>
                                <h5>Pembe Ahududu</h5>
                            </div>
                        </a>
                    </div>
                </div>
                     <!-- Single Portfolio Area -->
                <div class="col-12 col-sm-6 col-lg-3 single_portfolio_item meyve ">
                    <!-- Portfolio Thumbnail -->
                    <div class="portfolio-thumbnail bg-img" style="background-image: url(template/img/fidanlar/zeytinfidanı.jpeg);"></div>
                    <!-- Portfolio Hover Text -->
                    <div class="portfolio-hover-overlay">
                        <a href="template/img/fidanlar/zeytinfidanı.jpeg" class="portfolio-img d-flex align-items-center justify-content-center" title="Portfolio 6">
                            <div class="port-hover-text">
                                <h3>Zeytin Fidanı</h3>
                                <h5>Tüplü Gemlik Zeytin</h5>
                            </div>
                        </a>
                    </div>
                </div>


                <!-- Single Portfolio Area -->
                <div class="col-12 col-sm-6 col-lg-3 single_portfolio_item agac">
                    <!-- Portfolio Thumbnail -->
                    <div class="portfolio-thumbnail bg-img" style="background-image: url(template/img/fidanlar/çınarfidanı.jpg);"></div>
                    <!-- Portfolio Hover Text -->
                    <div class="portfolio-hover-overlay">
                        <a href="template/img/fidanlar/çınarfidanı.jpg" class="portfolio-img d-flex align-items-center justify-content-center" title="Portfolio 2">
                            <div class="port-hover-text">
                                <h3>Çınar Fidanı</h3>
                                <h5>Tüplü Çınar Ağacı</h5>
                            </div>
                        </a>
                    </div>
                </div>
                <!-- Single Portfolio Area -->
                <div class="col-12 col-sm-6 col-lg-3 single_portfolio_item agac">
                    <!-- Portfolio Thumbnail -->
                    <div class="portfolio-thumbnail bg-img" style="background-image: url(template/img/fidanlar/gürgenfidanı.jpg);"></div>
                    <!-- Portfolio Hover Text -->
                    <div class="portfolio-hover-overlay">
                        <a href="template/img/fidanlar/gürgenfidanı.jpg" class="portfolio-img d-flex align-items-center justify-content-center" title="Portfolio 2">
                            <div class="port-hover-text">
                                <h3>Gürgen Fidanı</h3>
                                <h5>Tüplü Gürgen Ağacı</h5>
                            </div>
                        </a>
                    </div>
                </div>
                 <!-- Single Portfolio Area -->
                <div class="col-12 col-sm-6 col-lg-3 single_portfolio_item agac">
                    <!-- Portfolio Thumbnail -->
                    <div class="portfolio-thumbnail bg-img" style="background-image: url(template/img/fidanlar/karaçamfidanı.jpg);"></div>
                    <!-- Portfolio Hover Text -->
                    <div class="portfolio-hover-overlay">
                        <a href="template/img/fidanlar/karaçamfidanı.jpg" class="portfolio-img d-flex align-items-center justify-content-center" title="Portfolio 2">
                            <div class="port-hover-text">
                                <h3>Kara Çam Fidanı</h3>
                                <h5>Tüplü Kara Çam Ağacı</h5>
                            </div>
                        </a>
                    </div>
                </div>
                <!-- Single Portfolio Area -->
                <div class="col-12 col-sm-6 col-lg-3 single_portfolio_item agac">
                    <!-- Portfolio Thumbnail -->
                    <div class="portfolio-thumbnail bg-img" style="background-image: url(template/img/fidanlar/karaservifidanı.jpg);"></div>
                    <!-- Portfolio Hover Text -->
                    <div class="portfolio-hover-overlay">
                        <a href="template/img/fidanlar/karaservifidanı.jpg" class="portfolio-img d-flex align-items-center justify-content-center" title="Portfolio 2">
                            <div class="port-hover-text">
                                <h3>Kara Servi Fidanı</h3>
                                <h5>Tüplü Kara Servi Ağacı</h5>
                            </div>
                        </a>
                    </div>
                </div>
                  <!-- Single Portfolio Area -->
                <div class="col-12 col-sm-6 col-lg-3 single_portfolio_item agac">
                    <!-- Portfolio Thumbnail -->
                    <div class="portfolio-thumbnail bg-img" style="background-image: url(template/img/fidanlar/maviladinfidanı.jpg);"></div>
                    <!-- Portfolio Hover Text -->
                    <div class="portfolio-hover-overlay">
                        <a href="template/img/fidanlar/maviladinfidanı.jpg" class="portfolio-img d-flex align-items-center justify-content-center" title="Portfolio 2">
                            <div class="port-hover-text">
                                <h3>Mavi Ladin Fidanı</h3>
                                <h5>Tüplü Mavi Ladin Ağacı</h5>
                            </div>
                        </a>
                    </div>
                </div>
                   <!-- Single Portfolio Area -->
                <div class="col-12 col-sm-6 col-lg-3 single_portfolio_item agac">
                    <!-- Portfolio Thumbnail -->
                    <div class="portfolio-thumbnail bg-img" style="background-image: url(template/img/fidanlar/leylandifidanı.jpg);"></div>
                    <!-- Portfolio Hover Text -->
                    <div class="portfolio-hover-overlay">
                        <a href="template/img/fidanlar/leylandifidanı.jpg" class="portfolio-img d-flex align-items-center justify-content-center" title="Portfolio 2">
                            <div class="port-hover-text">
                                <h3>Leylandi Fidanı</h3>
                                <h5>Tüplü Leylandi Ağacı</h5>
                            </div>
                        </a>
                    </div>
                </div>
                  <!-- Single Portfolio Area -->
                <div class="col-12 col-sm-6 col-lg-3 single_portfolio_item agac">
                    <!-- Portfolio Thumbnail -->
                    <div class="portfolio-thumbnail bg-img" style="background-image: url(template/img/fidanlar/sarıçamfidanı.jpg);"></div>
                    <!-- Portfolio Hover Text -->
                    <div class="portfolio-hover-overlay">
                        <a href="template/img/fidanlar/sarıçamfidanı.jpg" class="portfolio-img d-flex align-items-center justify-content-center" title="Portfolio 2">
                            <div class="port-hover-text">
                                <h3>Sarı Çam Fidanı</h3>
                                <h5>Tüplü Sarı Çam Ağacı</h5>
                            </div>
                        </a>
                    </div>
                </div>
                 <!-- Single Portfolio Area -->
                <div class="col-12 col-sm-6 col-lg-3 single_portfolio_item agac">
                    <!-- Portfolio Thumbnail -->
                    <div class="portfolio-thumbnail bg-img" style="background-image: url(template/img/fidanlar/sedir.jpg);"></div>
                    <!-- Portfolio Hover Text -->
                    <div class="portfolio-hover-overlay">
                        <a href="template/img/fidanlar/sedir.jpg" class="portfolio-img d-flex align-items-center justify-content-center" title="Portfolio 2">
                            <div class="port-hover-text">
                                <h3>Sedir Fidanı</h3>
                                <h5>Tüplü Sedir Ağacı</h5>
                            </div>
                        </a>
                    </div>
                </div>
                <!-- Single Portfolio Area -->
                 <div class="col-12 col-sm-6 col-lg-3 single_portfolio_item agac">
                    <!-- Portfolio Thumbnail -->
                    <div class="portfolio-thumbnail bg-img" style="background-image: url(template/img/fidanlar/söğütfidanı.jpg);"></div>
                    <!-- Portfolio Hover Text -->
                    <div class="portfolio-hover-overlay">
                        <a href="template/img/fidanlar/söğütfidanı.jpg" class="portfolio-img d-flex align-items-center justify-content-center" title="Portfolio 2">
                            <div class="port-hover-text">
                                <h3>Söğüt Fidanı</h3>
                                <h5>Tüplü Söğüt Ağacı</h5>
                            </div>
                        </a>
                    </div>
                </div>

                <!-- Single Portfolio Area -->
                <div class="col-12 col-sm-6 col-lg-6 single_portfolio_item tropikal">
                    <!-- Portfolio Thumbnail -->
                    <div class="portfolio-thumbnail bg-img" style="background-image: url(template/img/fidanlar/ananasfidanı.jpg);"></div>
                    <!-- Portfolio Hover Text -->
                    <div class="portfolio-hover-overlay">
                        <a href="template/img/fidanlar/ananasfidanı.jpg" class="portfolio-img d-flex align-items-center justify-content-center" title="Portfolio 7">
                            <div class="port-hover-text">
                                <h3>Ananas Fidanı</h3>
                                <h5>Tüplü Ananas Fidanı</h5>
                            </div>
                        </a>
                    </div>
                </div>
                 <!-- Single Portfolio Area -->
                <div class="col-12 col-sm-6 col-lg-6 single_portfolio_item tropikal">
                    <!-- Portfolio Thumbnail -->
                    <div class="portfolio-thumbnail bg-img" style="background-image: url(template/img/fidanlar/avakadofidanı.jpg);"></div>
                    <!-- Portfolio Hover Text -->
                    <div class="portfolio-hover-overlay">
                        <a href="template/img/fidanlar/avakadofidanı.jpg" class="portfolio-img d-flex align-items-center justify-content-center" title="Portfolio 7">
                            <div class="port-hover-text">
                                <h3>Avakado Fidanı</h3>
                                <h5>Tüplü Avakado Fidanı</h5>
                            </div>
                        </a>
                    </div>
                </div>
                 <!-- Single Portfolio Area -->
                <div class="col-12 col-sm-6 col-lg-6 single_portfolio_item tropikal">
                    <!-- Portfolio Thumbnail -->
                    <div class="portfolio-thumbnail bg-img" style="background-image: url(template/img/fidanlar/kivifidanı.jpg);"></div>
                    <!-- Portfolio Hover Text -->
                    <div class="portfolio-hover-overlay">
                        <a href="template/img/fidanlar/kivifidanı.jpg" class="portfolio-img d-flex align-items-center justify-content-center" title="Portfolio 7">
                            <div class="port-hover-text">
                                <h3>Kivi Fidanı</h3>
                                <h5>Tüplü Kivi Fidanı</h5>
                            </div>
                        </a>
                    </div>
                </div>
                 <!-- Single Portfolio Area -->
                <div class="col-12 col-sm-6 col-lg-6 single_portfolio_item tropikal">
                    <!-- Portfolio Thumbnail -->
                    <div class="portfolio-thumbnail bg-img" style="background-image: url(template/img/fidanlar/kiwano.jpg);"></div>
                    <!-- Portfolio Hover Text -->
                    <div class="portfolio-hover-overlay">
                        <a href="template/img/fidanlar/kiwano.jpg" class="portfolio-img d-flex align-items-center justify-content-center" title="Portfolio 7">
                            <div class="port-hover-text">
                                <h3>Kiwano Fidanı</h3>
                                <h5>Tüplü Kiwano Fidanı</h5>
                            </div>
                        </a>
                    </div>
                </div>
                 <!-- Single Portfolio Area -->
                <div class="col-12 col-sm-6 col-lg-6 single_portfolio_item tropikal">
                    <!-- Portfolio Thumbnail -->
                    <div class="portfolio-thumbnail bg-img" style="background-image: url(template/img/fidanlar/mangofidanı.jpg);"></div>
                    <!-- Portfolio Hover Text -->
                    <div class="portfolio-hover-overlay">
                        <a href="template/img/fidanlar/mangofidanı.jpg" class="portfolio-img d-flex align-items-center justify-content-center" title="Portfolio 7">
                            <div class="port-hover-text">
                                <h3>Mango Fidanı</h3>
                                <h5>Tüplü Mango Fidanı</h5>
                            </div>
                        </a>
                    </div>
                </div>
                 <!-- Single Portfolio Area -->
                <div class="col-12 col-sm-6 col-lg-6 single_portfolio_item tropikal">
                    <!-- Portfolio Thumbnail -->
                    <div class="portfolio-thumbnail bg-img" style="background-image: url(template/img/fidanlar/pitayafidanı.jpg);"></div>
                    <!-- Portfolio Hover Text -->
                    <div class="portfolio-hover-overlay">
                        <a href="template/img/fidanlar/pitayafidanı.jpg" class="portfolio-img d-flex align-items-center justify-content-center" title="Portfolio 7">
                            <div class="port-hover-text">
                                <h3>Pitaya Fidanı</h3>
                                <h5>Tüplü Pitaya Fidanı</h5>
                            </div>
                        </a>
                    </div>
                </div>
                 <!-- Single Portfolio Area -->
                <div class="col-12 col-sm-6 col-lg-6 single_portfolio_item tropikal">
                    <!-- Portfolio Thumbnail -->
                    <div class="portfolio-thumbnail bg-img" style="background-image: url(template/img/fidanlar/pomelofidanı.jpg);"></div>
                    <!-- Portfolio Hover Text -->
                    <div class="portfolio-hover-overlay">
                        <a href="template/img/fidanlar/pomelofidanı.jpg" class="portfolio-img d-flex align-items-center justify-content-center" title="Portfolio 7">
                            <div class="port-hover-text">
                                <h3>Pomelo Fidanı</h3>
                                <h5>Tüplü Pomelo Fidanı</h5>
                            </div>
                        </a>
                    </div>
                </div>
                 <!-- Single Portfolio Area -->
                <div class="col-12 col-sm-6 col-lg-6 single_portfolio_item tropikal">
                    <!-- Portfolio Thumbnail -->
                    <div class="portfolio-thumbnail bg-img" style="background-image: url(template/img/fidanlar/rambutan.jpg);"></div>
                    <!-- Portfolio Hover Text -->
                    <div class="portfolio-hover-overlay">
                        <a href="template/img/fidanlar/rambutan.jpg" class="portfolio-img d-flex align-items-center justify-content-center" title="Portfolio 7">
                            <div class="port-hover-text">
                                <h3>Rambutan Fidanı</h3>
                                <h5>Tüplü Rambutan Fidanı</h5>
                            </div>
                        </a>
                    </div>
                </div>
                 <!-- Single Portfolio Area -->
                <div class="col-12 col-sm-6 col-lg-6 single_portfolio_item tropikal">
                    <!-- Portfolio Thumbnail -->
                    <div class="portfolio-thumbnail bg-img" style="background-image: url(template/img/fidanlar/starapplefidanı.jpg);"></div>
                    <!-- Portfolio Hover Text -->
                    <div class="portfolio-hover-overlay">
                        <a href="template/img/fidanlar/starapplefidanı.jpg" class="portfolio-img d-flex align-items-center justify-content-center" title="Portfolio 7">
                            <div class="port-hover-text">
                                <h3>Starapple Fidanı</h3>
                                <h5>Tüplü Starapple Fidanı</h5>
                            </div>
                        </a>
                    </div>
                </div>
                    <!-- Single Portfolio Area -->
                <div class="col-12 col-sm-6 col-lg-6 single_portfolio_item cicek">
                    <!-- Portfolio Thumbnail -->
                    <div class="portfolio-thumbnail bg-img" style="background-image: url(template/img/fidanlar/AçelyaSaksıÇiçeği.jpg);"></div>
                    <!-- Portfolio Hover Text -->
                    <div class="portfolio-hover-overlay">
                        <a href="template/img/fidanlar/AçelyaSaksıÇiçeği.jpg" class="portfolio-img d-flex align-items-center justify-content-center" title="Portfolio 7">
                            <div class="port-hover-text">
                                <h3>Açelya</h3>
                                <h5>Açelya Saksı Çiçeği</h5>
                            </div>
                        </a>
                    </div>
                </div>
                     <!-- Single Portfolio Area -->
                <div class="col-12 col-sm-6 col-lg-6 single_portfolio_item cicek">
                    <!-- Portfolio Thumbnail -->
                    <div class="portfolio-thumbnail bg-img" style="background-image: url(template/img/fidanlar/AntoryumSaksıÇiçeği.jpg);"></div>
                    <!-- Portfolio Hover Text -->
                    <div class="portfolio-hover-overlay">
                        <a href="template/img/fidanlar/AntoryumSaksıÇiçeği.jpg" class="portfolio-img d-flex align-items-center justify-content-center" title="Portfolio 7">
                            <div class="port-hover-text">
                                <h3>Antoryum</h3>
                                <h5>Antoryum Saksı Çiçeği</h5>
                            </div>
                        </a>
                    </div>
                </div>
                   <!-- Single Portfolio Area -->
                <div class="col-12 col-sm-6 col-lg-6 single_portfolio_item cicek">
                    <!-- Portfolio Thumbnail -->
                    <div class="portfolio-thumbnail bg-img" style="background-image: url(template/img/fidanlar/GuzmaniaSaksıÇiçeği.jpg);"></div>
                    <!-- Portfolio Hover Text -->
                    <div class="portfolio-hover-overlay">
                        <a href="template/img/fidanlar/GuzmaniaSaksıÇiçeği.jpg" class="portfolio-img d-flex align-items-center justify-content-center" title="Portfolio 7">
                            <div class="port-hover-text">
                                <h3>Guzmania</h3>
                                <h5>Guzmania Saksı Çiçeği</h5>
                            </div>
                        </a>
                    </div>
                </div>
                   <!-- Single Portfolio Area -->
                <div class="col-12 col-sm-6 col-lg-6 single_portfolio_item cicek">
                    <!-- Portfolio Thumbnail -->
                    <div class="portfolio-thumbnail bg-img" style="background-image: url(template/img/fidanlar/leylakçiçeği.jpg);"></div>
                    <!-- Portfolio Hover Text -->
                    <div class="portfolio-hover-overlay">
                        <a href="template/img/fidanlar/leylakçiçeği.jpg" class="portfolio-img d-flex align-items-center justify-content-center" title="Portfolio 7">
                            <div class="port-hover-text">
                                <h3>Leylak</h3>
                                <h5>Leylak Saksı Çiçeği</h5>
                            </div>
                        </a>
                    </div>
                </div>
                
                 <!-- Single Portfolio Area -->
                <div class="col-12 col-sm-6 col-lg-6 single_portfolio_item cicek">
                    <!-- Portfolio Thumbnail -->
                    <div class="portfolio-thumbnail bg-img" style="background-image: url(template/img/fidanlar/OrtancaSaksıÇiçeği.jpg);"></div>
                    <!-- Portfolio Hover Text -->
                    <div class="portfolio-hover-overlay">
                        <a href="template/img/fidanlar/OrtancaSaksıÇiçeği.jpg" class="portfolio-img d-flex align-items-center justify-content-center" title="Portfolio 7">
                            <div class="port-hover-text">
                                <h3>Ortanca</h3>
                                <h5>Ortanca Saksı Çiçeği</h5>
                            </div>
                        </a>
                    </div>
                </div>
                <!-- Single Portfolio Area -->
                <div class="col-12 col-sm-6 col-lg-6 single_portfolio_item cicek">
                    <!-- Portfolio Thumbnail -->
                    <div class="portfolio-thumbnail bg-img" style="background-image: url(template/img/fidanlar/SardunyaSaksıÇiçeği.jpg);"></div>
                    <!-- Portfolio Hover Text -->
                    <div class="portfolio-hover-overlay">
                        <a href="template/img/fidanlar/SardunyaSaksıÇiçeği.jpg" class="portfolio-img d-flex align-items-center justify-content-center" title="Portfolio 7">
                            <div class="port-hover-text">
                                <h3>Sardunya</h3>
                                <h5>Sardunya Saksı Çiçeği</h5>
                            </div>
                        </a>
                    </div>
                </div>
                 <!-- Single Portfolio Area -->
                <div class="col-12 col-sm-6 col-lg-6 single_portfolio_item cicek">
                    <!-- Portfolio Thumbnail -->
                    <div class="portfolio-thumbnail bg-img" style="background-image: url(template/img/fidanlar/YelkenÇiçeği.jpg);"></div>
                    <!-- Portfolio Hover Text -->
                    <div class="portfolio-hover-overlay">
                        <a href="template/img/fidanlar/YelkenÇiçeği.jpg" class="portfolio-img d-flex align-items-center justify-content-center" title="Portfolio 7">
                            <div class="port-hover-text">
                                <h3>Yelken</h3>
                                <h5>Yelken Saksı Çiçeği</h5>
                            </div>
                        </a>
                    </div>
                </div>


            </div>
        </div>
    </section>
    <!-- ##### Portfolio Area End ##### -->
</asp:Content>
