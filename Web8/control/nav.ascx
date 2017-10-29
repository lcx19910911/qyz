<%@ Control Language="C#" AutoEventWireup="true" %>
<!--nav start-->
<div id="NavLink">
    <div class="NavBG">
        <!--Head Menu Start-->
        <ul id='sddm'>
            <li class='CurrentLi'><a href='/'>首页
            </a></li>
            <li><a href='/p/info.aspx?n=company' onmouseover="mopen('m2')" onmouseout='mclosetime()'>关于我们
            </a>
                <div id='m2' onmouseover='mcancelclosetime()' onmouseout='mclosetime()'><a href='/p/info.aspx?n=company'>公司介绍</a> 
                    <a href='/p/info.aspx?n=zuzhi'>组织机构</a> <a href='/p/info.aspx?n=wenhua'>企业文化</a> <a href='/p/info.aspx?n=huanjing'>公司环境</a>
                     <a href='/p/info.aspx?n=yewu'>业务介绍</a> </div>
            </li>
            <li><a href='/news/list.aspx' onmouseover="mopen('m4')" onmouseout='mclosetime()'>新闻动态
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

            <li><a href='https://merchant.yeeepay.com/partner.php/base/login?merchantid=102'>代理后台
            </a></li>
            
            <li><a href='/p/info.aspx?n=contact'>联系我们
            </a></li>
        </ul>
        <!--Head Menu End-->
    </div>
    <div class="clearfix"></div>
</div>
<!--nav end-->
