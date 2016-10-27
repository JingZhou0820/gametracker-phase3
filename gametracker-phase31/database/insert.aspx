<%@ Page Title="Insert" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="insert.aspx.cs" Inherits="gametracker_phase31.enrollments" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
<!--Author: Jing Zhou & Hinaben Patel-->
<!--Date : 07/10/2016-->
<!--Project Name: Game Tracker-->
<!--Description: Insert new data page-->

    <div class="container" style="color:black">
    <div class="row">
        <div class="col-md-offset-3 col-md-7" style="margin-top:20px">
             <h1 style="padding-left:250px;color:white">Add Data</h1>
            <div class="jumbotron jum-transparent">
            <table >
                <tr >
                    <td style="padding:30px">
                        <label for="sportsCaegory">Sports category: </label>
                        <select id="sportsCategory" runat="server">
                            <option value="cricket">cricket </option>
                               <option value="baseball">baseball </option>
                            <option value="basketball">basketball </option>
                             <option value="soccer">soccer </option>
                        </select>
                    </td>
                    <td>
                        <label for="week">Week: </label>
                        <select id="week" runat="server">
                            <option value="40">week 40 </option>
                            <option value="41">week 41 </option>
                            <option value="42">week 42 </option>
                            <option value="43">week 43 </option>
                        </select>
                    </td>
                    <td>   
                        <label></label> 
                        <asp:Button ID="selectButton"  runat="server" Text="Insert data"   style="margin-top:30px" OnClick="selectButton_Click"/>
</td>

    <asp:Label ID="errorLabel" runat="server" Text="" Style="color: brown; padding-left: 200px; font-size: large; padding-bottom: 20px"></asp:Label></td>
               
    </tr>
    <tr>
        <td >
            <asp:Button ID="checkButton" runat="server" Text="Check data" Style="margin-top:0px" CssClass="btn btn-info" OnClick="checkButton_Click" />
        </td>
    </tr>
    </table>
    <asp:Label ID="reminderInformation" runat="server" Text="" Style="padding-left: 30px; color: yellow"></asp:Label>
    </div>
    <div class="jumbotron jum-transparent" id="detailAddform" runat="server" style="display: none" visible="false">
                    <table style="width:100%">
                        <tr>    
                            <td style="padding-left:200px;padding-top:20px"> 
                                <asp:Label ID="categoryandweekLabel" runat="server"  style="font-size:large;color:black;" ></asp:Label>
                            </td>
                           
                        </tr>

                    </table>
                    
                    <div class="form-group" >
                    <label for="teamNameTextBox">Team Name: </label>
                    <select runat="server" class="form-control" id="teamnameTextBox"></select>
                </div>
                <div class="form-group">
                    <label for="scoreBox">Score</label>
                    <asp:TextBox CssClass="form-control" ID="scoreBox" runat="server" TextMode="number" value="0" min="0" max="100"></asp:TextBox>
                </div>
                    <asp:Button ID="AddButton" runat="server" Text="Add" OnClick="AddButton_Click" style="margin-bottom:20px"  /> 
                    <asp:Button ID="CancelButoon" runat="server" Text="Cancel" style="margin-bottom:20px" OnClick="CancelButoon_Click" />
                    
        </div>
            <div class="jumbotron jum-transparent" style="padding:30px;display:none" runat="server" id="detaildatafield" visible="false">
                    <asp:GridView ID="ShowDataGridView" runat="server" AutoGenerateColumns="false" CssClass="table table-bordered table-hover"
                        style="padding-top:30px" >
                        <Columns>
                            <asp:BoundField DataField="Team_Name" HeaderText="Team Name" Visible="true" />
                            <asp:BoundField DataField="Week" HeaderText="Week" Visible="true" />
                            <asp:BoundField DataField="Point" HeaderText="Score" Visible="true" />
                            
                        </Columns>
                    </asp:GridView>
               
        </div>
    </div>
    </div>
</asp:Content>

