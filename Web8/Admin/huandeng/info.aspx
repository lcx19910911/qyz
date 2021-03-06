﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="info.aspx.cs" Inherits="Tc.Web.Admin.huandeng.info" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>幻灯片信息</title>
    <link href="../css/base.css" rel="stylesheet" type="text/css" />
<%--    <script src="../js/uploadfy/jquery.uploadify.min.js"></script>
    <link href="../js/uploadfy/uploadify.css" rel="stylesheet" />--%>
    <script src="../js/jquery-1.10.2.js"></script>
    <script src="../js/file_upload_plug-in.js"></script>
</head>
<body topmargin="8">
    <form id="form1" runat="server">
        <table width="98%" border="0" align="center" cellpadding="0" cellspacing="0">
            <tr>
                <td width="60%" height="30">
                    <img height="14" src="../images/book1.gif" width="20">&nbsp;<a href="list.aspx"><u>幻灯片列表</u></a> &gt;&gt; 幻灯片信息</td>
                <td width="30%" align='right'>&nbsp; </td>
            </tr>
        </table>

        <table width="98%" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#FBFCE2" id="getone" style="display: none">
        </table>
        <table width="98%" border="0" align="center" cellpadding="2" cellspacing="2" id="needset" style="border: 1px solid #cfcfcf; background: #ffffff;">
            <tr>
                <td height="24" colspan="5" class="bline">
                    <table width="800" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                            <td width="90">&nbsp;标题：</td>
                            <td>
                                <asp:TextBox ID="txt_title" runat="server" Style="width: 388px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage=" 必填" ControlToValidate="txt_title"></asp:RequiredFieldValidator></td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td height="24" colspan="5" class="bline">
                    <table width="800" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                            <td width="90">&nbsp;链接地址：</td>
                            <td>
                                <asp:TextBox ID="txt_url" runat="server" Style="width: 388px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ErrorMessage=" 必填" ControlToValidate="txt_url"></asp:RequiredFieldValidator></td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td height="24" colspan="5" class="bline">
                    <table width="800" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                            <td width="90">&nbsp;排序：</td>
                            <td>
                                <asp:TextBox ID="txt_paixu" runat="server" Style="width: 388px"></asp:TextBox>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
                <tr>
                <td height="24" colspan="5" class="bline">
                    <table width="800" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                            <td width="90">&nbsp;图片：</td>
                            <td>
                               <a id="imageFile" style="color:red;">上传图片:</a>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td height="24" colspan="5" class="bline">
                    <table width="800" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                            <td width="90"></td>
                            <td width="449">
                                <img id="img_logo" src="<%=tupianurl %>" style="<%=dp%>" />
                                <input type="hidden" runat="server" id="hd_tupian" name="images"/>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
        <table width="98%" border="0" cellspacing="0" cellpadding="0" align="center" bgcolor="#F9FCEF" style="border: 1px solid #cfcfcf; border-top: none;">
            <tr height="35">
                <td width="17%">&nbsp;</td>
                <td width="83%">
                    <asp:ImageButton ID="ImageButton1" ImageUrl="~/Admin/images/button_save.gif" runat="server" OnClick="ImageButton1_Click" />
                    <img src="../images/button_reset.gif" width="60" height="22" border="0" onclick="location.reload();" style="cursor: pointer;" />
                </td>
            </tr>
        </table>
    </form>
    <script type="text/javascript">

        function UploadImg() {
            var headimgbtn = $("#imageFile").uploadFile({
                url: '/admin/handler/tupian.aspx?wh=<%=width %>,<%=height %>',
                fileSuffixs: ["jpg", "png", "gif"],
                maximumFilesUpload: 1,//最大文件上传数
                onComplete: function (data) {
                    var rs = eval("(" + data + ")");
                    if (rs.res == "1") {
                        $("#img_logo").show().attr("src", rs.viewname);
                        $("#hd_tupian").val(rs.rukuname);
                    }
                    else {
                        alert("上传失败");
                    }
                },
                onChosen: function (file, obj, fileSize, errorText) {
                    if (errorText) {
                      alert(errorText);
                        return false;
                    }
                    //Loading("图片正在上传中...", "请稍等");
                    uploadheadimg.submitUpload();
                    return true;//返回false将取消当前选择的文件
                },
            });
            var uploadheadimg = headimgbtn.data("uploadFileData");
        }


        $(document).ready(function () {
            UploadImg()
        });
    </script>
</body>
</html>