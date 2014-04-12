{%extends 'c_base.tpl'%}

{%block name='data_modifier'%}
    {%$escaped_card_name = 'ecl-edu-course-mini'%}

    {%$is_new = array_keys($tplData.edu) !== range(0, count($tplData.edu) - 1)%}

    {%if $is_new%}

        {%$course_list = $tplData.edu.class_list%}
        {%$item_default = $tplData.edu.default%}

        {%if count($course_list) > 0%}
            {%$escaped_type='list-mode'%}
        {%else%}
            {%$escaped_type='card-mode'%}
        {%/if%}

    {%else%}
        {%$course_list = $tplData.edu%}
        {%$item_default = $tplData.edu[0]%}

        {%if $tplData.mini_card_type == 2%}
            {%$escaped_type='card-mode'%}
        {%else%}
            {%$escaped_type='list-mode'%}
        {%/if%}
    {%/if%}



{%/block%}

{%block name='title'%}
    <h4 class="t {%$escaped_card_name%}-title c-gap-bottom-small">
        <a href="{%$tplData.queryurl%}" target="_blank">
            {%$tplData.title%}
        </a>
    </h4>
{%/block%}

{%block name='foot'%}
{%strip%}
    <div class="c-gap-top {%$escaped_card_name%}-all-course">
        <a href="{%$tplData.moreurl%}" target="_blank">
            {%$tplData.more_title%}
        </a>
    </div>
    <p class="c-showurl c-gap-top-small">
        jiaoyu.baidu.com
        <a href="http://baozhang.baidu.com/guarantee/"
            class="c-icon c-icon-bao c-gap-icon-left-small" target="_blank"></a>
    </p>
{%/strip%}
{%/block%}

{%block name='content'%}

