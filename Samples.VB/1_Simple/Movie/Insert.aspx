﻿
<%@ Page Title="MovieInsert" Language="VB" MasterPageFile="~/Site.Master" CodeBehind="Insert.aspx.vb" Inherits="Samples.Insert" %>
<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <div>
		<p>&nbsp;</p>
        <asp:FormView runat="server"
            ItemType="Samples.Movie" DefaultMode="Insert"
            InsertItemPosition="FirstItem" InsertMethod="InsertItem"
            OnItemCommand="ItemCommand" RenderOuterTable="false">
            <InsertItemTemplate>
                <fieldset class="form-horizontal">
				<legend>Insert Movie</legend>
		        <asp:ValidationSummary runat="server" CssClass="alert alert-danger" />
						    <asp:DynamicControl Mode="Insert" DataField="Title" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="Director" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="Comments" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="Count" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="Price" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="ReleaseDate" runat="server" />
                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
                            <asp:Button runat="server" ID="InsertButton" CommandName="Insert" Text="Insert" CssClass="btn btn-primary" />
                            <asp:Button runat="server" ID="CancelButton" CommandName="Cancel" Text="Cancel" CausesValidation="false" CssClass="btn btn-default" />
                        </div>
					</div>
                </fieldset>
            </InsertItemTemplate>
        </asp:FormView>
    </div>
</asp:Content>
