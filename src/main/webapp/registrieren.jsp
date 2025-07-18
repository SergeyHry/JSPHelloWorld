<%@ page contentType="text/html; charset=UTF-8" language="java" import="java.sql.*" %>
<%
    // Formulardaten holen
    String geschlecht = request.getParameter("geschlecht");
    String nickname = request.getParameter("nickname");
    String vorname = request.getParameter("vorname");
    String nachname = request.getParameter("nachname");
    String email = request.getParameter("email");
    String adresse = request.getParameter("adresse");
    String plz = request.getParameter("plz");

    // Datenbankverbindung
    String dbURL = "jdbc:mariadb://localhost:3307/quiz"; 
    String user = "root";
    String pass = "1111";
    Connection conn = null;

    try {
        Class.forName("org.mariadb.jdbc.Driver");
        conn = DriverManager.getConnection(dbURL, user, pass);

        String sql = "INSERT INTO registrierung (geschlecht, nickname, vorname, nachname, email, adresse, plz) VALUES (?, ?, ?, ?, ?, ?, ?)";
        PreparedStatement ps = conn.prepareStatement(sql);
        ps.setString(1, geschlecht);
        ps.setString(2, nickname);
        ps.setString(3, vorname);
        ps.setString(4, nachname);
        ps.setString(5, email);
        ps.setString(6, adresse);
        ps.setString(7, plz);
        ps.executeUpdate();
    } catch (Exception e) {
        out.println("<p style='color:red;'>Fehler bei der Registrierung: " + e.getMessage() + "</p>");
    } finally {
        try { if (conn != null) conn.close(); } catch (SQLException e) { e.printStackTrace(); }
    }
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Registrierung Erfolgreich</title>
</head>
<body>
<h2>Registrierungsdaten</h2>
<ul>
    <li><strong>Geschlecht:</strong> <%= geschlecht %></li>
    <li><strong>Nickname:</strong> <%= nickname %></li>
    <li><strong>Vorname:</strong> <%= vorname %></li>
    <li><strong>Nachname:</strong> <%= nachname %></li>
    <li><strong>E-Mail:</strong> <%= email %></li>
    <li><strong>Adresse:</strong> <%= adresse %></li>
    <li><strong>PLZ:</strong> <%= plz %></li>
</ul>
</body>
</html>
