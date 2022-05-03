<div class="searchbox ins-search search-popup">
    <div id="searchbox" aria-hidden="false" aria-labelledby="searchbox" role="dialog" class="iziModal transitionIn fadeInDown">
        <div class="iziModal-header iziModal-noSubtitle" style="background: var(--base-color); padding-right: 40px;">
            <h2 class="iziModal-header-title">站内搜索</h2>
                <p class="iziModal-header-subtitle"></p>
                <div class="iziModal-header-buttons">
                    <a href="javascript:void(0)" class="iziModal-button iziModal-button-close" data-izimodal-close="" onclick="closeSearchPanel()"></a>
                </div>
        </div>
        <div class="iziModal-wrap" style="height: auto;">
            <div class="iziModal-content" style="padding: 0px;">
	            <div class="search-body">
		            <div class="col-10" action="" style="width: 100%;margin-top: -20px;">
                        <form id="searchForm" method="get" action="/search">
                            <i class="fa fa-search search-icon-i" aria-hidden="true"></i>
			                <input id="searchNameAccept" class="input searchbox-input ins-search-input" name="keyword" type="text" placeholder="请输入关键字，按下回车后搜索">
                        </form>
		            </div>
	            </div>
		        <div class="px3 pb3 pt1" style="padding:.5rem 2rem 2rem 2rem">
		        <div class="bold h3 mb1 search-tag-title" style="font-size: 20px;"><i class="fas fa-cloud"></i> 标签云</div>
                    <@tagTag method="list" top="5">
                        <#list tags as tag>
                            <a href="${tag.fullPath!}" class="search-tags">
                                <span class="ins-title">${tag.name!}</span>
                            </a>
                        </#list>
                    </@tagTag>
			    </div>
            </div>
        </div>
    </div>
</div>
<div class="search-mask"></div>
<script>
    function openSearchPanel() {
        $(".search-popup").velocity("transition.slideUpIn", { duration: 500 });
    }

    function closeSearchPanel() {
        $(".search-popup").velocity("transition.slideUpOut", { duration: 500 });
    }

    function search(){
        if($("#searchNameAccept").val() == null || $("#searchNameAccept").val() == ""){
            $(".search-popup").velocity("transition.slideUpOut", { duration: 500 });
        }else{
            $("input.searchbox-input").trigger($.Event("keydown", {keyCode: 13}));
        }
    }

    var tagsColor = ['#947600','#2160c4','#8a51c0','#00947e','#cc0f35'];
    var tagBg = ['#fffbeb','#eef3fc','#f4e9ff','#ebfffc','#feecf0'];

    $(".search-tags").each(function(){
        var index = Math.floor(Math.random()*tagBg.length);
        $(this).css({"background-color":tagBg[index],"color":tagsColor[index]});
    });
</script>
