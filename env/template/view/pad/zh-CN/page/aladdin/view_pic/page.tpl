{%extends 'c_base.tpl'%} {%block name='data_modifier'%}{%$extData.feData.hasBorder = true%}{%/block%}{%block name='content'%}<style data-merge>{%fe_fn_c_css css='img'%}.op_view_pic_wrap{display:block;border:1px solid white;cursor:pointer;padding:3px 3px 4px;text-decoration:none}.op_view_pic_icon{position:absolute;left:4px;top:4px}.op_active{border:1px solid #ff7800}.op_view_pic_box img{width:113px;height:113px}.op_view_pic_img{display:block;height:113px;overflow:hidden;margin:auto}.op_view_pic_title{color:#00c;word-break:break-all;word-wrap:break-word;text-decoration:underline;display:block}.op_view_pic_money{line-height:19px;height:19px;overflow:hidden;font-s{%*i*%}ize:.9em}.op_view_pic_currency{font-family:arial;font-weight:bold;color:#999}.op_view_pic_money strong{color:#ff7800}.op_view_pic_price{color:#999;margin-left:1px;height:19px;overflow:hidden;white-space:nowrap;font-weight:normal}.op_view_relative{position:relative}</style><ul class="c-row"> {%$loop_maxcount=count($tplData.reslist)%} {%if $loop_maxcount > 2%} {%for $op_loop_count=0 to $loop_maxcount-1%} <li class="c-span6{%if $op_loop_count == 3%} c-span-last{%/if%} op_view_relative"> {%if $tplData.reslist[$op_loop_count]['icon']%}<span class="op_view_pic_icon c-text c-text-danger">{%$tplData.reslist[$op_loop_count]['icon']|escape:'html'%}</span>{%/if%} <a class="op_view_pic_wrap" href="{%$tplData.reslist[$op_loop_count]['link']%}" title="{%$tplData.reslist[$op_loop_count]['title']%}" target="_blank"> <img src="{%$tplData.reslist[$op_loop_count]['src']|escape:'html'%}" class="op_view_pic_img"/> <span class="op_view_pic_title c-gap-top">{%$tplData.reslist[$op_loop_count]['title']|limitlen:30|highlight:0%}</span> {%if $tplData.reslist[$op_loop_count]['money']%} <p class="op_view_pic_money"> <span class="op_view_pic_currency">¥</span> <strong>{%$tplData.reslist[$op_loop_count]['money']%}</strong> {%if $tplData.reslist[$op_loop_count]['price']%} {%if strlen($tplData.reslist[$op_loop_count]['money']) le 5%} <span class="op_view_pic_price"> <s>原价{%$tplData.reslist[$op_loop_count]['price']%}</s> </span> {%/if%} {%/if%} </p> {%/if%} </a> </li> {%/for%} {%/if%} </ul>{%/block%}