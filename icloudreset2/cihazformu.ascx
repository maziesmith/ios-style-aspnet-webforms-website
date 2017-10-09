<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="cihazformu.ascx.cs" Inherits="iosStyleWebSite.cihazformu" %>

<div class="form-horizontal">
    <h4>
        <asp:Label ID="lblurun" runat="server" Text="Ürün Bilgilerinizi Gönderin"></asp:Label></h4>
    <hr />
    <div class="form-group">
        <div class="col-md-offset-2 col-md-10">
            <asp:Label runat="server" ID="lblmailmsg" ForeColor="Green"></asp:Label>
        </div>
    </div>
    <div class="form-group">
        <asp:Label runat="server" ID="lblcihaz" AssociatedControlID="txtCihaz" CssClass="col-md-2 control-label" Text="Cihaz Modeliniz"></asp:Label>
        <div class="col-md-10">
            <asp:TextBox runat="server" ID="txtCihaz" CssClass="form-control" Text="iPad Pro" />

        </div>
    </div>
    <div class="form-group">
        <asp:Label runat="server" ID="lblimei" AssociatedControlID="txtimei" CssClass="col-md-2 control-label" Text="IMEI Numarası"></asp:Label>
        <div class="col-md-10">
            <asp:TextBox runat="server" ID="txtimei" CssClass="form-control" />
            <asp:RequiredFieldValidator runat="server" ControlToValidate="txtimei" ID="reqimei"
                CssClass="text-danger" ErrorMessage="IMEI numaranızı girmeyi unuttunuz." ValidationGroup="valgrubu" />
        </div>
    </div>
    <div class="form-group">
        <asp:Label runat="server" ID="lblemail" AssociatedControlID="txtemail" CssClass="col-md-2 control-label" Text="E-posta Adresiniz"></asp:Label>
        <div class="col-md-10">
            <asp:TextBox runat="server" ID="txtemail" CssClass="form-control" />
            <asp:RequiredFieldValidator runat="server" ControlToValidate="txtemail" ID="reqemail"
                CssClass="text-danger" Display="Dynamic" ErrorMessage="E-posta adresinizi girmeyi unuttunuz." ValidationGroup="valgrubu" />
        </div>
    </div>
    <div class="form-group">
        <asp:Label runat="server" ID="lbltel" AssociatedControlID="txttelefon" CssClass="col-md-2 control-label" Text="Telefon Numaranız"></asp:Label>
        <div class="col-md-10">
            <asp:TextBox runat="server" ID="txttelefon" CssClass="form-control" />
            <asp:RequiredFieldValidator runat="server" ControlToValidate="txttelefon" ID="reqtel"
                CssClass="text-danger" Display="Dynamic" ErrorMessage="Telefon numaranızı girmeyi unuttunuz." ValidationGroup="valgrubu" />
        </div>
    </div>
    <div class="form-group">
        <div class="col-md-offset-2 col-md-10">
            <asp:Button ID="btncomplete" runat="server" Text="Formu tamamlayıp ürün bilgilerinizi bize gönderin" CssClass="btn btn-default" ValidationGroup="valgrubu" OnClick="btncomplete_Click" />
        </div>
    </div>
    <div class="form-group">
        <div class="col-md-offset-2 col-md-10">
            <asp:Label runat="server" ID="lbl24saat" Text="(24 saat içinde sizinle irtibata geçilecektir)"></asp:Label>
        </div>
    </div>
</div>
