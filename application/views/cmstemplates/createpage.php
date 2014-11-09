<?php $this->load->helper('form'); ?>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <link href="<?php echo $bootstrapcss; ?>" rel="stylesheet" type="text/css">
        <style type="text/css">
            body {
                padding-top: 70px;
            }
            .clickableRow {
                cursor: pointer;
            }
        </style>
        <script type="text/javascript" src="<?php echo $jquery; ?>"></script>
        <script type="text/javascript" src="<?php echo $bootstrapjs; ?>"></script>
    </head>
    <body> 
        <div class="navbar navbar-default navbar-fixed-top" role="navigation">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#"><b>CMS</b></a>
                </div>
                <div class="navbar-collapse collapse">
                    <ul class="nav navbar-nav">
                        <li><a href="formulieren">Formulieren</a></li>
                        <li><a href="inschrijvingen">Inschrijvingen</a></li>
                        <li class="active"><a href="paginabeheer">Pagina's beheren</a></li>
                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="removesession">Uitloggen</a></li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="container">
            <?php echo form_open('cms/submitpage'); ?>
            <div class="row">
                <button class="btn btn-primary pull-right" style="margin-top:20px;">
                    <span class="glyphicon glyphicon-floppy-disk"></span>
                    Pagina Opslaan
                </button>
                <h2>Pagina aanpassen</h2>
            </div>
            <div class="row">
                <ul class="nav nav-tabs col-md-12" role="tablist" style="margin-top: 20px;">
                    <li style="width: 150px; text-align: center;" class="active"><a href="#page" data-toggle="tab">Pagina</a></li>
                    <li style="width: 150px; text-align: center;"><a href="#meta"  data-toggle="tab">Meta-informatie</a></li>
                </ul>
                <div class="tab-content col-md-12">
                    <div id="page" class="tab-pane fade in active" style="padding-top:10px">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="pagetitle">Titel:</label>
                                <?php
                                $data = array(
                                    'name' => 'pagetitle',
                                    'placeholder' => 'Testpagina',
                                    'class' => 'form-control',
                                    'id' => 'pagetitle',
                                    'required' => 'true'
                                );
                                echo form_input($data);
                                ?>
                            </div>
                            <div class="form-group">
                                <label for="pageurl">Pagina url:</label>
                                <?php
                                $data = array(
                                    'name' => 'page-url',
                                    'placeholder' => 'paginaurl',
                                    'class' => 'form-control',
                                    'id' => 'pageurl'
                                );
                                echo form_input($data);
                                ?>
                            </div>
                            <div class="form-group">
                                <label for="pagetemplate">Template voor de pagina:</label>
                                <select name="template" class="form-control" id="pagetemplate">
                                    <?php
                                    foreach ($templates->result_array() as $template) {
                                        echo '<option value="' . $template['id'] . '">' . $template['templateType'] . '</option>';
                                    }
                                    ?>
                                </select>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="pageimage">Plaatje van de pagina:</label>
                                <?php
                                $data = array(
                                    'name' => 'page-image',
                                    'placeholder' => 'test.jpg',
                                    'class' => 'form-control',
                                    'id' => 'pageimage'
                                );
                                echo form_input($data);
                                ?>
                            </div>
                            <div class="form-group">
                                <label for="imagesforpage">Plaatjes voor de pagina:</label>
                                <?php
                                $data = array(
                                    'name' => 'images-for-page',
                                    'placeholder' => 'test.jpg; test2.jpg',
                                    'class' => 'form-control',
                                    'id' => 'imagesforpage'
                                );
                                echo form_input($data);
                                ?>
                            </div>
                        </div>
                        <div class="col-md-12" >
                            <div class="row">
                                <div class="col-md-12"style="border-top: 1px solid #ddd; padding-top: 10px;">
                                    <label for="contentblock">Content block:</label>
                                    <textarea class="form-control" id="contentblock" style="height: 100px;" placeholder="Plaats hier de tekst" name="content[0][text]"></textarea>
                                    <div class="checkbox">
                                        <label>
                                            Standaard beschikbaar <input type="checkbox" name="content[0][visible]">
                                        </label>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12"style="border-top: 1px solid #ddd; padding-top: 10px; margin-top: 15px;">
                                    <label for="contentblock">Content block:</label>
                                    <textarea class="form-control" id="contentblock" style="height: 100px;" placeholder="Plaats hier de tekst" name="content[1][text]"></textarea>
                                    <div class="checkbox">
                                        <label>
                                            Standaard beschikbaar <input type="checkbox" name="content[1][visible]">
                                        </label>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12" style="margin-top: 15px;">
                                    <button class="btn btn-danger">Remove block</button>
                                    <button class="btn btn-success">Add new block</button>
                                </div>

                            </div>
                        </div>    

                    </div>
                    <div id="meta" class="tab-pane fade" style="padding-top: 10px;">
                        <!--<p class="text-muted">Hier kan je de meta-data van de pagina aanpassen. 
                        Deze informatie is niet direct zichtbaar op de site maar wordt wel gebruikt door zoekmachines, zoals Google.</p> -->
                        <div class="form-group">
                            <label for="metaurl">Meta: URL-verwijzing</label>
                            <?php
                            $data = array(
                                'name' => 'meta-keywords',
                                'placeholder' => 'Type hier de url voluit: http://www.demetervoeding.nl/testpagina',
                                'class' => 'form-control',
                                'id' => 'metaurl',
                                'style' => 'width: 60%'
                            );
                            echo form_input($data);
                            ?>
                        </div>
                        <div class="form-group">
                            <label for="metakeywords">Meta: Sleutelwoorden</label>
                            <?php
                            $data = array(
                                'name' => 'meta-keywords',
                                'placeholder' => 'Typ hier sleutelwoorden van de pagina gescheiden door een komma.
Bijvoorbeeld: Auto, Autodeur, Auto-hengsel',
                                'class' => 'form-control',
                                'style' => 'height: 70px;',
                                'id' => 'metakeywords'
                            );
                            echo form_textarea($data);
                            ?>
                        </div>
                        <div class="form-group">
                            <label for="metadescription">Meta: Beschrijving van de pagina</label>
                            <?php
                            $data = array(
                                'name' => 'metadescription',
                                'placeholder' => 'Typ hier een korte samenvatting van de pagina, niet meer dan 500 tekens.',
                                'class' => 'form-control',
                                'style' => 'height: 100px;',
                                'id' => 'metadescription'
                            );
                            echo form_textarea($data);
                            ?>
                        </div>
                    </div>
                </div>
            </div>
    </body>
</html>