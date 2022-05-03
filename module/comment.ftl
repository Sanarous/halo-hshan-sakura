<#macro comment target,type>
    <#if !target.disallowComment!false>
          <section class="comments-area" id="comment-area">
           <hr/>
           <div class="comment-head">
               <div class="comment-headling"><i class="fa fa-comments fa-fw"></i> <span class="comment-title-count">评论</span></div>
               <div class="comments-items-2" data-name="Sakura">
                  <script src="//cdn.jsdelivr.net/npm/vue@2.6.10/dist/vue.min.js"></script>
                  <script type="text/javascript" src="https://cdn.jsdelivr.net/gh/Sanarous/halo-comment-sakura@v1.3.8/dist/halo-comment.min.js"></script>
                  <halo-comment id="${target.id?c}" type="${type}" :configs="configs"/>
               </div>
            </div>
        </section>
        <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.min.js"></script>
      </#if>
</#macro>