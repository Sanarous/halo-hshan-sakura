<div id="post-list" class="post-list inner">
    <div class="notice" style="margin-top:60px;margin-bottom: 30px;">
          <i class="iconfont icon-notification"></i>
          <#if settings.home_title?? && settings.home_title!=''>
              <div class="notice-content" id="hitokoto">${settings.notice}</div>
          </#if>
     </div>
    
    <!-- 置顶 -->
    <#if settings.top_feature!false>
        <div class="top-feature-row">
            <h1 class="fes-title" style="font-family: 'Ubuntu', sans-serif;font-weight: 800;"><i class="iconfont-hans icon-hot list-brands" style="font-size:18px"></i>&nbsp;${settings.feature_title}</h1>
            <div style="display:flex;justify-content: space-around;margin-bottom:50px">
                <div class="top-feature-v2">
                    <div class="the-feature square from_left_and_right">
                        <a href="${settings.feature1_link}" target="_blank">
                            <div class="img">
                                <img src="${settings.feature1_img}" width="257" height="160"/>
                            </div>
                            <div class="info">
                                <h3>${settings.feature1_title}</h3>
                                <p>${settings.feature1_text}</p>
                            </div>
                        </a>
                    </div>
                </div>
    
                <div class="top-feature-v2">
                    <div class="the-feature square from_left_and_right">
                        <a href="${settings.feature2_link}" target="_blank">
                            <div class="img">
                                <img src="${settings.feature2_img}" width="257" height="160"/>
                            </div>
                            <div class="info">
                                <h3>${settings.feature2_title}</h3>
                                <p>${settings.feature2_text}</p>
                            </div>
                        </a>
                    </div>
                </div>
    
                <div class="top-feature-v2">
                    <div class="the-feature square from_left_and_right">
                        <a href="${settings.feature3_link}" target="_blank">
                        <div class="img">
                            <img src="${settings.feature3_img}" width="257" height="160"/>
                        </div>
                            <div class="info">
                                <h3>${settings.feature3_title}</h3>
                                <p>${settings.feature3_text}</p>
                            </div>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </#if>
    
    <!-- 文章 -->
    <h1 class="fes-title" style="font-family: 'Ubuntu', sans-serif;font-weight: 800;"><i class="icon-font icon-sakura rotating" style="color: #efa3b0;display: inline-block;font-size:18px"></i>&nbsp;${settings.index_post_toc}</h1>
    <#if posts?? && posts.getTotalElements() gt 0>
        <#list posts.content as post>
            <article class="post-item postItem post-item-simple card-item-vel">
               <div class="post-thumb">
                   <a href="${post.fullPath!}" data-ajax>
                       <#if post.thumbnail?? && post.thumbnail!=''>
                         <img src="https://cdn.jsdelivr.net/gh/LIlGG/cdn@1.0.1/img/svg/loader/orange.progress-bar-stripe-loader.svg" data-echo="${post.thumbnail!}" alt="" width="100%" height="300px">
                       <#else>
                          <img src="https://cdn.jsdelivr.net/gh/hshanx/static@v1.0.2/default-bg.jpeg">
                       </#if>
                   </a>
               </div>
               <div class="post-content-wrap">
                   <div class="post-content">
                       <div class="post-date">
                           <svg id="icon-shijian" title="发布时间" viewBox="0 0 1024 1024" width="14" height="14" style="vertical-align: -2px;"><path d="M512 512m-512 0a512 512 0 1 0 1024 0 512 512 0 1 0-1024 0Z" fill="#409EFF"></path><path d="M654.222222 256c-17.066667 0-28.444444 11.377778-28.444444 28.444444v56.888889c0 17.066667 11.377778 28.444444 28.444444 28.444445s28.444444-11.377778 28.444445-28.444445v-56.888889c0-17.066667-11.377778-28.444444-28.444445-28.444444zM369.777778 256c-17.066667 0-28.444444 11.377778-28.444445 28.444444v56.888889c0 17.066667 11.377778 28.444444 28.444445 28.444445s28.444444-11.377778 28.444444-28.444445v-56.888889c0-17.066667-11.377778-28.444444-28.444444-28.444444z" fill="#FFFFFF"></path><path d="M725.333333 312.888889H711.111111v28.444444c0 31.288889-25.6 56.888889-56.888889 56.888889s-56.888889-25.6-56.888889-56.888889v-28.444444h-170.666666v28.444444c0 31.288889-25.6 56.888889-56.888889 56.888889s-56.888889-25.6-56.888889-56.888889v-28.444444h-14.222222c-22.755556 0-42.666667 19.911111-42.666667 42.666667v341.333333c0 22.755556 19.911111 42.666667 42.666667 42.666667h426.666666c22.755556 0 42.666667-19.911111 42.666667-42.666667v-341.333333c0-22.755556-19.911111-42.666667-42.666667-42.666667zM426.666667 654.222222h-56.888889c-17.066667 0-28.444444-11.377778-28.444445-28.444444s11.377778-28.444444 28.444445-28.444445h56.888889c17.066667 0 28.444444 11.377778 28.444444 28.444445s-11.377778 28.444444-28.444444 28.444444z m227.555555 0h-56.888889c-17.066667 0-28.444444-11.377778-28.444444-28.444444s11.377778-28.444444 28.444444-28.444445h56.888889c17.066667 0 28.444444 11.377778 28.444445 28.444445s-11.377778 28.444444-28.444445 28.444444z m0-113.777778h-56.888889c-17.066667 0-28.444444-11.377778-28.444444-28.444444s11.377778-28.444444 28.444444-28.444444h56.888889c17.066667 0 28.444444 11.377778 28.444445 28.444444s-11.377778 28.444444-28.444445 28.444444z" fill="#FFFFFF"></path></svg>
                           ${post.createTime?string("yyyy-MM-dd")}&nbsp;
                           <#if is_index?? && post.topPriority?? && post.topPriority gt 0>
                              <span class="tag tag-primary">置顶</span>
                           </#if>
                           <#if post.topPriority lte 0 && (.now?long-86400000*5)?number_to_datetime lte post.editTime?datetime && post.editTime?datetime gt post.createTime?datetime>
                               <i class="fa fa-refresh" aria-hidden="true" title="最近有更新" style="color: var(--code-toolbar-color);font-size:11px"></i>
                           </#if>
                       </div>
                       <a href="${post.fullPath!}" class="post-title" data-ajax><h3>${post.title!}</h3></a>
                       <div class="post-meta">
                          <span class="viewcount" title="浏览量">
                            <svg id="icon-huo" viewBox="0 0 1024 1024" width="14" height="14" style="vertical-align: -2px;"><path d="M14.656 512a497.344 497.344 0 1 0 994.688 0 497.344 497.344 0 1 0-994.688 0z" fill="#ff0000"></path><path d="M374.976 872.64c-48.299-100.032-22.592-157.44 14.421-211.37 40.448-58.966 51.115-117.611 51.115-117.611s31.659 41.386 19.115 106.005c56.149-62.72 66.816-162.133 58.325-200.405 127.317 88.746 181.59 281.002 108.181 423.381C1016 652.501 723.093 323.2 672.277 285.867c16.939 37.333 20.054 100.032-14.101 130.474-58.027-219.84-201.664-265.002-201.664-265.002 16.96 113.536-61.781 237.397-137.344 330.24-2.816-45.163-5.632-76.544-29.483-119.808-5.333 82.176-68.373 149.269-85.29 231.445-22.912 111.637 17.237 193.173 170.581 279.424z" fill="#FFFFFF"></path></svg>
                            <span style="vertical-align:1px">${post.visits}&nbsp;热度</span>
                           </span>
                          <span class="tagcontent" title="标签" style="margin-left: 5px;">
                            <#if post.tags?? && post.tags?size gt 0>
                              <svg id="icon-biaoqian" viewBox="0 0 1024 1024" width="14" height="14" style="vertical-align: -2px;"><path d="M512 512m-509.26933333 0a509.26933333 509.26933333 0 1 0 1018.53866666 0 509.26933333 509.26933333 0 1 0-1018.53866666 0Z" fill="#1e9969"></path><path d="M307.2 220.04622222c-35.04355555 0-64.62577778 29.696-64.62577778 64.62577778v148.36622222c0 35.04355555 21.61777778 83.62666667 45.85244445 107.86133333l253.38311111 253.38311112c24.23466667 24.23466667 64.62577778 24.23466667 88.97422222 0l186.02666667-186.02666667c24.23466667-24.23466667 24.23466667-64.62577778 0-88.97422222L563.31377778 265.89866667c-24.23466667-24.23466667-72.81777778-45.85244445-107.86133333-45.85244445H307.2z m83.51288889 212.992c-35.04355555 0-64.62577778-29.696-64.62577778-64.62577777 0-35.04355555 29.696-64.62577778 64.62577778-64.62577778 35.04355555 0 64.62577778 29.696 64.62577778 64.62577778 0.11377778 34.92977778-29.58222222 64.62577778-64.62577778 64.62577777z" fill="#FFFFFF"></path></svg>
                               <#list post.tags as tag>
                                 <#if tag_index != 0>,</#if>
                                <a href="${tag.fullPath!}" data-ajax style="vertical-align:1px">${tag.name!}</a>
                              </#list>
                            </#if>
                          </span>
                          <#if post.categories?? && post.categories?size gt 0>
				          <span title="分类" style="margin-left: 5px;">
                            <svg t="1595123832012" class="icon" viewBox="0 0 1024 1024" width="14" height="14" style="vertical-align: -2px;"><path d="M974.99592797 774.77400863H49.00407203V220.36641817h857.08789887c38.11120672 0 69.04204115 30.93083443 69.04204115 69.04204115v485.36554931h-0.13808408zM627.71446098 220.36641817c0-63.9329301-51.78153086-115.71446098-115.71446098-115.71446098H49.00407203v115.71446098h578.71038895" fill="#CE9F06" p-id="4639"></path><path d="M164.718533 620.25792053V273.11453762h694.562934v347.14338291h-694.562934z" fill="#FFFFFF" p-id="4640"></path><path d="M974.99592797 848.09665633V398.49488435c0-31.89742302-25.95980747-57.85723049-57.85723049-57.85723048H106.86130252c-31.89742302 0-57.85723049 25.95980747-57.85723049 57.85723048v449.4636879c0 39.35396347 31.89742302 71.38947055 71.38947055 71.38947056h783.35099891c39.35396347 0.13808409 71.25138647-31.89742302 71.25138648-71.25138648z" fill="#FFCD2C" p-id="4641"></path></svg>
					        <a href="${post.categories[0].fullPath!}" style="vertical-align:1px">${post.categories[0].name!}</a>
				         </span>
				        </#if>
                       </div>
                       <div class="float-content">
                          <p class="post-excerpt">${post.summary!}</p>
                       </div>
                   </div>      
               </div>
               <div class="post-bottom">
                   <a href="${post.fullPath!}" data-ajax class="postReadMore">
                       <i class="iconfont icon-caidan"></i>
                   </a> 
               </div>
            </article>
        </#list>
    </#if>
</div>
