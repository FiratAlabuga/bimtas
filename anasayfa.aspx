<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Anasayfa.aspx.cs" Inherits="Bimtas_Portal.Anasayfa" %>

<!DOCTYPE html>

<head runat="server">
    <title>Bimtaş &mdash;Intranet Portalı by Jfasoftware</title>
    <meta charset="utf-8" />
    <link rel="stylesheet" href="assets/css/style.css" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<style type="text/css">
    .ara {
        -ms-flex-pack: justify !important;
        justify-content: space-between !important;
    }

    .shadow-sm {
        box-shadow: 0 .125rem .25rem rgba(0,0,0,.075) !important;
    }

    .navbar {
        position: relative;
        display: -ms-flexbox;
        display: flex;
        -ms-flex-wrap: wrap;
        flex-wrap: wrap;
        -ms-flex-align: center;
        align-items: center;
        -ms-flex-pack: justify;
        justify-content: space-between;
        padding: .5rem 1rem;
    }

    .float-right {
        float: right !important;
    }

    .container {
        width: 100%;
        padding-right: 15px;
        padding-left: 15px;
        margin-right: auto;
        margin-left: auto;
    }

    .col {
        width: 75.00%;
        text-align: center;
    }

    .left {
        float: left;
    }

    .yazi {
        /*background: linear-gradient(to right, #4a4644 0%, #996464 100%);*/
        -webkit-text-stroke: 1px orange;
        -webkit-background-clip: text;
        -webkit-text-fill-color: #334a10;
        padding-right: 15px;
        padding-left: 15px;
        vertical-align:text-top;
    }
    .yazi:hover{
        text-shadow: 0 1px 0 #ccc, 0 2px 0 #ccc, 
                0 3px 0 #ccc, 0 4px 0 #ccc, 
                0 5px 0 #ccc, 0 6px 0 #ccc, 
                0 7px 0 #ccc, 0 8px 0 #ccc, 
                0 9px 0 #ccc, 0 10px 0 #ccc, 
                0 11px 0 #ccc, 0 12px 0 #ccc, 
                0 20px 30px rgba(0, 0, 0, 0.5); 
    }
 
