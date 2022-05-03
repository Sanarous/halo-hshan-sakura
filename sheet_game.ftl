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
                    <div class="note info">你只有跟我一样闲，才会发现这个宝藏页面（页面待深度开发）</div>
                    <h2>前小游戏（点击游戏名称展开游戏界面）</h2>
                    <ul>
                    <li>
                        <span id="jump-btn" class="jump-btn game-btn" style="color:#d62b2b;cursor:pointer">涂鸦跳跃</span>：点击 Play 开始，键盘左右控制方向，空格重新开始下一局。

                    <iframe id="game-jump"  style="display:none" src="https://image.bestzuo.cn/game/jump.html" width="422" height="600" name="涂鸦跳跃" frameborder="0"  scrolling="no">   
                    </iframe>
                    </li>
                    <li>
                    <span id="tan-btn" class="tan-btn game-btn" style="color:#d62b2b;cursor:pointer">弹弓小游戏</span>：鼠标调整方向并射出，我也不知道怎么算结束...
                    <iframe id="game-tan"  style="display:none" src="https://image.bestzuo.cn/game/tan.html" width="800" height="600" name="弹弓小游戏" frameborder="0"  scrolling="no">   
                    </iframe>
                    </li>
                    <li>
                    <span id="che-btn" class="che-btn game-btn" style="color:#d62b2b;cursor:pointer">任天堂赛车游戏</span>：加载可能较慢，Enter 键开始，方向键控制
                    <iframe id="game-che"  style="display:none" src="https://image.bestzuo.cn/game/che.html" width="960" height="540" name="任天堂赛车" frameborder="0"  scrolling="no">   
                    </iframe>
                    </li>
                    </ul>
                    <#include "module/comment.ftl">
                    <#if is_post??>
                        <@comment post,"post" />
                    <#elseif is_sheet??>
                        <@comment sheet,"sheet" />
                    </#if>
                    <script>
                    $(".jump-btn").click(function(){
                            $("#game-jump").toggle();
                            if($("#game-che").is(":visible")){
                                $("#game-che").hidden();
                            }
                            if($("#game-tan").is(":visible")){
                                $("#game-tan").hidden();
                            }
                    })
                        $(".tan-btn").click(function(){
                            $("#game-tan").toggle();
                            if($("#game-che").is(":visible")){
                                $("#game-che").hidden();
                            }
                            if($("#game-jump").is(":visible")){
                                $("#game-jump").hidden();
                            }
                    })
                        $(".che-btn").click(function(){
                            $("#game-che").toggle();
                            if($("#game-tan").is(":visible")){
                                $("#game-tan").hidden();
                            }
                            if($("#game-jump").is(":visible")){
                                $("#game-jump").hidden();
                            }
                    })
                    </script>
                </div>
        </main>
    </div>
</@layout>