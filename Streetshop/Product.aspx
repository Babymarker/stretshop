<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Product.aspx.cs" Inherits="Streetshop.Product" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <br />
        <div>
            <asp:HiddenField ID="hfid" runat="server" />
            <table>
                <%--------------------------------------------------------------------------------------%>
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="Product-ID"></asp:Label>
                    </td>
                    <td colspan="2">
                        <asp:TextBox ID="TextBox1" runat="server" ></asp:TextBox>
                    </td>
                    <%-----------------------------------------------------------------------------------%>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="Name"></asp:Label>
                    </td>
                    <td colspan="2">
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    </td>
                     <%-----------------------------------------------------------------------------------%>
                      <td>
                        <asp:Label ID="Label3" runat="server" Text="Price"></asp:Label>
                    </td>
                    <td colspan="2">
                        <asp:TextBox ID="TextBox3" runat="server" ></asp:TextBox>
                    </td>
                </tr>
                 <%--------------------------------------------------------------------------------------%>
              
                <tr>
                    <td >
                        <asp:Label ID="Label4" runat="server" Text="EX-Price"></asp:Label>
                    </td>
                    <td colspan="2">
                        <asp:TextBox ID="TextBox4" runat="server" ></asp:TextBox>
                    </td>
                    <%--------------------------------------------------------------------------------------%>
                    <td >
                        <asp:Label ID="Label5" runat="server" Text="Stock"></asp:Label>
                    </td>
                    <td colspan="2">
                        <asp:TextBox ID="TextBox5" runat="server" ></asp:TextBox>
                    </td>
                    <%--------------------------------------------------------------------------------------%>
                    <td>
                        <asp:Label ID="Label6" runat="server" Text="Detail"></asp:Label>
                    </td>
                    <td colspan="2">
                        <asp:TextBox ID="TextBox6" runat="server" TextMode="MultiLine" Width="169px"></asp:TextBox>
                    </td>
                </tr>
                 <%--------------------------------------------------------------------------------------%>
                 <%--------------------------------------------------------------------------------------%>
                <tr>
                    <td>
                        <asp:Label ID="Label7" runat="server" Text="Brand-ID"></asp:Label>
                    </td>
                    <td colspan="2">
                        <asp:DropDownList ID="TextBox7" runat="server">
                            <asp:ListItem Text="GRAMICCI" Value="1"></asp:ListItem>
                            <asp:ListItem Text="CARHARTT WIP" Value="2"></asp:ListItem>
                            <asp:ListItem Text="STUSSY" Value="3"></asp:ListItem>
                            <asp:ListItem Text="ADIDAS " Value="4"></asp:ListItem>
                            <asp:ListItem Text="SSAP" Value="5"></asp:ListItem>
                            <asp:ListItem Text="FREITAG" Value="6"></asp:ListItem>
                            <asp:ListItem Text="GUCCI" Value="7"></asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <%--------------------------------------------------------------------------------------%>
                     <td>
                        <asp:Label ID="Label8" runat="server" Text="Category-ID"></asp:Label>
                    </td>
                   
                    <td colspan="2">
                        <asp:DropDownList ID="TextBox8" runat="server">
                            <asp:ListItem Text="Hats" Value="1"></asp:ListItem>
                            <asp:ListItem Text="Pants" Value="2"></asp:ListItem>
                            <asp:ListItem Text="Sneakers" Value="3"></asp:ListItem>
                            <asp:ListItem Text="Bags" Value="4"></asp:ListItem>
                            <asp:ListItem Text="Shorts" Value="5"></asp:ListItem>
                            <asp:ListItem Text="T-Shirts" Value="6"></asp:ListItem>
                            
                        </asp:DropDownList>
                    </td>
                    <td>
                        <asp:Label ID="Label9" runat="server" Text="Images"></asp:Label>
                    </td>
                    <td colspan="2">
                        <asp:FileUpload ID="FileUpload1" runat="server" Width="217px" />         
                    </td>
                    <td>&nbsp;</td>
                </tr>
                 <%--------------------------------------------------------------------------------------%>
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
        <asp:GridView ID="gvProduct" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" Width="1033px">
                <Columns>
                    <asp:BoundField DataField="product_id" HeaderText="Product-ID">
                    <FooterStyle Width="150px" />
                    <ItemStyle Width="100px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="name" HeaderText="Name" >
                    <ItemStyle Width="150px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="price" HeaderText="Price" />
                    <asp:BoundField DataField="ex_price" HeaderText="EX-Price" >
                    <ItemStyle Width="90px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="stock" HeaderText="Stock" />
                    <asp:BoundField DataField="detail" HeaderText="Detail" />
                    <asp:BoundField DataField="brand_id" HeaderText="Brand-ID" >
                    <ItemStyle Width="90px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="category_id" HeaderText="Category-ID" >
                    <ItemStyle Width="120px" />
                    </asp:BoundField>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:Button class="btn btn-primary" ID="lnkView" CommandArgument='<%# Eval("id") %>' OnClick="lnk_OnClick" runat="server" Text="View" />
                            <%--<asp:LinkButton ID="lnkView" runat="server" CommandArgument='<%# Eval("id") %>' OnClick="lnk_OnClick">View</asp:LinkButton>--%>
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

