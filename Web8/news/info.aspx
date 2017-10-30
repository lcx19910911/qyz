<%@ Page Language="C#" AutoEventWireup="true" Inherits="Tc.UI.ArtInfo" %>

<%@ Register Src="~/control/botnew.ascx" TagPrefix="uc1" TagName="botnew" %>
<%@ Register Src="~/control/top.ascx" TagPrefix="uc1" TagName="top" %>
<%@ Register Src="~/control/nav.ascx" TagPrefix="uc1" TagName="nav" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=7">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title><%=art.Title %>-<%=PB.Get("webname") %></title>
    <link rel="stylesheet" href="/newCss/head.css" />
    <link rel="stylesheet" href="/newCss/style.css">
    <script type="text/javascript" src="/newCss/jquery-1.8.0.min.js"></script>
    <script type="text/javascript" src="/newCss/jquery.jslides.js"></script>
    <!---->
    <script type="text/javascript" src="/newCss/newsscroll.js"></script>
    <!---->
    <script type="text/javascript" src="/newCss/gotop.js"></script>
</head>
</head>

<body>
    <!--头部-->
    &#65279;<div class="head">
        <uc1:top runat="server" ID="top" />


        <uc1:nav runat="server" ID="nav" />
    </div>

    <div class="banner_n" style="background: url(/newCss/xinwen.gif) repeat center center;"></div>
    <!--------主体--------->
    <div class="main_n">
        <div class="left fl">
            <div class="box">
                <div class="column">
                    <div class="title">
                        <h2>网站导航</h2>
                        <p>Navigation </p>
                    </div>
                    <ul>

                        <% var t_ncate = LibCache.get_fenleis("a");
                            foreach (var item in t_ncate)
                            {
                        %>
                        <li><a href='/news/list.aspx?c=<%=item.ID %>'><%=item.Name %></a></li>
                        <%  } %>
                    </ul>
                </div>
                <div class="link">
                    <ul>
                        <li class="cp"><a href="/p/info.aspx?n=product">产品介绍</a></li>


                        <li class="wd"><a href="/p/info.aspx?n=contact">联系我们</a></li>
                    </ul>
                </div>
            </div>
            <div class="clear"></div>
        </div>
        <div class="right fr">
    <div class="r_top">
      <div class="fl"> <span class="title">公司新闻</span></div>
      <div class="dh duyier">您当前所在位置：<a href="/">网站首页</a>  &gt; <a href="/html/news/">新闻中心</a> &gt; <a href="/html/companynews/">公司新闻</a> </div>
    </div>

    <div class="news_ar">
      <div class="article_title">
        <h2><%=art.Title %></h2>
        <h6>发布日期：<%=art.Addtime.GetDateTime().ToString("yyyy-MM-dd") %>  </h6>
      </div>
      <div class="content"> 
           <%=art.Content %>
      </div>
    </div>
  </div>
    </div>
    <div class="clear"></div>

    <uc1:botnew runat="server" ID="bot" />
</body>
</html>