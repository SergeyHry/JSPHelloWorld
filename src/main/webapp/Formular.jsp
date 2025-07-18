<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Registrierung</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: rgba(124, 161, 199, 0.8);
            display: flex;
            justify-content: center;
            padding: 30px;
        }

        .container {
            display: flex;
            gap: 20px;
            max-width: 1000px;
            width: 100%;
        }

        .formular, .hinweis-box {
            background: white;
            padding: 25px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
            flex: 1;
        }

        .formular h1 {
            margin-bottom: 20px;
        }

        label {
            font-weight: bold;
            display: block;
            margin-top: 10px;
        }

        input[type="text"],
        input[type="email"] {
            width: 90%;
            padding: 8px;
            margin-top: 5px;
            border-radius: 5px;
            border: 1px solid #ccc;
        }

        #adresse {
            width: 55%;
            margin-right: 5px;
        }

        #plz {
            width: 29%;
        }

        .gender-options {
            margin-top: 5px;
        }

        .gender-options input {
            margin-right: 5px;
        }

        input[type="submit"] {
            margin-top: 20px;
            width: 100%;
            padding: 10px;
            background: rgba(90, 139, 189, 0.8);
            color: white;
            border: none;
            border-radius: 5px;
            font-size: 16px;
        }

        input[type="submit"]:hover {
            background: #45a049;
        }

        .hinweis-box h2 {
            text-align: center;
            margin-bottom: 10px;
        }

        .hinweis-box p {
            font-size: 14px;
            line-height: 1.5;
        }

        strong {
            color: red;
        }
    </style>
</head>
<body>
<div class="container">
    <!-- Formular -->
    <div class="formular">
        <h1>Anmelden</h1>
        <form action="registrieren.jsp" method="post">
            <label>Geschlecht:</label>
            <div class="gender-options">
                <input type="radio" name="geschlecht" value="Mann"> Mann
                <input type="radio" name="geschlecht" value="Frau"> Frau
                <input type="radio" name="geschlecht" value="Divers"> Divers
            </div>

            <label for="nickname">Nickname:</label>
            <input type="text" name="nickname" placeholder="Nickname" required>

            <label for="vorname">Vorname:</label>
            <input type="text" name="vorname" placeholder="Vorname" required>

            <label for="nachname">Nachname:</label>
            <input type="text" name="nachname" placeholder="Nachname" required>

            <label for="adresse">Adresse:</label>
            <input type="text" name="adresse" id="adresse" placeholder="Adresse">
            <input type="text" name="plz" id="plz" placeholder="PLZ" required>

            <label for="email">E-Mail:</label>
            <input type="email" name="email" placeholder="E-Mail-Adresse" required>

            <input type="submit" value="Registrieren">
        </form>
    </div>

    <!-- Hinweistext -->
    <div class="hinweis-box">
        <h2>Anmerkung:</h2>
        <p>Die Anmeldung ist nur, um die Funktionalität zu prüfen.<br>
        Die Daten gelangen <strong>unverschlüsselt</strong> in die Datenbank. Bitte beachtet das, wenn ihr persönliche Daten zusendet.<br>
        Ich wünsche euch einen schönen Tag und passt gut auf eure persönlichen Informationen auf 😉</p>
        <input type ="checkbox" klass="zustimmen" id = "zustimmen" required> Ich bestätige, dass ich den Hinweise gelesen habe
        <br><br>
 		 <a class="zurück" href="Webi.jsp">zur Hauptmenü</a></li>
      
    </div>
</div>
</body>
</html>
