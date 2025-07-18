<%@ page import="java.sql.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%
    String dbURL = "jdbc:mariadb://localhost:3307/quiz";
    String user = "root";
    String pass = "1111";

    int fragenId = 1; // Standard
    if (request.getParameter("id") != null) {
        fragenId = Integer.parseInt(request.getParameter("id"));
    }
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Quiz</title>
</head>
<body>
<h1>Frage anzeigen</h1>

<%
    Connection conn = null;
    try {
        Class.forName("org.mariadb.jdbc.Driver");
        conn = DriverManager.getConnection(dbURL, user, pass);

        // 1. Aktuelle Frage holen
        PreparedStatement ps1 = conn.prepareStatement("SELECT * FROM fragen WHERE fragen_id = ?");
        ps1.setInt(1, fragenId);
        ResultSet rs1 = ps1.executeQuery();

        if (rs1.next()) {
            String frageText = rs1.getString("frage");
            out.println("<form method='get' action='Sql.jsp'>");
            out.println("<p><strong>Frage " + fragenId + ": " + frageText + "</strong></p>");

            // 2. Antworten holen
            PreparedStatement ps2 = conn.prepareStatement("SELECT * FROM antworten WHERE fragen_id = ?");
            ps2.setInt(1, fragenId);
            ResultSet rs2 = ps2.executeQuery();

            if (rs2.next()) {
                out.println("<input type='radio' name='antwort' value='1'> " + rs2.getString("variant_1") + "<br>");
                out.println("<input type='radio' name='antwort' value='2'> " + rs2.getString("variant_2") + "<br>");
                out.println("<input type='radio' name='antwort' value='3'> " + rs2.getString("variant_3") + "<br>");
                out.println("<input type='radio' name='antwort' value='4'> " + rs2.getString("variant_4") + "<br>");
            }

            rs2.close();
            ps2.close();

            // Weiter-Button zeigt nächste Frage
            out.println("<input type='hidden' name='id' value='" + (fragenId + 1) + "'>");
            out.println("<br><input type='submit' value='Weiter'>");
            out.println("</form>");
        } else {
            out.println("<p>Das war die letzte Frage. Vielen Dank!</p>");
        }

        rs1.close();
        ps1.close();
        conn.close();

    } catch (Exception e) {
        out.println("<p style='color:red;'>Fehler: " + e.getMessage() + "</p>");
        e.printStackTrace();
    }
%>

</body>
</html>

