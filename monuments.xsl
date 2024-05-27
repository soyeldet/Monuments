<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">


<xsl:template match="/monuments-list">

    <html>
    <link rel="stylesheet" type="text/css" href="/styles/style.css" />
        <body>
            <header>

                <h1 id="top">Monuments: <xsl:value-of select="continent"/></h1>

            </header>

                <nav class="main_menu">

                    <ul class="main_menu_options">
                        <a class="main_option" href="africa.xml"><li>Àfrica</li></a>
                        <a class="main_option" href="america.xml"><li>Amèrica</li></a>
                        <a class="main_option" href="asia.xml"><li>Àsia</li></a>
                        <a class="main_option" href="europa.xml"><li>Europa</li></a>
                        <a class="main_option" href="oceania.xml"><li>Oceania</li></a>
                    </ul>

                    <xsl:for-each select="countries/country">
                        <li class="sub_menu">
                        <a href="#{name}"><xsl:value-of select="name"/></a>
                        </li>
                    </xsl:for-each>

                </nav>
            <main>

                <xsl:for-each select="countries/country">

                    <div class="country">

                        <h2 id="{name}"><xsl:value-of select="name"/></h2>

                            <a href="#top">Inici</a>

                            <div class="monuments_list">

                                <xsl:for-each select="monuments/monument">
                                    <section class="country_monuments">

                                        <a class="item" target="_blank" href="https://ca.wikipedia.org/wiki/{url}">

                                            <h3><xsl:value-of select="name"/></h3>
                                            <img src="images/{image}.jpg" alt="{name}" />
                                            <h4><xsl:value-of select="place"/></h4>

                                        </a>

                                    </section>
                                </xsl:for-each>
                            </div>
                    </div>
                </xsl:for-each>

            </main>

        </body>

    </html>

</xsl:template>
</xsl:stylesheet>