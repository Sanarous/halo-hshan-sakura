<#include "module/macro.ftl">
<@layout title="${settings.tags_title!'标签列表'} - ${blog_title!}">
    <div id="page" class="site">
        <main class="site-main" id="main">
            <div class="site-content">
                <header class="bg-cover page-header">
                    <#if settings.tag_patternimg?? && settings.tag_patternimg!=''>
                        <div class="cover-bg">
                            <img src="${settings.tag_patternimg!}" alt="${settings.tags_title!'标签列表'}">
                        </div>
                    <#else>
                        <div class="default-cover-bg">
                        </div>
                    </#if>
                    <div class="cover-content">
                        <div class="inner">
                            <div class="post-count"></div>
                            <h1 class="page-title" style="font-size: 46px;">${settings.tags_title!'标签'}</h1>
                        </div>
                    </div>
                </header>

                <div id="post-list" class="post-list inner" style="padding-bottom: 50px;">
                  
                   <div class="tagcloud tag-page" style="margin-top:50px">
                      <p class='div-border blue left right' style="font-size:18px">文章分类</p>
                        <@categoryTag method="list">
                            <#if categories?? && categories?size gt 0>
                              <div class="mycategory-content">
                                 <span class="flex-category">
                                    <#list categories as category>
                                        <a href="${category.fullPath!}">
                                            <div class="moleskine-wrapper">
    											<div class="moleskine-notebook">
                                                   <#switch category_index>
                                                      <#case 1>
                                                          <div class="notebook-cover blue">
                                                              <div class="notebook-skin">${category.name}</div>
      												      </div>
                                                          <div class="notebook-page ruled"></div>
                                                      <#break>
                                                      <#case 2>
                                                          <div class="notebook-cover green">
                                                              <div class="notebook-skin">${category.name}</div>
      												      </div>
                                                          <div class="notebook-page squared"></div>
                                                      <#break>
                                                      <#case 3>
                                                          <div class="notebook-cover yellow">
                                                              <div class="notebook-skin">${category.name}</div>
      												      </div>
                                                          <div class="notebook-page dotted"></div>
                                                      <#break>
                                                      <#default>
                                                         <div class="notebook-cover">
                                                              <div class="notebook-skin">${category.name}</div>
      												     </div>
                                                         <div class="notebook-page"></div>
                                                   </#switch> 
                                                 </div>
  											</div>
                                        </a>
                                    </#list>
                                  </span>
                              </div>
                            </#if>
                        </@categoryTag>
                    </div>
                  
                  
                    <div class="tagcloud tag-page">
                      <p class='div-border green left right' style="font-size:18px">
                         <@tagTag method="count">
                             当前共有 ${count!0} 个文章标签
                         </@tagTag>
                      </p>
                        <@tagTag method="list">
                            <#if tags?? && tags?size gt 0>
                               <div class="tags-item" style="padding: 20px 0;">
                                <#list tags as tag>
                                    <a class="tag-item" data-ajax  href="${tag.fullPath!}">
                                         <span class="name">🔖&nbsp;${tag.name}</span>
                                         <span>&nbsp;${tag.postCount}</span>
                                    </a>
                                </#list>
                                </div>
                            </#if>
                        </@tagTag>
                    </div>
                </div>
            </div>
                <script type="text/javascript" src="https://cdn.jsdelivr.net/gh/xzzai/static@master/js/jqcloud-1.0.4.min.js"></script>
            <script>
                var tags = $(".tags-item").children(".tag-item");
                for (var i = tags.length - 1; i >= 0; i--) {
                   var r = Math.floor(Math.random() * 75 + 130);
                   var g = Math.floor(Math.random() * 75 + 100);
                   var b = Math.floor(Math.random() * 75 + 80);
                  tags[i].style.background = "rgb(" + r + "," + g + "," + b + ")";
                }
              
              
                  var randnum = function (n) {
                         return Math.round(Math.random() * n)
                  }, hexify = function (n) {
                         return ("0" + parseInt(n).toString(16)).slice(-2)
                  }, randex = function () {
                        return "#" + hexify(randnum(255)) + hexify(randnum(255)) + hexify(randnum(255))
                  }, blender = function () {
                       return Math.round(Math.random()) ? "radial-gradient(circle at " + randnum(100) + "% " + randnum(100) + "%, " + randex() + ", " + randex() + ")" : "linear-gradient(" + randnum(360) + "deg, " + randex() + ", " + randex() + ")"
                  };
                  $(".flex-book-item").each(function () {
                       var n = blender();
                       $(this).css("background", n);
                   });
            </script>
        </main>
    </div>
</@layout>
