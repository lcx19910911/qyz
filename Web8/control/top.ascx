<%@ Control Language="C#" AutoEventWireup="true" %>
<%--<!--top start -->
<div class="top">
    <div class="TopInfo" style="height: 25px;">
    </div>
    <div class="clearfix"></div>
    <div class="TopLogo">
        <div class="logo">
            <a href="/">
                <img src="<%=Lib.theme %>images/logo.png"></a>
        </div>
        <div class="tel">
            <p class="telW">客服热线</p>
            <p class="telN"><%=PB.Get("dianhua") %></p>
        </div>
    </div>
</div>
<!--top end-->

--%>

  <div class="top">
    <div class="top_1">
      <div class="fl_jl">欢迎您访问银闪付官方网站</div>
      <div class="fr_jl">
        <ul>
          <li style="background:url(/newCss/home.gif) no-repeat left 15px; color:#FFF;"><a href="/#">设为首页</a></li>
          <li style="background:url(/newCss/shoucang.gif) no-repeat left 15px;"><a href="javascript:window.external.AddFavorite('http://yinshanfupya.com ','银闪付官网')">加入收藏</a></li>  
          <li style="background:url(/newCss/women.gif) no-repeat left 15px;"><a href="/p/info.aspx?n=contact">联系我们</a></li>
        </ul>
      </div>
    </div>
  </div>
  <div class="con">
    <div class="top_2">
      <div style="float:left;"><img src="<%=Lib.theme %>images/logo.png" alt="银闪付官网" border="0"></div>
      <div style="float:right; line-height:100px;font-size:20px;" >客服热线:<p style="color:red;float:right; "><%=PB.Get("dianhua") %></p></div>
    </div>
  </div>


