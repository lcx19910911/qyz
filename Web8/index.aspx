<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Tc.Web.Default" %>

<%@ Register Src="~/control/botnew.ascx" TagPrefix="uc1" TagName="botnew" %>
<%@ Register Src="~/control/topnew.ascx" TagPrefix="uc1" TagName="topnew" %>
<%@ Register Src="~/control/navnew.ascx" TagPrefix="uc1" TagName="navnew" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- saved from url=(0023)http://www.shanfu5.com/ -->
<html xmlns="http://www.w3.org/1999/xhtml"><head><meta http-equiv="Content-Type" content="text/html; charset=GBK">
 
 <title><%=PB.Get("webname")%></title>
 <meta name="keywords" content="<%=PB.Get("webname")%>">
 <meta name="description" content="<%=PB.Get("webname") %>">
 <script type="text/javascript" src="./newCss/jquery-1.8.0.min.js"></script></head><body><span style="position: absolute;left: -9999px;"></span>
 <script type="text/javascript" src="./newCss/jquery.superslide.2.1.1.js"></script><!--**********滚动效果*************-->
 <link rel="stylesheet" href="./newCss/head.css">
 <link rel="stylesheet" href="./newCss/index.css">
 <script type="text/javascript" src="./newCss/gotop.js."></script>
    <script src="js/focusslide.js"></script>


     <!--头部-->
     &#65279;<div class="head">
         <uc1:topnew runat="server" ID="top" />

         <uc1:navnew runat="server" ID="navnew" />
     </div>

     <div class="banner-box">
         <div class="bd">
             <ul style="position: relative; width: 1903px; height: 603px;">
                 <% var hdp = PB.get_huandong("index");
                     var index = 0;
                     foreach (var item in hdp)
                     {%>
                 <li style="position: absolute; width: 1903px; left:<%=(index*1903)+"px"%>; top: 0px;">
                     <img src='<%=LibFile.get_img(item.Tupian,"","") %>' alt='<%=item.Title %>' /></li>
                 <%
                         index++;
                     }  %>
             </ul>
             <div class="banner-btn">
                 <a class="prev" href="javascript:void(0);">
                     <img src="./newCss/prev.png"></a>
                 <a class="next" href="javascript:void(0);" style="">
                     <img src="./newCss/next.png"></a>
                 <div class="hd">
                     <ul style="position: relative; width: 1903px; height: 603px;">
                         <li style="position: absolute; width: 1903px; left: 0px; top: 0px; display: none;" class="on">1</li>
                     </ul>
                 </div>
             </div>
         </div>

         <!--</div>-->

         <script type="text/javascript" src="./newCss/bannerslide.js."></script>
         <!--************************-->
         <!--</div>-->
     </div>
     <div class="zhonghong">
    <div class="shiye">
       <div class="bt">
        <p class="bt1">News center</p>
        <p class="bt2">新闻中心</p>
        <p class="bt3">The pursuit of high efficiency, high satisfaction with the 3Gservice</p>
      </div>
       <div class="zhong_bottom">
        <div class="fangfa">
           <h2>行业动态</h2><a href="/news/list.aspx?c=14"><img style="margin-top:30px;" src="./newCss/jiangu.gif"></a>
           <ul>

  <% var newslist2 = PB.get_article(9, "types='a' and Fenleiid=14", "id desc");
                                       foreach (var item in newslist2)
                                       {%>
               <li><img src="./newCss/liebiao.jpg"><a href="/news/info.aspx?id=<%=item.ID %>" title="<%=item.Title %>"><%=item.Title %></a></li>
                                    <%} %></ul>
         </div>
        <div class="fangfa">
           <h2>公司新闻</h2><a href="/news/list.aspx?c=13"><img style="margin-top:30px;" src="./newCss/guancha.gif"></a>
           <ul>
     <% var newslist = PB.get_article(9, "types='a' and Fenleiid=13", "id desc");
                                       foreach (var item in newslist)
                                       {%>
               <li><img src="./newCss/liebiao.jpg"><a href="/news/info.aspx?id=<%=item.ID %>" title="<%=item.Title %>"><%=item.Title %></a></li>
                                    <%} %>
          </ul>
         </div>
        <div class="fangfa">
           <h2>技术支持</h2><a href="/news/list.aspx?c=18"><img style="margin-top:30px;" src="./newCss/jiemi.gif"></a>
           <ul>

                <% var newslist3 = PB.get_article(9, "types='a' and Fenleiid=18", "id desc");
                                       foreach (var item in newslist3)
                                       {%>
               <li><img src="./newCss/liebiao.jpg"><a href="/news/info.aspx?id=<%=item.ID %>" title="<%=item.Title %>"><%=item.Title %></a></li>
                                    <%} %>
          </ul>
         </div>
      </div>


    <div class="huoban">
       <div class="hezuo">
        <p>合作伙伴</p>
      </div>
       <ul>
        <li><img src="./newCss/zhonghang.gif"></li>
        <li><img src="./newCss/gongshang.gif"></li>
        <li><img src="./newCss/guangda.gif"></li>
        <li><img src="./newCss/xinlang.gif"></li>
        <li><img src="./newCss/fenghuang.gif"></li>
        <li><img src="./newCss/21cn.gif"></li>
        <li><img src="./newCss/jingying.gif"></li>
        <li><img src="./newCss/jianhang.gif"></li>
        <li><img src="./newCss/zhaoshang.gif"></li>
        <li><img src="./newCss/nonghang.gif"></li>
      </ul>
     </div>
  </div>
 </div>
<div class="clear"></div>

          <uc1:botnew runat="server" ID="bot" />

</body></html>