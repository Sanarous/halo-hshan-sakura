<#include "module/macro.ftl">
<@layout title="${settings.links_title!'友链'} - ${blog_title!}">
    <div id="page" class="site ">
        <main class="site-main"  id="main">
            <div class="site-content">
                <header class="bg-cover page-header">
                    <#if settings.links_patternimg?? && settings.links_patternimg!=''>
                        <div class="cover-bg">
                            <img src="${settings.links_patternimg!}" alt="${settings.links_title!'友链'}">
                        </div>
                    <#else>
                        <div class="default-cover-bg">
                        </div>
                    </#if>
                    <div class="cover-content">
                        <div class="inner">
                            <div class="post-count"></div>
                            <h1 class="page-title" style="font-size: 46px;">${settings.links_title!'友链'}</h1>
                        </div>
                    </div>
                </header>
              <div class="sheet-content" style="padding: 1px 40px;">
                <div class="links-box">
                    <div class="links-items">
                        <@linkTag method="listTeamsByRandom">
                            <#list teams as item> 
                               <#if item.team == '大佬'>
                                    <div class="note warning no-icon" style="width:100%;font-size:19px;font-family: cursive,Noto Serif SC,sans-serif;margin: 30px 0 10px 0;">🌸 大佬 —— 没有不劳而获的工作，更没有坐享其成的收获</div>
                                <ul class="link-items fontSmooth">
                                  <#list item.links?sort_by('priority')?reverse as link>
                                    <li class="link-item link-item-dalao">
                                        <a class="link-item-inner effect-apollo" href="${link.url}" title="${link.description}" target="_blank">
                                          <img src="https://image.bestzuo.cn/images/20200621224833.gif!getwebp" data-echo="${link.logo}"><span class="sitename">${link.name}</span>
                                           <div class="linkdes">${link.description}</div>
                                        </a>
                                    </li>
                                  </#list>
                                </ul>
                              </#if>
                           </#list>
                        </@linkTag>
                      
                        <@linkTag method="listTeamsByRandom">
                            <#list teams as item> 
                               <#if item.team == '朋友'>
                                <div class="note primary no-icon" style="width:100%;font-size:19px;font-family: cursive,Noto Serif SC,sans-serif;margin: 30px 0 10px 0;">🌤️ 朋友 —— 你的春日好运正在派件，请保持心情舒畅</div>
                                <ul class="link-items fontSmooth">
                                  <#list item.links?sort_by('priority')?reverse as link>
                                    <li class="link-item link-item-friend">
                                        <a class="link-item-inner effect-apollo" href="${link.url}" title="${link.description}" target="_blank">
                                          <img src="https://image.bestzuo.cn/images/20200621224833.gif!getwebp" data-echo="${link.logo}"><span class="sitename">${link.name}</span>
                                           <div class="linkdes">
                                                ${link.description}
                                           </div>
                                        </a>
                                     </li>
                                   </#list>
                                </ul>
                               </#if>
                            </#list>
                        </@linkTag>
                      
                        <@linkTag method="listTeamsByRandom">
                            <#list teams as item> 
                               <#if item.team == '邻居'>
                                <div class="note info no-icon" style="width:100%;font-size:19px;font-family: cursive,Noto Serif SC,sans-serif;margin: 30px 0 10px 0;">🍀 邻居 —— 相逢一醉是前缘，风雨散、飘然何处</div>
                                <ul class="link-items fontSmooth">
                                  <#list item.links?sort_by('priority')?reverse as link>
                                    <li class="link-item link-item-neighbor">
                                        <a class="link-item-inner effect-apollo" href="${link.url}" title="${link.description}" target="_blank">
                                          <img src="https://image.bestzuo.cn/images/20200621224833.gif!getwebp" data-echo="${link.logo}"><span class="sitename">${link.name}</span>
                                           <div class="linkdes">
                                                ${link.description}
                                           </div>
                                        </a>
                                     </li>
                                   </#list>
                                </ul>
                               </#if>
                            </#list>
                        </@linkTag>
                      
                       <@linkTag method="listTeamsByRandom">
                            <#list teams as item> 
                               <#if item.team == '无法访问'>
                                <div class="note danger no-icon" style="width:100%;font-size:19px;font-family: cursive,Noto Serif SC,sans-serif;margin: 30px 0 10px 0;">📜 本月阵亡名单（下次清查时仍不能正常访问会被取消友链哦）</div>
                                <ul class="link-items fontSmooth">
                                  <#list item.links?sort_by('priority')?reverse as link>
                                    <li class="link-item link-item-no-access">
                                        <a class="link-item-inner effect-apollo" href="${link.url}" title="${link.description}" target="_blank">
                                          <img src="https://image.bestzuo.cn/images/20200621224833.gif!getwebp" data-echo="${link.logo}"><span class="sitename">${link.name}</span>
                                           <div class="linkdes">
                                                ${link.description}
                                           </div>
                                        </a>
                                     </li>
                                   </#list>
                                </ul>
                               </#if>
                            </#list>
                        </@linkTag>
                    </div>
                    <hr/>
                    <script src="https://cdn.jsdelivr.net/gh/Sanarous/files/js/tabs.min.js"></script>
                    <div align="center"><img src="https://image.bestzuo.cn/images/20200701175738.gif!getwebp" width="300"></div>
                    <div class="links-announce">
                       <div class="note warning" style="font-size:18px">
                          <@linkTag method="count">
                              当前已经添加了 ${count!0} 位邻居的友链，由于友链较多，交换友链将审核严格，请见谅🤝
                          </@linkTag>
                       </div>

                       <div class="tab linkTabs">
		                      <ul class="tab_menu">
				                    <li class="current">🍭 友链申请要求</li>
				                    <li>🔔 友链申请须知</li>
				                    <li>🎯 申请方式</li>
			                    </ul>
			                    <div class="tab_box">
				                    <div style="font-size: 16px;">
                              <div class="checkbox checked">
                                <input type="checkbox" checked />
                                  <p>请先添加本站为友链后再申请友链，并通过留言或邮件告知</p>
                              </div>
                              <div class="checkbox green checked">
                                <input type="checkbox" checked />
                                  <p>不和剽窃、侵权、无诚信的网站交换，优先和具有<span style="color:#0066CC">原创作品的全站 HTTPS 站点</span>交换</p>
                              </div>
                              <div class="checkbox green checked">
                                <input type="checkbox" checked />
                                  <p>原则上要求您的<span style="color:orange">博客主页</span>被百度或者 Google 等<span style="color:#9929ff">搜索引擎收录</span></p>
                              </div>
                              <div class="checkbox yellow checked">
                                <input type="checkbox" checked />
                                  <p>由于访问安全性问题，请务必<span style="color:#FF6666">提供 HTTPS 链接的头像地址</span>（或留言时备注暂无以便本站主动保存）</span></p>
                              </div>
                              <div class="checkbox times red checked">
                                  <input type="checkbox" checked />
                                    <p>不接受视频站、资源站等非博客类站点交换，原则上只与<span style="color:orangered">技术/日志类博客</span>交换友链</p>
                              </div>
                              <div class="checkbox times red checked">
                                  <input type="checkbox" checked />
                                    <p>新站点（建站时间不超过三个月）请维护一段时间后再来申请，不接受一时起兴的博客</p>
                              </div>
				                    </div>
				                    <div class="hide" style="font-size: 16px;">
                              <div class="checkbox plus green checked">
                                  <input type="checkbox" checked />
                                      <p>申请友链后请保证能在您的站点友链处看到本站链接</p>
                              </div>
                              <div class="checkbox minus yellow checked">
                                  <input type="checkbox" checked />
                                      <p>本站会不定期查看友链，死链会被挂出并随之删除，单向解除友链后本站也将自动解除</p>
                              </div>
                              <div class="checkbox blue checked">
                                  <input type="checkbox" checked />
                                    <p>加入本站友链后不会轻易被移除，请放心添加，站点信息更新请在留言区评论告知</p>
                              </div>
                              <div class="checkbox blue checked">
                                  <input type="checkbox" checked />
                                    <p><span style="color:#10b510">每次刷新随机排序友链位置，不分先后</span></p>
                              </div>
                               <div class="checkbox blue checked">
                                  <input type="checkbox" checked />
                                    <p>加入友链后会在本站任意留言区获得<span class="links-tips-friends">小伙伴</span>徽章（以邮箱判定）一枚哦</p>
                              </div>
				                    </div>
				                    <div class="hide">
                            <p style="font-size:16px">首先将本站的友链添加到您的站点，信息如下（可随您的站点修改），然后在本站留言区按该格式留言，待博主收到邮件后第一时间给您添加友链</p>
                            <details cyan>
                                <summary>
                                  <p>我的站点信息</p>
                                </summary>
                                <div class="content">
                                  <p>昵称： Sanarous<br/>
                                  链接： https://bestzuo.cn<br/>
                                  头像： https://cdn.jsdelivr.net/gh/Sanarous/files/images/avatar.jpeg<br/>
                                  描述： Dream it possible, make it possible<br/></p>
                                </div>
                            </details>
				                    </div>
			                    </div>
		                    </div>
                        <script type="text/javascript">
                            $('.linkTabs').Tabs({event:'click'});
                        </script>        
                </div>  
            </div>
            <section class="comments-area" id="comment-area" style="max-width: var(--post-max-width);">
              <hr/>
              <h3>友链交换留言区</h3>
               <div id="tcomment"></div>
            </section>
            </div>
            <div id="tcomment"></div>
                  <script src="https://cdn.jsdelivr.net/gh/Sanarous/files@1.4.3/twikoo.all.min.js"></script>
                  <script>
                     twikoo.init({
                        envId: 'sanarous-8gm3u0cbc975bf00',
                        el: '#tcomment',
                        path: 'window.location.pathname',
                     })
            </script>
        </main>
    </div>
</@layout>