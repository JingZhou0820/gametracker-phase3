<%@ Page Title="Signup" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="signup.aspx.cs" Inherits="gametracker_phase31.Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <!--Author: Jing Zhou & Hinaben Patel-->
<!--Date : 07/10/2016-->
<!--Project Name: Game Tracker-->
<!--Description: Sign up page-->
     <div class="conatainer">
        <div class="row">
            <div class="col-md-offset-4 col-md-4">
                <h1 style="color:white;padding-left:160px">Registor</h1>
                <div class="jumbotron jum-transparent" style="padding:30px">
                <div class="input-group input-group-lg" >
        <span class="input-group-addon" id="sizing-addon1"><i class="fa fa-user fa-lg " aria-hidden="true"></i></span>
    <asp:TextBox ID="userNameTextBox" runat="server" Cssclass="form-control" aria-describedby="sizing-addon1" placeholder="Username"></asp:TextBox>
</div>
                    <div class="input-group input-group-lg" style="margin-top:20px">
        <span class="input-group-addon" id="sizing-addon3"><i class="fa fa-phone fa-lg" aria-hidden="true"></i></span>
    <asp:TextBox ID="phoneTextBox" runat="server" Cssclass="form-control" aria-describedby="sizing-addon3" placeholder="Phone"></asp:TextBox>
</div>
                    <div class="input-group input-group-lg"style="margin-top:20px" >
        <span class="input-group-addon" id="sizing-addon4"><i class="fa fa-envelope-o" aria-hidden="true"></i></span>
    <asp:TextBox ID="emailTextBox" runat="server" Cssclass="form-control" aria-describedby="sizing-addon4" placeholder="Email@example.com"></asp:TextBox>
</div>
                    <div class="input-group input-group-lg"style="margin-top:20px">
        <span class="input-group-addon" id="sizing-addon2"><i class="fa fa-key" aria-hidden="true"></i></span>
    <asp:TextBox ID="PasswordTextBox" runat="server" Cssclass="form-control" aria-describedby="sizing-addon2" placeholder="Password" TextMode="Password"></asp:TextBox>
</div>
                    <div class="input-group input-group-lg"style="margin-top:20px">
        <span class="input-group-addon" id="sizing-addon5"><i class="fa fa-check" aria-hidden="true"></i></span>
    <asp:TextBox ID="ConfirmTextBox" runat="server" Cssclass="form-control" aria-describedby="sizing-addon5" placeholder="Confirm Password" TextMode="Password"></asp:TextBox>
</div>
                    <div class="input-group input-group-lg"style="margin-top:20px">
                        <asp:CompareValidator ErrorMessage="Your passwords must match" Type="String" Operator="Equal" ControlToValidate="ConfirmTextBox" runat="server" ControlToCompare="PasswordTextBox" CssClass="label label-danger"></asp:CompareValidator>
</div>
<asp:Button ID="registorButton" runat="server" Text="Registor now" CssClass="btn btn-warning btn-lg" style="margin-top:20px;margin-left:100px" OnClick="registorButton_Click" />
      <br/>
                    <asp:Label ID="statusLabel" runat="server" Text="" CssClass="alert alert-warning" Visible="false"></asp:Label>         
            </div>
        </div>
    </div>
    </div>

</asp:Content>
