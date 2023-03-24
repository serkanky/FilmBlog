<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="YorumGuncelle.aspx.cs" Inherits="DiziYorumProje.AdminSayfalar.YorumGuncelle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <form runat="server" class="form-group">
        <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" placeholder="Yorum Yapılan Blog" Enabled="false"></asp:TextBox>
        <br />
        <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" placeholder="Yorum Yapan Kullanıcı"></asp:TextBox>
         <br />
         <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control" placeholder="Yorumun İçeriği" Height="100px" TextMode="MultiLine"></asp:TextBox>
       <br />
        <asp:Button ID="Button1" runat="server" Text="Yorumu Güncelle" CssClass="btn btn-success" OnClick="Button1_Click"/>


    </form>
</asp:Content>
