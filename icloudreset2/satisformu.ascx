<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="satisformu.ascx.cs" Inherits="iosStyleWebSite.satisformu" %>

<div class="form-horizontal">
    <h4>
        <asp:Label ID="lblurun" runat="server" Text="Ürün Satın Alma Talebi Yapın"></asp:Label></h4>
    <hr />
    <div class="form-group">
        <div class="col-md-offset-2 col-md-10">
            <asp:Label runat="server" ID="lblmailmsg" ForeColor="Green"></asp:Label>
        </div>
    </div>
    <div class="form-group">
        <asp:Label runat="server" ID="lblcihaz" AssociatedControlID="txtCihaz" CssClass="col-md-2 control-label" Text="Ürün Adı"></asp:Label>
        <div class="col-md-10">
            <asp:TextBox runat="server" ID="txtCihaz" CssClass="form-control" Text="Apple Watch" />

        </div>
    </div>
    <div class="form-group">
        <asp:Label ID="lbladsoyad" runat="server" AssociatedControlID="txtAdSoyad" CssClass="col-md-2 control-label" Text="Adınız Soyadınız"></asp:Label>
        <div class="col-md-10">
            <asp:TextBox runat="server" ID="txtAdSoyad" CssClass="form-control" />
            <asp:RequiredFieldValidator ID="reqadsoyad" runat="server" ControlToValidate="txtAdSoyad"
                CssClass="text-danger" ErrorMessage="Adınızı girmeyi unuttunuz." ValidationGroup="valgrubu" />
        </div>
    </div>
    <div class="form-group">
        <asp:Label ID="lbltel" runat="server" AssociatedControlID="txttelefon" CssClass="col-md-2 control-label" Text="Telefon Numaranız"></asp:Label>
        <div class="col-md-10">
            <asp:TextBox runat="server" ID="txttelefon" CssClass="form-control" />
        </div>
    </div>
    <div class="form-group">
        <asp:Label ID="lblemail" runat="server" AssociatedControlID="txtemail" CssClass="col-md-2 control-label" Text="E-posta Adresiniz"></asp:Label>
        <div class="col-md-10">
            <asp:TextBox runat="server" ID="txtemail" CssClass="form-control" />
            <asp:RequiredFieldValidator runat="server" ControlToValidate="txtemail" ID="reqemail"
                CssClass="text-danger" Display="Dynamic" ErrorMessage="E-posta adresinizi girmeyi unuttunuz." ValidationGroup="valgrubu" />
            <asp:RegularExpressionValidator ID="regexeposta" runat="server" ValidationGroup="valgrubu" ErrorMessage="Geçersiz bir eposta adresi girdiniz." ControlToValidate="txtemail" CssClass="text-danger" SetFocusOnError="true"
                ValidationExpression="^(?:[\w\!\#\$\%\&\'\*\+\-\/\=\?\^\`\{\|\}\~]+\.)*[\w\!\#\$\%\&\'\*\+\-\/\=\?\^\`\{\|\}\~]+@(?:(?:(?:[a-zA-Z0-9](?:[a-zA-Z0-9\-](?!\.)){0,61}[a-zA-Z0-9]?\.)+[a-zA-Z0-9](?:[a-zA-Z0-9\-](?!$)){0,61}[a-zA-Z0-9]?)|(?:\[(?:(?:[01]?\d{1,2}|2[0-4]\d|25[0-5])\.){3}(?:[01]?\d{1,2}|2[0-4]\d|25[0-5])\]))$">
            </asp:RegularExpressionValidator>
        </div>
    </div>
    <div class="form-group">
        <asp:Label runat="server" ID="lbladet" AssociatedControlID="txtadet" CssClass="col-md-2 control-label" Text="Adet"></asp:Label>
        <div class="col-md-10">
            <asp:TextBox runat="server" ID="txtadet" CssClass="form-control" />

        </div>
    </div>

    <div class="form-group">
        <div class="col-md-offset-2 col-md-10">
            <asp:Button ID="btncomplete" runat="server" Text="Satın Alma Talebi Gönder" CssClass="btn btn-default" ValidationGroup="valgrubu" OnClick="btncomplete_Click" />
        </div>
    </div>
</div>
