{%*
* @fileOverview 繁体搜索（有结果）模板-来自CTPL模板迁移
* @author       刘悦
* @version      1.0
* @date         2013/03/22
*%}{%extends file='base_basic.tpl'%} {%block name="global_vars"%}{%*
* @fileOverview 中间页模板-公共变量
* @author       刘悦
* @version      1.0
* @date         2012/12/11
*%}{%* 全局变量定义 *%}{%$searchAction = '/s' scope='global'%}{%$serverTime = $tplData.queryInfo.listTime scope='global'%}{%$searchTime = $tplData.queryInfo.timeused scope='global'%}{%$productEncKey = $tplData.queryInfo.productEncKey scope='global'%}{%$query = $tplData.queryInfo.wordNoSyntax scope='global'%}{%$queryUbs = $tplData.queryInfo.pQueryMap.ubs scope='global'%}{%$querySymbol = $tplData.queryInfo.pQueryMap.symbol scope='global'%}{%$queryNopunc = $tplData.queryInfo.pQueryMap.nopunc scope='global'%}{%$queryEnc = $tplData.queryInfo.wordNoSyntaxEncoded scope='global'%}{%$queryGBKEnc = $tplData.queryInfo.pQueryMap.ubs scope='global'%}{%$urlPara = $tplData.queryInfo.pUrlConfig scope='global'%}{%$pageNo = $tplData.queryInfo.pageNo scope='global'%}{%$queryId = $tplData.queryInfo.queryId scope='global'%}{%$pageEncoding = $tplData.queryInfo.outputEncode scope='global'%}{%$queryEncoding = $urlPara.ie scope='global'%}{%$resIndex = ($pageNo-1)*$tplData.queryInfo.resNum+1 scope='global'%}{%$needubs = '1' scope='global'%}{%* 通用文本、样式 *%}{%$style_link_color = '#0000cc' scope='global'%}{%$style_site_color = '#008000' scope='global'%}{%$lable_html_title = '百度搜索_' scope='global'%}{%$lable_rs = '相关搜索' scope='global'%}{%$style_highlight_color = '#cc0000' scope='global'%}{%$result_width = '33.7' scope='global'%}{%$style_snapshot_color = '#666' scope='global'%}{%$style_foot_background_color = '#e6e6e6' scope='global'%}{%$lable_submit_value = '百度一下' scope='global'%}{%$lable_foot_year = "{%date('Y')%}" scope='global'%}{%$lable_foot_word = '此内容系百度根据您的指令自动搜索的结果，不代表百度赞成被搜索网站的内容或立场' scope='global'%}{%$lable_help = '帮助' scope='global'%}{%$lable_advanced = '高级搜索' scope='global'%}{%$lable_set_homepage = '把百度设为主页' scope='global'%}{%$lable_pre_page = '上一页' scope='global'%}{%$lable_for_page = '下一页' scope='global'%}{%* 提示 *%}{%$topHint = $tplData.asResult.topHint scope='global'%}{%$bottomHint = $tplData.asResult.bottomHint scope='global'%}{%$hint_postcode_part1 = '—百度邮编搜索' scope='global'%}{%$hint_postcode_part2 = '百度邮编由国家邮政局名址信息中心提供数据，可搜索全国354个城市的37823个邮政编码，并支持地名和邮编互查，查询更快速、获取更便捷。' scope='global'%}{%$hint_filter_fornone = '搜索结果可能不符合相关法律法规和政策，未予显示。建议尝试其他相关词。' scope='global'%}{%$hint_filter_fornone_baidurt = '根据相关法律法规和政策，部分搜索结果未予显示。' scope='global'%}{%$hint_filter_forpage = '根据相关法律法规和政策，部分搜索结果未予显示。' scope='global'%}{%$hint_sitesearch_part1 = '提示：找到的相关网页数是估算值，不代表真实结果数，仅供参考。' scope='global'%}{%$hint_sitesearch_part2 = '站长帮助' scope='global'%}{%$hint_none_part1 = '抱歉，没有找到与<span style="font-family:宋体">“</span>' scope='global'%}{%$hint_none_part2 = '<span style="font-family:宋体">”</span>相关的网页。' scope='global'%}{%$hint_none_part3 = '百度建议您：' scope='global'%}{%$hint_baidurt_none_part3 = '网页结果。' scope='global'%}{%$hint_baidurt_none_part4 = '新闻结果。' scope='global'%}{%$hint_baidurt_none_part5 = '论坛结果。' scope='global'%}{%$hint_baidurt_none_part6 = '博客结果。' scope='global'%}{%$hint_baidurt_none_part7 = '视频结果。' scope='global'%}{%$hint_none_part4 = '建议：' scope='global'%}{%$hint_none_part5 = '阅读' scope='global'%}{%$hint_none_part6 = '帮助' scope='global'%}{%$hint_none_part7 = '检查输入是否正确' scope='global'%}{%$hint_none_part8 = '简化输入词' scope='global'%}{%$hint_none_part9 = '尝试其他相关词，如同义、近义词等' scope='global'%}{%$hint_none_part10 = '看看输入的文字是否有误' scope='global'%}{%$hint_none_part11 = '去掉可能不必要的字词，如“的”、“什么”等' scope='global'%}{%$hint_onlysyb_part1 = '<span style="font-family:宋体">“</span>' scope='global'%}{%$hint_onlysyb_part2 = '<span style="font-family:宋体">”</span>不在查询范围内，建议尝试其他相关词。' scope='global'%}{%$hint_amount_and_time_part1 = '百度为您找到相关结果' scope='global'%}{%$hint_amount_and_time_part2 = '约' scope='global'%}{%$hint_amount_and_time_part3 = '个' scope='global'%}{%$hint_search_part1 = '提示：为了提供最相关的结果，我们省略了一些内容相似的条目，' scope='global'%}{%$hint_search_part2 = '点击这里' scope='global'%}{%$hint_search_part3 = '可以看到所有搜索结果。' scope='global'%}{%$hint_searchbytime_part1 = '您现在选择的是在时间段内进行搜索，' scope='global'%}{%$hint_searchbytime_part2 = '点击此处' scope='global'%}{%$hint_searchbytime_part3 = '查看全部搜索结果' scope='global'%}{%$hint_searchbyzone_part1 = '您现在选择的是在地区内进行搜索，' scope='global'%}{%$hint_searchbyzone_part2 = '点击此处' scope='global'%}{%$hint_searchbyzone_part3 = '查看互联网全部搜索结果' scope='global'%}{%$hint_omit = '提示：限于网页篇幅，部分结果未予显示。' scope='global'%}{%$hint_se = '您要找的是不是: ' scope='global'%}{%$hint_quet_part1 = '去掉""获得更多&nbsp;' scope='global'%}{%$hint_quet_part2 = '&nbsp;的搜索结果(' scope='global'%}{%$hint_quet_part3 = '关于双引号' scope='global'%}{%$hint_quet_part4 = ')' scope='global'%}{%$hint_bookname_part1 = '去掉《》获得更多&nbsp;' scope='global'%}{%$hint_bookname_part2 = '&nbsp;的搜索结果(' scope='global'%}{%$hint_bookname_part3 = '关于书名号' scope='global'%}{%$hint_bookname_part4 = ')' scope='global'%}{%$hint_longstr_part1 = '提示："' scope='global'%}{%$hint_longstr_part1_s = '"' scope='global'%}{%$hint_longstr_part2 = '"&nbsp;及其后面的字词均被忽略，因为百度的查询限制在38个汉字以内。' scope='global'%}{%$hint_psother_part1 = '在百度网页中查找“' scope='global'%}{%$hint_psother_part2 = '”相关的网页' scope='global'%}{%$hint_jc_part1 = '以下是"' scope='global'%}{%$hint_jc_part2 = '"的结果:' scope='global'%}{%$hint_domain_part1 = '没有找到该URL。您可以直接访问&nbsp;' scope='global'%}{%$hint_domain_part2 = '以下是网页中包含"' scope='global'%}{%$hint_domain_part3 = '"的结果:' scope='global'%}{%$hint_domain_part4 = '，还可' scope='global'%}{%$hint_domain_part5 = '提交网址' scope='global'%}{%$hint_domain_part6 = '给我们' scope='global'%}{%$hint_domain_part7 = '给我们。' scope='global'%}{%* URL加密 *%}{%$resToken["tieba"] = ($tplData.templateConfig.token_tieba=="1") scope='global'%}{%$resToken["zhidao"] = ($tplData.templateConfig.token_zhidao=="1") scope='global'%}{%$resToken["baike"] = ($tplData.templateConfig.token_baike=="1") scope='global'%}{%$resToken[""] = false scope='global'%}{%$urlEncryption = ($tplData.templateConfig.URLEncryption=="1")?true:false scope='global'%}{%$urlEncMaxLen = ($tplData.templateConfig.urlEncMaxLen)?$tplData.templateConfig.urlEncMaxLen:2000 scope='global'%}{%* 域 *%}{%$static_domain = 'http://s1.bdstatic.com/r/www' scope='global'%}{%$www_domain = 'http://www.baidu.com' scope='global'%}{%$news_domain = 'http://news.baidu.com' scope='global'%}{%$music_domain = 'http://music.baidu.com' scope='global'%}{%$image_domain = 'http://image.baidu.com' scope='global'%}{%$ikown_domain = 'http://zhidao.baidu.com' scope='global'%}{%$tieba_domain = 'http://tieba.baidu.com' scope='global'%}{%$video_domain = 'http://video.baidu.com' scope='global'%}{%$baike_domain = 'http://baike.baidu.com' scope='global'%}{%$map_domain = 'http://map.baidu.com' scope='global'%}{%$wenku_domain = 'http://wenku.baidu.com' scope='global'%}{%$more_domain = 'http://www.baidu.com/more/' scope='global'%}{%$c_domain = 'http://c.baidu.com' scope='global'%}{%$ubs_domain = 'http://sclick.baidu.com' scope='global'%}{%$youbian_domain = 'http://youbian.baidu.com' scope='global'%}{%$ubs_url = '/w.gif' scope='global'%}{%$suggestion_version = '1.0.3.0' scope='global'%}{%$preferences_url = 'http://www.baidu.com/gaoji/preferences.html' scope='global'%}{%$advanced_url = 'http://www.baidu.com/gaoji/advanced.html' scope='global'%}{%* 以下参数UI已经进行过滤，配置xss白名单 *%}{%$urlArgs.cl = ($urlPara.cl != 3)?"&cl=`$urlPara.cl`":""  scope='global'%}{%$urlArgs.ct = ($urlPara.ct != 0) ? "&ct=`$urlPara.ct`":"" scope='global'%}{%$urlArgs.tn = ($urlPara.tn != 'baidu') ? "&tn=`$urlPara.tn`":"" scope='global'%}{%$urlArgs.rn = ($urlPara.rn != 10) ? "&rn=`$urlPara.rn`":"" scope='global'%}{%$urlArgs.ie = ($urlPara.ie != 'gb2312') ? "&ie=`$urlPara.ie`":"" scope='global'%}{%$urlArgs.lm = ($urlPara.lm != 0) ? "&lm=`$urlPara.lm|vui_escape:'url'`":"" scope='global'%}{%$urlArgs.si = (strlen($urlPara.si) > 0) ? "&si=`$urlPara.si`":"" scope='global'%}{%$urlArgs.z_type = ($urlPara.z_type == 3) ? "&z=`$urlPara.z|vui_escape:'url'`":"" scope='global'%}{%$urlArgs.ch = ($urlPara.ch != 0) ? "&ch=`$urlPara.ch`":"" scope='global'%}{%$urlArgs.f = ($urlPara.f == 1 || $urlPara.f == 3)?"&f=`$urlPara.f`":""  scope='global'%}{%$urlArgs.rtt = ($urlPara.rtt)?"&rtt=`$urlPara.rtt|vui_escape:'url'`":""  scope='global'%}{%$urlArgs.bsst = ($urlPara.bsst)?"&bsst=`$urlPara.bsst|vui_escape:'url'`":""  scope='global'%}{%$urlArgs.wb = ($urlPara.wb)?"&wb=`$urlPara.wb`":""  scope='global'%}{%$urlArgs.oe = ($urlPara.oe)?"&oe=`$urlPara.oe`":""  scope='global'%}{%$urlArgs.usm = ($urlPara.usm !=0) ? "&usm=`$urlPara.usm`":"" %}{%* 以下参数UI未进行过滤，需要转义 *%}{%$urlArgs.sts= (strlen($urlPara.sts) > 0) ? "&sts=`$urlPara.sts|vui_escape:'html'|vui_escape:'url'`":"" scope='global'%}{%$urlArgs.vit = ($urlPara.vit) ? "&vit=`$urlPara.vit|vui_escape:'html'|vui_escape:'url'`":"" scope='global'%}{%$urlArgs.dsp = ($urlPara.dsp) ? "&dsp=`$urlPara.dsp|vui_escape:'html'|vui_escape:'url'`":"" scope='global'%}{%$isOldSnapshootOn = ($tplData.templateConfig.isOldSnapshootOn=="1")?true:false scope='global'%}{%$cache_domain = 'http://cache.baiducontent.com' scope='global'%}{%$queryUbs = $tplData.queryInfo.pQueryMap.ubs|vui_escape:'html'|vui_escape:'url' scope='global'%}{%$queryId = $tplData.queryInfo.queryId|vui_escape:'html'|vui_escape:'url' scope='global'%}{%$resIndex = ($pageNo-1)*$tplData.queryInfo.resNum+1 scope='global'%}{%$lable_cache = '百度快照' scope='global'%}{%$lable_doctype1 = '文件格式:' scope='global'%}{%$lable_doctype2 = 'HTML版' scope='global'%}{%$lable_preferences = '设置' scope='global'%}{%foreach $tplData.ecResult.ecResultItem as $ecom%}{%$adv[$ecom.id].content=$ecom.adContent scope='global'%}{%$adv[$ecom.id].num=$ecom.adNum scope='global'%}{%/foreach%}{%foreach $tplData.rsseResult.daResult as $da%}{%$daRes[$da.itemSrcid].num=$da.resNum scope='global'%}{%$daRes[$da.itemSrcid].results=$da.res scope='global'%}{%/foreach%}{%$domainType = $tplData.asResult.domainType scope='global'%}{%$seNum = count($tplData.rsseResult.seword)%}{%$rsNum = count($tplData.rsseResult.rsphrase)%}{%$exist213=0 scope='global'%}{%$exist204=0 scope='global'%}{%if $adv[213].num && $adv[213].num > 0%}{%$exist213=1 scope='global'%}{%/if%}{%if $adv[204].num && $adv[204].num > 0%}{%$exist204=1 scope='global'%}{%/if%}{%$resOffset = ($pageNo-1)*$tplData.queryInfo.resNum+1 scope='global'%}{%$counter = ($pageNo-1)*$tplData.queryInfo.resNum+1 scope='global'%}{%$hint_amount_and_time_part1 = '百度一下，找到相关网页' scope='global'%}{%$hint_amount_and_time_part3 = '篇。' scope='global'%}{%/block%}{%block name="title"%}<title>百度搜索_{%$query|vui_escape:'html'%}</title>{%/block%}{%block name="head_style"%}<style>body,td,.p1,.p2,.i{font-family:arial}TD{FONT-SIZE:9pt;LINE-HEIGHT:18px}.f14{FONT-SIZE:14px}.f10{font-size:10.5pt}.f16{font-size:16px;font-family:Arial}.c{color:#77c}.p1{LINE-HEIGHT:120%;margin-left:-12pt}.p2{width:100%;LINE-HEIGHT:120%;margin-left:-12pt}.i{font-size:16px}.t{COLOR:#00c;TEXT-DECORATION:none}a.t:hover{TEXT-DECORATION:underline}.p{padding-left:18px;font-size:14px;word-spacing:4px}.f{line-height:120%;font-size:100%;width:32em;padding-left:20px;word-break:break-all;word-wrap:br{%*i*%}eak-word}.h{margin-left:8px;width:100%}.s{width:8%;padding-left:10px;height:25px}.m,a.m:link{COLOR:#666;font-size:100%;line-height:10px}a.m:visited{COLOR:#606}.g{color:#008000;font-size:12px}.r{word-break:break-all;cursor:hand;width:238px}.bi{background-color:#d9e1f7;height:20px;margin-bottom:12px}.pl{padding-left:3px;height:8px;padding-right:2px;font-size:14px}.Tit{height:21px;font-size:14px}.fB{font-weight:bold}.mo,a.mo:link,a.mo:visited{COLOR:#666;font-size:100%;line-height:10px}.htb{margin-b{%*i*%}ottom:5px}#ft{clear:both;line-height:20px;background:#e6e6e6;text-align:center}#ft,#ft *{color:#77C;font-size:12px;font-family:Arial}#ft span{color:#666}body{margin-bottom:0}#u,#head,#tool,#search,#foot{font-size:12px}#head{padding-left:20px}.fm{clear:both;position:relative;z-index:297}.nv a,.nv b,.btn,#page,#more{font-size:14px}.s_nav{height:45px}.s_nav .s_logo{margin-right:20px;float:left}.s_nav .s_logo img{border:0;display:block}.s_nav .s_tab{line-height:18px;padding:20px 0 0;float:left}.s_na{%*i*%}v a{color:{%$style_link_color%};font-size:14px}.s_nav b{font-size:14px}.s_ipt_wr{width:533px;height:30px;display:inline-block;margin-right:5px;background:url(http://s1.bdstatic.com/r/www/cache/mid/static/global/img/i_1b2df4e3.png) no-repeat -304px 0;border:1px solid #b6b6b6;border-color:#7b7b7b #b6b6b6 #b6b6b6 #7b7b7b;vertical-align:top}.s_ipt{width:520px;height:22px;font:16px/22px arial;margin:5px 0 0 7px;padding:0;background:#fff;border:0;outline:0;-webkit-appearance:none}.s_btn{width:95px;height:32px;padding-top:2px\9;font{%*i*%}-size:14px;padding:0;background:#ddd url(http://s1.bdstatic.com/r/www/cache/mid/static/global/img/i_1b2df4e3.png);border:0;cursor:pointer}.s_btn_h{background-position:-100px 0}.s_btn_wr{width:97px;height:34px;display:inline-block;background:url(http://s1.bdstatic.com/r/www/cache/mid/static/global/img/i_1b2df4e3.png) no-repeat -202px 0;*position:relative;z-index:0;vertical-align:top}#tb_mr{color:#00c;cursor:pointer;position:relative;z-index:298}#tb_mr b{font-weight:normal;text-decoration:underlin{%*i*%}e}#tb_mr small{font-size:11px}#more{width:58px;height:100px;border:1px solid #9b9b9b;background:#fff;position:absolute;z-index:298;left:472px;top:51px;overflow:hidden;display:none;outline:0}#more a{width:53px;height:25%;line-height:24px;display:block;padding:0 0 0 7px;color:#0001cf;text-decoration:none;filter:none\9}#more a span{font-family:"宋体"}#more a:hover{background:#ebebeb}#more div{height:1px;overflow:hidden;background:#ebebeb}#page{white-space:nowrap;padding-left:20px}#page a:hover{backgr{%*i*%}ound:#ebebeb}#page a,#page strong{width:23px;height:22px;line-height:22px;font-size:14px;text-align:center;line-height:22px;display:inline-block;border:1px solid #e7ecf0;background:#fff;margin-right:5px;text-decoration:none;vertical-align:middle}#page strong{border:0}#page .n{width:60px;font-family:"宋体";line-height:24px;overflow:hidden}.rt{display:inline-block;width:33.7em}#rs{width:100%;background:{%$style_rsbackground_color%};padding:8px 0;margin:20px 0 0}#rs td{width:5%}#rs th{font-size:14px;font-weight:normal;line-height:19px;white-space:nowrap;text-align:left;vertical-align:top}#rs .tt{font-weight:bold;padding:0 10px 0 20px}#search{padding-left:20px;overflow:hidden}#search .s_help{position:relative;top:10px}form{margin:0}.opts{margin-left:-5px;text-align:left;height:16px;line-height:16px;padding-bottom:20px}.opts label{margin-right:14px}.opts input{vertical-align:middle;margin-right:4px;*margin-right:1px}.opts sp{%*i*%}an{vertical-align:-2px}.nums{font-size:12px;color:#999;margin-left:120px}#u{color:#999;white-space:nowrap;position:absolute;right:10px;top:4px;_top:0;z-index:299}#u a{color:#00C;margin:0 5px}#u .last{margin-right:0}--></style>{%/block%}{%block name="head_script"%}<script language="javascript">function bq(form){form.wd.value = '{%$query|vui_escape:"javascript"%} ' + form.wd.value;form.submit();return false;}function G(id){return document.getElementById(id);}function setHeadUrl(el){var word = G("kw").value;word = word.replace(/[#%&+=\?\/\\\ \　\f\r\n\t]/g, function(str) {return '%' + (0x100 + str.charCodeAt()).toString(16).substring(1).toUpperCase();});var url = el.href;url = url.replace(new RegExp("(" + el.getAttribute('wdfield') + "=)[^&]*"), '\x241' + word);el.href = url;}function h(obj,url){obj.style.behavior='url(#default#homepage)';obj.setHomePage({%*i*%}url);}if (top.location != self.location) {top.location=self.location;}if (window.name == 'nw') { window.name = '';}function ga(o,e){if (document.getElementById){a=o.id.substring(1); p = "";r = "";g = e.target;if (g){ t = g.id;f = g.parentNode;if (f) {p = f.id;h = f.parentNode;if (h) r = h.id;}} else{h = e.srcElement;f = h.parentNode;if (f) p = f.id;t = h.id;}if (t==a || p==a || r==a) return true;window.open(document.getElementById(a).href{%if !($urlPara.ct & 0x40000)%},'_blank'{%/if%})}}function ss(w){window.status=w;return true;}function cs(){window.status='';}</script>{%/block%}{%block name="body_start"%}<body bgcolor="#ffffff" text="#000000" link="#261CDC" topmargin="6" bottommargin="0" leftmargin="0" rightmargin="0">{%/block%}{%block name="content"%}<div id="u"><a href="//tw.baidu.com" class="last">百度首页</a></div><div id="head"><div class="s_nav"><a href="http://tw.baidu.com/" class="s_logo"><img src="http://s1.bdstatic.com/r/www/cache/mid/static/global/img/baidu_jgylogo3_f63ceb6c.gif" alt="到百度首頁" title="到百度首頁" /></a><div class="s_tab"><a href="{%$news_domain%}/ns?cl=2&rn=20&tn=news&word={%$query|vui_escape:'url'%}" wdfield="word" onmousedown="setHeadUrl(this);">新闻</a>&#12288;<b>网页</b>&#12288;<a href="{%$tieba_domain%}/f?kw={%$query|vui_escape:'url'%}&fr=wwwt" wdfield="kw" onmousedown="setHeadUrl(this);">贴吧</a>&#12288;<a href="http://tw.zhidao.baidu.com/search?ct=17&pn=0&tn=ikaslist&rn=10&word={%$query|vui_escape:'url'%}&fr=wwwt" wdfield="word" onmousedown="setHeadUrl(this);">知道</a>&#12288;<a href="{%$mp3_domain%}/m?tn=baidump3&ct=134217728&lm=-1&word={%$query|vui_escape:'url'%}" wdfield="word" onmousedown="setHeadUrl(this);">MP3</a>&#12288;<a href="{%$image_domain%}/i?tn=baiduimage&ct=201326592&lm=-1&cl=2&word={%$query|vui_escape:'url'%}" wdfield="word" onmousedown="setHeadUrl(this);">图片</a>&#12288;<a href="{%$video_domain%}/v?ct=301989888&rn=20&pn=0&db=0&s=25&word={%$query|vui_escape:'url'%}" wdfield="word" onmousedown="setHeadUrl(this);">视频</a>&#12288;<a href="{%$map_domain%}/m?word={%$query|vui_escape:'url'%}&fr=ps01000" wdfield="word" onmousedown="setHeadUrl(this);">地图</a>&#12288;<span id="tb_mr"><b>更多</b><small>▼</small></span></div><div id="more"><a href="{%$baike_domain%}/searchword/?word={%$query|vui_escape:'url'%}&pic=1" wdfield="word">百科</a><a href="{%$wenku_domain%}/search?word={%$query|vui_escape:'url'%}&lm=0&od=0" wdfield="word">文库</a><a href="{%$dict_domain%}/s?wd={%$query|vui_escape:'url'%}" wdfield="wd">词典</a><div></div><a href="{%$more_domain%}">更多<span>&gt;&gt;</span></a></div></div><form name="f" action="s" class="fm"><input type=hidden name=tn value="{%$urlPara.tn|vui_escape:'url'%}"><input type=hidden name=ie value="{%$urlPara.ie|vui_escape:'url'%}"><input type=hidden name=bs value="{%$query|vui_escape:'url'%}"><input type=hidden name=z value="{%$urlPara.z|vui_escape:'url'%}"><input type=hidden name=cl value=3><input type=hidden name=f value=8><span class="s_ipt_wr"><input name="wd" id="kw" class="s_ipt" value="{%$query|vui_escape:'html'%}" maxlength="100"  autocomplete="off"></span><span class="s_btn_wr"><input type="submit" id="su" value="{%$lable_submit_value%}" class="s_btn" onmousedown="this.className='s_btn s_btn_h'" onmouseout="this.className='s_btn'"></span><div class="opts"><label for="all_c"><input type="radio" name="ct" value="99" id="all_c" {%if $urlPara.ct == 99%}checked{%/if%}><span>所有中文网页</span></label><label for="sim_c"><input type="radio" name="ct" value="1" id="sim_c" {%if $urlPara.ct == 1%}checked{%/if%}><span>简体中文网页</span></label><label for="com_c"><input type="radio" name="ct" value="2" id="com_c" {%if $urlPara.ct == 2%}checked{%/if%}><span>繁体中文网页</span></label></div></form></div>{%if $querySymbol == 0%}{%if ($topHint & 0x1000) == 0%}{%*SE提示*%}{%if ($topHint & 0x4) != 0%}<p style="margin:10px 15px"><strong class=f14>{%$hint_se|vui_escape:'html'%}<span  class="jc">{%$seNum = count($tplData.rsseResult.seword)%}{%for $index=0 to $seNum-1%}{%$seWord = $tplData.rsseResult.seword[$index]%}<a href="s?wd={%$seWord|vui_escape:'url'%}&f=12&oq={%$query|vui_escape:'url'%}{%if $urlPara.cl != 3%}&cl={%$urlPara.cl|vui_escape:'url'%}{%/if%}{%if $urlPara.ct != 0%}&ct={%$urlPara.ct|vui_escape:'url'%}{%/if%}{%if $urlPara.tn != baidu%}&tn={%$urlPara.tn|vui_escape:'url'%}{%/if%}{%if $urlPara.rn != 10%}&rn={%$urlPara.rn|vui_escape:'url'%}{%/if%}&ie=utf-8{%if $urlPara.lm != 0%}&lm={%$urlPara.lm|vui_escape:'url'%}{%/if%}{%if count($urlPara.si)%}&si={%$urlPara.si|vui_escape:'url'%}{%/if%}{%if $urlPara.z_type == 3%}&z={%$urlPara.z|vui_escape:'url'%}{%/if%}{%if $urlPara.ch != 0%}&ch={%$urlPara.ch|vui_escape:'url'%}{%/if%}{%if count($urlPara.sts)%}&sts={%$urlPara.sts|vui_escape:'url'%}{%/if%}">{%$seWord|vui_escape:'html'%}</a>&nbsp;{%/for%}</span></strong><br></p>{%/if%}{%*引号提示*%}{%if ($topHint & 0x8000) != 0%}<p style="margin:10px 15px"><font class="f14"><b>{%$hint_quet_part1%}<a href="s?wd={%$queryNopunc|vui_escape:'url'%}{%if $urlPara.cl != 3%}&cl={%$urlPara.cl|vui_escape:'url'%}{%/if%}{%if $urlPara.ct != 0%}&ct={%$urlPara.ct|vui_escape:'url'%}{%/if%}{%if $urlPara.tn != baidu%}&tn={%$urlPara.tn|vui_escape:'url'%}{%/if%}{%if $urlPara.rn != 10%}&rn={%$urlPara.rn|vui_escape:'url'%}{%/if%}&ie=utf-8{%if $urlPara.lm != 0%}&lm={%$urlPara.lm|vui_escape:'url'%}{%/if%}{%if count($urlPara.si)%}&si={%$urlPara.si|vui_escape:'url'%}{%/if%}{%if $urlPara.z_type == 3%}&z={%$urlPara.z|vui_escape:'url'%}{%/if%}{%if $urlPara.ch != 0%}&ch={%$urlPara.ch|vui_escape:'url'%}{%/if%}{%if count($urlPara.sts)%}&sts={%$urlPara.sts|vui_escape:'url'%}{%/if%}">{%$queryNopunc|vui_escape:'html'%}</a>{%$hint_quet_part2%}<a href="http://www.baidu.com/search/page_feature.html#0904" target="_blank">{%$hint_quet_part3%}</a>{%$hint_quet_part4%}</b></font><br></p>{%/if%}{%*书名号提示*%}{%if ($topHint & 0x8) != 0%}<p style="margin:10px 15px;"><font class=f14><b>{%$hint_bookname_part1%}<a href="s?wd={%$queryNopunc|vui_escape:'url'%}{%if $urlPara.cl != 3%}&cl={%$urlPara.cl|vui_escape:'url'%}{%/if%}{%if $urlPara.ct != 0%}&ct={%$urlPara.ct|vui_escape:'url'%}{%/if%}{%if $urlPara.tn != baidu%}&tn={%$urlPara.tn|vui_escape:'url'%}{%/if%}{%if $urlPara.rn != 10%}&rn={%$urlPara.rn|vui_escape:'url'%}{%/if%}&ie=utf-8{%if $urlPara.lm != 0%}&lm={%$urlPara.lm|vui_escape:'url'%}{%/if%}{%if count($urlPara.si)%}&si={%$urlPara.si|vui_escape:'url'%}{%/if%}{%if $urlPara.z_type == 3%}&z={%$urlPara.z|vui_escape:'url'%}{%/if%}{%if $urlPara.ch != 0%}&ch={%$urlPara.ch|vui_escape:'url'%}{%/if%}">{%$queryNopunc|vui_escape:'html'%}</a>{%$hint_bookname_part2%}<a href="http://www.baidu.com/search/page_feature.html#0904" target="_blank">{%$hint_bookname_part3%}</a>{%$hint_bookname_part4%}</b></font><br></p>{%/if%}{%*长串提示*%}{%if ($topHint & 0x1) != 0%}<p style="margin:10px 15px;"><font class=f14><b>{%$hint_longstr_part1%}{%$tplData.queryInfo.extraStr|vui_escape:'html'%}{%$hint_longstr_part2%}</b></font><br></p>{%/if%}{%/if%}{%/if%}{%$resIndex = 1 scope='global'%}{%foreach $tplData.asResult.item as $res%}{%if $res.source == 4 || $res.source == 2%}<table border="0" cellpadding="0" cellspacing="0" id="$loopindex$"><tr><td class=f>{%if $res.docType >= 0%}<font size=-1 color=#261cdc><b>{%$res.docTypeBrief|vui_escape:'html'%}</b></font>{%/if%}<a href="{%$res.offsetInfo.url|encodeURI%}" {%if !($urlPara.ct & 0x40000)%} target="_blank" {%/if%}><font size="3">{%$res.offsetInfo.title|highlight:2%}</font></a><br><font size=-1>{%if $res.docType >= 0%}<font class=c>{%$lable_doctype1%}</font>{%$res.docTypeDetail|vui_escape:'html'%}-<a href="http://cache.baidu.com/c?{%$res.snapshootKey%}&user=baidu" {%if !($urlPara.ct & 0x40000)%} target="_blank" {%/if%}>{%$lable_doctype2%}</a><br>{%/if%}{%$res.offsetInfo.summary|highlight:2%}{%if count($res.offsetInfo.summary)%}<br>{%/if%}<font color="{%$style_site_color%}">{%$res.dispData.DispUrl|vui_escape:'html'|url_limit:45%}&nbsp;{%$res.offsetInfo.size|vui_escape:'html'%}K&nbsp;{%$res.offsetInfo.lastModified|vui_escape:'html'%}&nbsp;</font><br></font></td></tr></table><br>{%/if%}{%$resIndex = $resIndex + 1 scope='global'%}{%/foreach%}<div id="page">{%if $tplData.queryInfo.tPageNo > 1%}{%if $pageNo > 1%}<a href="s?wd={%$query|vui_escape:'url'%}&pn={%($tplData.queryInfo.pageNo - 2)*$urlPara.rn%}{%$urlArgs.cl%}{%$urlArgs.ct%}{%$urlArgs.tn%}{%$urlArgs.rn%}&ie=utf-8{%$urlArgs.f%}{%$urlArgs.lm%}{%$urlArgs.si%}{%$urlArgs.usm%}{%$urlArgs.z_type%}{%$urlArgs.ch%}{%$urlArgs.sts%}{%$urlArgs.rtt%}{%$urlArgs.wb%}{%$urlArgs.oe%}{%if strlen($urlPara.io)%}&io={%$urlPara.io|vui_escape:'url'%}{%/if%}" class="n">&lt;{%$lable_pre_page%}</a>{%/if%}{%for $index = 1 to 10%}{%if ($tplData.queryInfo.pageNo - 1 + $index - 10) > 0%}<a href="s?wd={%$query|vui_escape:'url'%}&pn={%($tplData.queryInfo.pageNo-2+$index - 10)*$urlPara.rn%}{%$urlArgs.cl%}{%$urlArgs.ct%}{%$urlArgs.tn%}{%$urlArgs.rn%}&ie=utf-8{%$urlArgs.f%}{%$urlArgs.lm%}{%$urlArgs.si%}{%$urlArgs.usm%}{%$urlArgs.z_type%}{%$urlArgs.ch%}{%$urlArgs.sts%}{%$urlArgs.rtt%}{%$urlArgs.wb%}{%$urlArgs.oe%}{%if strlen($urlPara.io)%}&io={%$urlPara.io|vui_escape:'url'%}{%/if%}">{%$tplData.queryInfo.pageNo-1+$index - 10%}</a>&nbsp;{%/if%}{%/for%}<strong>{%$tplData.queryInfo.pageNo%}</strong>&nbsp;{%for $index = 1 to 9%}{%if ($tplData.queryInfo.pageNo + $index - 1) < $tplData.queryInfo.tPageNo%}<a href="s?wd={%$query|vui_escape:'url'%}&pn={%($tplData.queryInfo.pageNo+$index - 1)*$urlPara.rn%}{%$urlArgs.cl%}{%$urlArgs.ct%}{%$urlArgs.tn%}{%$urlArgs.rn%}&ie=utf-8{%$urlArgs.f%}{%$urlArgs.lm%}{%$urlArgs.si%}{%$urlArgs.usm%}{%$urlArgs.z_type%}{%$urlArgs.ch%}{%$urlArgs.sts%}{%$urlArgs.rtt%}{%$urlArgs.wb%}{%$urlArgs.oe%}{%if strlen($urlPara.io)%}&io={%$urlPara.io|vui_escape:'url'%}{%/if%}">{%$tplData.queryInfo.pageNo+$index%}</a>&nbsp;{%/if%}{%/for%}{%if $tplData.queryInfo.pageNo < $tplData.queryInfo.tPageNo %}<a href="s?wd={%$query|vui_escape:'url'%}&pn={%$tplData.queryInfo.pageNo*$urlPara.rn%}{%$urlArgs.cl%}{%$urlArgs.ct%}{%$urlArgs.tn%}{%$urlArgs.rn%}&ie=utf-8{%$urlArgs.f%}{%$urlArgs.lm%}{%$urlArgs.si%}{%$urlArgs.usm%}{%$urlArgs.z_type%}{%$urlArgs.ch%}{%$urlArgs.sts%}{%$urlArgs.rtt%}{%$urlArgs.wb%}{%$urlArgs.oe%}{%if strlen($urlPara.io)%}&io={%$urlPara.io|vui_escape:'url'%}{%/if%}" class="n">{%$lable_for_page%}&gt;</a>&nbsp;{%/if%}{%/if%}<span class="nums">找到相关结果{%if $tplData.asResult.asDataDispNum > 760%}约{%/if%}{%$tplData.asResult.asDataDispNum|format_int%}个</span></div></div><br>{%if $rsNum > 0%}<div style="background-color:#EFF2FA;height:60px;width:100%;clear:both"><table width="96%" height="100%" border="0" align="center" cellpadding="0" cellspacing="0"><tr><td style="font-size:14px;font-weight:bold;height:40px;width:70px;">{%$lable_rs%}</td><td rowspan="2" valign="middle"><table border="0" cellpadding="0" cellspacing="0"><tr>{%for $index=0 to 9%}{%$rsWord = $tplData.rsseResult.rsphrase[$index]%}{%if $index == 4%}<td nowrap class="f14">{%if $rsWord%}<a href="s?wd={%$rsWord.phrase|vui_escape:'url'%}&rsp={%$index|vui_escape:'url'%}&oq={%$query|vui_escape:'url'%}&f=1{%if $urlPara.cl != 3%}&cl={%$urlPara.cl|vui_escape:'url'%}{%/if%}{%if $urlPara.ct != 0%}&ct={%$urlPara.ct|vui_escape:'url'%}{%/if%}{%if $urlPara.tn != baidu%}&tn={%$urlPara.tn|vui_escape:'url'%}{%/if%}{%if $urlPara.rn != 10%}&rn={%$urlPara.rn|vui_escape:'url'%}{%/if%}&ie=utf-8{%if $urlPara.lm != 0%}&lm={%$urlPara.lm|vui_escape:'url'%}{%/if%}{%if count($urlPara.si)%}&si={%$urlPara.si|vui_escape:'url'%}{%/if%}{%if $urlPara.ch != 0%}&ch={%$urlPara.ch|vui_escape:'url'%}{%/if%}{%if count($urlPara.sts)%}&sts={%$urlPara.sts|vui_escape:'url'%}{%/if%}{%if $urlPara.z_type == 3%}&z={%$urlPara.z|vui_escape:'url'%}{%/if%}">{%$rsWord.phrase|vui_escape:'html'%}</a>{%/if%}</td></tr><tr>{%else%}{%if $index == 9%}<td nowrap class="f14">{%if $rsWord%}<a href="s?wd={%$rsWord.phrase|vui_escape:'url'%}&rsp={%$index|vui_escape:'url'%}&oq={%$query|vui_escape:'url'%}&f=1{%if $urlPara.cl != 3%}&cl={%$urlPara.cl|vui_escape:'url'%}{%/if%}{%if $urlPara.ct != 0%}&ct={%$urlPara.ct|vui_escape:'url'%}{%/if%}{%if $urlPara.tn != baidu%}&tn={%$urlPara.tn|vui_escape:'url'%}{%/if%}{%if $urlPara.rn != 10%}&rn={%$urlPara.rn|vui_escape:'url'%}{%/if%}&ie=utf-8{%if $urlPara.lm != 0%}&lm={%$urlPara.lm|vui_escape:'url'%}{%/if%}{%if count($urlPara.si)%}&si={%$urlPara.si|vui_escape:'url'%}{%/if%}{%if $urlPara.ch != 0%}&ch={%$urlPara.ch|vui_escape:'url'%}{%/if%}{%if count($urlPara.sts)%}&sts={%$urlPara.sts|vui_escape:'url'%}{%/if%}{%if $urlPara.z_type == 3%}&z={%$urlPara.z|vui_escape:'url'%}{%/if%}">{%$rsWord.phrase|vui_escape:'html'%}</a>{%/if%}</td>{%else%}<td nowrap class="f14">{%if $rsWord%}<a href="s?wd={%$rsWord.phrase|vui_escape:'url'%}&rsp={%$index|vui_escape:'url'%}&oq={%$query|vui_escape:'url'%}&f=1{%if $urlPara.cl != 3%}&cl={%$urlPara.cl|vui_escape:'url'%}{%/if%}{%if $urlPara.ct != 0%}&ct={%$urlPara.ct|vui_escape:'url'%}{%/if%}{%if $urlPara.tn != baidu%}&tn={%$urlPara.tn|vui_escape:'url'%}{%/if%}{%if $urlPara.rn != 10%}&rn={%$urlPara.rn|vui_escape:'url'%}{%/if%}&ie=utf-8{%if $urlPara.lm != 0%}&lm={%$urlPara.lm|vui_escape:'url'%}{%/if%}{%if count($urlPara.si)%}&si={%$urlPara.si|vui_escape:'url'%}{%/if%}{%if $urlPara.ch != 0%}&ch={%$urlPara.ch|vui_escape:'url'%}{%/if%}{%if count($urlPara.sts)%}&sts={%$urlPara.sts|vui_escape:'url'%}{%/if%}{%if $urlPara.z_type == 3%}&z={%$urlPara.z|vui_escape:'url'%}{%/if%}">{%$rsWord.phrase|vui_escape:'html'%}</a>{%/if%}</td><td nowrap class="s">&nbsp;</td>{%/if%}{%/if%}{%/for%}</tr></table></td></tr><tr><td>&nbsp;</td></tr></table></div><br>{%/if%}<div id="search"><form name="f2" action="/s"><input type=hidden name=tn value="{%$urlPara.tn|vui_escape:'url'%}"><input type=hidden name=ie value="{%$urlPara.ie|vui_escape:'url'%}"><input type=hidden name=bs value="{%$query|vui_escape:'url'%}"><input type=hidden name=z value="{%$urlPara.z|vui_escape:'url'%}"><input type=hidden name=cl value=3><input type=hidden name=f value=8><span class="s_ipt_wr"><input name="wd" class="s_ipt" value="{%$query|vui_escape:'html'%}" maxlength="100"></span><span class="s_btn_wr"><input type="submit" value="{%$lable_submit_value%}" class="s_btn" onmouseout="this.className='s_btn'" onmousedown="this.className='s_btn s_btn_h'"></span><span class="s_help">&nbsp;&nbsp;&nbsp;<a href="javascript:void(0);" onclick="return bq(f1);">结果中找</a>&nbsp;&nbsp;&nbsp;<a href="{%$www_domain%}/search/jiqiao.html" target="_blank" >{%$lable_help%}</a>&nbsp;&nbsp;&nbsp;<a href="{%$advanced_url%}
                " onclick='location.href=this.href+"?q="+encodeURIComponent(document.f.kw.value);return false;' >{%$lable_advanced%}</a></span><div class="opts"><label for="all_ch"><input type="radio" name="ct" value="99" id="all_ch" {%if $urlPara.ct == 99%}checked{%/if%}><span>所有中文网页</span></label><label for="sim_ch"><input type="radio" name="ct" value="1" id="sim_ch" {%if $urlPara.ct == 1%}checked{%/if%}><span>简体中文网页</span></label><label for="com_ch"><input type="radio" name="ct" value="2" id="com_ch" {%if $urlPara.ct == 2%}checked{%/if%}><span>繁体中文网页</span></label></div></form></div>{%/block%}{%block name="footer"%}<div style="text-align:center;background-color:#e6e6e6;height:20px;padding-top:2px;font-size:12px;"><a href="http://www.baidu.com/duty/copyright.html" class="c">&copy;{%$lable_foot_year%}</a>&nbsp;Baidu&nbsp;<a href="http://www.baidu.com/duty/index.html" class="c">免责声明</a>&nbsp;<font color=#666666>此内容系百度根据您的指令自动搜索的结果，不代表百度赞成被搜索网站的内容或立场</font></div><img src="http://c.baidu.com/c.gif?t=0&q={%$query|vui_escape:'url'%}&p=0&pn={%$pageNo%}" style="display:none;"/>{%/block%}{%block name="bottom_script"%}<script>window.onunload=function(){};window.onload=function(){document.forms[0].reset();}document.onclick = function(e) {var e = e || window.event,tar = e.target || e.srcElement,btn = window.event ? e.button : e.which,tb_mr = document.getElementById('tb_mr'),more = document.getElementById('more');while (tar) {if (tar == tb_mr) break;tar = tar.parentNode;}if (tar != tb_mr) {more.style.display = 'none';} else {if (btn < 2) {more.style.display = more.style.display == 'block' ? 'none' : 'block';}}};{%*i*%}</script>{%/block%}