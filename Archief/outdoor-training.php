<?php include('globalsettings.php'); ?>
<?php include($forms); ?>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <link href="<?php echo $bootstrapCSS; ?>" rel="stylesheet" type="text/css">
        <link href="<?php echo $baseCSS; ?>" rel="stylesheet" type="text/css">
        <link href="<?php echo "scss/workshop.css"; ?>" rel="stylesheet" type="text/css">
    </head>
    <body id='footermargin'>
        <?php include($baseComponents . "header/header.php"); ?>

        <div class="container contentview">
            <div class="col-md-12 titlePlaceholder">
                <h1 class="title">Outdoor training</h1>
            </div>

            <div class="col-md-3">
                <script src="js/overlayToggle.js" type="text/javascript"></script>
                <script type="text/javascript">
                    var caroussel = new OverlayCaroussel(["Natuurvoeding foto liggend.png" , "demeter_oud.gif", "Ontspannende gezichtsmassage.jpg", "H3OPro.png"]);
                </script>
                <a href="#" class="thumbnail" onclick="caroussel.toggleOverlay()">
                    <img src="<?php echo $img . 'outdoor.jpg'; ?>" class="img-responsive">
                    <div>Klik hier voor plaatjes.</div>
                </a>
                <button class="btn btn-block btn-success active" onclick="contactToggle('#description', '#contact')" id="description">
                    Beschrijving
                </button>
                <button class="btn btn-block btn-success" onclick="contactToggle('#contact', '#description')" id="contact">
                    Contact
                </button>
                <ul class="list-group">
                    <li class="list-group-item" style="text-align: center; font-weight: bold">
                        FitNJoy
                    </li>
                    <li class="list-group-item">
                        Prijs:
                        <span style="float: right;">€ 3,- / keer</span>
                    </li>
                    <li class="list-group-item">
                        Tijd:
                        <span>09.30 - 10.30</span>
                    </li>
                    <li class="list-group-item">
                        Dag:
                        <span>Woensdag</span>
                    </li>
                </ul>
                <ul class="list-group">
                    <li class="list-group-item" style="text-align: center; font-weight: bold">
                        XCO Walking & Running
                    </li>
                    <li class="list-group-item">
                        Prijs:
                        <span>€ 4,- / keer</span>
                    </li>
                    <li class="list-group-item">
                        Tijd:
                        <span>09.00 - 10.00</span>
                    </li>
                    <li class="list-group-item">
                        Dag:
                        <span>Vrijdag</span>
                    </li>
                </ul>
            </div>

            <div class="col-md-9">
                <p id="maintext"><b>
                        Bewegen in de buitenlucht is gezonder dan in een sportschool.
                        Dat blijkt uit een nieuwe Britse studie.
                        Volgens wetenschappers heeft bewegen in de buitenlucht een positief effect op zowel de geestelijke als de lichamelijke gezondheid.
                    </b></p>
                <div id="descriptioncontent">
                    <!--<p>
                        Studie (Peninsula College of Medicine and Dentistry) toont aan dat lichaamsbeweging in de natuur leidt tot meer gevoelens van revitalisering,
                        meer energie en positieve betrokkenheid.
                        Spanningen, verwarring, boosheid en depressies worden juist tegen gegaan.
                        Naast een betere mentale gezondheid, meldde de studie ook dat je meer plezier beleeft aan oefeningen in de buitenlucht en het vaak lang volhoudt.<br>
                        De volgende trainingen worden aangeboden:
                    </p> -->
                    <h4 style="font-weight: normal">FitNJoy</h4>
                    <span> Leuke outdoortraining gebruik makend van de
mogelijkheden die het park biedt. In een ongedwongen en gezellige sfeer
werken we aan het opbouwen van de conditie en het versterken van de spieren,
ieder op zijn eigen niveau. Na afloop is er voor de liefhebber een kop thee
op de parkeerplaats.</span>
                           <h4 style="font-weight: normal">XCO Walking & Running</h4>
                    <span> De XCO-training is een totaal training waarbij gebruik wordt gemaakt van een XCO-trainer. 
                        De XCO-Trainer, een buis gevuld met bewegende massa, zorgt ervoor dat je constant je ‘natuurlijke korset’ aanspant. 
                        Je traint conditie, spieren en bindweefsel. 
                        De XCO-buizen geven bij het begin en het eind van iedere beweging een aanvullende belasting op de spier- en bindweefselstructuren van het hele lichaam. 
                        Dit bijzondere effect wordt de Reactive Impact genoemd en is de essentie van een XCO training. 
                        Hiermee onderscheidt de XCO-Trainer zich van gewichtsoefeningen en fitnessapparaten, waarbij dit effect niet optreedt.</span>
                    <p style="text-decoration: underline;">Bewegen moet plezier zijn op je eigen niveau en daar streven wij naar tijdens de trainingen !</p>

                    <p>Wij verzamelen op de parkeerplaats van het Leeghwaterbad. <br>
                        Er is geen slecht weer, alleen slechte kleding ! <br>
                        Slechts bij gladheid en onweer vinden wij het niet verantwoord om op pad te gaan.</p>

                    <p>Meld je voor een gratis proefles aan via <a onclick="contactToggle('#contact', '#description')">het formulier</a>
                        of via de mail <a href="mailto:info@demetervoeding.nl">info@demetervoeding.nl</a></p>
                </div>
                <div>
                    <table class="table">
                        <thead>
                            <tr>
                                <th>Dag</th>
                                <th>Tijd</th>
                                <th>Training</th>
                                <th>Prijs</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>Woensdag</td>
                                <td>9.30-10.30 u.</td>
                                <td>FitNJoy</td>
                                <td>€ 3/keer</td>
                            </tr>
                            <tr>
                                <td>Vrijdag</td>
                                <td>9.00-10.00 u.</td>
                                <td>XCO Walking & Running</td>
                                <td>€ 4/keer</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <div id="contactcontent">
                    <?php
                    $colum1 = new Colum(array(
                        new TextField("Naam", "Naam invoeren", "name"),
                        new EmailField("Email", "Email invoeren", "email"),
                        new SelectField("Onderwerp", "", "subject", array(new SelectOption("", "Kies een onderwerp", true),
                            new SelectOption("Vraag", "Vraag"),
                            new SelectOption("Proefles", "Proefles")))
                    ));
                    $colum2 = new Colum(array(new TextBoxField("Bericht", "Bericht", "message", 9)));
                    $formTest = new Form("Verstuur bericht", 2, array($colum1, $colum2), "Outdoor training");
                    echo $formTest->outputFormHTML();
                    ?>
                </div>
            </div>
        </div>
    </div>

    <?php include($baseComponents . 'footer/footer.php'); ?>
    <script type="text/javascript" src="js/workshopcontact.js"></script>
</body>
</html>