</style>
<body>

    <form id="form1" runat="server">
        <div>
            <div class="bg-image" style="background-image: url('assets/images/wp.jpg')">
                <div class="container">
                    <header>
                        <div class="navbar shadow-sm" style="background-color: #eee;">
                            <div class="container d-flex ara">

                                <div class="nav-item">
                                    <%--<i class="fas fa-address-book fa-3x" style="color: mediumslateblue; margin-left: 100px;" aria-hidden="true"></i>--%>
                                    <%--<a href="http://10.0.0.34/iso" class="navbar-brand d-flex align-items-center" target="_blank">
                                        <strong>Entegre Yönetim Belgeleri</strong>
                                    </a>--%>
                                </div>

                                <div class="nav-item" style="margin-right: 80px;">

                                    <img src="assets/images/bimtas_logo_png.png" style="height: 70px; width: 200px;">
                                </div>

                                <div class="nav-item">
                                    <%--   <i class="fas fa-phone fa-3x" style="color: mediumslateblue; margin-left: 53px;" aria-hidden="true"></i>--%>
                                    <%--<a href="http://rehber.metropol.net" class="navbar-brand d-flex align-items-center" target="_blank">
                                        <strong>Telefon Rehberi</strong>
                                    </a>--%>
                                </div>
                            </div>
                        </div>
                    </header>
                    <div class="content">
                        <h1 class="heading">Uygulamalara erişimde problem yaşamanız durumunda Bilgi İşlem birimiyle irtibata geçiniz</h1>
                        <p class="description">Bilgi İşlem taleplerini Bilimp uygulaması üzerinden yapınız...</p>
                        <a class="card" href="#!">
                            <div class="front" style="background-image: url('/assets/images/talep.jpg'); max-width: 350px; height: 350px;">
                                <p class="yazi" style="font-family: fantasy">Talep Uygulaması</p>
                            </div>
                            <div class="back">
                                <div>
                                    <p>Talep oluşturmak için bu uygulamayı kullanabilirsiniz.</p>
                                    <asp:Button ID="btnTalep" runat="server" Text="Uygulamaya Git" CssClass="btn-hover color-7" OnClientClick="return directalep()" />
                                </div>
                            </div>
                        </a>
                        <a class="card" href="#!">
                            <div class="front" style="background-image: url('/assets/images/belgeler.jpg'); max-width: 350px; height: 350px;">
                                <p class="yazi" style="font-family: fantasy">Mazeret & Görevlendirme Uygulaması</p>
                            </div>
                            <div class="back">
                                <div>
                                    <p>Mazeret ve Görevlendirme kaydı yapmak için bu uygulamayı kullanabilirsiniz.</p>
                                    <asp:Button ID="btnMveG" CssClass="btn-hover color-7" runat="server" Text="Uygulamaya Git" OnClientClick="return directmveg()" />
                                </div>
                            </div>
                        </a>
                        <a class="card" href="#">
                            <div class="front" style="background-image: url('/assets/images/bilimp.png'); max-width: 350px; height: 350px;">
                                <p class="yazi" style="font-family: fantasy">Bilimp Uygulaması</p>
                            </div>
                            <div class="back">
                                <div>
                                    <p>Bilimp uygulamasına buradan ulaşabilirsiniz.</p>
                                    <asp:Button ID="btnBilimp" runat="server" Text="Uygulamaya Git" CssClass="btn-hover color-7" OnClientClick="return directbilimp()" />
                                </div>
                            </div>
                        </a>
                        <a class="card" href="#!">
                            <div class="front" style="background-image: url('/assets/images/eposta.jpg'); max-width: 350px; height: 350px;">
                                <p class="yazi" style="font-family: fantasy">Kurumsal E-Posta Uygulaması</p>
                            </div>
                            <div class="back">
                                <div>
                                    <p>Kurumsal E-Postanıza bu bağlantıdan ulaşabilirsiniz.</p>
                                    <asp:Button ID="btnMail" runat="server" Text="Uygulamaya Git" CssClass="btn-hover color-7" OnClientClick="return directmail()" />
                                </div>
                            </div>
                        </a>
                        <a class="card" href="#!">
                            <div class="front" style="background-image: url('/assets/images/entegreyntm.jpg'); max-width: 350px; height: 350px;">
                                <p class="yazi" style="font-family: fantasy">Entegre Yönetim Belgeleri</p>
                            </div>
                            <div class="back">
                                <div>
                                    <p>Entegre Yönetim Belgelerine ulaşmak için bu bağlantıyı kullanabilirsiniz.</p>
                                    <asp:Button ID="btnIso" runat="server" Text="Uygulamaya Git" CssClass="btn-hover color-7" OnClientClick="return directiso()" />
                                </div>
                            </div>
                        </a>
                        <a class="card" href="#!">
                            <div class="front" style="background-image: url('/assets/images/tlfrhb.png'); max-width: 350px; height: 350px;">
                                <p class="yazi" style="font-family: fantasy">Telefon Rehberi</p>
                            </div>
                            <div class="back">
                                <div>
                                    <p>Telefon rehberine ulaşmak için tıklayınız.</p>
                                    <asp:Button ID="btnRehber" runat="server" Text="Uygulamaya Git" CssClass="btn-hover color-7" OnClientClick="return directrehber()" />
                                </div>
                            </div>
                        </a>
                        <a class="card" href="#!">
                            <div class="front" style="background-image: url('/assets/images/yazisleri.png'); max-width: 350px; height: 350px;">
                                <p class="yazi" style="font-family: fantasy">Yazı İşleri Uygulaması</p>
                            </div>
                            <div class="back">
                                <div>
                                    <p>Yazı işleri uygulaması için bu bağlantıyı kullanabilirsiniz.</p>
                                    <asp:Button ID="btnYazi" runat="server" Text="Uygulamaya Git" CssClass="btn-hover color-7" OnClientClick="return directyazi()" />
                                </div>
                            </div>
                        </a>

                    </div>
                </div>
            </div>
            <footer style="background-color: #eee; padding-top: 0; padding-bottom: 0;">
                <div class="container">
                    <img class="col left" src="assets/images/ibb.png" style="width: 150px; height: 150px;">
                    <p class="col left">© Tüm Hakları Saklıdır 2020.</p>
                    <img class="float-right" src="assets/images/bimtas_logo_png.png" style="width: 200px; height: 75px; margin-top: 30px; margin-left: auto;">
                </div>

            </footer>
        </div>
        <script>
            function directalep() {
                location.href = 'http://10.0.1.163:8080/login';
                return false;
            }
            function directmveg() {
                location.href = 'http://meyer/index.asp';
                return false;
            }
            function directbilimp() {
                location.href = 'https://bilimp.bimtas.istanbul/Login.aspx?mesaj=';
                return false;
            }
            function directmail() {
                location.href = 'https://mail.bimtas.com.tr/owa/auth/logon.aspx?replaceCurrent=1&url=https%3a%2f%2fmail.bimtas.com.tr%2fowa';
                return false;
            }
            function directiso() {
                location.href = 'http://10.0.0.34/iso';
                return false;
            }
            function directrehber() {
                location.href = 'http://rehber.metropol.net/';
                return false;
            }
            function directyazi() {
                location.href = 'http://10.0.1.163:88/';
                return false;
            }
        </script>
        <script src="js/scripts.js"></script>
    </form>
</body>

