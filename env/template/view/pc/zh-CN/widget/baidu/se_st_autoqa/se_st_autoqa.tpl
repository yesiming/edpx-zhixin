{%fis_widget%}<table id="{%$resIndex%}" class="result{%if $isSameSize==1%} c-res{%/if%}" data-click="{'fm': '{%enc_str str="alzd1"%}'}" cellpadding="0" cellspacing="0" mu="{%get_mu originUrl=$res.offsetInfo.url encryptionUrl=$res.encryptionUrl%}"><tr><td class="f"><style>.autoqa{margin-top:11px;_margin-top:9px}.question_icon,.answer_icon{background:url({%$STATIC_DOMAIN_WWW0%}/cache/global/img/bg-1.0.7.png) no-repeat 0 -592px;display:inline-block;width:16px;height:16px;vertical-align:-2px;margin-right:8px;*vertical-align:0}.answer_icon{background-position:-32px -592px;float:left;margin-top:2px}.answer_text{overflow:hidden;_zoom:1}.answer_text pre{margin:0;font-size:13px;white-space:pre-wrap;white-space:-moz-pre-wrap;white-space:-pre-wrap;word-wrap:break-word}</style><h3 class="t"><span class="question_icon"></span><a href="{%get_url originUrl=$res.offsetInfo.urlEncoded encryptionUrl=$res.encryptionUrl%}" target="_blank">{%if $res.dispData.autoqa.title%}{%$res.dispData.autoqa.title|trim|limitlen:40|highlight:4%}{%else%}{%$res.dispData.title|trim|limitlen:40|highlight:4%}{%/if%}_最佳答案_百度知道</a>{%fis_widget_inline%}{%if $isUserLogin == 1 && $isFavoOn == 1%}{%if $res.favoFlag == 1%}<span class="tsuf"><span class="fav fav_add" data-fav="1" data-id="{%$res.favoItemId%}" title="点击取消收藏" onmousedown="return c({'fm':'bfav','url':this.getAttribute('data-url'),'title':this.getAttribute('data-title'),'p1':bds.se.favo.favPos(this),'p2':0,'p3':1,tab:this.getAttribute('data-fav')});"></span></span>{%else%}<span class="tsuf"><span class="fav fav_nor" data-fav="0" data-id="0" title="点击收藏" onmousedown="return c({'fm':'bfav','url':this.getAttribute('data-url'),'title':this.getAttribute('data-title'),'p1':bds.se.favo.favPos(this),'p2':0,'p3':1,tab:this.getAttribute('data-fav')});"></span></span>{%/if%}{%/if%}{%/fis_widget_inline%}</h3><font size="-1"><div class="autoqa"><span class="answer_icon"></span><div class="answer_text"><pre>{%if $res.dispData.autoqa.answer%}{%$res.dispData.autoqa.answer|trim|regex_replace:"/[\r\n]/":"!-----!"|highlight:4|regex_replace:"/(!-----!)/":"\r\n"%}{%else%}{%$res.dispData.answer|trim|regex_replace:"/[\r\n]/":"!-----!"|highlight:4|regex_replace:"/(!-----!)/":"\r\n"%}{%/if%}</pre><p style="color:#666;padding-top:5px;">答案来自<span style="color:#008000;font-weight:700;">百度知道</span>网友:{%if $res.dispData.autoqa.name%}<a href="{%enc_url url="http://www.baidu.com/p/`$res.dispData.autoqa.name|trim|vui_escape:'url'`?from=zhidao"%}" data-click="{'fm': '{%enc_str str="alzd1"%}','p2': '{%$resIndex%}'}" target="_blank" style="color:#666;">{%$res.dispData.autoqa.name|trim%}</a>{%else%}<a href="{%enc_url url="http://www.baidu.com/p/`$res.dispData.name|trim|vui_escape:'url'`?from=zhidao"%}" data-click="{'fm': '{%enc_str str="alzd1"%}','p2': '{%$resIndex%}'}" target="_blank" style="color:#666;">{%$res.dispData.name|trim%}</a>{%/if%}</p><p class="g">{%if $res.dispData.DispUrl%}{%$res.dispData.DispUrl|url_bold_html%}{%else%}{%$res.offsetInfo.urlDisplay|url_limit:45:true%}{%/if%}{%display_as_time FactorTimePrecision=$res.dispData.FactorTimePrecision FactorTime=$res.dispData.FactorTime LastModTime=$res.dispData.LastModTime LinkFoundTime=$res.dispData.LinkFoundTime timeShow=$res.timeShow lastModified=$res.offsetInfo.lastModified serverTime=$serverTime%}</p></div></div></font></td></tr></table>{%/fis_widget%}