<%@ Page Title="iPad Air 2" Language="C#" MasterPageFile="~/icsayfa.Master" AutoEventWireup="true" CodeBehind="ipadair2.aspx.cs" Inherits="iosStyleWebSite.ipadair2" %>

<%@ Register Src="cihazformu.ascx" TagName="cihazformu" TagPrefix="frm" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="row">
        <div class="col-md-6 col-sm-12 col-xs-12">
            <img src="/images/ipadair2_big.png" class="img-responsive" />
        </div>


        <div class="col-md-6 col-sm-12 col-xs-12">
            <frm:cihazformu ID="CihazFormu1" runat="server" CihazModeli="iPad Air 2" />
        </div>
    </div>


</asp:Content>