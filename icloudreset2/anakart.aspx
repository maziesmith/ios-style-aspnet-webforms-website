<%@ Page Title="Apple Motherboard" Language="C#"  MasterPageFile="~/icsayfa3.Master" AutoEventWireup="true" CodeBehind="anakart.aspx.cs" Inherits="iosStyleWebSite.anakart" %>

<%@ Register Src="satisformu.ascx" TagName="satisformu" TagPrefix="frm" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="row" style="margin-top:100px;">
        <div class="col-md-6 col-sm-12 col-xs-12">
            <img src="/images/applemotherboard.png" class="img-responsive" />
        </div>


        <div class="col-md-6 col-sm-12 col-xs-12">
            <frm:satisformu ID="SatisFormu1" runat="server" CihazModeli="Apple Motherboard" />
        </div>
    </div>


</asp:Content>
