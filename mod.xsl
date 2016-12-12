<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/root" name="wurui.comment">
        <xsl:param name="title">Hots comments</xsl:param>
        <!-- className 'J_OXMod' required  -->
        <div class="J_OXMod oxmod-comment" ox-mod="comment">
            <h1 class="title">
                <xsl:value-of select="$title"/>
            </h1>
            <ul>
                <xsl:for-each select="data/comments/i">
                <li class="oxmod-comment-li">
                    <span class="pic" style="background-image:url({user/avatar})"></span>

                    <h4 class="user-name">
                        <xsl:if test="favcount"><span class="favcount"><xsl:value-of select="favcount"/></span></xsl:if>
                        <xsl:value-of select="user/name"/>
                    </h4>
                    <p class="user-tag">
                        <xsl:value-of select="user/tag"/>
                    </p>
                    <h3 class="content">
                        <xsl:value-of select="content"/>
                    </h3>
                </li>
                </xsl:for-each>
            </ul>
            <div class="commentbar">
                <button class="bar-tigger">
                    comment...
                </button>
                <span class="comment-count">
                    123
                </span>


            </div>
        </div>
    </xsl:template>

</xsl:stylesheet>
