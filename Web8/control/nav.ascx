<%@ Control Language="C#" AutoEventWireup="true" %>
<!--nav start-->
<div id="NavLink">
    <div class="NavBG">
        <!--Head Menu Start-->
        <ul id='sddm'>
            <li class='CurrentLi'><a href='/'>网站首页
            </a></li>
            <li><a href='/p/info.aspx?n=company' onmouseover="mopen('m2')" onmouseout='mclosetime()'>关于公司
            </a>
                <div id='m2' onmouseover='mcancelclosetime()' onmouseout='mclosetime()'><a href='/p/info.aspx?n=company'>公司介绍</a> 
                    <a href='/p/info.aspx?n=zuzhi'>组织机构</a> <a href='/p/info.aspx?n=wenhua'>企业文化</a> <a href='/p/info.aspx?n=huanjing'>公司环境</a>
                     <a href='/p/info.aspx?n=yewu'>业务介绍</a> </div>
            </li>
            <li><a href='/product/list.aspx' onmouseover="mopen('m3')" onmouseout='mclosetime()'>产品展示
            </a>
                <div id='m3' onmouseover='mcancelclosetime()' onmouseout='mclosetime()'>
                    <% var t_pcate = LibCache.get_fenleis("c");
                       foreach (var item in t_pcate)
                       {
                    %>
                    <a href='/product/list.aspx?c=<%=item.ID %>'><%=item.Name %></a>
                    <%  } %>
                </div>
            </li>
            <li><a href='/news/list.aspx' onmouseover="mopen('m4')" onmouseout='mclosetime()'>新闻资讯
            </a>
                <div id='m4' onmouseover='mcancelclosetime()' onmouseout='mclosetime()'>
                    <% var t_ncate = LibCache.get_fenleis("a");
                       foreach (var item in t_ncate)
                       {
                    %>
                    <a href='/news/list.aspx?c=<%=item.ID %>'><%=item.Name %></a>
                    <%  } %>
                </div>
            </li>
            <li><a href='/anli/list.aspx' onmouseover="mopen('m5')" onmouseout='mclosetime()'>案例展示
            </a>
            </li>
            <li><a href='/p/info.aspx?n=zhichi' onmouseover="mopen('m5')" onmouseout='mclosetime()'>技术支持
            </a>
            </li>
            <li><a href='/p/info.aspx?n=job' onmouseover="mopen('m6')" onmouseout='mclosetime()'>人才招聘
            </a>
            </li>
            <li><a href='/p/info.aspx?n=contact'>联系方式
            </a></li>
            <li><a href='/liuyan.aspx'>在线留言
            </a></li>
            
            <li><a href='/admin/index.aspx'>管理后台
            </a></li>
            
            <li><a href='https://merchant.yeeepay.com/partner.php/base/login?merchantid=102&from=singlemessage&isappinstalled=0'>银闪付
            </a></li>
            
        </ul>
        <!--Head Menu End-->
    </div>
    <div class="clearfix"></div>
</div>
<!--nav end-->
