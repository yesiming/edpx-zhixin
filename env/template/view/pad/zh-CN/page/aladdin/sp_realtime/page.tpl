{%extends 'c_base.tpl'%} {%block name='title'%}{%$dispTitle=$extData.OriginQuery|escape|cat:"的最新相关信息"%}{%fe_fn_c_title_prefix%}{%fe_fn_c_title title=$dispTitle url=$extData.feData.mu%}{%fe_fn_c_title_suffix%}{%/block%}{%block name="data_modifier"%}{%$extData.feData.fm='alop'%}{%$extData.feData.hasTitleGap = false%}{%/block%}{%block name='content'%}{%function sp_realtime_disp_Date%}{%$tempDataMinutes=round(($smarty.now-$second)/60)%}{%if $tempDataMinutes<60%}{%$tempDataMinutes%}分钟{%elseif $tempDataMinutes>=60%}{%$tempDataHours=floor($tempDataMinutes/60)%}{%if $tempDataHours<24%}{%$tempDataHours%}小时{%else%}{%$tempDataDay=floor($tempDataHours/24)%}{%$tempDataDay%}天{%/if%}{%/if%}{%/strip%}前{%/function%}<style data-merge>{%fe_fn_c_css css='img'%}.op_sp_realtime_preBox{text-decoration:none;position:relative;overflow:hidden}.op_sp_realtime_preBox img{vertical-align:top;float:left}.op_sp_realtime_preBox span,.op_sp_realtime_preBox b{display:block;position:absolute;bottom:1px;left:1px;height:20px;cursor:pointer}.op_sp_realtime_preBox span{display:block;background:#000;opacity:.65;width:138px}.op_sp_realtime_preBox b{font:400 13px/20px arial;color:#fff;background:url(http://s1.bdstatic.com/r/www/cache/realtime/img/play-1.0.png) no-repeat 4px{%*i*%} center;padding-left:20px}</style> {%*图片起始下标*%} {%$imgstart=$tplData.StdStl - $tplData.Stdpic%} <div class="c-offset"> {%*第一条子链特殊处理*%} {%if $tplData.SubTitle0 && $tplData.ThumURL0%} {%*有图*%} <div class="c-gap-bottom-small"> <a href="{%fe_fn_c_enc_url url=$tplData.SubTitleUrl0%}" target="_blank" > {%$tplData.SubTitle0|limitlen:60|highlight:2%} </a> </div> <div class="c-row c-gap-bottom-small"> {%if isset($tplData.ThumTime0)%} <a href="{%fe_fn_c_enc_url url=$tplData.SubTitleUrl0%}" target="_blank" class="op_sp_realtime_preBox c-span6" data-click="{'title':'{%$query|limitlen:49|escape%}的最新相关信息'}"> <img src="{%$tplData.ThumURL0%}" class="c-img c-img6" /> <span></span> <b>{%if $tplData.ThumTime0 > 0%}{%$tplData.ThumTime0%}{%/if%}</b> </a> {%else%} <a href="{%fe_fn_c_enc_url url=$tplData.SubTitleUrl0%}" target="_blank" class="op_sp_realtime_preBox c-span6" data-click="{'title':'{%$query|limitlen:49|escape%}的最新相关信息'}"> <img src="{%$tplData.ThumURL0%}" class="c-img c-img6" /> </a> {%/if%} <div class="c-span-last"> {%if $tplData.SubAbs0%} {%$tplData.SubAbs0|limitlen:140|highlight:6%} {%/if%} {%if $tplData.SiteName0%} <br /><span style="color:#008000">{%$tplData.SiteName0|limitlen:30%}</span> {%/if%} {%if $tplData.PostTime0%} &nbsp;<span style="color:#666;">{%sp_realtime_disp_Date serverTime=$serverTime second=$tplData.PostTime0%}</span> {%/if%} </div> </div> {%elseif $tplData.SubTitle0%} {%*无图*%} <div class="c-row"> {%if $tplData.PostTime0%} <span style="color:#666;float:right">{%sp_realtime_disp_Date serverTime=$serverTime second=$tplData.PostTime0%}</span> {%/if%} <a href="{%fe_fn_c_enc_url url=$tplData.SubTitleUrl0%}" target="_blank" > {%$tplData.SubTitle0|limitlen:50|highlight:2%} </a> {%if $tplData.SiteName0%} &nbsp;<span style="color:#008000">{%$tplData.SiteName0|limitlen:30%}</span> {%/if%} {%if $tplData.SubAbs0%} <br /> {%$tplData.SubAbs0|limitlen:140|highlight:6%} {%/if%} </div> {%/if%} {%for $foo=1 to ($imgstart-1)%} {%*非第一条子链循环*%} {%$titlearr="SubTitle`$foo`"%} {%$titleurlarr="SubTitleUrl`$foo`"%} {%$thumurlarr="ThumURL`$foo`"%} {%$subtitlearr="SubTitle`$foo`"%} {%$sitenamearr="SiteName`$foo`"%} {%$subabsarr="SubAbs`$foo`"%} {%$posttimearr="PostTime`$foo`"%} {%$ThumTimearr="ThumTime`$foo`"%} {%if $tplData[$titlearr]%} <div class="c-row"> {%if $tplData[$posttimearr]%} {%*时间靠右对齐*%} <span style="color:#666;float:right">{%sp_realtime_disp_Date serverTime=$serverTime second=$tplData[$posttimearr]%}</span> {%/if%} <a href="{%fe_fn_c_enc_url url=$tplData[$titleurlarr]%}" target="_blank" > {%if $tplData.ThumURL0%} {%$tplData[$subtitlearr]|limitlen:40|highlight:2%} {%else%} {%$tplData[$subtitlearr]|limitlen:50|highlight:2%} {%/if%} </a> {%if $tplData[$sitenamearr]%} &nbsp;<span style="color:#008000">{%$tplData[$sitenamearr]|limitlen:30%}</span> {%/if%} {%if $tplData[$subabsarr]%} {%if $tplData.ThumURL0%} {%$tplData[$subabsarr]|limitlen:122|highlight:6%} {%else%} {%$tplData[$subabsarr]|limitlen:140|highlight:6%} {%/if%} {%/if%} </div> {%/if%} {%/for%} </div>{%/block%}{%block name="foot"%}{%/block%}}