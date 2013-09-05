<%@ include file="/WEB-INF/jsp/taglibs.jsp" %>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title></title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width">

        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/jquery.dataTables.css">
        <style>
            body {
                padding-top: 50px;
                padding-bottom: 20px;
            }
        </style>
        <link rel="stylesheet" href="css/bootstrap-theme.min.css">
        <link rel="stylesheet" href="css/main.css">

        <script src="js/vendor/modernizr-2.6.2-respond-1.1.0.min.js"></script>
        
    </head>
    <body>
        <!--[if lt IE 7]>
            <p class="chromeframe">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> or <a href="http://www.google.com/chromeframe/?redirect=true">activate Google Chrome Frame</a> to improve your experience.</p>
        <![endif]-->
    <!-- Main jumbotron for a primary marketing message or call to action -->
    <div class="jumbotron">
      <div class="container">
        <h1>Battle Royale</h1>
        <p>Le très bon coin</p>
      </div>
    </div>

    <div class="container">
      <!-- Example row of columns -->
      <div class="row">
        <form role="form">
          <div class="form-group">
            <label for="exampleInputEmail1">Catégorie</label>
            <select class="form-control" id="search_category" onchange="SearchCrit(false, get_radio_value(f.st), 12, 's');showClothingSize('clothing_typed','null2');" name="c">
              <option selected="" value="0">Toutes catégories</option>
              <option value="1" style="background-color:#dcdcc3;">-- VEHICULES --</option><option value="2">Voitures</option>
              <option value="3">Motos</option>
              <option value="4">Caravaning</option>
              <option value="5">Utilitaires</option>
              <option value="6">Equipement Auto</option>
              <option value="44">Equipement Moto</option>
              <option value="50">Equipement Caravaning</option>
              <option value="7">Nautisme</option>
              <option value="51">Equipement Nautisme</option>
              <option value="8" style="background-color:#dcdcc3;">-- IMMOBILIER --</option><option value="9">Ventes immobilières</option>
              <option value="10">Locations</option>
              <option value="11">Colocations</option>
              <option value="12">Locations de vacances</option>
              <option value="13">Bureaux &amp; Commerces</option>
              <option value="14" style="background-color:#dcdcc3;">-- MULTIMEDIA --</option><option value="15">Informatique</option>
              <option value="43">Consoles &amp; Jeux vidéo</option>
              <option value="16">Image &amp; Son</option>
              <option value="17">Téléphonie</option>
              <option value="18" style="background-color:#dcdcc3;">-- MAISON --</option><option value="19">Ameublement</option>
              <option value="20">Electroménager</option>
              <option value="45">Arts de la table</option>
              <option value="39">Décoration</option>
              <option value="46">Linge de maison</option>
              <option value="21">Bricolage</option>
              <option value="52">Jardinage</option>
              <option value="22">Vêtements</option>
              <option value="53">Chaussures</option>
              <option value="47">Accessoires &amp; Bagagerie</option>
              <option value="42">Montres &amp; Bijoux</option>
              <option value="23">Equipement bébé</option>
              <option value="54">Vêtements bébé</option>
              <option value="24" style="background-color:#dcdcc3;">-- LOISIRS --</option><option value="25">DVD / Films</option>
              <option value="26">CD / Musique</option>
              <option value="27">Livres</option>
              <option value="28">Animaux</option>
              <option value="55">Vélos</option>
              <option value="29">Sports &amp; Hobbies</option>
              <option value="30">Instruments de musique</option>
              <option value="40">Collection</option>
              <option value="41">Jeux &amp; Jouets</option>
              <option value="48">Vins &amp; Gastronomie</option>
              <option value="56" style="background-color:#dcdcc3;">-- MATERIEL PROFESSIONNEL --</option><option value="57">Matériel Agricole</option>
              <option value="58">Transport - Manutention</option>
              <option value="59">BTP - Chantier Gros-oeuvre</option>
              <option value="60">Outillage - Matériaux 2nd-oeuvre</option>
              <option value="32">Équipements Industriels</option>
              <option value="61">Restauration - Hôtellerie</option>
              <option value="62">Fournitures de Bureau</option>
              <option value="63">Commerces &amp; Marchés</option>
              <option value="64">Matériel Médical</option>
              <option value="31" style="background-color:#dcdcc3;">-- EMPLOI &amp; SERVICES --</option><option value="33">Emploi</option>
              <option value="34">Services</option>
              <option value="35">Billetterie</option>
              <option value="49">Evénements</option>
              <option value="36">Cours particuliers</option>
              <option value="37" style="background-color:#dcdcc3;">--</option>
              <option value="38">Autres</option>
            </select>
          </div>
          <div class="form-group">
            <label for="exampleInputPassword1">Région</label>
            <select class="form-control" id="searcharea" name="w">
              <option selected="" value="1">Ile-de-France</option>
              <option value="2">Régions voisines</option>
              <option value="3">Toute la France</option>
              <option value="0" style="background-color:#dcdcc3;">-- DEPARTEMENT --</option>
              <option value="175">Paris</option>
              <option value="177">Seine-et-Marne</option>
              <option value="178">Yvelines</option>
              <option value="191">Essonne</option>
              <option value="192">Hauts-de-Seine</option>
              <option value="193">Seine-Saint-Denis</option>
              <option value="194">Val-de-Marne</option>
              <option value="195">Val-d'Oise</option>
            </select>
          </div>
          <button type="submit" class="btn btn-default">Recherche</button>
        </form>
      </div>
      <div class="row">
        <table id="table" class="table">
          <thead>
            <tr>
              <th>Photo</th>
              <th>Nom</th>
              <th>Ville</th>
              <th>Prix</th>
            </tr>
          </thead>
          <tbody>
            <c:forEach items="${results}" var="result">
			<tr>
				<td><img alt="" src="${result.imgSrc}"></td>
	              <td>${result.name}</td>
	              <td>${result.ville}</td>
	              <td>${result.prix}</td>
			</tr>
			</c:forEach>
          </tbody>
        </table>
      </div>

      <hr>

      <footer>
        <p>&copy; Xebia 2013</p>
      </footer>
    </div> <!-- /container -->        <script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.1/jquery.min.js"></script>
        <script>window.jQuery || document.write('<script src="js/vendor/jquery-1.10.1.min.js"><\/script>')</script>

        <script src="js/vendor/bootstrap.min.js"></script>

        <script src="js/main.js"></script>
        
        <script src="js/jquery.js"></script>
        <script src="js/jquery.dataTables.min.js"></script>

        <script>
            $(document).ready(function() {
                $('#table').dataTable();
            });
        </script>
    </body>
</html>

