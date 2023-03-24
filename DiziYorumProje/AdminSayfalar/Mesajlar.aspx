<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Mesajlar.aspx.cs" Inherits="DiziYorumProje.AdminSayfalar.Mesajlar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="table table-bordered">
        <tr>
            <table class="table table-bordered">
                <tr>
                    <th>ID</th>
                    <th>Ad Soyad</th>
                    <th>Email Adresi</th>
                    <th>Telefon Numarası</th>
                    <th>Mesaj Konusu</th>
                    <th>Mesaj</th>
                </tr>
        </tr>
        
        <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
                <tr>
                    <td><%#Eval("MESAJID") %></td>
                    <td><%#Eval("ADSOYAD") %></td>
                    <td><%#Eval("MAIL") %></td>
                    <td><%#Eval("TELEFON") %></td>
                    <td><%#Eval("KONU") %></td>
                    <td><%#Eval("MESAJ") %></td>
                </tr>
            </ItemTemplate>
        </asp:Repeater>
    </table>
</asp:Content>