<style>
{%fe_fn_c_css css="btn"%}
.ecl-edu-course-mini-title{font-size:1.17em;margin-top:0}.ecl-edu-course-mini-container{line-height:1.7692307692;position:relative}.ecl-edu-course-mini-container h4,.ecl-edu-course-mini-container h5{margin:0;font-weight:normal}.ecl-edu-course-mini-no-data{padding:2.5em 1em;text-align:center}.zx-tip-layer{display:block;position:absolute}.ecl-edu-course-mini-image-tag{display:block;line-height:0;position:relative;_zoom:1}.ecl-edu-course-mini-image-tag img{width:138px;height:104px}.ecl-edu-course-mini-image-tag-wrapper{position:absolute;left:0;bottom:0;width:138px;height:20px;_bottom:-1px}
.ecl-edu-course-mini-image-tag-mask{background-color:#000;width:100%;height:100%;opacity:.6;filter:alpha(opacity=60)}.ecl-edu-course-mini-image-tag-text{color:#FFF;font-weight:normal;position:absolute;left:0;top:0;width:138px;height:20px;line-height:20px;text-align:center}.ecl-edu-course-mini-list-mode{padding-bottom:.3846153846153846em}.ecl-edu-course-mini-card-mode .c-span6{line-height:0}.ecl-edu-course-mini-data-list{*zoom:1}.ecl-edu-course-mini-data-list:before,.ecl-edu-course-mini-data-list:after{display:table;line-height:0;content:""}
.ecl-edu-course-mini-data-list:after{clear:both}.ecl-edu-course-mini-data-item{position:relative}.ecl-edu-course-mini-image-tag{text-decoration:none!important}.ecl-edu-course-mini-image-tag-mask,.ecl-edu-course-mini-image-tag-text{cursor:pointer}.ecl-edu-course-mini-course-title,.ecl-edu-course-mini-course-count{display:block}.ecl-edu-course-mini-course-title{height:3.5em;text-decoration:none}.ecl-edu-course-mini-course-title em{text-decoration:none}.ecl-edu-course-mini-course-title:hover,.ecl-edu-course-mini-course-title:hover em{text-decoration:underline}
.ecl-edu-course-mini-course-count{font-weight:normal;position:absolute;right:.3em;bottom:0}.ecl-edu-course-mini-all-course{line-height:1em}.ecl-edu-course-mini-card-mode{position:relative}.ecl-edu-course-mini-card-mode .c-img{width:138px;height:138px}.ecl-edu-course-mini-card-mode .c-btn{padding:0 .6923076923076923em;position:absolute;right:9px;bottom:9px}.ecl-edu-course-mini-rec-list{border-top:1px solid #e3e3e3;line-height:1em;padding-top:.7692307692307692em;padding-bottom:.3846153846153846em}.ecl-edu-course-mini-rec-list label{color:#666}
.ecl-edu-course-mini-rec-list a,.ecl-edu-course-mini-rec-list span{margin-right:1em}
</style>

{%strip%}

<div class="{%$escaped_card_name%}-container c-border {%$escaped_card_name%}-{%$escaped_type%}" data-click="{'fm': 'alop'}">

{%if $escaped_type === 'list-mode'%}

    <ul class="{%$escaped_card_name%}-data-list" >
    {%foreach $course_list as $item%}

        {%if $item@last%}
            {%$escaped_class = ' c-span-last'%}
        {%else%}
            {%$escaped_class = ''%}
        {%/if%}

        {%if $is_new%}

        <li class="{%$escaped_card_name%}-data-item c-span6{%$escaped_class%}">

            <a href="{%$item.img_url%}"
                class="{%$escaped_card_name%}-image-tag"
                target="_blank">
                <img src="{%$item.img%}" />

                <div class="{%$escaped_card_name%}-image-tag-wrapper">
                    <div class="{%$escaped_card_name%}-image-tag-mask">
                    </div>
                    <div class="{%$escaped_card_name%}-image-tag-text">
                        {%$item.tag%}
                    </div>
                </div>
            </a>

            <a hidefocus="true"
                class="{%$escaped_card_name%}-course-title c-gap-top-small"
                href="{%$item.name_url%}"
                target="_blank">
                {%$item.name_cut%}
            </a>

            <strong class="{%$escaped_card_name%}-course-count">
                共{%$item.count%}个
            </strong>
        </li>

        {%else%}

        <li class="{%$escaped_card_name%}-data-item c-span6{%$escaped_class%}">

            <a href="{%$item.course_class_img_url%}"
                class="{%$escaped_card_name%}-image-tag"
                target="_blank">
                <img src="{%$item.course_class_img%}" />

                <div class="{%$escaped_card_name%}-image-tag-wrapper">
                    <div class="{%$escaped_card_name%}-image-tag-mask">
                    </div>
                    <div class="{%$escaped_card_name%}-image-tag-text">
                        {%$item.course_class_tag%}
                    </div>
                </div>
            </a>

            <a hidefocus="true"
                class="{%$escaped_card_name%}-course-title c-gap-top-small"
                href="{%$item.course_class_title_url%}"
                target="_blank">
                {%$item.course_class_title_cut%}
            </a>

            <strong class="{%$escaped_card_name%}-course-count">
                共{%$item.course_class_count%}个
            </strong>
        </li>

        {%/if%}

    {%/foreach%}
    </ul>

    {%if count($tplData.edu.rec_data) > 0%}
    <div class="{%$escaped_card_name%}-rec-list c-gap-top-small">
        <label>{%$tplData.edu.rec_title%}：</label>

        {%foreach $tplData.edu.rec_data as $item%}

        {%if $item.name_url%}
        <a href="{%$item.name_url|escape:'html'%}" target="_blank">
        {%else%}
        <span>
        {%/if%}

            {%$item.name%}

        {%if $item.name_url%}
        </a>
        {%else%}
        </span>
        {%/if%}

        {%/foreach%}

    </div>
    {%/if%}

{%else%}

    <div class="c-row">

        {%if $is_new%}

        <a class="c-span6" href="{%$item_default.img_url%}" target="_blank">
            <img class="c-img c-img6" src="{%$item_default.img%}" />
        </a>

        <p class="c-span14">
            {%foreach $item_default.text_list as $text%}
                {%$text|escape:'html'%}<br />
            {%/foreach%}
        </p>

        <a class="c-btn c-btn-primary c-btn-mini"
            href="{%$item_default.detail_url%}"
            target="_blank">
            查看详情
        </a>

        {%else%}

        <a class="c-span6" href="{%$item_default.course_class_img_url%}" target="_blank">
            <img class="c-img c-img6" src="{%$item_default.course_class_img%}" />
        </a>

        <p class="c-span14">
            {%foreach $item_default.course_class_desc as $text%}
                {%$text|escape:'html'%}<br />
            {%/foreach%}
        </p>

        <a class="c-btn c-btn-primary c-btn-mini"
            href="{%$item_default.course_class_detail_url%}"
            target="_blank">
            查看详情
        </a>

        {%/if%}
    </div>

{%/if%}

</div>
{%/strip%}

<script data-compress="off">
A.setup('EDU_DATA', {
    card: '{%$escaped_card_name%}',
    session_id: '{%$extData.sessionID%}',
    query: '{%$extData.originQuery%}',
    city_id: '{%$tplData.curcityid%}',
    city: '{%$tplData.curcity%}',
    ipcity_id: '{%$tplData.ipcityid%}',
    ipcity: '{%$tplData.ipcity%}',
    sid: '{%$extData.sid%}',
    subqid: '{%$extData.subqid%}',
    edusid: '{%$extData.edusid%}',
    srcid: '{%$extData.srcid%}',
    filters_json: '{%$tplData.filtersjson%}',
    total: '{%$tplData.totalpage%}',
    page: '{%$tplData.page%}',
    sign_time: '{%$tplData.signtime%}',
    server_time: '{%$tplData.servertime%}'
});
</script>


<script>
A.setup(function() {

    'use strict';

    var card = this;

    // 卡片通用逻辑
    var cardData=card.data.EDU_DATA,cardElement=card.container,CLASS_CARD=cardData.card,CLASS_ACTIVE=CLASS_CARD+"-active",CLASS_OPENED=CLASS_CARD+"-opened",CLASS_PAGER=CLASS_CARD+"-ui-pager",disposeList=[];card.dispose=function(){$.each(disposeList,function(a,d){d.dispose()}),card=cardData=cardElement=disposeList=null};
    var lib=function(){var n=CLASS_CARD+"-",e={contains:function(n,e){return n===e?!0:$.contains(n,e)},post:function(n,e,r){for(var t in e)(""===e[t]||null==e[t])&&delete e[t];$.post(n,e,r,"json")},get:function(n,e,r){for(var t in e)(""===e[t]||null==e[t])&&delete e[t];$.get(n,e,r,"json")},array2Object:function(n,e,r){var t={};return $.each(n,function(n,o){$.isPlainObject(o)?e&&(t[o[e]]=r?o[r]:o):t[o]=1}),t},renderTpl:function(n,e){return e=e||{},n.replace(/\$\{(.+?)\}/g,function(n,r){return null==e[r]?"":e[r]})
},backToTop:function(){window.scrollTo(0,cardElement.offsetTop)},json2Query:function(n){var e=[];if(n)for(var r in n)e.push(r+"="+n[r]);return e.join("&")},query2Json:function(n){for(var e=n.split("&"),r={},t=0;e.length>t;t++){var o=e[t];if(o){var a=o.indexOf("="),i=0>a?decodeURIComponent(o):decodeURIComponent(o.slice(0,a)),c=0>a?!0:decodeURIComponent(o.slice(a+1));r.hasOwnProperty(i)?c!==!0&&(r[i]=[].concat(r[i],c)):r[i]=c}}return r},updateURL:function(n,r){var t=n.indexOf("?");if(t>=0){var o=n.substr(0,t),a=n.substr(t+1),i=e.query2Json(a);
$.extend(i,r),a=e.json2Query(i),n=o+"?"+a}return n},$:function(n){return $(n,cardElement)},query:function(n,r){return r||(n=e.getClass(n)),e.$("."+n)},getClass:function(e){return n+e},dispose:function(){n=null}};return disposeList.push(e),e}();
    var data=function(){var n={},r={},t={},e={init:function(n){for(var r in cardData)e.set(r,cardData[r]);for(r in n)e.set(r,n[r])},set:function(t,o){if("string"==typeof t)void 0!==n[t]&&(r[t]=n[t]),n[t]=void 0!==o?o:null;else if($.isPlainObject(t))for(var i in t)e.set(i,t[i])},get:function(r){return n[r]},ischange:function(t){var e=n[t],o=r[t];return void 0!==o&&e!==o},onchange:function(n,r){var e=t[n];$.isArray(e)||(e=[],t[n]=e),e.push(r)},fire:function(){for(var o in n)if(e.ischange(o)){var i=t[o];if(i)for(var a=0,c=i.length;c>a;a++)"function"==typeof i[a]&&i[a]();
r[o]=void 0}},dispose:function(){n=r=t=null}};return disposeList.push(e),e}();
    var anti=function(){var n=function(n){function e(e){var t=window.event||e;for(C=t.target||t.srcElement;C&&"A"!=C.tagName;)if(C=C.parentNode,C===n)return!1;C&&(h=(new Date).getTime(),s=9999,f=t.clientX,d=t.clientY,p=m?h-m:0,r()&&o())}function t(){A=(new Date).getTime(),s=A-h,r()&&o()}function i(n){var e=window.event||n;E+=1,v||(v=e.clientX),l||(l=e.clientY),m=(new Date).getTime()}function r(){if(c=0,C){if(g=/\?url\=([^\.]+)\./.exec(C.href)){for(var n=0;E*L%99+9>n;++n)c+=g[1].charCodeAt(s*n%g[1].length);return!0
}return!1}}function o(){var n="&ck="+[c,E,s,f,d,v,l,p].join(".");if(C.href){var e=C.href;-1==e.indexOf("&ck=")?C.href+=n:C.href=e.replace(/&ck=[\w.]*/,n)}}function a(e,t){for(var i,r=0;i=e[r];r++)window.attachEvent?n.attachEvent("on"+i,t[r]):window.addEventListener?n.addEventListener(i,t[r],!1):n["on"+i]=t[r],S[i]=t[r]}function u(e){for(var t,i=0;t=e[i];i++)window.detachEvent?n.detachEvent("on"+t,S[t]):window.addEventListener?n.removeEventListener(t,S[t],!1):n["on"+t]=function(){}}var c,s,f,d,v,l,p,g,h,m,A,C,w="EC_ZHIXIN",L=0,E=0;
s=f=d=v=l=p=g=h=m=A=C=0;var S={};return{getAntiTag:function(){return w},setTimesign:function(n){L=n},bind:function(){a(["mouseover","mousedown","mouseup"],[i,e,t])},unbind:function(){u(["mouseover","mousedown","mouseup"]),n=null}}},e=[],t={init:function(t,i){t.jquery&&(t=t[0]);var r=n(t);r.bind(),r.setTimesign(i),e.push(r)},addAnti:function(t,i){t.jquery&&(t=t[0]);var r=n(t);r.bind(),r.setTimesign(data.get("sign_time")),e.push(r),i&&data.onchange("sign_time",function(){r.setTimesign(data.get("sign_time"))})},dispose:function(){for(var t=0,i=e.length;i>t;t++)e[t].unbind();
n=e=null}};return disposeList.push(t),t}();
    var log={renderComplete:function(n){if(n){var e=new Image;e.src="http://vs-static.baidu.com/edu/w.gif?Logtype=edushow&subqid="+n.subqid+"&qid="+n.session_id+"&srcid="+n.srcid+"&sid="+n.sid+"&edusid="+n.edusid}}};

    var initCard = function () {

        bds.ready(function () {
            require.config({paths:{zxui:"http://s1.bdstatic.com/r/www/cache/biz/ecom/zxui/20131210",pszx:"http://s1.bdstatic.com/r/www/cache/biz/ecom/ui/20140312/pszx"}});
            anti.init(cardElement, cardData.sign_time);
            log.renderComplete(cardData);
        });
    };

    card.ready(initCard);

});
</script>

{%/block%}