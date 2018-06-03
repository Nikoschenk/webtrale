<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html" encoding="utf-8"/>

    <xsl:template match="/">

        <html>
            <head>
                <meta http-equiv="content-type" content="text/html; charset=UTF-8"/>
                <link href="__wt.css" rel="stylesheet" type="text/css"/>
                <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
                <link href='https://fonts.googleapis.com/css?family=Balthazar' rel='stylesheet'/>
                <!-- jQuery library -->
                <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

                <!-- Latest compiled JavaScript -->
                <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> 
                <base target="viewpan"/>
                <style>
                    .main-lexicon-list{
                    background-color:#15344e;
                    width:50%;
                    margin:auto;
                    border-radius:45px;
                    
                   
                    } 
                    li a{
                    color:white;
                    font-family: 'Tangerine';font-size: 13px;
                    
                    text-align: center;
            
                    } 
                    ul{
                   
                    text-align: center;
          
                    }
                    li{
                    list-style-type: none;
                    margin: auto;
                    text-align: center;
                    background-color:#15344e;
                    }
                    div{
                    height: 100%;
                    width:100%;
                    float:left;
                    text-align: center;
                    background-color:#15344e;
                    
                    }  
                    

                    /* lexicon-list */
                    #lexicon-list { width:350px; font-family:Georgia, Times, serif; font-size:20px;margin:auto }
                    #lexicon-list ul { list-style: none;  border-radius:45px;}
                    #lexicon-list ul li a { display:block; text-decoration:none; color:white; background-color:#15344e; line-height:30px;
                    border-bottom-style:solid; border-bottom-width:1px; border-bottom-color:#CCCCCC;margin:auto; cursor:pointer; }
                    #lexicon-list ul li a:hover { color:aqua; background-color:#15344e; background-repeat:repeat-x; }
                    #lexicon-list ul li a strong { text-align: center; font-size:20px;}
                    

                </style>
      
            </head>
           
            <body >
            
                <div id="lexicon-list" >
                    <xsl:for-each select="//word">
                        <ul class="main-lexicon-list">
                            <li>
                                <a href="lex?q={@uri-encoded-utf8}">
                                    <strong>
                                        <xsl:value-of select="."/>
                                    </strong> 
                                </a>
                            </li>
                        </ul>

                    </xsl:for-each>
                
                </div>
               
            </body>
        </html>

    </xsl:template>
</xsl:stylesheet>
