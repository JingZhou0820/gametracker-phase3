<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="updateDetail.aspx.cs" Inherits="gametracker_phase31.updateDetail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-offset-4 col-md-4">
                <div class="jumbotron jum-transparent" style="padding:20px">
                    <div class="form-group">
                     <label for="TeamNameTextBox">Team name: </label>
                    <asp:TextBox ID="TeamNameTextBox" runat="server" CssClass="form-control" Enabled="False"></asp:TextBox>
                    </div>
                      <div class="form-group" >
                     <label for="WeekTextBox">Week: </label>
                    <asp:TextBox ID="WeekTextBox" runat="server" CssClass="form-control" Enabled="False"></asp:TextBox>
                    </div>
                      <div class="form-group" >
                     <label for="CategoryTextBox">Sports Category: </label>
                    <asp:TextBox ID="CategoryTextBox" runat="server" CssClass="form-control" Enabled="False"></asp:TextBox>
                    </div>
                     <div class="form-group" >
                     <label for="PointTextBox" style="color:blue">Score: </label>
                    <asp:TextBox ID="PointTextBox" runat="server" CssClass="form-control" TextMode="number" value="0" min="0" max="100" ></asp:TextBox>
                    </div>
                    <asp:Button ID="UpdateButton" runat="server" Text="Update" CssClass="btn btn-success" Style="margin-right:50px" OnClick="UpdateButton_Click"/>
                    <asp:Button ID="CancelButton" runat="server" Text="Cancel" CssClass="btn btn-warning" OnClick="CancelButton_Click"  />
                    <br/> 
                    <asp:Label ID="errorLabel" runat="server" Text=""  Style="color:brown;padding-left:200px;font-size:large;padding-bottom:20px"></asp:Label>
                </div>
            </div>
        </div>
    </div>
           
</asp:Content>
