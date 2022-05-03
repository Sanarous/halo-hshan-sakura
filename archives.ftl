<#include "module/macro.ftl">
<@layout title="${settings.achieve_title!'归档'} - ${blog_title!}">
    <div id="page" class="site">
        <main class="site-main" id="main">
            <div class="site-content">
                <header class="bg-cover page-header">
                    <#if settings.archives_patternimg?? && settings.archives_patternimg!=''>
                        <div class="cover-bg">
                            <img src="${settings.archives_patternimg!}" alt="${settings.achieve_title!'归档'}">
                        </div>
                    <#else>
                        <div class="default-cover-bg">
                        </div>
                    </#if>
                    <div class="cover-content">
                        <div class="inner">
                            <div class="post-count"></div>
                            <h1 class="page-title" style="font-size: 46px;">${settings.achieve_title!'归档'}</h1>
                        </div>
                    </div>
                </header>
                <@postTag method="archiveYear">
                    <div id="post-list" class="post-list inner" style="padding-top: 30px;margin-bottom: 30px;">
                        <#list archives as archive>
                            <article class="post">
                                <h2>${archive.year?c}年</h2>
                                <#list archive.posts?sort_by("createTime")?reverse as post>
                                    <div class="timenode">
                                        <a class="meta" href="${post.fullPath!}" data-ajax>
                                            <time class="my-post-time">${post.createTime?string('MM-dd')}</time>
                                            <span>${post.title!}</span>
                                        </a>
						            </div>
                                </#list>
                            </article>
                        </#list>
                    </div>
                </@postTag>
            </div>
        </main>
    </div>
</@layout>
