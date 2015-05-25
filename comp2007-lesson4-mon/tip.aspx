<%@ Page Title="" Language="C#" MasterPageFile="~/lesson4.Master" AutoEventWireup="true" CodeBehind="tip.aspx.cs" Inherits="comp2007_lesson4_mon.tip" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h4>Enter Bill Details</h4>
    <div class="form-group">
        <label for="txtAmount" class="control-label">Bill Amount:</label>
        <asp:TextBox ID="txtAmount" runat="server" />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" 
            runat="server" ErrorMessage="Please enter a bill amount"
             CssClass="alert alert-danger" ControlToValidate="txtAmount"
            Display="Dynamic">
        </asp:RequiredFieldValidator>
        <asp:RangeValidator ID="RangeValidator1" runat="server" 
            ErrorMessage="Enter a numeric value greater than zero"
            MinimumValue="0.01" MaximumValue="99999999"
            CssClass="alert alert-danger"
            ControlToValidate="txtAmount"
            Type="Double" Display="Dynamic"></asp:RangeValidator>
    </div>
    <div class="form-group">
        <label for="ddlPercent" class="control-label">Tip %:</label>
        <asp:DropDownList ID="ddlPercent" runat="server">
            <asp:ListItem Value=".1" Text="10%"></asp:ListItem>
            <asp:ListItem Value=".15" Text="15%" Selected="True"></asp:ListItem>
            <asp:ListItem Value=".2" Text="20%"></asp:ListItem>
        </asp:DropDownList>
    </div>
    <div class="form-group">
        <asp:Button ID="btnCalculate" runat="server" Text="Calculate Tip" OnClick="btnCalculate_Click" />
    </div>
    <h4>Bill Totals</h4>
    <div>
        Tip Amount: <asp:Label ID="lblTip" runat="server"></asp:Label>
    </div>
    <div>
        Total: <asp:Label ID="lblTotal" runat="server"></asp:Label>
    </div>
</asp:Content>
