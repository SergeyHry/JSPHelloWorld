<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="de">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>MyWeb</title>
  <style>
  @font-face {
  font-family: 'PixelGame-R9AZe'; /* Der Name, mit dem du sie später ansprichst */
  src: url('./fonts/PixelGame-R9AZe.otf') format('opentype');
  font-weight: normal;
  font-style: normal;
}
#meldung{font-size: 60px;}
    body {
      font-family: PixelGame-R9AZe, sans-serif;
      background-color: #f4f4f4;
      margin: 0;
      padding: 0;
    }

    .navbar {
      background-color: #333;
      overflow: hidden;
      display: flex;
      justify-content: center;
      font-size: 80px;
    }
	     #txt{ font-family:„Times New Roman“, Times, sans-serif;}
    .nav-item {
      list-style: none;
      margin: 0 15px;
    }

    .nav-link {
      display: block;
      padding: 14px 20px;
      color: white;
      text-decoration: none;
      font-weight: bold;
    }

    .nav-link:hover {
      background-color: #555;
      border-radius: 5px;
    }

    .hero-section {
      background: linear-gradient(to right,rgba(124, 161, 199, 0.8));
      color: white;
      text-align: center;
      padding: 40px 10px;
  

   
    }

    .hero-section h2 {
      font-size: 100px;
      margin-bottom: 20px;

    }

    .hero-section img {
      max-width: 300px;
      margin-top: 20px;
    }

    .content-section {
      max-width: 50%;
      margin: 40px auto;
      padding: 0 20px;
    }

    .single-blog {
      display: flex;;
      flex-wrap: wrap;
      margin-bottom: 40px;
      background-color: white;
      border-radius: 10px;
      box-shadow: 0 2px 6px rgba(0,0,0,0.1);
      width: 80%
    }

 
        .container {
            display: flex;
            align-items: flex-start;
            background: white;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
            max-width: 60%;
            margin: 0 auto;
        }

        .bild {
            flex: 1;
        }

        .bild img {
            max-width: 100%;
            border-radius: 10px;
        }

        .text {
            flex: 1;
            padding-left: 30px;
        }

        .text h2 {
            margin-top: 0;
        }

        .text p {
            line-height: 1.6;
        }

        .caption {
            margin-top: 10px;
            font-size: 0.9em;
            color: #555;
        }
        #contactme{
        font-size: 100px;}
        .galerie { 
            display: flex;
            align-items: flex-start;
            background: white;
            padding: 20px;
            border-radius: 10px;
        
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
            max-width: 60%;
            margin: 0 auto;
            text-align: center;
            margin-bottom: 10px;
        }
        .bilder{
          flex: 1;
          max-width: 1200px;}
          
        .Galerieanzeige{
        font-size: 100px;
        max-width: 100%;
        text-align: center;
        border-radius: 10px;
         
      padding: 40px 10px;}
        .beschreibung{ 
        border-radius: 10px;
        padding:20px;}

    footer {
      background-color: #222;
      color: #fff;
      text-align: center;
      padding: 30px 10px;
    }

    footer input,
    footer textarea,
    footer button {
      width: 80%;
      max-width: 400px;
      margin: 10px auto;
      padding: 10px;
      display: block;
      border: none;
      border-radius: 5px;
    }

    footer button {
      background-color: #4e54c8;
      color: white;
      cursor: pointer;
    }

    footer button:hover {
      background-color: #3b40a4;
    }

    .copy {
      margin-top: 20px;
      font-size: 14px;
    }

    
    }
   
  </style>
</head>
<body>

  <nav class="navbar">
    <ul style="display: flex; padding: 0; margin: 0;">
      <li class="nav-item"><a class="nav-link" href="#container-foot">Kontakt</a></li>
      <li class="nav-item"><a class="nav-link" href="index.html#about">About Me</a></li>
      <li class="nav-item"><a class="nav-link" href="https://sergeyhry.infinityfreeapp.com/index.php?category=Planen%2C+Vorbereiten+und+Durchf%C3%BChren+von+Arbeitsaufgaben">Kartei-Karten</a></li>
      <li class="nav-item"><a class="nav-link" href="Sql.jsp">Quiz des Tages</a></li>
      <li class="nav-item"><a class="nav-link" href="Formular.jsp">Anmeldung</a></li>
    </ul>
  </nav>

  <section class="hero-section">
    <h2>Willkommen in meiner Web-Welt :)</h2>
 
    <img src="Art_Love_Sticker.gif" alt="Animation">
  </section>
  <div class= "Galerieanzeige">
  <label class = "Galerieanzeige ">andere Projekten: </label>
  </div>
  <div class = "galerie"> 

	<div class = "bilder">
	
 	     <img src="./screens/Bild2.png" class = "bilder" alt="Bild 1" width="1200" height="500"><br>

			<input type ="button" class = button_galerry value = "zurück">
	<input type ="button" class = button_galerry value = "weiter">
	</div>
		<div class = "beschreibung">
			<h1>hallo! hier wird die Beschreibung sein! links sind Bilder und Rechts kommentar. unten sind Tasten um auf ein weiteres Bild zu gehen</h1>
		</div>
	

</div>


<div class="container">
    <div class="bild">
        <img src="ich2.jpg" alt="Bild 2">
    
    </div>
    <div class="text">
     <h2 id = txt>Über mich</h2>
<h3 id="txt" ><strong><em>From People to People</em></strong></h3>
<p id="txt">
  Noch vor einem Jahr wusste ich kaum etwas über IT – und heute entwickle ich meine eigene Website. <br>
  Die Zeit vergeht schnell, und auf diesem Weg habe ich viel gelernt. Ich durfte großartige Menschen kennenlernen, mit denen ich gemeinsam die faszinierende Welt der IT entdecken konnte.<br><br>
  
  Vor uns liegen unzählige Möglichkeiten, unser Wissen sinnvoll einzusetzen – um das Leben einfacher, komfortabler und menschlicher zu gestalten. Ob es um Gesundheit, alltägliche Bedürfnisse oder Zeitsparen geht: Entwickler schaffen Lösungen, die echte Probleme lösen und Zeit für das Wesentliche schenken – wie Familie und Freunde.<br><br>

  Ich stehe noch ganz am Anfang meines Weges. Viele Herausforderungen und neue Lerninhalte warten auf mich. <br>
  Vielleicht klingt es naiv oder kindlich – aber ich glaube fest daran, dass es sich lohnt, dranzubleiben. Ich möchte meinen Beitrag leisten, mit meinen Projekten anderen Menschen zu helfen – Schritt für Schritt.
</p>

    </div>
</div>

  <p id= "meldung">ps. manche Featers funktionieren noch nicht. die Webseite-verbesserung folgt demnächst. für den Fall mein E-mail: hryshynde@gmail.com</p>

  <footer id="container-foot">
    <div>
    
    </div>
    <div class="contact-form">
      <h3 id = contactme> <img src="question.gif" alt="Kontakt" width="100" height="100"> hast du Fragen? schreibe mir eine E-mail! :) <img src="question.gif" alt="Kontakt" width="100" height="100"></h3>  
      <input type="text" placeholder="Dein Name">
      <input type="email" placeholder="Deine E-Mail">
      <textarea rows="4" placeholder="Deine Nachricht"></textarea>
      <button type="submit">Absenden</button>
    </div>
    <div class="copy">
      <p>&copy; 2025 <a href="https://github.com/SergeyHry/" target="_blank" style="color: #ccc;">SergeyHry</a> | Ort: <a href="https://www.mannheim.de/de/" target="_blank" style="color: #ccc;">Mannheim</a></p>
    </div>
  </footer>

</body>
</html>
