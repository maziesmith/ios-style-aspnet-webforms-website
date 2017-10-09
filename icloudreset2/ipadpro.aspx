<%@ Page Title="iPad Pro" Language="C#" MasterPageFile="~/icsayfa.Master" AutoEventWireup="true" CodeBehind="ipadpro.aspx.cs" Inherits="iosStyleWebSite.ipadpro" %>

<%@ Register Src="cihazformu.ascx" TagName="cihazformu" TagPrefix="frm" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="row">
        <div class="col-md-6 col-sm-12 col-xs-12">
            <img src="/images/ipadpro_big.png" class="img-responsive" />
        </div>


        <div class="col-md-6 col-sm-12 col-xs-12">
            <frm:cihazformu ID="CihazFormu1" runat="server" CihazModeli="iPad Pro" />
        </div>
    </div>


</asp:Content>

