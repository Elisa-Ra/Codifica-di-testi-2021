<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
  xmlns="http://www.w3.org/1999/xhtml"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"  
  xmlns:tei="http://www.tei-c.org/ns/1.0">
    
  <xsl:output method="html"  indent="yes" omit-xml-declaration="yes"/>

    <xsl:variable name="title">
      <xsl:value-of select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:titleStmt/tei:title" />
    </xsl:variable>  
  
  <xsl:template match="/">

    <html>
      <head>
         <title><xsl:value-of select="$title" /></title>
         <link rel="stylesheet" type="text/css" href="./stile.css" />   
         <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
         <script type="text/javascript" src="jscript.js"></script>
    </head>
      
      
      <body>
        <header>
          <div class="titolo">
            <h1 id="h1title"><xsl:value-of select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:titleStmt/tei:title[@xml:id='titolo1']"/>  
            <xsl:value-of select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:titleStmt/tei:title[@xml:id='titolo2']"/> di 
            <xsl:value-of select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:msDesc/tei:msContents/tei:msItem/tei:author"/></h1>
            <h2><xsl:value-of select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:titleStmt/tei:respStmt/tei:resp"/>
            <xsl:value-of select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:titleStmt/tei:respStmt/tei:name"/></h2>
          </div>

          <div id="navbar">
            <a href="#manoscritto">Manoscritto</a>
            <a href="#info">Info</a>
            <a href="#biblio">Bibliografia</a>
            <a href="#tt">Termini tecnici</a>
          </div>

        </header>
          
        <section id="manoscritto"> <!--Immagini manoscritto con mappa interattiva-->
          <h2>MANOSCRITTO</h2>
          
          <div class="pulsanti"> <!--div con il pulsante-->
            <button class="button2">Abbreviazioni</button>
            <button class="button5">Aggiunte</button>
            <button class="button4">Cancellature</button>
            <button class="button3">Correzioni</button>
            <button class="pulsante">Cambio pagina </button>
            <button class="button6">Supplied</button>
          </div>

          <xsl:call-template name="immagini">
            <xsl:with-param name="facsimile" select = "tei:TEI/tei:facsimile" />
          </xsl:call-template>
        
        </section>
        
          <div class="testi"> <!--div con tutti i testi-->
      
            <div class="fr1"> <!--testo in francese-->
              <h3>TESTO FRANCESE</h3>
              <!-- <xsl:call-template name="text-francese"></xsl:call-template>-->
              <br>Maintenant, estime-t-on </br>
              <br>que le langage soit dans cet ensemble </br>     
              <br>un facteur digne d’être aperçu ou un facteur nul, une quantité</br>                                         
              <br>appéciable ou une quantité négligeable. C’est </br>
              <br> de là (mais seulement de là) que peut dépendre</br>
              <br>un jugement équitable et éclairé sur la valeur</br>
              <br>de l’étude du langage dans la connaissance</br>
              <br>générale; les rayons de lumière, si intenses qu’ils aient été, qui ont pu </br>               
              <br>soudain tomber de la langue sur d’autres disciplines et sur </br>               
              <br>d’autres objets de recherche, ne sauraient avoir</br>            
              <br>qu’une importance absolument épisodique et </br>
              <br>incidente, pour l’étude de la langue elle-même,</br>
              <br>pour le développement intérieur de cette étude et pour</br>
              <br>le but vers lequel elle marche.</br>
            </div>
          
            <div class="testo-it"> <!--testo in italiano-->
              <h3>TRADUZIONE</h3>
              <xsl:call-template name="text-it">
                <xsl:with-param name="text" select = "tei:TEI/tei:text/tei:body" />
              </xsl:call-template>
            </div>
          </div>

        <div class="liste">
          <section id="tt">
            <!--Lista persone-->
            <xsl:call-template name="listaperson">
              <xsl:with-param name="list1" select="tei:TEI/tei:text/tei:back/tei:listPerson"/>
            </xsl:call-template>
    
            <!--Lista luoghi-->
            <xsl:call-template name="listaluoghi">
              <xsl:with-param name="list2" select="tei:TEI/tei:text/tei:back/tei:listPlace"/>
            </xsl:call-template>
    
            <!--Lista termini-->
          
            <xsl:call-template name="termini">
              <xsl:with-param name="list3" select="tei:TEI/tei:text/tei:back/tei:div"/>
            </xsl:call-template>
          </section>

        </div>

        <section id="info">
          <!--Info manoscritto-->
          <xsl:call-template name="manoscritto">
            <xsl:with-param name="msdesc" select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:msDesc"/>
            <xsl:with-param name="digital-edition" select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:editionStmt"/>
          </xsl:call-template>
        </section>
        
        <section id="biblio">
          <h2>BIBLIOGRAFIA</h2>
          <div class="bibliografia"> <!--da sistemare con css-->
           

          <!--Info edizione digitale (editionStmt)
          <xsl:call-template name="digital">
          <xsl:with-param name="digital-edition" select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:editionStmt"/>
          <xsl:with-param name="msdesc" select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:msDesc"/>
          </xsl:call-template>-->
       
          <!--<xsl:call-template name="pub"></xsl:call-template>-->


          <!--sourceDesc bibliografia Bouquet-Engler-->
          <xsl:call-template name="bou-en">
          <xsl:with-param name="b-e" select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:bibl[@source='#B-E-2002']"/>
          </xsl:call-template>

          <!--sourceDesc bibliografia Emanuele Fadda-->
          <xsl:call-template name="fad">
          <xsl:with-param name="e-f" select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:bibl[@source='#F-2006']" />
          </xsl:call-template>
        
          </div>
        </section>

       <footer>
        <hr id="footer" />
          <p>
            Sito realizzato da
            <a  title="Pagina GitHub"  href="https://github.com/Elisa-Ra" >
              Elisa Raeli
            </a>
          </p>
        </footer> 
      </body>     
    </html>
  </xsl:template> 

  <xsl:template name = "immagini" > 
    <xsl:param name = "facsimile" />
    
    <div class="pags">
    <div class="pagina1"> <!--div che contiene le immagini del manoscritto-->
    
      <!--surface 1-->
      <xsl:for-each select="$facsimile/tei:surface[@n='1']/tei:graphic">
        <img class="imgs" src="{./@url}" id="{./@xml:id}" alt="Manoscritto" usemap="#map" /> 
      </xsl:for-each>
    
      <map name="map"> <!--Mappa interattiva 1-->
        <xsl:for-each select="$facsimile/tei:surface[@n='1']/tei:zone">
          <xsl:element name="area">
            <xsl:attribute name="shape">rect</xsl:attribute>
            <xsl:attribute name="class">zona</xsl:attribute>
            <xsl:attribute name="coords">
              <xsl:value-of select="./@ulx" />,<xsl:value-of select="./@uly" />,<xsl:value-of select="./@lrx" />,<xsl:value-of select="./@lry" />
            </xsl:attribute>
            <xsl:attribute name="id">
              <xsl:value-of select="./@xml:id" />
            </xsl:attribute>
            <xsl:attribute name="href">
              <xsl:value-of select="./@start" />
            </xsl:attribute>
          </xsl:element>
        </xsl:for-each>  
       
      </map>

      <xsl:apply-templates select="tei:TEI/tei:text/tei:body/tei:div[@xml:id='francese']//tei:ab[@n='1']/*[not(self::tei:seg[@corresp='#seg1-p5'])]" />
    </div>
    <div class="pagina2">
    
       <!--surface 2-->
        <xsl:for-each select="$facsimile/tei:surface[@n='2']/tei:graphic">
          <img class="imgs" src="{./@url}" id="{./@xml:id}" alt="Manoscritto" usemap="#map2" /> 
        </xsl:for-each>
    
      <map name="map2"> <!--Mappa interattiva 2-->
        <xsl:for-each select="$facsimile/tei:surface[@n='2']/tei:zone">
          <xsl:element name="area">
            <xsl:attribute name="shape">rect</xsl:attribute>
            <xsl:attribute name="class">zona</xsl:attribute>
            <xsl:attribute name="coords">
              <xsl:value-of select="./@ulx" />,<xsl:value-of select="./@uly" />,<xsl:value-of select="./@lrx" />,<xsl:value-of select="./@lry" />
            </xsl:attribute>
            <xsl:attribute name="id">
              <xsl:value-of select="./@xml:id" />
            </xsl:attribute>
            <xsl:attribute name="href">
              <xsl:value-of select="./@start" />
            </xsl:attribute>
          </xsl:element>
        </xsl:for-each>  
       
      </map>
   
    <xsl:apply-templates select="tei:TEI/tei:text/tei:body/tei:div[@xml:id='francese']/tei:ab[@n='1']/tei:seg[@corresp='#seg1-p5']" />
    <xsl:apply-templates select="tei:TEI/tei:text/tei:body/tei:div[@xml:id='francese']/tei:ab[@n='2']" />
    </div>

    </div>
  </xsl:template>

  <xsl:template name="manoscritto"> <!--Info edizione digitale e info manoscritto-->
    <xsl:param name="msdesc"/>   
    <xsl:param name="digital-edition"/> 
    <div id="div-info">
      <h3><xsl:value-of select="$digital-edition/tei:edition"/></h3>
      <p>Codifica di due pericopi presenti nelle pagine 4 e 5 di
        <em><xsl:value-of select="$msdesc/tei:msContents/tei:msItem/tei:title"/>
            <xsl:value-of select="$msdesc/tei:msIdentifier/tei:idno"/>
        </em> 
        di <xsl:apply-templates select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:msDesc/tei:msContents/tei:msItem/tei:author/tei:persName"/>.</p>
        <p><xsl:for-each select="$digital-edition/tei:respStmt">
          <span class="respo"><xsl:value-of select="./tei:resp"/></span> 
          <span class="nome"><xsl:value-of select="./tei:name"/></span> <br />
        </xsl:for-each>
      </p>
        <p><xsl:value-of select="$msdesc/tei:history/tei:origin/child::tei:p"/></p>
        <p><xsl:value-of select="$msdesc/tei:physDesc/tei:handDesc/tei:handNote"/> in lingua <xsl:value-of select="$msdesc/tei:msContents/tei:msItem/tei:textLang"/>.
        È composto da <xsl:value-of select="$msdesc/tei:physDesc/tei:objectDesc/tei:supportDesc/tei:support"/>.
        <xsl:value-of select="$msdesc/tei:physDesc/tei:objectDesc/tei:supportDesc/tei:condition"/>
        <xsl:value-of select="$msdesc/tei:physDesc/tei:objectDesc/tei:supportDesc/tei:foliation"/></p>
        <p>Convervato nella <xsl:apply-templates select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:msDesc/tei:msIdentifier/tei:repository"/></p>
    </div>

  </xsl:template>

  <xsl:template match="tei:repository">
    <a href="{./@ref}"> <xsl:apply-templates/></a>
  </xsl:template>   

  <xsl:template name="bou-en"> <!--edizione bouquet engler-->
    <xsl:param name="b-e"/>
    <p> <xsl:apply-templates select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:bibl[@source='#B-E-2002']/tei:author/tei:persName"/>
    <em><xsl:value-of select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:bibl[@source='#B-E-2002']/tei:title"/></em>,
    <xsl:value-of select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:bibl[@source='#B-E-2002']/tei:date"/>,
    <xsl:value-of select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:bibl[@source='#B-E-2002']/tei:pubPlace"/>,
    <xsl:value-of select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:bibl[@source='#B-E-2002']/tei:publisher"/> 
    </p>     
      
  </xsl:template>

  <xsl:template name="fad"> <!--Emanuele Fadda-->
    <xsl:param name="e-f"/>
    <p> <xsl:apply-templates select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:bibl[@source='#F-2006']/tei:author/tei:persName"/>
      <em> <xsl:value-of select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:bibl[@source='#F-2006']/tei:title[@type='main']"/>
          <xsl:value-of select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:bibl[@source='#F-2006']/tei:title[@type='sub']"/></em>,
          <xsl:value-of select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:bibl[@source='#F-2006']/tei:date"/>, 
          <xsl:value-of select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:bibl[@source='#F-2006']/tei:publisher"/>
    </p>
  </xsl:template>

  <xsl:template name="text-it"> <!--traduzione in italiano-->
    <xsl:param name="text"/>
     <xsl:apply-templates select="tei:TEI/tei:text/tei:body/tei:div[@xml:id='traduzione']/tei:ab" />
    
  </xsl:template>

  <xsl:template match="tei:ab">
    <ab n="{./@n}" id="{./@xml:id}">
      <xsl:apply-templates/>
    </ab>
  </xsl:template>

  <xsl:template match="tei:seg">
      <seg n="{./@n}" id="{./@xml:id | ./@corresp}" ref="{./@facs}">
        <xsl:apply-templates/>
      </seg>
  </xsl:template>

  <xsl:template match="tei:lb">
   <br n="{./@n}"/><span class="lb"></span>
  </xsl:template>
    
  <xsl:template match="tei:del">
    <span class="del"><xsl:apply-templates/></span>
  </xsl:template>

  <xsl:template match="tei:gap">
    <span class="gap">???</span>
  </xsl:template>
  
  <xsl:template match="tei:term">
    <a href="{./@ref}" class="term"><xsl:apply-templates/></a>
  </xsl:template>

  <xsl:template match="tei:add">
    <span class="add"><xsl:apply-templates/></span>
  </xsl:template>

  <xsl:template match="tei:supplied">
    <span class="supplied"><xsl:apply-templates/></span>
  </xsl:template>

  <xsl:template match="tei:choice">
      <xsl:if test="tei:abbr">
        <span class="abbr"><xsl:value-of select="tei:abbr"/></span>
      </xsl:if>
      <xsl:if test="tei:expan">
        <span class="expan"><xsl:value-of select="tei:expan"/></span>
      </xsl:if>
       <xsl:if test="tei:sic">
        <span class="sic"><xsl:value-of select="tei:sic"/></span>
      </xsl:if>
      <xsl:if test="tei:corr">
        <span class="corr"><xsl:value-of select="tei:corr"/></span>
      </xsl:if>
  </xsl:template>


 
  <xsl:template match="tei:persName">
    <a title="persone" class="ogg-liste" href="#tt"><xsl:apply-templates/></a>
  </xsl:template> 

  <xsl:template name="listaperson"> <!--lista persone-->
    <xsl:param name="list1"/>
    <h2>Elenco persone citate:</h2>
    <div class="persone">
      <xsl:for-each select="$list1/tei:person">
        <ul class="lista1"> 
          <li><b>Nome: </b><span id="{./@xml:id}"><xsl:value-of select="tei:persName"/></span></li>
            <xsl:if test="tei:birth">
          <li><b>Data di nascita: </b><xsl:value-of select="tei:birth/@when"/></li>
            </xsl:if>
            <xsl:if test="tei:birth/tei:placeName/tei:settlement">
          <li><b>Città: </b><span id="{tei:birth/tei:placeName/tei:settlement/@ref}"><xsl:value-of select="tei:birth/tei:placeName/tei:settlement"/></span></li>
          <li><b>Paese: </b><span id="{tei:birth/tei:placeName/tei:country/@key}"><xsl:value-of select="tei:birth/tei:placeName/tei:country"/></span></li>
            </xsl:if>
            <xsl:if test="./@role">
          <li><b>Ruolo: </b><xsl:value-of select="./@role"/></li>
            </xsl:if>
        </ul>
      </xsl:for-each>
    </div>
  </xsl:template>

  <xsl:template name="listaluoghi"> <!--lista dei luoghi-->
    <xsl:param name="list2"/>
    <h2>Elenco luoghi:</h2>
    <div class="luoghi">
    <xsl:for-each select="$list2/tei:place">
      <ul class="lista2"> 
        <li><b>Città: </b><a href="{./@ref}"><xsl:value-of select="tei:placeName"/></a></li>
        <li><b>Paese: </b><span id="{./@key}"> <xsl:value-of select="tei:country"/></span></li>
      </ul>
    </xsl:for-each>
    </div>
  </xsl:template> 

  <xsl:template name="termini"> <!--lista termini speciali-->
    <xsl:param name="list3"/>
    <h2>Elenco termini tecnici</h2>
    <div class="termini">
    <xsl:for-each select="$list3">
      <ul class="lista3"> 
        <li><span><b>Termine: </b></span><span id="{tei:list/tei:label/tei:term/@xml:id}" class="term"><xsl:value-of select="tei:list/tei:label/tei:term"/></span></li>
        <li><span><b>Definizione: </b></span> <xsl:value-of select="tei:list/tei:item/tei:gloss"/></li>
      </ul>
    </xsl:for-each>
    </div>
  </xsl:template>

</xsl:stylesheet>
