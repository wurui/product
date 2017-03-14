<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:oxm="https://www.openxsl.com">

    <xsl:template match="/root" name="wurui.product">
        <!-- className 'J_OXMod' required  -->
        <div class="J_OXMod oxmod-product" ox-mod="product">
            <xsl:variable name="product" select="data/product"/>
            <div class="img-slider">

                <div data-on="1">
                    <div class="flip-window">
                        <div class="flip-pages" style="width:{count($product/img/i)}00%;">
                            <xsl:for-each select="$product/img/i">


                                <img class="flip-page" style="background-image:url({.});"
                                                 src="http://a.oxm1.cc/img/blank.png" />



                            </xsl:for-each>
                        </div>

                    </div>

                    <div class="index-dots">
                        <xsl:for-each select="$product/img/i">
                            <i class="dot"></i>
                        </xsl:for-each>
                    </div>
                </div><!--
                <xsl:for-each select="$product/img/i">
                    <img src="{.}"/>
                </xsl:for-each>-->
            </div>
            <div class="info">
                <h3 class="title">
                    <xsl:value-of select="$product/title"/>
                </h3>
                <p class="buyinfo">
                    <span class="price">
                        <xsl:value-of  select="normalize-space($product/price)"/>
                    </span>
                    <xsl:for-each select="$product/tags/i">
                        <em class="tag {.}"><xsl:value-of select="."/></em>
                    </xsl:for-each>
                </p>
            </div>
            <div class="op">
                <button class="bt-buy">立即购买</button>
            </div>
            <label class="label">商品信息</label>
            <div class="detail">
                <div class="desc-section">
                    <h4>描述</h4>
                    <div class="desc-text">
                        <xsl:value-of disable-output-escaping="yes" select="$product/desc"/>
                    </div>
                </div>
                <div class="desc-section">
                    <h4>参数</h4>
                    <div class="desc-text">
                        <xsl:for-each select="$product/param/i">
                            <p>
                                <label><xsl:value-of select="label"/></label>
                                <xsl:value-of select="value"/>
                            </p>

                        </xsl:for-each>
                    </div>

                </div>
            </div>

        </div>
    </xsl:template>

</xsl:stylesheet>
