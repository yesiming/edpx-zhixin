{%*
* @fileOverview baiduse（有结果）模板-来自CTPL模板迁移
* @author       刘悦
* @version      1.0
* @date         2013/03/22
*%}{%$topHint = $tplData.asResult.topHint scope='global'%}{%$query = $tplData.queryInfo.wordNoSyntax scope='global'%}{%$urlPara = $tplData.queryInfo.pUrlConfig scope='global'%}{%if ($topHint & 0x4) != 0%}{%$seNum = count($tplData.rsseResult.seword)%}{%for $index=0 to $seNum-1%}{%$seWord = $tplData.rsseResult.seword[$index]%}<a href="s?wd={%$seWord|vui_escape:'url'%}&f=12&oq={%$query|vui_escape:'url'%}{%if $urlPara.cl != 3%}&cl={%$urlPara.cl|vui_escape:'url'%}{%/if%}{%if $urlPara.ct != 0%}&ct={%$urlPara.ct|vui_escape:'url'%}{%/if%}{%if $urlPara.tn != baidu%}&tn={%$urlPara.tn|vui_escape:'url'%}{%/if%}{%if $urlPara.rn != 10%}&rn={%$urlPara.rn|vui_escape:'url'%}{%/if%}{%if $urlPara.ie != utf-8%}&ie={%$urlPara.ie|vui_escape:'url'%}{%/if%}{%if $urlPara.lm != 0%}&lm={%$urlPara.lm|vui_escape:'url'%}{%/if%}{%if strlen($urlPara.si)%}&si={%$urlPara.si|vui_escape:'url'%}{%/if%}{%if $urlPara.z_type == 3%}&z={%$urlPara.z|vui_escape:'url'%}{%/if%}{%if $urlPara.ch != 0%}&ch={%$urlPara.ch|vui_escape:'url'%}{%/if%}{%if strlen($urlPara.sts)%}&sts={%$urlPara.sts|vui_escape:'url'%}{%/if%}">{%$seWord|vui_escape:'html'%}</a>&nbsp;{%/for%}{%/if%}