<%-- 
    Document   : index
    Created on : Sep 22, 2020, 7:38:41 PM
    Author     : Daniel
--%>
<%@page import="java.util.ArrayList"%>
<%@page import="br.fatec.ads.poo.Contatos"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%

  ArrayList<Contatos> listaContato = (ArrayList) application.getAttribute("listaContato");

  if (listaContato == null) {
    listaContato = new ArrayList();

    
    application.setAttribute("listaContato", listaContato);
  }

  if (request.getParameter("add") != null) {
    String nome = request.getParameter("nome");
    String numero = request.getParameter("numero");
    String email = request.getParameter("email");

    listaContato.add(new Contatos(nome, numero, email));
    response.sendRedirect(request.getRequestURI());
  }

  if (request.getParameter("remove") != null) {
    int i = Integer.parseInt(request.getParameter("i"));
    
    listaContato.remove(i);
    response.sendRedirect(request.getRequestURI());
  }
%>







<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page(Contatos)</title>
    </head>
    <body>
        <h1>Listar Contatos</h1>
        <h2>Adicionar Contato</h2>
        
        <form method="get">
      <label for="nome">Nome: </label>
      <input type="text" required="true" name="nome" id="nome" /> <br/>

      <label for="numero">Numero: </label>
      <input type="text" required="true" name="numero" id="numero" /> <br/>
      
      <label for="email">Email: </label>
      <input type="email" required="true" name="email" id="email" /> <br/>

      <button type="submit" name="add">Adicionar</button>
</form>

        <%
      if (listaContato.size() > 0) {%>
        <table border="1">
          <tr>
            <th>Índice</th>
            <th>Nome</th>
            <th>Email</th>
            <th>Numero</th>
            <th>-</th>
          </tr>

          <%
            for (int i = 0;
                    i < listaContato.size();
                    i++) {%>

          <% Contatos user = listaContato.get(i);%>
          <tr>
            <td><%= i + 1%></td>
            <td><%= user.getNome()%></td>
            <td><%= user.getNumero()%></td>
            <td><%= user.getEmail()%></td>
            <td>
              <form>
                <button type="submit" name="remove">Remover</button>
                <input type="hidden" name="i" value="<%= i%>"/>
              </form>
            </td>
          </tr>
          <%}%>
        </table>
    <%} else {
        out.println("<h2>Sem contatos</h2>");
      }
    %>
        
        
        
        
    </body>
</html>
