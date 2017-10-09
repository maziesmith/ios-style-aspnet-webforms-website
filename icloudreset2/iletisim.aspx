<%@ Page Title="İletişim" Language="C#" AutoEventWireup="true" MasterPageFile="~/icsayfa3.Master" CodeBehind="iletisim.aspx.cs" Inherits="iosStyleWebSite.iletisim" %>

<%@ Register Src="iletisimformu.ascx" TagName="iletisimformu" TagPrefix="frm" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="row" style="margin-top:30px;">
        <div class="col-md-12" >
            <img src="/images/anasayfaicons.jpg" class="img-responsive" style="margin: 0 auto;" />
        </div>
    </div>


    <div class="row" style="margin-top:30px;">
        <div class="col-md-6 col-sm-12 col-xs-12">
            <h4><asp:Label ID="lblmap" runat="server" Text="Harita"></asp:Label></h4>
            <hr />
            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3009.353436101872!2d28.99192001567734!3d41.03939942545757!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x14cab776f9715eeb%3A0x2cef984e492e1bd8!2zQmXFn2lrdGHFnyBKSyBNw7x6ZXNp!5e0!3m2!1str!2str!4v1507536199409" 
                width="500" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
        </div>

        
        <div class="col-md-6 col-sm-12 col-xs-12">
            <h4><asp:Label ID="lblbize" runat="server" Text="Bize Ulaşın"></asp:Label></h4>
            <hr />
            <frm:iletisimformu ID="iletisimformu1" runat="server" />
        </div>
    </div>


</asp:Content>
