﻿<%@ Page Language="C#" AutoEventWireup="true" Inherits="Tc.UI.Danye" %>

<%@ Register Src="~/control/botnew.ascx" TagPrefix="uc1" TagName="botnew" %>
<%@ Register Src="~/control/top.ascx" TagPrefix="uc1" TagName="top" %>
<%@ Register Src="~/control/nav.ascx" TagPrefix="uc1" TagName="nav" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=7">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title><%=mdy.Name %>-<%=PB.Get("webname") %></title>
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
        <uc1:top runat="server" ID="top1" />


        <uc1:nav runat="server" ID="nav1" />
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
                <div class="fl"><span class="title"><%=mdy.Name %></span> </div>
                <div class="dh duyier">您当前所在位置：<a href='/page/<%=mdy.Ename %>.aspx'><%=mdy.Name %></a></div>
            </div>
            <div class="news_content">
                <%=mdy.Content %>
            </div>
        </div>

    </div>
    <div class="clear"></div>

    <uc1:botnew runat="server" ID="Botnew1" />
</body>
</html>

