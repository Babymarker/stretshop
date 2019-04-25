<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Product.aspx.cs" Inherits="Streetshop.Product" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <form id="form1" runat="server">
        <div>
            <asp:HiddenField ID="hfid" runat="server" />
            <table>
                <%--------------------------------------------------------------------------------------%>
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="product_id"></asp:Label>
                    </td>
                    <td colspan="2">
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </td>
                    <%-----------------------------------------------------------------------------------%>
                </tr>
                 <%--------------------------------------------------------------------------------------%>
                <tr>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="name"></asp:Label>
                    </td>
                    <td colspan="2">
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    </td>
                </tr>
                 <%--------------------------------------------------------------------------------------%>
                <tr>
                    <td>
                        <asp:Label ID="Label3" runat="server" Text="price"></asp:Label>
                    </td>
                    <td colspan="2">
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    </td>
                </tr>
                 <%--------------------------------------------------------------------------------------%>
                <tr>
                    <td>
                        <asp:Label ID="Label4" runat="server" Text="ex_price"></asp:Label>
                    </td>
                    <td colspan="2">
                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                    </td>
                </tr>
                 <%--------------------------------------------------------------------------------------%>
                <tr>
                    <td>
                        <asp:Label ID="Label5" runat="server" Text="stock"></asp:Label>
                    </td>
                    <td colspan="2">
                        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                    </td>
                </tr>
                 <%--------------------------------------------------------------------------------------%>
                <tr>
                    <td>
                        <asp:Label ID="Label6" runat="server" Text="detail"></asp:Label>
                    </td>
                    <td colspan="2">
                        <asp:TextBox ID="TextBox6" runat="server" TextMode="MultiLine" Width="163px"></asp:TextBox>
                    </td>
                </tr>
                 <%--------------------------------------------------------------------------------------%>
                <tr>
                    <td>
                        <asp:Label ID="Label7" runat="server" Text="brand_id"></asp:Label>
                    </td>
                    <td colspan="2">
                        <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                    </td>
                </tr>
                 <%--------------------------------------------------------------------------------------%>
                <tr>
                    <td>
                        <asp:Label ID="Label8" runat="server" Text="category_id"></asp:Label>
                    </td>
                    <td colspan="2">
                        <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                    </td>
                </tr>
                 <%--------------------------------------------------------------------------------------%>
                <tr>
                    <td>

                    </td>
                    <td colspan="2">
                        <asp:Button ID="btnSave" runat="server" Text="Save" OnClick="btnSave_Click" />
                        <asp:Button ID="btnDelete" runat="server" Text="Delete" OnClick="btnDelete_Click" />
                        <asp:Button ID="btnClear" runat="server" Text="Clear" OnClick="btnClear_Click" />
                    </td>
                </tr>
                <tr>
                    <td>

                    </td>
                    <td colspan="2">
                        <asp:Label ID="SucessMessage" runat="server" Text="" ForeColor="Green"></asp:Label>
                    </td>
                    <tr>
                    <td>

                    </td>
                    <td colspan="2">
                        <asp:Label ID="ErrorMessage" runat="server" Text="" ForeColor="Red"></asp:Label>
                    </td>
                    </tr>
                </tr>
                </table>
        <!-------------------------------------------GridView------------------------------------------------------>
        <br />
        <asp:GridView ID="gvProduct" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal">
                <Columns>
                    <asp:BoundField DataField="product_id" HeaderText="product_id" />
                    <asp:BoundField DataField="name" HeaderText="name" />
                    <asp:BoundField DataField="price" HeaderText="price" />
                    <asp:BoundField DataField="ex_price" HeaderText="ex_price" />
                    <asp:BoundField DataField="stock" HeaderText="stock" />
                    <asp:BoundField DataField="detail" HeaderText="detail" />
                    <asp:BoundField DataField="brand_id" HeaderText="brand_id" />
                    <asp:BoundField DataField="category_id" HeaderText="category_id" />
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:LinkButton ID="lnkView" runat="server" CommandArgument='<%# Eval("id") %>' OnClick="lnk_OnClick">View</asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F7F7F7" />
                <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                <SortedDescendingCellStyle BackColor="#E5E5E5" />
                <SortedDescendingHeaderStyle BackColor="#242121" />
            </asp:GridView>
    </div>
</form>
</asp:Content>
