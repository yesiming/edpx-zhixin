{%extends 'base.tpl'%} {%block name='content'%}{%$FE_GBVAR.wrapper_prefix%}<style >.op_xunzhi_favurl{background-repeat:no-repeat;background-position:0 1px;padding-left:20px}.op_xunzhi_t{font-size:medium;font-weight:normal}.op_xunzhi_span{margin-top:3px}.op_xunzhi_m{color:#666;display:inline-block}.op_xunzhi_clear{clear:both}.op_xunzhi_div{margin-left:13px}.op_xunzhi_div ul{float:left;margin-right:40px}.op_xunzhi_div ul li{margin-top:7px;font-size:14px}.op_xunzhi_div ul li a{color:#00c}</style>{%if $tplData.titleimg!=""%} <h3 class="op_xunzhi_t"><a class="op_xunzhi_favurl" style="background-image:url({%$tplData.titleimg%})" href="{%$tplData.url%}" target="_blank">{%$tplData.title|highlight:0%}</a></h3>{%else%}{%fe_fn_title_prefix%}{%fe_fn_title title="{%$tplData.title%}" url="{%$tplData.url%}"%}{%fe_fn_title_suffix title="{%$tplData.title%}" url="{%$tplData.url%}"%}{%/if%}<font size="-1"> <div> <div class="op_xunzhi_span"><span>{%$tplData.digest|limitlen:154|highlight:0%}</span></div> </div>  <div class="op_xunzhi_footer"><span style="font-size:13px;">{%fe_fn_showurl showurl="{%$tplData.showurl%}" date="{%$tplData.date%}" showlamp="{%$tplData.showlamp%}"%}</span>-&nbsp;<a href="{%if $tplData.kuaizhao!=""%}{%$tplData.kuaizhao%}{%/if%}" target="_blank" class="op_xunzhi_m">百度快照</a></span></div> <div class="op_xunzhi_div"> <ul> {%$loop_maxcount=count($tplData.linkr)%}{%for $op_loop_count=0 to 2%}{%if $op_loop_count<$loop_maxcount%} <li><a href="{%$tplData.linkr[$op_loop_count]['href']%}" target="_blank">{%$tplData.linkr[$op_loop_count]['txt']|limitlen:30%}</a></li> {%else%}{%break%}{%/if%}{%/for%} </ul> <ul> {%$loop_maxcount=count($tplData.linkl)%}{%for $op_loop_count=0 to 2%}{%if $op_loop_count<$loop_maxcount%} <li><a href="{%$tplData.linkl[$op_loop_count]['href']%}" target="_blank">{%$tplData.linkl[$op_loop_count]['txt']|limitlen:30%}</a></li> {%else%}{%break%}{%/if%}{%/for%} </ul> </div> </font>{%$FE_GBVAR.wrapper_suffix%}{%/block%}