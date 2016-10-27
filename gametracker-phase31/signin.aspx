<%@ Page Title="Signin" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="signin.aspx.cs" Inherits="gametracker_phase31.About" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <!--Author: Jing Zhou & Hinaben Patel-->
<!--Date : 07/10/2016-->
<!--Project Name: Game Tracker-->
<!--Description: Sign in page-->
    <div class="conatainer">
        <div class="row">
            <div class="col-md-offset-4 col-md-4">
                <h1 style="color:white;padding-left:160px">Sign In</h1>
                <div class="jumbotron jum-transparent" style="padding:30px">
                <div class="input-group input-group-lg" >
        <span class="input-group-addon" id="sizing-addon1"><i class="fa fa-user fa-lg" aria-hidden="true"></i></span>
    <asp:TextBox ID="userNameTextBox" runat="server" Cssclass="form-control" aria-describedby="sizing-addon1" placeholder="Username"></asp:TextBox>
</div>
                    <div class="input-group input-group-lg"style="margin-top:20px">
        <span class="input-group-addon" id="sizing-addon2"><i class="fa fa-key" aria-hidden="true"></i></span>
    <asp:TextBox ID="PasswordTextBox" runat="server" Cssclass="form-control" aria-describedby="sizing-addon2" placeholder="Password" TextMode="Password"></asp:TextBox>
</div>
<asp:Button ID="SigninButton" runat="server" Text="Sign In" CssClass="btn btn-success btn-lg" style="margin-top:20px;margin-left:150px" OnClick="SigninButton_Click" />
      <br/>
        <a href="signup.aspx"> <h5 style="color:red;margin-left:90px">Don't have account? Registor now!</h5>  </a>    
                    <br />
                    <asp:Label ID="statusLabel" runat="server" Text="" CssClass="alert alert-danger" Visible="false" Style="margin-left:70px"></asp:Label>
            </div>
        </div>
    </div>
    </div>
</asp:Content>
