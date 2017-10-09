<%@ Page Title="iPhone 6S Plus" Language="C#" MasterPageFile="~/icsayfa2.Master" AutoEventWireup="true" CodeBehind="iphone6splus.aspx.cs" Inherits="iosStyleWebSite.iphone6splus" %>


<%@ Register Src="cihazformu.ascx" TagName="cihazformu" TagPrefix="frm" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="row">
        <div class="col-md-6 col-sm-12 col-xs-12">
            <img src="/images/iphone6splus_big.png" class="img-responsive" />
        </div>


        <div class="col-md-6 col-sm-12 col-xs-12">
            <frm:cihazformu ID="CihazFormu1" runat="server" CihazModeli="iPhone 6S Plus" />
        </div>
    </div>


</asp:Content>
