﻿<%@ page language="C#" autoeventwireup="true" inherits="SYS_WorkFlow_InstanceWorkingTimesQuery, App_Web_iakvuhia" stylesheettheme="default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>任务超时查询</title>
</head>
<body style="margin-top: 0px;  margin-left: 0px;">
    <form id="form1" runat="server">
    <div>
        <table border="0" cellpadding="0" cellspacing="0" style="width: 1160px">
            <tr>
                <td style="background-image: url(../img/main_bar.jpg); background-color: #006699; height: 20px; font-size: 9pt;" valign="middle">
                    <img src="../img/s_img.gif" />
                    已归档的任务</td>
            </tr>
            <tr>
                <td style="width: 100px; height: 39px" valign="middle">
                    <table border="0" cellpadding="0" cellspacing="0" style="width: 740px">
                        <tr>
                            <td style="width: 253px; height: 22px; text-align: center; font-size: 11px;">
                                业务类别</td>
                            <td style="width: 100px; height: 22px;">
                                <asp:DropDownList ID="ddlPackType" runat="server" Width="106px">
                                </asp:DropDownList></td>
                            <td style="width: 225px; height: 22px; text-align: center; font-size: 11px;">
                                开始日期</td>
                            <td style="font-size: 11px; width: 157px; height: 22px; text-align: center">
                                <cc1:WebDate ID="wdlStart" runat="server" DateTimeStyle="Date" />
                            </td>
                            <td style="font-size: 11px; width: 221px; height: 22px; text-align: center">
                                结束日期</td>
                            <td style="width: 100px; height: 22px;">
                                <cc1:WebDate ID="wdlEnd" runat="server" DateTimeStyle="Date" />
                            </td>
                            <td style="width: 100px; height: 22px; text-align: center;">
                                <asp:Button ID="btnOK" runat="server" EnableTheming="False" Text="确  定" Width="59px" UseSubmitBehavior="False" OnClick="btnOK_Click" /></td>
                            <td style="width: 100px; height: 22px; text-align: center;"><asp:Button ID="btnRefresh" runat="server" EnableTheming="False" Text=" 刷 新 " Width="59px" UseSubmitBehavior="False" OnClick="btnRefresh_Click" /></td>
                            <td style="width: 116px; height: 22px; text-align: center"><asp:Button ID="btnQuery" runat="server" EnableTheming="False" Text=" 查 询 " Width="59px" UseSubmitBehavior="False" OnClick="btnSearch_Click" ToolTip="弹出自定义查询构造窗口" /></td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td style="height: 299px" align="center" valign="top">
                    <asp:GridView ID="grvList" runat="server" AllowPaging="True" AutoGenerateColumns="False"
                        CellPadding="4" Font-Size="9pt" ForeColor="#333333" PageSize="15" Width="1160px" OnRowCommand="grvList_RowCommand" DataKeyNames="F_NO,F_PACKTYPENO" EmptyDataText="无数据！" OnRowDataBound="grvList_RowDataBound">
                        <Columns>
                            <asp:ButtonField ButtonType="Button" HeaderText="流程" Text="流程" CommandName="FlowTable">
                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="35px" />
                            </asp:ButtonField>
                            <asp:ButtonField ButtonType="Button" CommandName="Deal" HeaderText="查看" Text="查看">
                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="35px" />
                            </asp:ButtonField>
                            <asp:BoundField HeaderText="业务类别" DataField="F_PACKNAME" >
                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="90px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="F_CREATEMAN" HeaderText="创建人">
                                <ItemStyle Width="50px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="F_DESC" HeaderText="任务描述">
                                <ItemStyle HorizontalAlign="Left" />
                            </asp:BoundField>
                            <asp:BoundField DataField="f_createdate" HeaderText="创建时间">
                                <ItemStyle Width="80px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="f_archivedate" HeaderText="结案时间">
                                <ItemStyle Width="80px" />
                            </asp:BoundField>
                            <asp:BoundField HeaderText="实际用时">
                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="60px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="PLAN_STARTTIME" HeaderText="计划开始时间">
                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="80px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="PLAN_ENDTIME" HeaderText="计划结束时间">
                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="80px" />
                            </asp:BoundField>
                            <asp:BoundField HeaderText="计划用时">
                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="60px" />
                            </asp:BoundField>
                        </Columns>
                        <PagerSettings Visible="False" />
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <RowStyle BackColor="#EFF3FB" />
                        <EditRowStyle BackColor="#2461BF" />
                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="DodgerBlue" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <AlternatingRowStyle BackColor="White" />
                    </asp:GridView>
                </td>
            </tr>
            <tr>
                <td style="height: 23px;">
                    <table width="100%">
                        <tr>
                            <td id="tdMessage" runat="server" style="height: 23px; font-size: 11px;">
                            </td>
                            <td align="center" style="width: 80px; height: 23px">
                                <asp:Button ID="btnFirst" runat="server" CommandName="first" OnClick="NavigateToPage"
                                    Text="首页" /></td>
                            <td align="center" style="width: 80px; height: 23px">
                                <asp:Button ID="btnPrevious" runat="server" CommandName="prev" OnClick="NavigateToPage"
                                    Text="上一页" /></td>
                            <td align="center" style="width: 80px; height: 23px">
                                <asp:Button ID="btnNext" runat="server" CommandName="next" OnClick="NavigateToPage"
                                    Text="下一页" /></td>
                            <td align="center" style="width: 80px; height: 23px">
                                <asp:Button ID="btnLast" runat="server" CommandName="last" OnClick="NavigateToPage"
                                    Text="末页" /></td>
                            <td align="right" style="width: 50px; height: 23px; font-size: 11px;">
                                转向</td>
                            <td align="center" style="width: 70px; height: 23px">
                                <asp:TextBox ID="txtPage" runat="server" Width="40px"></asp:TextBox>
                            </td>
                            <td align="left" style="width: 80px; height: 23px">
                                <asp:Button ID="btnTurn" runat="server" CommandName="go" OnClick="NavigateToPage"
                                    Text="确定" /></td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td style="height: 23px;">
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
