<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="DiziYorumProje.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="content">
	 <div class="container">
		 <div class="content-grids">
			 <div class="col-md-8 content-main">
				 <asp:Repeater ID="Repeater1" runat="server">
					 <ItemTemplate>
				 <div class="content-grid">	
					 <div class="content-grid-info">
						 <img src="<%#Eval("BLOGGORSEL") %>" alt="" style="height:300px"; width:600px/>
						 <div class="post-info">
						 <h4><a href="BlogDetay.aspx?BLOGID=<%#Eval("BLOGID") %>"><%# Eval("BLOGBASLIK") %></a>  <%#Eval("BLOGTARIH") %> / 27 Comments</h4>
						 <p><%#Eval("BLOGICERIK") %></p>
						 <a href="BlogDetay.aspx?BLOGID=<%#Eval("BLOGID") %>"><span></span>DEVAMINI OKU</a>
						    </div>
                            </div>
                        </div>
			</ItemTemplate>
			 </asp:Repeater>

			   </div>
			  <div class="col-md-4 content-right">
				 <div class="recent">
					 <h3>EN SON BLOGLAR</h3>
					 <ul>
						 <asp:Repeater ID="Repeater3" runat="server">
							 <ItemTemplate>
								 <li><a href="#"><%#Eval("BLOGBASLIK") %></a></li>
							 </ItemTemplate>
						 </asp:Repeater>
					 
					 
					 </ul>
				 </div>
				 <div class="comments">
					 <h3>SON YORUMLAR</h3>
					 <asp:Repeater ID="Repeater4" runat="server">
                        <ItemTemplate>
                            <ul>
                                <li><a href="#"><%#Eval("KULLANICIAD")%> - <%#Eval("YORUMICERIK")%></a></li>
                            </ul>
                        </ItemTemplate>
                    </asp:Repeater>
				 </div>
				 <div class="clearfix"></div>
				 <div class="archives">
					 <h3>ARŞİVLER</h3>
					 <ul>
					 <li><a href="#">Ocak 2023</a></li>
					 <li><a href="#">Haziran 2023</a></li>
					 </ul>
				 </div>
				 <div class="categories">
					 <h3>KATEGORİLER</h3>
					 <ul>
						 <asp:Repeater ID="Repeater2" runat="server">
							 <ItemTemplate>
								 <li><a href="KategoriDetay.aspx?KATEGORIID=<%#Eval("KATEGORIID") %>"><%# Eval("KATEGORIAD") %></a></li>
							 </ItemTemplate>
						 </asp:Repeater>
					 
					 </ul>
				 </div>
				 <div class="clearfix"></div>
			  </div>
			  <div class="clearfix"></div>
		  </div>
	  </div>


</asp:Content>
