<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebSitem.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadAlan" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="SayfaBaslik" runat="server"> 
    <div class="top-breadcrumb-area bg-img bg-overlay d-flex align-items-center justify-content-center" style="background-image: url(template/img/bg-img/24.jpg);">
            
        </div>

    
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="OrtaAlan" runat="server">
    <!-- ##### Service Area Start ##### -->
    <section class="our-services-area bg-gray section-padding-100-0">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <!-- Section Heading -->
                    <div class="section-heading text-center">
                        <h2>Hizmetlerimiz</h2>
                        <p>Sizler için kusursuz hizmeti veriyoruz.</p>
                    </div>
                </div>
            </div>

            <div class="row align-items-center justify-content-between">
                <div class="col-12 col-lg-5">
                    <div class="alazea-service-area mb-100">

                        <!-- Single Service Area -->
                        <div class="single-service-area d-flex align-items-center">
                            <!-- Icon -->
                            <div class="service-icon mr-30">
                                <img src="template/img/core-img/s1.png" alt="">
                            </div>
                            <!-- Content -->
                            <div class="service-content">
                                <h5>Bitki Bakımı</h5>
                                <p>Her fidanın sağlıklı bir şekilde büyüyebilmesi, gelişebilmesi için yapılması gereken işlemler vardır. Uzman ekibimizden bu işlemler hakkında yardım alabilirsiniz.</p>
                            </div>
                        </div>

                        <!-- Single Service Area -->
                        <div class="single-service-area d-flex align-items-center">
                            <!-- Icon -->
                            <div class="service-icon mr-30">
                                <img src="template/img/core-img/s2.png" alt="">
                            </div>
                            <!-- Content -->
                            <div class="service-content">
                                <h5>Sulama Sistemleri</h5>
                                <p>Her fidanın su ihtiyacı farklıdır. Bu yüzden alacağınız fidanlara özel sulama sistemleri önermekteyiz.</p>
                            </div>
                        </div>

                        <!-- Single Service Area -->
                        <div class="single-service-area d-flex align-items-center">
                            <!-- Icon -->
                            <div class="service-icon mr-30">
                                <img src="template/img/core-img/s3.png" alt="">
                            </div>
                            <!-- Content -->
                            <div class="service-content">
                                <h5>Ağaç Hizmeti &amp; Kırpma, Budama</h5>
                                <p>Ağaç bakımı,budaması, kırpma gibi işlemleri de uzman ekibimizden bilgi alarak yapabilirsiniz.</p>
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-12 col-lg-6">
                    <div class="alazea-video-area bg-overlay mb-100">
                        <img src="template/img/bg-img/23.jpg" alt="">
                        <a href="https://www.youtube.com/watch?v=JqE7KeAULdI" class="video-icon">
                            <i class="fa fa-play" aria-hidden="true"></i>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- ##### Service Area End ##### -->
    <br />
        <!-- ##### About Area Start ##### -->
    <section class="about-us-area">
        <div class="container">
            <div class="row justify-content-between">
                <div class="col-12 col-lg-5">
                    <!-- Section Heading -->
                    <div class="section-heading">
                        <h2>Hakkımızda</h2>
                        <p>Fidan yetiştiriciliğinde bir markayız.</p>
                    </div>
                    <p> Firmamız 2019 yılında Antalya'nın Manavgat ilçesinde kurulmuş olup ana faaliyeti fidan yetiştiriciliğidir.Vizyonumuz ülkemizde yetişen tüm tarım ürünlerinin halkımıza birinci elden ulaşması ve uygun fiyatlar ile halkımıza sunulmasıdır.</p>

                    <!-- Progress Bar Content Area -->
                    <div class="alazea-progress-bar mb-50">
                        <!-- Single Progress Bar -->
                        <div class="single_progress_bar">
                            <p>Meyve Fidanları</p>
                            <div id="bar1" class="barfiller">
                                <div class="tipWrap">
                                    <span class="tip"></span>
                                </div>
                                <span class="fill" data-percentage="90"></span>
                            </div>
                        </div>

                        <!-- Single Progress Bar -->
                        <div class="single_progress_bar">
                            <p>Ağaç Fidanları</p>
                            <div id="bar2" class="barfiller">
                                <div class="tipWrap">
                                    <span class="tip"></span>
                                </div>
                                <span class="fill" data-percentage="80"></span>
                            </div>
                        </div>

                        <!-- Single Progress Bar -->
                        <div class="single_progress_bar">
                            <p>Tropikal Meyve Fidanları</p>
                            <div id="bar3" class="barfiller">
                                <div class="tipWrap">
                                    <span class="tip"></span>
                                </div>
                                <span class="fill" data-percentage="55"></span>
                            </div>
                        </div>

                        <!-- Single Progress Bar -->
                        <div class="single_progress_bar">
                            <p>Çiçek Çeşitleri</p>
                            <div id="bar4" class="barfiller">
                                <div class="tipWrap">
                                    <span class="tip"></span>
                                </div>
                                <span class="fill" data-percentage="50"></span>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-12 col-lg-6">
                    <div class="alazea-benefits-area">
                        <div class="row">
                            <!-- Single Benefits Area -->
                            <div class="col-12 col-sm-6">
                                <div class="single-benefits-area">
                                    <img src="template/img/core-img/b1.png" alt="">
                                    <h5>Kaliteli Ürünler</h5>
                                    <p>Firma olarak sertifikalı ve hastalıktan arınmış kaliteli fidanlar üretip Türk tarımına katkıda bulunmaktayız. Birinci sınıf kalite ile şu an 6 ile satış yapılmaktadır.</p>
                                </div>
                            </div>

                            <!-- Single Benefits Area -->
                            <div class="col-12 col-sm-6">
                                <div class="single-benefits-area">
                                    <img src="template/img/core-img/b2.png" alt="">
                                    <h5>Kusursuz Hizmet</h5>
                                    <p>Koşulsuz müşteri memnuniyetini sağlayarak sektörde tanınan ve güvenilen olmaya çalıştığımız için hata yapmamaya çalışan bir firmayız.</p>
                                </div>
                            </div>

                            <!-- Single Benefits Area -->
                            <div class="col-12 col-sm-6">
                                <div class="single-benefits-area">
                                    <img src="template/img/core-img/b3.png" alt="">
                                    <h5>100% Doğal </h5>
                                    <p>Ürünlerimizde hiçbir şekilde katkı maddesi, hormon ya da kimyasal madde içermez.Üretiminde hiçbir kimyasal gübre ve katkı maddesi kullanılmadan, doğada kendiliğinden yetişmektedirler.</p>
                                </div>
                            </div>

                            <!-- Single Benefits Area -->
                            <div class="col-12 col-sm-6">
                                <div class="single-benefits-area">
                                    <img src="template/img/core-img/b4.png" alt="">
                                    <h5>Çevre Dostu</h5>
                                    <p>Ürünlerimizi %100 doğal olarak yetiştirdiğimiz için hiçbir kalıntı ya da doğaya zarar verecek bir madde kullanımamaktadır.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="border-line"></div>
                </div>
            </div>
        </div>
    </section>
    <!-- ##### About Area End ##### -->
    <br />
   <!-- ##### Testimonial Area Start ##### -->
    <section class="testimonial-area section-padding-100">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="testimonials-slides owl-carousel">

                        <!-- Single Testimonial Slide -->
                        <div class="single-testimonial-slide">
                            <div class="row align-items-center">
                                <div class="col-12 col-md-6">
                                    <div class="testimonial-thumb">
                                        <img src="template/img/bg-img/13.jpg" alt="">
                                    </div>
                                </div>
                                <div class="col-12 col-md-6">
                                    <div class="testimonial-content">
                                        <!-- Section Heading -->
                                        <div class="section-heading">
                                            <h2>Müşterilerimiz</h2>
                                            <p>Müşterilerden Alazea hakkında bazı nazik sözler</p>
                                        </div>
                                        <p>“Alazea daha önce hiç duymamıştım. Etrafımdaki arkadaşlarım onlar ile çalışmam gerektiğini işlerinde bir numara olduklarını söylemişlerdi. Ben de denemek istedim. Deneyimlerimin sonunda çok ilgili olduklarını, hataya yer bırakmadıklarını ve birinci öncelikleri biz yani müşterileri olduğunu gördüm. İyiki arkadaşlarımın tavsiyesine uyup onlarla çalışmaya başlamışım. Beni çok büyük derdin altından kurtarmış oldular. Onlara minnettarım.”</p>
                                        <div class="testimonial-author-info">
                                            <h6>Bayram Can</h6>
                                            <p>ÇKM A.Ş. Ceo</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Single Testimonial Slide -->
                        <div class="single-testimonial-slide">
                            <div class="row align-items-center">
                                <div class="col-12 col-md-6">
                                    <div class="testimonial-thumb">
                                        <img src="template/img/bg-img/14.jpg" alt="">
                                    </div>
                                </div>
                                <div class="col-12 col-md-6">
                                    <div class="testimonial-content">
                                        <!-- Section Heading -->
                                        <div class="section-heading">
                                            <h2>Müşterilerimiz</h2>
                                            <p>Müşterilerden Alazea hakkında bazı nazik sözler</p>
                                        </div>
                                        <p>“Çok profesyonel bir ekipleri bulunmakta. Daha önce başka firmalar ile çalışırken fidanlarla ilgili çok sorunlar yaşadım. Alazea ile bu sorunlarım ortadan kalktı. Hem ben mutluyum hem de benim müşterilerim. Çok teşekkür ederim Alazea.”</p>
                                        <div class="testimonial-author-info">
                                            <h6>Selen Demir</h6>
                                            <p>Yayla Filiz A.Ş. Ceo</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Single Testimonial Slide -->
                        <div class="single-testimonial-slide">
                            <div class="row align-items-center">
                                <div class="col-12 col-md-6">
                                    <div class="testimonial-thumb">
                                        <img src="template/img/bg-img/15.jpg" alt="">
                                    </div>
                                </div>
                                <div class="col-12 col-md-6">
                                    <div class="testimonial-content">
                                        <!-- Section Heading -->
                                        <div class="section-heading">
                                            <h2>Müşterilerimiz</h2>
                                            <p>Müşterilerden Alazea hakkında bazı nazik sözler</p>
                                        </div>
                                        <p>“Alazea ile çalışmak bir zevk. Fikirleri yaratıcı, bazı zorlu sorunlara yaratıcı çözümler buldular, fidanları eşit derecede mükemmel sonuç olarak güzel ama aynı zamanda artık mükemmel bir bahçemiz var. Teşekkür ederim!”</p>
                                        <div class="testimonial-author-info">
                                            <h6>Burak AKSOY</h6>
                                        
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- ##### Testimonial Area End ##### -->
    <br />
    <!-- ##### Product Area Start ##### -->
    <section class="new-arrivals-products-area bg-gray section-padding-100">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <!-- Section Heading -->
                    <div class="section-heading text-center">
                        <h2>NEW ARRIVALS</h2>
                        <p>We have the latest products, it must be exciting for you</p>
                    </div>
                </div>
            </div>

            <div class="row">

                <!-- Single Product Area -->
                <div class="col-12 col-sm-6 col-lg-3">
                    <div class="single-product-area mb-50 wow fadeInUp" data-wow-delay="100ms">
                        <!-- Product Image -->
                        <div class="product-img">
                            <a href="shop-details.html"><img src="template/img/bg-img/9.jpg" alt=""></a>
                            <!-- Product Tag -->
                            <div class="product-tag">
                                <a href="#">Hot</a>
                            </div>
                            <div class="product-meta d-flex">
                                <a href="#" class="wishlist-btn"><i class="icon_heart_alt"></i></a>
                                <a href="cart.html" class="add-to-cart-btn">Spete Ekle</a>
                                <a href="#" class="compare-btn"><i class="arrow_left-right_alt"></i></a>
                            </div>
                        </div>
                        <!-- Product Info -->
                        <div class="product-info mt-15 text-center">
                            <a href="shop-details.html">
                                <p>Kaktüs</p>
                            </a>
                            <h6>60 TL</h6>
                        </div>
                    </div>
                </div>

                <!-- Single Product Area -->
                <div class="col-12 col-sm-6 col-lg-3">
                    <div class="single-product-area mb-50 wow fadeInUp" data-wow-delay="200ms">
                        <!-- Product Image -->
                        <div class="product-img">
                            <a href="shop-details.html"><img src="template/img/bg-img/10.jpg" alt=""></a>
                            <div class="product-meta d-flex">
                                <a href="#" class="wishlist-btn"><i class="icon_heart_alt"></i></a>
                                <a href="cart.html" class="add-to-cart-btn">Sepete Ekle</a>
                                <a href="#" class="compare-btn"><i class="arrow_left-right_alt"></i></a>
                            </div>
                        </div>
                        <!-- Product Info -->
                        <div class="product-info mt-15 text-center">
                            <a href="shop-details.html">
                                <p>Kaktüs</p>
                            </a>
                            <h6>40 TL</h6>
                        </div>
                    </div>
                </div>

                <!-- Single Product Area -->
                <div class="col-12 col-sm-6 col-lg-3">
                    <div class="single-product-area mb-50 wow fadeInUp" data-wow-delay="300ms">
                        <!-- Product Image -->
                        <div class="product-img">
                            <a href="shop-details.html"><img src="template/img/bg-img/11.jpg" alt=""></a>
                            <div class="product-meta d-flex">
                                <a href="#" class="wishlist-btn"><i class="icon_heart_alt"></i></a>
                                <a href="cart.html" class="add-to-cart-btn">Sepete Ekle</a>
                                <a href="#" class="compare-btn"><i class="arrow_left-right_alt"></i></a>
                            </div>
                        </div>
                        <!-- Product Info -->
                        <div class="product-info mt-15 text-center">
                            <a href="shop-details.html">
                                <p>Kaktüs</p>
                            </a>
                            <h6>50 TL</h6>
                        </div>
                    </div>
                </div>

                <!-- Single Product Area -->
                <div class="col-12 col-sm-6 col-lg-3">
                    <div class="single-product-area mb-50 wow fadeInUp" data-wow-delay="400ms">
                        <!-- Product Image -->
                        <div class="product-img">
                            <a href="shop-details.html"><img src="template/img/bg-img/12.jpg" alt=""></a>
                            <!-- Product Tag -->
                            <div class="product-tag sale-tag">
                                <a href="#">Hot</a>
                            </div>
                            <div class="product-meta d-flex">
                                <a href="#" class="wishlist-btn"><i class="icon_heart_alt"></i></a>
                                <a href="cart.html" class="add-to-cart-btn">Sepete Ekle</a>
                                <a href="#" class="compare-btn"><i class="arrow_left-right_alt"></i></a>
                            </div>
                        </div>
                        <!-- Product Info -->
                        <div class="product-info mt-15 text-center">
                            <a href="shop-details.html">
                                <p>Kaktüs</p>
                            </a>
                            <h6>30 TL</h6>
                        </div>
                    </div>
                </div>

                <div class="col-12 text-center">
                    <a href="#" class="btn alazea-btn">Hepsini Görüntüle</a>
                </div>

            </div>
        </div>
    </section>
    <!-- ##### Product Area End ##### -->
    <br />
     <!-- ##### Contact Area Start ##### -->
    <section class="contact-area">
        <div class="container">
            <div class="row align-items-center justify-content-between">
                <div class="col-12 col-lg-5">
                    <!-- Section Heading -->
                    <div class="section-heading">
                        <h2>Bizimle İletişime Geçin</h2>
                        <p>Mesajlarınız en geç 1 hafta içinde cevaplanacaktır. Telaş Etmeyiniz.</p>
                    </div>
                    <!-- Contact Form Area -->
                    <div class="contact-form-area mb-100">
                        <form action="https://formspree.io/f/xnqlaqob" method="post">
                            <div class="row">
                                <div class="col-12 col-md-6">
                                    <div class="form-group">
                                        <input type="text" class="form-control" name="name" id="contact-name" placeholder="Adınız Soyadınız">
                                    </div>
                                </div>
                                <div class="col-12 col-md-6">
                                    <div class="form-group">
                                        <input type="email" class="form-control" name="_replyto" id="contact-email" placeholder="Email Adresiniz">
                                    </div>
                                </div>
                                <div class="col-12">
                                    <div class="form-group">
                                        <input type="text" class="form-control" name="_subject" id="contact-subject" placeholder="Konu">
                                    </div>
                                </div>
                                <div class="col-12">
                                    <div class="form-group">
                                        <textarea class="form-control" name="message" id="message" cols="30" rows="10" placeholder="Mesaj"></textarea>
                                    </div>
                                </div>
                                <div class="col-12">
                                    <input type="hidden" name="_next" value="https://site.io/thanks.html">
                                    <button type="submit" id="gonder" class="btn alazea-btn mt-15">Gönder</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>

                <div class="col-12 col-lg-6">
                    <!-- Google Maps -->
                    <div class="map-area mb-100">
                        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d799.1516485631518!2d31.511457488132663!3d36.75601299874123!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMzbCsDQ1JzIxLjciTiAzMcKwMzAnNDMuMiJF!5e0!3m2!1str!2str!4v1616242855813!5m2!1str!2str" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- ##### Contact Area End ##### -->
    <br />
</asp:Content>
