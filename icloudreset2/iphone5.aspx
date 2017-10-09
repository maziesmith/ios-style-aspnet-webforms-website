<%@ Page Title="iPhone 5" Language="C#" AutoEventWireup="true" MasterPageFile="~/icsayfa2.Master" CodeBehind="iphone5.aspx.cs" Inherits="iosStyleWebSite.iphone5" %>

<%@ Register Src="cihazformu.ascx" TagName="cihazformu" TagPrefix="frm" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="row">
        <div class="col-md-6 col-sm-12 col-xs-12">
            <img src="/images/iphone5_big.png" class="img-responsive" />
        </div>


        <div class="col-md-6 col-sm-12 col-xs-12">
            <frm:cihazformu ID="CihazFormu1" runat="server" CihazModeli="iPhone 5" />
        </div>
    </div>


</asp:Content>


