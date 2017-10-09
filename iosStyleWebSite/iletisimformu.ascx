<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="iletisimformu.ascx.cs" Inherits="iosStyleWebSite.iletisimformu" %>


<div class="form-horizontal">
    <div class="form-group">
                    <div class="col-md-offset-2 col-md-10">
                        <asp:Label runat="server" ID="lblmailmsg" ForeColor="Green"></asp:Label>
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
                    <asp:Label runat="server" ID="lblkonu" AssociatedControlID="txtkonu" CssClass="col-md-2 control-label" Text="Konu"></asp:Label>
                    <div class="col-md-10">
                        <asp:TextBox runat="server" ID="txtkonu" CssClass="form-control" />
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="txtkonu" ID="reqkonu"
                            CssClass="text-danger" Display="Dynamic" ErrorMessage="Konu girmeyi unuttunuz." ValidationGroup="valgrubu" />
                    </div>
                </div>
                <div class="form-group">
                    <asp:Label ID="lblmesaj" runat="server" AssociatedControlID="txtmesaj" CssClass="col-md-2 control-label" Text="Mesajınız (Maks. 500 Karakter)"></asp:Label>
                    <div class="col-md-10">
                        <asp:TextBox runat="server" ID="txtmesaj" CssClass="form-control" TextMode="MultiLine" Height="60px" MaxLength="500" />
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="txtmesaj" ID="reqmesaj"
                            CssClass="text-danger" Display="Dynamic" ErrorMessage="Mesaj yazmayı unuttunuz." ValidationGroup="valgrubu" />
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-md-offset-2 col-md-10">
                        <asp:Button runat="server" Text="Mesajı Gönder" CssClass="btn btn-default" ID="btnMesajGonder" OnClick="btnMesajGonder_Click" ValidationGroup="valgrubu" />
                    </div>
                </div>
            </div>