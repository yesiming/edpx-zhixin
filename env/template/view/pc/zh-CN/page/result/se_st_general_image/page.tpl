{%extends 'se_st_default/page.tpl'%} {%block name="result_subtitle"%}{%if $tplData.general_pic.url%}<style>.se_st_general_image_pic {margin-top:2px;}
		.se_st_general_image_pic a{width:121px; height:75px; background:#fff no-repeat center center; text-decoration:none; display:block;overflow: hidden;text-align: center;}</style><div class="c-row c-gap-top-small"><div class="se_st_general_image_pic c-span6"><a style="background-image:url({%$tplData.general_pic.url%});"
    {%if $tplData.ASURL%}
        href = "{%rs_enc_url url="http://www.baidu.com/cache/spam/spam_tip.html?`$tplData.classicInfo.url|vui_escape:'url'`"%}"
    {%else%}
        href="{%rs_get_url token=$tplData.classicInfo.productType originUrl=$tplData.classicInfo.urlEncoded encryptionUrl=$tplData.classicInfo.encryptionUrl%}"
    {%/if%}

    {%if !($urlPara.ct & 0x40000)%}
        target="_blank"
    {%/if%}></a></div><div class="se_st_general_image_normal c-span18 c-span-last">{%/if%}{%if count($resHintData.hints.titleBottom) > 0%}{%foreach $resHintData.hints.titleBottom as $resHint%}{%display_res_hint widgetName=$resHint.templateName%}{%if $resHint.templateName == "res_hint_unsafe"%}{%$resHitUnSafe =1%}{%/if%}{%/foreach%}{%else%}{%fis_widget_inline%}{%$safetips['10040'] = "bd-1"%}{%$safetips['10041'] = "bd-2"%}{%$safetips['10042'] = "bd-3"%}{%$safetips['10043'] = "bd-4"%}{%$safetips['10050'] = "sc-1"%}{%$safetips['10051'] = "sc-2"%}{%$safetips['10052'] = "sc-3"%}{%$safetips['10053'] = "sc-4"%}{%$safetips['10060'] = "qq-1"%}{%$safetips['10061'] = "qq-2"%}{%$safetips['10062'] = "qq-3"%}{%$safetips['10063'] = "qq-4"%}{%$safetips['10070'] = "js-1"%}{%$safetips['10071'] = "js-2"%}{%$safetips['10072'] = "js-3"%}{%$safetips['10073'] = "js-4"%}{%$safetips['10080'] = "hs-1"%}{%$safetips['10081'] = "hs-2"%}{%$safetips['10082'] = "hs-3"%}{%$safetips['10083'] = "hs-4"%}{%$safestr = ""%}{%foreach $tplData.addSubArr as $subArr%}{%if $safetips[$subArr.typeID]%}{%$safestr = "`$safetips[$subArr.typeID]`|`$safestr`"%}{%/if%}{%/foreach%}{%if $safestr%}{%$bdFlag = stripos($safestr,"bd")%}{%$scFlag = stripos($safestr,"sc")%}{%$qqFlag = stripos($safestr,"qq")%}{%$jsFlag = stripos($safestr,"js")%}{%$hsFlag = stripos($safestr,"hs")%}<div class="unsafe_content f13"><a href="{%rs_enc_url url="http://www.baidu.com/cache/spam/safe_tip2.html?`$tplData.classicInfo.url|vui_escape:'url'|cat:"&data="|cat:$safestr`"%}" target="_blank" id="unsafe_{%$resIndex%}" data-safe="{%$safestr%}" class="unsafe_ico"><span class="unsafe_txttip">风险</span>{%if $qqFlag !==FALSE %}腾讯电脑管家提醒您：{%elseif $jsFlag !==FALSE && $bdFlag ===FALSE && $scFlag ===FALSE && $qqFlag === FALSE && $hsFlag === FALSE%}金山云安全提醒您：{%else%}安全联盟提醒您：{%/if%}该网站可能存在安全风险，请谨慎访问！</a></div>{%/if%}{%/fis_widget_inline%}{%/if%}{%if $tplData.classicInfo.docType >= 0%}<p class="f13"><span class=c>{%$lable_doctype1%}</span>{%$tplData.classicInfo.docTypeDetail%}&nbsp;-&nbsp;<a data-nolog href="{%$cache_domain%}/c?{%$tplData.classicInfo.snapshootKey%}&user=baidu" {%if !($urlPara.ct & 0x40000)%} target="_blank" {%/if%}>{%$lable_doctype2%}</a></p>{%/if%}{%*点评类结构化数据*%}{%if  $tplData.templateName%}{%if $tplData.templateName == 'se_st_store'%}{%fis_widget_inline%}{%$enableStore = true%}{%if array_key_exists("commendnum",$tplData.store) && $tplData.store.commendnum<10%}{%$enableStore = false%}{%/if%}{%if $enableStore%}{%$totalScore = ($tplData.store.totalscore)?$tplData.store.totalscore:5%}{%if isset($tplData.store.score) && $tplData.store.score > 0 && $totalScore > 0%}<style>.score {margin-top:4px;line-height:14px;font-size:13px;vertical-align:middle;margin-top:0\9}</style><div class="score" id="score_{%$resIndex%}"><span class="m"><span class="c-icon c-icon-star-gray"><span class="c-icon c-icon-star" style="width:{%round(($tplData.store.score/$totalScore)*100)%}%;"></span></span>&nbsp;评分:{%$tplData.store.score|escape%}/{%$totalScore|escape%}</span></div>{%/if%}{%/if%}{%/fis_widget_inline%}{%/if%}{%/if%}{%*Blog 和 BBS特型*%}{%if $tplData.StdStg==1000 || $tplData.StdStg==1001 || $tplData.StdStg == 13%}{%fis_widget_inline%}{%*blog特型展现*%}{%if $tplData.StdStg==1001%}{%if $tplData.BLOGCommentCount%}{%if $tplData.BLOGCommentCount>0%}<div class="blog f13">{%$tplData.BLOGCommentCount|vui_escape:'html'%}条评论{%if $tplData.BLOGPostTime%}&nbsp;-&nbsp;发文时间:&nbsp;{%$tplData.BLOGPostTime|vui_escape:'html'%}{%/if%}</div>{%/if%}{%/if%}{%/if%}{%*BBS特型展现*%}{%if $tplData.StdStg == 1000%}{%if $tplData.BBSRecount || $tplData.BBSPostTime%}<div class="bbs f13">{%if $tplData.BBSRecommended==1%}精华帖{%if $tplData.BBSRecount || $tplData.BBSPostTime%}&nbsp;-&nbsp;{%/if%}{%/if%}{%if $tplData.BBSRecount%}{%$tplData.BBSRecount|vui_escape:'html'%}条回复{%/if%}{%if $tplData.BBSRecount && $tplData.BBSPostTime%}&nbsp;-&nbsp;{%/if%}{%if $tplData.BBSPostTime%}发帖时间:&nbsp;{%$tplData.BBSPostTime|vui_escape:'html'%}{%/if%}</div>{%/if%}{%/if%}{%*贴吧特型展现*%}{%if $tplData.StdStg == 13%}{%if $tplData.BBSRecount || $tplData.BBSPostTime%}<div class="bbs f13">{%if $tplData.BBSRecount%}{%$tplData.BBSRecount|vui_escape:'html'%}条回复{%/if%}{%if $tplData.BBSRecount && $tplData.BBSPostTime%}&nbsp;-&nbsp;{%/if%}{%if $tplData.BBSPostTime%}发帖时间:&nbsp;{%$tplData.BBSPostTime|vui_escape:'html'%}{%/if%}</div>{%/if%}{%/if%}{%/fis_widget_inline%}{%/if%}{%if $tplData.notice_info%}<p class="f13">{%if $tplData.notice_info.notice1%}{%$tplData.notice_info.notice1|escape:'html'%}{%/if%}{%if $tplData.notice_info.notice2%}<span style="color:#999">({%$tplData.notice_info.notice2|escape:'html'%})</span>{%/if%}</p>{%/if%}{%block name="inc_subtitle_ext"%}{%/block%}{%/block%}{%block name="result_attach_showurl"%}{%if $tplData.DispUrl%}{%$tplData.DispUrl|url_limit:28:true|url_bold_html%}{%else%}{%$tplData.classicInfo.urlDisplay|url_limit:28:true%}{%/if%}&nbsp;{%/block%}{%block name="result_attach"%}{%if $tplData.general_pic.url%}</div></div>{%/if%}{%* 子链结构化数据 *%}{%if  $tplData.templateName%}{%if $tplData.templateName == 'se_st_sublink'%}{%fis_widget_inline%}<style>.sub_link_tb {margin-left:18px}
	.sub_link_a {line-height:24px;font-size:14px}
	.sub_link_td_1{padding-left:145px}</style><table class="sub_link_tb" cellspacing=0 cellpadding=0>{%foreach $tplData.sublink.sub_link as $alink%}{%if $alink@index%2%}<td class="sub_link_td_1">{%else%}<tr><td class="sub_link_td_0">{%/if%}<a class="sub_link_a" target="_blank" href="{%$alink.link%}">{%$alink.title|limitlen:20|vui_escape:'html'%}</a>{%if $alink@index%2%}</td></tr>{%else%}</td>{%/if%}{%/foreach%}</table>{%/fis_widget_inline%}{%/if%}{%/if%}{%if $tplData.AsNormalSubTitle_1%}<p class="f13 {%if $tplData.general_pic.url%}{%else%}c-offset{%/if%} c-gap-top-small"><span>{%if $tplData.AsNormalSubTitle_1%}<a href="{%rs_enc_url token=$tplData.classicInfo.productType url=$tplData.AsNormalSubUrl_1%}" target="_blank" >{%$tplData.AsNormalSubTitle_1|limitlen:58|highlight:2%}</a><br>{%/if%}{%if $tplData.AsNormalSubTitle_2%}<a href="{%rs_enc_url token=$tplData.classicInfo.productType url=$tplData.AsNormalSubUrl_2%}" target="_blank" >{%$tplData.AsNormalSubTitle_2|limitlen:58|highlight:2%}</a><br>{%/if%}{%if $tplData.AsNormalSubTitle_3%}<a href="{%rs_enc_url token=$tplData.classicInfo.productType url=$tplData.AsNormalSubUrl_3%}" target="_blank" >{%$tplData.AsNormalSubTitle_3|limitlen:58|highlight:2%}</a><br>{%/if%}{%if $tplData.AsNormalSubTitle_1 && !$tplData.AsNormalSubTitle_2%}<a href="http://www.baidu.com/s?wd={%$query|vui_escape:'url'%} site:{%$tplData.AsClusterSiteName|vui_escape:'url'%}" target="_blank" class="c">更多{%if $tplData.AsClusterRealName%}{%$tplData.AsClusterRealName%}{%else%}{%$tplData.AsClusterSiteName%}{%/if%}站内相关结果&gt;&gt;</a><br>{%/if%}{%if $tplData.AsNormalSubTitle_1 && $tplData.AsNormalSubTitle_2 && !$tplData.AsNormalSubTitle_3%}<a href="http://www.baidu.com/s?wd={%$query|vui_escape:'url'%} site:{%$tplData.AsClusterSiteName|vui_escape:'url'%}" target="_blank" class="c">更多{%if $tplData.AsClusterRealName%}{%$tplData.AsClusterRealName%}{%else%}{%$tplData.AsClusterSiteName%}{%/if%}站内相关结果&gt;&gt;</a><br>{%/if%}{%if $tplData.AsNormalSubTitle_1 && $tplData.AsNormalSubTitle_2 && $tplData.AsNormalSubTitle_3%}<a href="http://www.baidu.com/s?wd={%$query|vui_escape:'url'%} site:{%$tplData.AsClusterSiteName|vui_escape:'url'%}" target="_blank" class="c">更多{%if $tplData.AsClusterRealName%}{%$tplData.AsClusterRealName%}{%else%}{%$tplData.AsClusterSiteName%}{%/if%}站内相关结果&gt;&gt;</a><br>{%/if%}</span></p>{%/if%}{%if $tplData.extQuery%}<div style="display:none;padding:3px 0 0 0" class="extquery" data-extquery="{%$tplData.extQuery|vui_escape:'html'%}"><a href="{%build_search_url params="rsv_crq=1&wd=`$tplData.extQuery|vui_escape:'url'`" exclude="pn"%}" target="_blank" style="font-size:13px;font-weight:bold;">{%$tplData.disQuery|highlight:2%}</a></div>{%/if%}{%/block%}