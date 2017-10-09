<%@ Page Title="iPhone 5S" Language="C#" AutoEventWireup="true" MasterPageFile="~/icsayfa2.Master" CodeBehind="iphone5s.aspx.cs" Inherits="iosStyleWebSite.iphone5s" %>

<%@ Register Src="cihazformu.ascx" TagName="cihazformu" TagPrefix="frm" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="row">
        <div class="col-md-6 col-sm-12 col-xs-12">
            <img src="/images/iphone5s_big.png" class="img-responsive" />
        </div>


        <div class="col-md-6 col-sm-12 col-xs-12">
            <frm:cihazformu ID="CihazFormu1" runat="server" CihazModeli="iPhone 5S" />
        </div>
    </div>


</asp:Content>

