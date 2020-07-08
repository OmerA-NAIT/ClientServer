<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Exercise07.aspx.cs" Inherits="WebApp.Exercises.Exercise07" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Exercise 07</h1>
    <div class="offset-2">
        <asp:Label ID="Label1" runat="server" Text="Select a Team "></asp:Label>&nbsp;&nbsp;   
        <asp:DropDownList ID="List01" runat="server"></asp:DropDownList>&nbsp;&nbsp;
        <asp:Button ID="Fetch" runat="server" Text="Fetch" 
             CausesValidation="false" OnClick="Fetch_Click"/>
    </div>
   <!--<div class="row">
        <div class="col-md-4 text-right">
            <asp:Label ID="IDLabel01" runat="server" ></asp:Label>
        </div>
        <div class="col-md-4 text-left">
            <asp:Label ID="IDLabel02" runat="server" ></asp:Label>
        </div>
    </div>
    <div class="row">
        <div class="col-md-4 text-right">
            <asp:Label ID="NameLabel01" runat="server" ></asp:Label>
        </div>
        <div class="col-md-4 text-left">
            <asp:Label ID="NameLabel02" runat="server" ></asp:Label>
        </div>
    </div>*/-->
    <div class="row">
        <div class="col-md-4 text-right">
            <asp:Label ID="CoachLabel01" runat="server" ></asp:Label>
        </div>
        <div class="col-md-4 text-left">
            <asp:Label ID="CoachLabel02" runat="server" ></asp:Label>
        </div>
    </div>
    <div class="row">
        <div class="col-md-4 text-right">
            <asp:Label ID="AssistantCoachLabel01" runat="server" ></asp:Label>
        </div>
        <div class="col-md-4 text-left">
            <asp:Label ID="AssistantCoachLabel02" runat="server" ></asp:Label>
        </div>
    </div>
    <div class="row">
        <div class="col-md-4 text-right">
            <asp:Label ID="WinsLabel01" runat="server" ></asp:Label>
        </div>
        <div class="col-md-4 text-left">
            <asp:Label ID="WinsLabel02" runat="server" ></asp:Label>
        </div>
    </div>
    <div class="row">
        <div class="col-md-4 text-right">
            <asp:Label ID="LossesLabel01" runat="server" ></asp:Label>
        </div>
        <div class="col-md-4 text-left">
            <asp:Label ID="LossesLabel02" runat="server" ></asp:Label>
        </div>
    </div>
    <div class="row">
        <div class="col-md-4 text-right">
            <asp:Label ID="MessageLabel" runat="server" ></asp:Label>
        </div>
    </div>    
    <br /><br />
    <div>
        <asp:GridView ID="List02" runat="server" 
            AutoGenerateColumns="False"
            CssClass="table table-striped" GridLines="Horizontal"
            BorderStyle="None" AllowPaging="True"
            OnPageIndexChanging="List02_PageIndexChanging" PageSize="5">

            <Columns>
                <asp:TemplateField HeaderText="Player">
                    <ItemStyle HorizontalAlign="Left"></ItemStyle>
                    <ItemTemplate>
                        <asp:Label ID="PlayerName" runat="server" 
                            Text='<%# Eval("PlayerName") %>'>
                        </asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Age">
                    <HeaderStyle HorizontalAlign="Right"></HeaderStyle>
                    <ItemStyle HorizontalAlign="Left"></ItemStyle>
                     <ItemTemplate>
                        <asp:Label ID="Age" runat="server" 
                            Text='<%# string.Format("{0}",Eval("Age"))%>'>
                        </asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Gender">
                    <ItemStyle HorizontalAlign="Left"></ItemStyle>
                    <ItemTemplate>
                        <asp:Label ID="Gender" runat="server" 
                            Text='<%# (Eval("Gender").ToString() == "F" ? "Female" : "Male") %>'>
                        </asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Med Alert">
                    <ItemStyle HorizontalAlign="Left"></ItemStyle>
                    <ItemTemplate>
                        <asp:Label ID="MedAlert" runat="server" 
                            Text='<%# Eval("MedicalAlertDetails") %>'>
                        </asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <EmptyDataTemplate>
                No Data available at this time.
            </EmptyDataTemplate>
            <PagerSettings FirstPageText="Start" LastPageText="End" Mode="NumericFirstLast" PageButtonCount="3" />
        </asp:GridView>
    </div>
</asp:Content>
