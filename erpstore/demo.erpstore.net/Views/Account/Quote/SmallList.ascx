<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<QuoteList>" %>
<h3><a href="<%=Url.QuoteListHref() %>">Devis en cours</a></h3>
<ul class="ul_list">
	 <% foreach (var item in Model) { %>
         <li>
             <strong>Devis N�<%=item.Code%></strong><small><br/>(ref : <%=item.CustomerDocumentReference%>) <br/>du <%=string.Format("{0:dd/MM/yyyy}", item.CreationDate)%></small><br />
             <b><%=item.ItemCount%></b> produit(s) <br/><small>pour un montant de</small> <%=item.GrandTotal.ToCurrency()%><br />
             <a href="<%=Url.Href(item)%>">Voir le d�tail</a>
        </li>
    <% } %>
</ul>


