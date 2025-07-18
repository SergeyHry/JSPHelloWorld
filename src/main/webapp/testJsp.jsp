<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HTML-Quiz</title> 
</head>
<body>

<%
    // Punkte aus der Session holen oder 0 setzen
    Integer punkte = (Integer) session.getAttribute("punkte");
    if (punkte == null) {
        punkte = 0;
    }

    String name = request.getParameter("vname");
    String antwort = request.getParameter("quest");
    String button = request.getParameter("button");

    boolean richtigeAntwort = false;

    if (button != null) {
        if ("Hypertext Markup Language".equals(antwort)) {
            richtigeAntwort = true;
            punkte++; // Punkt hinzufügen
            session.setAttribute("punkte", punkte); // in der Session speichern
        }
        else {
        	session.invalidate();
        }
%>

<h2>Hallo <%= name != null ? name : "Gast" %>!</h2>

<% if (richtigeAntwort) { %>
    <p style="color:green;"> Richtig! HTML steht für <strong>Hypertext Markup Language</strong>.</p>
<%}  else if (antwort != null) { %>
    <p style="color:red;">❌ Leider falsch. Die richtige Antwort ist: <strong>Hypertext Markup Language</strong>.</p>
<% } else { %>
    <p style="color:orange;">⚠️ Du hast noch keine Antwort ausgewählt.</p>
<% } %>

<p><strong>Deine aktuelle Punktzahl: <%= punkte %></strong></p>

<% } // Ende button != null %>

<hr>

<form method="GET">
<h1>Quiz</h1>

<label>Ihr Vorname:</label>
<input type="text" id="vname" name="vname" value="<%= name != null ? name : "" %>">
<br><br>

<h2>Wofür steht die Abkürzung HTML?</h2>
<input type="radio" value="Hypertext Making Language" name="quest" id="quest1"
<%= "Hypertext Making Language".equals(antwort) ? "checked" : "" %>> Hypertext Making Language<br>

<input type="radio" value="Hypertext Markup Language" name="quest" id="quest2"
<%= "Hypertext Markup Language".equals(antwort) ? "checked" : "" %>> Hypertext Markup Language<br>

<input type="radio" value="Hypertext Marker Language" name="quest" id="quest3"
<%= "Hypertext Marker Language".equals(antwort) ? "checked" : "" %>> Hypertext Marker Language<br>

<input type="radio" value="Hyper Textlink Marker Language" name="quest" id="quest4"
<%= "Hyper Textlink Marker Language".equals(antwort) ? "checked" : "" %>> Hyper Textlink Marker Language<br>

<br>
<input type="submit" value="Abschicken" name="button" id="button">
</form>

</body>
</html>
