<#macro comments commentList article>
    <div class="comments__item">
        <div class="comments__meta comments__meta--only">${commentLabel}</div>
    </div>

    <ul class="comments" id="comments">
        <#list commentList as comment>
            <#include 'common-comment.ftl'/>
        </#list>
    </ul>

    <#if article.commentable>
        <div class="comments__item">
            <div class="comments__meta">
                ${postCommentsLabel}
            </div>
            <div class="comments__content">
                <div class="form">
                    <input id="boloUser" placeholder="你的昵称" style="padding: 10px; width: fill-available; width: -webkit-fill-available;">
                    <input id="boloSite" placeholder="你的个人主页URL（选填）" style="margin-top: 3px; margin-bottom: 10px; padding: 10px; width: fill-available; width: -webkit-fill-available;">
                    <textarea rows="3" placeholder="${postCommentsLabel}" id="comment"></textarea>
                    <script type="text/javascript" src="${staticServePath}/js/bolo/sweetalert.min.js"></script>
                </div>
            </div>
        </div>
    </#if>
</#macro>