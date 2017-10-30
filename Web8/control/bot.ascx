<%@ Control Language="C#" AutoEventWireup="true" %>
<div class="HeightTab clearfix"></div>
<!--footer start-->
<div id="footer">
    <div class="inner">
        <div class='BottomNav'><a href="/">网站首页</a> | <a href="/p/info.aspx?n=company">关于我们</a> | <a href="/p/info.aspx?n=job">人才招聘</a>  |
             <a href="/p/info.aspx?n=contact">联系我们</a></div>
        <div class='HeightTab'></div>
        <p>客服热线：<%=PB.Get("dianhua") %> 微信号：<%=PB.Get("email") %></p>
        <p>Copyright 闽ICP备17028220号  <%=PB.Get("webname") %> 版权所有 All rights reserved</p>
    </div>
</div>
<!--footer end -->
<script src="/js/lrkf/js/lrkf.js"></script>
<link href="/js/lrkf/skin/lrkf_blue1.css" rel="stylesheet" />
<script>
(function(){
    var bp = document.createElement('script');
    var curProtocol = window.location.protocol.split(':')[0];
    if (curProtocol === 'https') {
        bp.src = 'https://zz.bdstatic.com/linksubmit/push.js';        
    }
    else {
        bp.src = 'http://push.zhanzhang.baidu.com/push.js';
    }
    var s = document.getElementsByTagName("script")[0];
    s.parentNode.insertBefore(bp, s);
})();
</script>
<%--<script type="text/javascript">
    $(function () {
        $("#lrkfwarp").lrkf({
            kftop: '140',
            Event: 'hover',
            qqs: [
                { 'name': '客服1号', 'qq': '<%=PB.Get("qq1")%>' },
              { 'name': '客服2号', 'qq': '<%=PB.Get("qq2")%>' }--
            ],
            tel: [
                { 'name': '客服热线', 'tel': '<%=PB.Get("dianhua")%>' }
            ],
        });
    });
</script>--%>