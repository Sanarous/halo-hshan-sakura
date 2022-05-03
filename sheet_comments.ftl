<#include "module/macro.ftl">
<@layout title="${sheet.title!} - ${blog_title!} ">
    <div id="page" class="site">
        <main class="site-main" id="main">
            <div class="site-content">
                <header class="bg-cover page-header">
                    <#if sheet.thumbnail?? && sheet.thumbnail!=''>
                        <div class="cover-bg">
                            <img src="${sheet.thumbnail!}" alt="${sheet.title!}">
                        </div>
                    <#else>
                        <div class="default-cover-bg">
                        </div>
                    </#if>
                    <div class="cover-content">
                        <div class="inner">
                            <div class="post-count"></div>
                            <h1 class="page-title" style="font-size: 46px;">${sheet.title!}</h1>
                        </div>
                    </div>
                </header>
                <div class="sheet-content">
                    <div class="poem-wrap">
                        <div class="poem-border poem-left">
                        </div>
                        <div class="poem-border poem-right">
                        </div>
                        <h1>一言</h1>
                        <p id="poem"></p>
                        <p id="info"></p>
                    </div>

                    <p style="text-align:center">这里是一个简单的留言板，回复时请尽量带上邮箱，头像注册请去 <a href="https://cn.gravatar.com/" target="_blank"> Gravatar </a>完成。</p>
                    <p style="text-align:center">1. 博客凌乱，希望标题达意，内容详略，愿君可于字句间有所收获。</p>
                    <p style="text-align:center">2. 本网站的各内容页都有版权标识，若能得欣赏，望转载标注来源。</p>
                    <p style="text-align:center">3. 反对抄袭与简单的复制粘贴，若发现本站有此现象，可严厉批评。</p>
                    <p style="text-align:center">4. 若见内容错漏、超链失效，愿寄言告，若愿分享君所得，将感泣。</p>
                    <#include "module/comment.ftl">
                    <#if is_post??>
                        <@comment post,"post" />
                    <#elseif is_sheet??>
                        <@comment sheet,"sheet" />
                    </#if>
                    <script>
                    $.get("https://v1.hitokoto.cn?c=i&c=j",function(data,status){
                        if (status == 'success'){
                            $('#poem').html(data.hitokoto);
                        if(data.from_who != null){
                            $('#info').html(data.from_who + " · " + "《 " + data.from + " 》");	
                        }else{
                            $('#info').html(data.from);
                        }

                        }else{
                            $('#poem').html("获取出错啦");
                        }
                    });
                    </script>
                </div>
        </main>
    </div>
</@layout>