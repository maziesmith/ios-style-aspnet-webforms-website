<%@ Page Title="iPad Air" Language="C#" MasterPageFile="~/icsayfa.Master" AutoEventWireup="true" CodeBehind="ipadair.aspx.cs" Inherits="iosStyleWebSite.ipadair" %>

<%@ Register Src="cihazformu.ascx" TagName="cihazformu" TagPrefix="frm" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="row">
        <div class="col-md-6 col-sm-12 col-xs-12">
            <img src="/images/ipadair_big.png" class="img-responsive" />
        </div>


        <div class="col-md-6 col-sm-12 col-xs-12">
            <frm:cihazformu ID="CihazFormu1" runat="server" CihazModeli="iPad Air" />
        </div>
    </div>


</asp:Content>