<%@ Page Title="iPad Mini 4" Language="C#" MasterPageFile="~/icsayfa.Master" AutoEventWireup="true" CodeBehind="ipadmini4.aspx.cs" Inherits="iosStyleWebSite.ipadmini4" %>


<%@ Register Src="cihazformu.ascx" TagName="cihazformu" TagPrefix="frm" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="row">
        <div class="col-md-6 col-sm-12 col-xs-12">
            <img src="/images/ipadmini4_big.png" class="img-responsive" />
        </div>


        <div class="col-md-6 col-sm-12 col-xs-12">
            <frm:cihazformu ID="CihazFormu1" runat="server" CihazModeli="iPad Mini 4" />
        </div>
    </div>


</asp:Content>