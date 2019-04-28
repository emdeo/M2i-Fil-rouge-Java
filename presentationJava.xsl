<!-- Prologue (identique à XML) -->
<?xml version="1.0" encoding="UTF-8" ?>

<!-- Un document XSLT doit être référencé dans le document XML qu'il transforme -->
<?xml-stylesheet type="text/xsl" href= "mon_document.xsl" ?>

<!-- Corps (élément racine : déclarer 2 attributs qui sont le n° de version et l'espace de noms) -->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    
    <!-- Décrit le document produit au fil des transformations (doc de type XML/HTML/texte, encodage, indenté ou non) -->
    <xsl:output method="html"
    encoding="UTF-8"
    doctype-public="-//W3C//DTD HTML 4.01//EN"
    doctype-system="http://www.w3.org/TR/html4/strict.dtd"
    indent="yes"/>

        <!-- Déclarer un template : TOUJOURS définir un attribut match OU un attribut name (jamais les 2 en même temps) -->
        <!-- L'attribut match sert à exprimer le XPath (chemin vers le doc XML auquel s'applique le template) -->
        <xsl:template match="/">
            <html>
                <head>
                    <title>Mon test XLS</title>
                </head>
                <body>
                    <p>Contenu du deuxième axe du plan :</p>

                    <!-- VALUE-OF : sélectionner un élément de mon fichier XML pour l'afficher dans un HTML -->
                    <xsl:value-of select="m2i-Plan-java/axe[nom='fonctions']">
                </body>
            </html>
        </xsl:template>

</xsl:stylesheet>