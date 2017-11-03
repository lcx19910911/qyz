<%@ Page Language="C#" AutoEventWireup="true" Inherits="Tc.UI.ArtList" %>

<%@ Register Assembly="AspNetPager" Namespace="Wuqi.Webdiyer" TagPrefix="webdiyer" %>
<%@ Register Src="~/control/botnew.ascx" TagPrefix="uc1" TagName="botnew" %>
<%@ Register Src="~/control/top.ascx" TagPrefix="uc1" TagName="top" %>
<%@ Register Src="~/control/nav.ascx" TagPrefix="uc1" TagName="nav" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
    <title>��������_<%=PB.Get("webname")%></title>
    <meta name="keywords" content="��������" />
    <meta name="description" content="��������" />
    <link rel="stylesheet" href="/newCss/head.css" />
    <link rel="stylesheet" href="/newCss/style.css">
    <script type="text/javascript" src="/newCss/jquery-1.8.0.min.js"></script>
    <script type="text/javascript" src="/newCss/jquery.jslides.js"></script>
    <!---->
    <script type="text/javascript" src="/newCss/newsscroll.js"></script>
    <!---->
    <script type="text/javascript" src="/newCss/gotop.js"></script>
</head>

<body>
    <!--ͷ��-->
    &#65279;<div class="head">
        <uc1:top runat="server" ID="top" />


        <uc1:nav runat="server" ID="nav" />
    </div>

    <div class="banner_n" style="background: url(/newCss/xinwen.gif) repeat center center;"></div>
    <!--------����--------->
    <div class="main_n">
        <div class="left fl">
            <div class="box">
                <div class="column">
                    <div class="title">
                        <h2>��վ����</h2>
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
                        <li class="cp"><a href="/p/info.aspx?n=product">��Ʒ����</a></li>


                        <li class="wd"><a href="/p/info.aspx?n=contact">��ϵ����</a></li>
                    </ul>
                </div>
            </div>
            <div class="clear"></div>
        </div>
        <div class="right fr">
            <div class="r_top">
                <div class="fl"><span class="title">��������</span> </div>
                <div class="dh duyier">����ǰ����λ�ã�<a href='/'>��վ��ҳ</a>   > <a href="/news/list.aspx">��������</a> </div>
            </div>
            <div class="news">
                <ul>

                    <% foreach (System.Data.DataRow item in dt.Rows)
                        {%>
                    <li>
                        <div class="lf fl">
                            <h2><%=item["addtime"].GetString().GetDateTime().ToString("MM") %></h2>
                            <h3><%=item["addtime"].GetString().GetDateTime().ToString("yyyy") %></h3>

                        </div>
                        <div class="txt fr">
                            <div class="title">
                                <a href="/news/info.aspx?id=<%=item["id"] %>" title="<%=item["title"].GetString() %>"><%=item["title"].GetString() %></a>
                            </div>
                            <p>
                                <a href="/news/info.aspx?id=<%=item["id"] %>" title="<%=item["title"].GetString() %>"><%=item["title"].GetString() %></a>

                            </p>

                        </div>

                    </li>

                    <%} %>
                </ul>
                 <div class='t_page paging'>
                                <webdiyer:AspNetPager ID="aspnetpage" runat="server" FirstPageText="��ҳ" LastPageText="βҳ"
                                    NextPageText="��һҳ" PrevPageText="��һҳ" OnPageChanged="aspnetpage_PageChanged"
                                    HorizontalAlign="Center" UrlPaging="true" AlwaysShow="true"
                                    ShowMoreButtons="False" ShowPageIndexBox="Never" NumericButtonCount="5" ShowDisabledButtons="False" PageSize="10">
                                </webdiyer:AspNetPager>
                            </div>

                <%--<div class="paging"><a>������<%=dt.Rows.Count %></a><span>1</span><a href="Index_2.html">2</a><a href="Index_3.html">3</a><a href="Index_2.html">��һҳ</a><a>ҳ�Σ�1/3</a> </div>--%>
            </div>

        </div>
    </div>
    <div class="clear"></div>

    <uc1:botnew runat="server" ID="bot" />
</body>
</html>
