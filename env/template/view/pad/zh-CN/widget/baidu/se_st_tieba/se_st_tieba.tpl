{%fis_widget%}<li class="bds-list" id="{%$resIndex%}" tpl="se_st_tieba"><style>.st-tieba-bbs{color:#707070}</style><h3 class="t"><a href="{%get_url originUrl=$res.offsetInfo.urlEncoded encryptionUrl=$res.encryptionUrl%}" target="_blank">{%$res.offsetInfo.title|limitlen:63|escape:'html'|highlight:4%}</a></h3><div class="c-abstract">{%if $res.dispData.BBSRecount || $res.dispData.BBSPostTime%}<div class="st-tieba-bbs">{%if $res.dispData.BBSRecount%}{%$res.dispData.BBSRecount|vui_escape:'html'%}条回复{%/if%}{%if $res.dispData.BBSRecount && $res.dispData.BBSPostTime%}&nbsp;-&nbsp;{%/if%}{%if $res.dispData.BBSPostTime%}发帖时间:&nbsp;{%$res.dispData.BBSPostTime|vui_escape:'html'|strip:''%}{%/if%}</div>{%/if%}{%if $res.offsetInfo.summary!=""%}<div>{%$res.offsetInfo.summary|highlight:4%}</div>{%/if%}<p><span class="c-showurl">{%if $res.dispData.DispUrl%}{%$res.dispData.DispUrl|url_bold_html%}{%else%}{%$res.offsetInfo.urlDisplay|url_limit:45:true%}{%/if%}{%display_as_time FactorTimePrecision=$res.dispData.FactorTimePrecision FactorTime=$res.dispData.FactorTime LastModTime=$res.dispData.LastModTime LinkFoundTime=$res.dispData.LinkFoundTime timeShow=$res.timeShow lastModified=$res.offsetInfo.lastModified serverTime=$serverTime%}</span></p></div>{%$arr = array("年","月","日")%}{%if $res.dispData.AsNormalSubTitle_1%}<p style="margin-left:1em;padding-top:4px;"><font class="c-cache-color"><a href="{%enc_url token=$res.productType url=$res.dispData.AsNormalSubUrl_1%}" target="_blank" >{%$res.dispData.AsNormalSubTitle_1|limitlen:58|highlight:4%}</a>{%if $res.dispData.AsNormalSubBBSRecount_1%}&nbsp;{%$res.dispData.AsNormalSubBBSRecount_1|vui_escape:'html'%}条回复{%/if%}{%if $res.dispData.AsNormalSubBBSPostTime_1%}&nbsp;{%$pt1 = str_replace($arr,"-",$res.dispData.AsNormalSubBBSPostTime_1)%}{%$pt1 = preg_replace("/-$/","",$pt1)%}{%$pt1|vui_escape:'html'|date_format:'%Y-%m-%d'|strip:''%}{%/if%}<br>{%if $res.dispData.AsNormalSubTitle_2%}<a href="{%enc_url token=$res.productType url=$res.dispData.AsNormalSubUrl_2%}" target="_blank" >{%$res.dispData.AsNormalSubTitle_2|limitlen:58|highlight:4%}</a>{%if $res.dispData.AsNormalSubBBSRecount_2%}&nbsp;{%$res.dispData.AsNormalSubBBSRecount_2|vui_escape:'html'%}条回复{%/if%}{%if $res.dispData.AsNormalSubBBSPostTime_2%}&nbsp;{%$pt2 = str_replace($arr,"-",$res.dispData.AsNormalSubBBSPostTime_2)%}{%$pt2 = preg_replace("/-$/","",$pt2)%}{%$pt2|vui_escape:'html'|date_format:'%Y-%m-%d'|strip:''%}{%/if%}<br>{%/if%}{%if $res.dispData.AsNormalSubTitle_3%}<a href="{%enc_url token=$res.productType url=$res.dispData.AsNormalSubUrl_3%}" target="_blank" >{%$res.dispData.AsNormalSubTitle_3|limitlen:58|highlight:4%}</a>{%if $res.dispData.AsNormalSubBBSRecount_3%}&nbsp;{%$res.dispData.AsNormalSubBBSRecount_3|vui_escape:'html'%}条回复{%/if%}{%if $res.dispData.AsNormalSubBBSPostTime_3%}&nbsp;{%$pt3 = str_replace($arr,"-",$res.dispData.AsNormalSubBBSPostTime_3)%}{%$pt3 = preg_replace("/-$/","",$pt3)%}{%$pt3|vui_escape:'html'|date_format:'%Y-%m-%d'|strip:''%}{%/if%}<br>{%/if%}<a href="http://www.baidu.com/s?wd={%$query|vui_escape:'url'%} site:{%$res.dispData.AsClusterSiteName|vui_escape:'url'%}" target="_blank" style="color:#77c" >更多贴吧相关帖子&gt;&gt;</a><br></font></p>{%/if%}</li>{%/fis_widget%}