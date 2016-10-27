<%@ Page Title="Home" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="gametracker_phase31.students" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <!--Author: Jing Zhou & Hinaben Patel-->
    <!--Date : 07/10/2016-->
    <!--Project Name: Game Tracker-->
    <!--Description: Home Page-->
    <div class="containter">
        <div class="row">
            <div class="col-md-offset-2 col-md-9" style="text-align: center">
                <h3 style="font-family: seasideresortnfregular; color: white; margin-top: 50px;">Week 
                    <asp:Label runat="server" Text="40" ID="weekNumber"></asp:Label>
                </h3>
                <table >
                    <tr style="padding: 50px">
                        <!--Cricket part-->
                        <td>
                            <span style="padding-left: 5px; font-size: larger; color:darkturquoise; width: 120px;">Cricket</span>
                            <div class="well well-sm" style="text-align: left; height: 250px; padding-left: 10px; border: hidden; color: white;width:400px">                          
                                <div style="float: right; width: 267px;">
                                    <asp:Chart runat="server" ID="ctl00" DataSourceID="SqlDataSource1" Height="214px" Width="230px" Palette="None" PaletteCustomColors="Khaki">
                                        <Titles>
                                            <asp:Title Font="Times New Roman, 12pt, style=Bold, Italic" Name="Title1"
                                                Text="Acuumulated Score">
                                            </asp:Title>
                                        </Titles>
                                        <Series>
                                            <asp:Series Name="Series1" XValueMember="Team_Name" YValueMembers="Accumulated Score" YValuesPerPoint="2"></asp:Series>
                                        </Series>
                                        <ChartAreas>
                                            <asp:ChartArea Name="ChartArea1">
                                                <AxisY>
                                                    <MajorGrid Enabled="False" />
                                                </AxisY>
                                                <AxisX>
                                                    <MajorGrid Enabled="false" />
                                                </AxisX>
                                                <Area3DStyle LightStyle="None" />
                                            </asp:ChartArea>
                                        </ChartAreas>
                                        <BorderSkin BackColor="Transparent" PageColor="Transparent" SkinStyle="Emboss" />
                                    </asp:Chart>
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:GameConnectString %>" SelectCommand="SELECT Team_Name, SUM(Point) AS [Accumulated Score] FROM game_grades WHERE (Week &lt;= 40) AND (Sports_category='cricket') GROUP BY Team_Name"></asp:SqlDataSource>
                                </div>
                                
                       
                                Bharat Cricket:  
                               
        <br />
                                <asp:Label Style="font-family: seasideresortnfregular; color: cornsilk" runat="server" Text="0" ID="bharatScore"></asp:Label>
                                <br />
                                <br>
                                Falcon-A: 
                               
        <br />
                                <asp:Label Style="font-family: seasideresortnfregular; color: cornsilk" runat="server" Text="0" ID="falconScore"></asp:Label>
                                <br/>
                                <img alt="cricket ball picture" src="Assets/images/cricket.png" style="width:60px; height:60px" />
                                </p>                            
                           
                            </div>
                        </td>
                        <!--Blank interval-->
                        <td ><div style="width:50px; opacity: 0"></div></td>
                        <!--BaseBall part-->
                        <td style="width: 400px">
                            <span style="padding-left: 5px; font-size: larger; color:darkturquoise; width: 120px;">Baseball</span>
                            <div class="well well-sm" style="text-align: left; height: 250px; padding-left: 10px; border: hidden; color: white;width:400px">
                                
                                <div style="float: right; width: 267px;">
                                    <asp:Chart runat="server" ID="Chart1" DataSourceID="SqlDataSource2" Height="214px" Width="230px" Palette="None" PaletteCustomColors="Khaki">
                                        <Titles>
                                            <asp:Title Font="Times New Roman, 12pt, style=Bold, Italic" Name="Title1"
                                                Text="Acuumulated Score">
                                            </asp:Title>
                                        </Titles>
                                        <Series>
                                            <asp:Series Name="Series1" XValueMember="Team_Name" YValueMembers="Accumulated Score" YValuesPerPoint="2"></asp:Series>
                                        </Series>
                                        <ChartAreas>
                                            <asp:ChartArea Name="ChartArea1">
                                                <AxisY>
                                                    <MajorGrid Enabled="False" />
                                                </AxisY>
                                                <AxisX>
                                                    <MajorGrid Enabled="false" />
                                                </AxisX>
                                            </asp:ChartArea>
                                        </ChartAreas>
                                        <BorderSkin BackColor="Transparent" PageColor="Transparent" SkinStyle="Emboss" />
                                    </asp:Chart>
                                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:GameConnectString %>" SelectCommand="SELECT Team_Name, SUM(Point) AS [Accumulated Score] FROM game_grades WHERE (Week &lt;= 40) AND (Sports_category='baseball') GROUP BY Team_Name"></asp:SqlDataSource>
                                </div>
                                
                 
                                Georgia State:                                
        <br />
                                <asp:Label Style="font-family: seasideresortnfregular; color: cornsilk" runat="server" Text="0" ID="GeorgiaScore"></asp:Label>
                                <br />
                                <br>
                                Kennesaw:                               
        <br />
                                <asp:Label Style="font-family: seasideresortnfregular; color: cornsilk" runat="server" Text="0" ID="KennesawScore"></asp:Label>
                              <br/>
                                <img src="Assets/images/Baseball.png"style="width:60px; height:60px" />
                                 </p>                            
                           
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <!--Basketball part-->
                        <td style="width: 400px">
                            <span style="padding-left: 5px; font-size: larger; color:darkturquoise; width: 120px;">Basketball</span>
                            <div class="well well-sm" style="text-align: left; height: 250px; padding-left: 10px; border: hidden; color: white;width:400px">
                                <div style="float: right; width: 267px;">
                                    <asp:Chart runat="server" ID="Chart2" DataSourceID="SqlDataSource3" Height="214px" Width="230px" Palette="None" PaletteCustomColors="Khaki">
                                        <Titles>
                                            <asp:Title Font="Times New Roman, 12pt, style=Bold, Italic" Name="Title1"
                                                Text="Acuumulated Score">
                                            </asp:Title>
                                        </Titles>
                                        <Series>
                                            <asp:Series Name="Series1" XValueMember="Team_Name" YValueMembers="Accumulated Score" YValuesPerPoint="2"></asp:Series>
                                        </Series>
                                        <ChartAreas>
                                            <asp:ChartArea Name="ChartArea1">
                                                <AxisY>
                                                    <MajorGrid Enabled="False" />
                                                </AxisY>
                                                <AxisX>
                                                    <MajorGrid Enabled="false" />
                                                </AxisX>
                                            </asp:ChartArea>
                                        </ChartAreas>
                                        <BorderSkin BackColor="Transparent" PageColor="Transparent" SkinStyle="Emboss" />
                                    </asp:Chart>
                                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:GameConnectString %>" SelectCommand="SELECT Team_Name, SUM(Point) AS [Accumulated Score] FROM game_grades WHERE (Week &lt;= 40) AND (Sports_category='basketball') GROUP BY Team_Name"></asp:SqlDataSource>
                                </div>
                                <br/>
                            Cavalier:                               
        <br />
                                <asp:Label Style="font-family: seasideresortnfregular; color: cornsilk" runat="server" Text="0" ID="CavakierScore"></asp:Label>
                                <br />
                                <br />
                                Knicks:                               
        <br />
                                <asp:Label Style="font-family: seasideresortnfregular; color: cornsilk" runat="server" Text="0" ID="KnicksScore"></asp:Label>
                                <br/>
                                <img src="Assets/images/basketball.png" style="width:60px; height:60px"/>
                                 </p>                                          
                            </div>
                        </td>
                         <!--Blank interval-->
                        <td style="width: 30px; opacity: 0"></td>
                        <!--Soccer part-->
                         <td style="width: 400px">
                             <span style="padding-left: 5px; font-size: larger; color:darkturquoise; width: 120px;">Soccer</span>
                            <div class="well well-sm" style="text-align: left; height: 250px; padding-left: 10px; border: hidden; color: white;width:400px">
                                <div style="float: right; width: 267px;">
                                    <asp:Chart runat="server" ID="Chart3" DataSourceID="SqlDataSource4" Height="214px" Width="230px" Palette="None" PaletteCustomColors="Khaki">
                                        <Titles>
                                            <asp:Title Font="Times New Roman, 12pt, style=Bold, Italic" Name="Title1"
                                                Text="Acuumulated Score">
                                            </asp:Title>
                                        </Titles>
                                        <Series>
                                            <asp:Series Name="Series1" XValueMember="Team_Name" YValueMembers="Accumulated Score" YValuesPerPoint="2"></asp:Series>
                                        </Series>
                                        <ChartAreas>
                                            <asp:ChartArea Name="ChartArea1">
                                                <AxisY>
                                                    <MajorGrid Enabled="False" />
                                                </AxisY>
                                                <AxisX>
                                                    <MajorGrid Enabled="false" />
                                                </AxisX>
                                            </asp:ChartArea>
                                        </ChartAreas>
                                        <BorderSkin BackColor="Transparent" PageColor="Transparent" SkinStyle="Emboss" />
                                    </asp:Chart>
                                    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:GameConnectString %>" SelectCommand="SELECT Team_Name, SUM(Point) AS [Accumulated Score] FROM game_grades WHERE (Week &lt;= 40) AND (Sports_category='soccer') GROUP BY Team_Name"></asp:SqlDataSource>
                                </div>
                
                                Montreal Impact:                               
        <br />
                                <asp:Label Style="font-family: seasideresortnfregular; color: cornsilk" runat="server" Text="0" ID="MontrealScore"></asp:Label>
                                <br />
                                <br>
                                Toronto FC:                               
        <br />
                                <asp:Label Style="font-family: seasideresortnfregular; color: cornsilk" runat="server" Text="0" ID="TorontoScore"></asp:Label>
                                <br/>
                                <img src="Assets/images/soccer.png"style="width:60px; height:50px" />
                                </p>                                                                         
                            </div>
                        </td>
                    </tr>

                </table>
            </div>
        </div>
    </div>
    <!--error button left-->
    <div class="container">
        <div class="row">
            <div class="col-sm-1" style="left: 60px; top: 300px; position: fixed">


                <asp:ImageButton ID="leftArrow" runat="server" ImageUrl="Assets/images/leftarrow.png" CssClass="arrow" OnClick="leftArrow_Click" />
                </asp:imagebutton>
            </div>
            <div class="col-sm-offset-10 col-sm-1" style="top: 300px; position: fixed;">
                <asp:ImageButton ID="rightArrow" runat="server" ImageUrl="Assets/images/rightArrow.png" CssClass="arrow" OnClick="rightArrow_Click" />
                </asp:imagebutton>
            </div>
        </div>
    </div>

</asp:Content>
