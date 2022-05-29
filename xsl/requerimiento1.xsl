<?xml version="1.0" encoding="UTF-8"?>
<!-- Requerimiento 1 de la Actividad 3-->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"/>
    <xsl:template match="/">
        <html>
            <head>
                <title>Instituto Tecnológico</title>
                <link rel="stylesheet" href="css/style-index.css" />
            </head>
            <body>

                <header>
                    <div class="logo">
                        <img src="img/edix-formación.png"</img> <!-- TODO (Crear/cambiar imagen)-->
                        <p><xsl:value-of select="ite/@nombre"/></p>
                    </div>

                    <div class="menu">
                        <ul>
                            <li><a href="#">Equipo</a></li>
                            <li><a href="#">Cursos</a></li>
                            <li><a href="#">Contacto</a></li>
                        </ul>
                    </div>
                </header>

                <div class="contenido">

                    <div class="tabla">
                        <div class="nombre">Profesores</div>
                        <table class="equipo">
                            <tr>
                                <th>Nombre</th>
                                <th>Id</th>
                            </tr>
                            <xsl:for-each select="ite/profesores/profesor">
                            <tr>
                                <td><xsl:value-od select="nombre" /></td>
                                <td><xsl:value-od select="id" /></td>
                            </tr>
                            </xsl:for-each>
                        </table>

                        <div class="director"Director: <xsl:value-of select="ite/director/nombre" /></div>
                        <div class="director"Despacho: <xsl:value-of select="ite/director/despacho" /></div>
                        <div class="director"Jefe de estudios: <xsl:value-of select="ite/jefe_estudios/nombre" /></div>
                        <div class="director"Despacho: <xsl:value-of select="ite/jefe_estudios/despacho" /></div>
                    </div>
                    <div class="tabla">
                        <div class="nombre">Cursos</div>
                        <table class="cursos">
                            <tr>
                                <th>Id</th>
                                <th>Nombre</th>
                                <th>Grado</th>
                                <th>Año decreto</th>
                            </tr>

                            <xsl:for-each select="ite/ciclos/ciclo">

                            <tr>
                                <td><xsl:value-of select="@id"</td>
                                <td><xsl:value-of select="nombre"</td>
                                <td><xsl:value-of select="grado"</td>
                                <td><xsl:value-of select="@id"</td>
                            </tr>
                        
                        </xsl:for-each>
                        </table>

                    </div>


                </div>
            </body>