{%extends 'c_base.tpl'%} {%block name='data_modifier'%}{%$tplData.title="{%$extData.OriginQuery|limitlen:30%}_{%$tplData.TitleSuffix|limitlen:100%}{%$tplData.dispNum%}条_百度招聘搜索"%}{%$tplData.showurl='open.baidu.com/'%}{%$tplData.showlamp=1%}{%$tplData.shareContent='mini'%}{%/block%}{%block name='content'%}<style data-merge>{%fe_fn_c_css css='table'%}</style><script type="text/javascript" >window.opuiLikeShareContent6666 = '#百度搜索#刚才在百度搜“{%$extData.OriginQuery|escape:'html'%}”，{%$tplData.dispNum%}条{%$extData.OriginQuery|escape:'html'%}招聘信息全搜罗，找工作的朋友也来试试吧。';
</script><table cellspacing="0" class="c-table"> <tr class="c-table-hihead"> <th>职位名称</th> <th>公司名称</th> <th>工作地点</th> <th>发布时间</th> </tr> {%$loop_maxcount=$tplData.resNum%}{%for $op_loop_count=0 to 9%}{%if $op_loop_count<$loop_maxcount%} <tr> <td><a href="{%$tplData.result[$op_loop_count]['loc']%}" target="_blank">{%$tplData.result[$op_loop_count]['title']|limitlen:24|highlight:0%}</a></td> <td>{%$tplData.result[$op_loop_count]['employer']|limitlen:18|highlight:0%}</td> <td width="80">{%$tplData.result[$op_loop_count]['city']|limitlen:100|highlight:0%}</td> <td width="100">{%$tempDataStartdate=trim($tplData.result[$op_loop_count]['startdate'])%}{%substr($tempDataStartdate,0,10)%}</td> </tr> {%else%}{%break%}{%/if%}{%/for%}</table>{%if $tplData.MoreResult!=""%}<div class="c-gap-top"> <a href="{%$tplData.url%}" target="_blank">查看全部{%$tplData.dispNum%}条结果<span style="font-family:simsun">&gt;&gt;</span></a></div>{%/if%}{%/block%}