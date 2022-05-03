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
                        <div class="post-meta">
                            <span class="post-meta-wrap">
                                <span class="post-author">本页面被浏览了 ${post.visits} 次</span>
                            </span>
                        </div>
                    </div>
                </header>
                <div class="sheet-content">
                    ${sheet.formatContent!}

                    <#include "module/comment.ftl">
                    <#if is_post??>
                        <@comment post,"post" />
                    <#elseif is_sheet??>
                        <@comment sheet,"sheet" />
                    </#if>
                </div>
            </div>
        </main>
    </div>
</@layout>
