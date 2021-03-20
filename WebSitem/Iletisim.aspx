<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Iletisim.aspx.cs" Inherits="WebSitem.Iletisim" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadAlan" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="SayfaBaslik" runat="server">
    <div class="top-breadcrumb-area bg-img bg-overlay d-flex align-items-center justify-content-center" style="background-image: url(template/img/bg-img/24.jpg);">
            <h2>İletişim</h2>
        </div>

        <div class="container">
            <div class="row">
                <div class="col-12">
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a href="#"><i class="fa fa-home"></i> Anasayfa</a></li>
                            <li class="breadcrumb-item active" aria-current="page">İletişim</li>
                        </ol>
                    </nav>
                </div>
            </div>
        </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="OrtaAlan" runat="server">
        <!-- ##### Contact Area Info Start ##### -->
    <div class="contact-area-info section-padding-0-100">
        <div class="container">
            <div class="row align-items-center justify-content-between">
                <!-- Contact Thumbnail -->
                <div class="col-12 col-md-6">
                    <div class="contact--thumbnail">
                        <img src="template/img/bg-img/25.jpg" alt="">
                    </div>
                </div>

                <div class="col-12 col-md-5">
                    <!-- Section Heading -->
                    <div class="section-heading">
                        <h2>İletişim</h2>
                        <p>Sizlere daha iyi hizmet verebilmek için hizmetlerimizi geliştiriyoruz.</p>
                    </div>
                    <!-- Contact Information -->
                    <div class="contact-information">
                       <a href="https://goo.gl/maps/m9NJgZAmHs8nn7LS6"><p><b><span>Address:</span></b> Aksaz Mahallesi Yeni Sokak No:32 Manavgat/ANTALYA</p></a>
                       <p></p>
                       <a href="tel:05340862798"><p><b><span>Phone:</span></b> 05340862798</p></a>
                       <p></p>
                       <a href="mailto:ahmetaliunsal@posta.mu.edu.tr"><p><b><span>Email:</span></b> ahmetaliunsal@posta.mu.edu.tr</p></a>
                       <p></p>
                       <p><b><span>Çalışma Saatimiz:</span></b> Pazartesi-Cumartesi: 09:00 ile 17:00 arası </p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- ##### Contact Area Info End ##### -->

    <!-- ##### Contact Area Start ##### -->
    <section class="contact-area">
        <div class="container">
            <div class="row align-items-center justify-content-between">
                <div class="col-12 col-lg-5">
                    <!-- Section Heading -->
                    <div class="section-heading">
                        <h2>Bizimle Konuşun</h2>
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
                                    <button type="submit" class="btn alazea-btn mt-15">Gönder</button>
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
</asp:Content>
