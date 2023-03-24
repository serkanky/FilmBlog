<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Hakkimda.aspx.cs" Inherits="DiziYorumProje.AdminSayfalar.Hakkimda" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <table class="table table-bordered">
        <tr>
            <th>HAKKIMIZDA İÇERİĞİ</th>
        </tr>
        <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
                <tr>
                    <td><%#Eval("ACIKLAMA") %></td>
                    <td><asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='<%# "HakkimdaGuncelle.Aspx?ID=" +Eval("ACIKLAMA")%>' CssClass="btn btn-success">DÜZENLE</asp:HyperLink></td></td>
                </tr>
            </ItemTemplate>
        </asp:Repeater>
    </table>

</asp:Content>
