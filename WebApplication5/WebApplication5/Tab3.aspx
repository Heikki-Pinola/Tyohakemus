<%@ Page Title="Aiemmin lähetetyt työhakemukset" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Tab3.aspx.cs" Inherits="WebApplication5.Tab3" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <section>
        <div>
            <hgroup>
                <h2><%: Page.Title %></h2>
            </hgroup>

            <asp:ListView ID="hakemusList" runat="server" 
                DataKeyNames="hakemusid" GroupItemCount="1"
                ItemType="WebApplication5.Hakemus" SelectMethod="GetHakemukset">
                <EmptyDataTemplate>
                    <table >
                        <tr>
                            <td>No data was returned.</td>
                        </tr>
                    </table>
                </EmptyDataTemplate>
                <EmptyItemTemplate>
                    <td> <td/>
                </EmptyItemTemplate>
                <GroupTemplate>
                    <tr id="itemPlaceholderContainer" runat="server">
                        <td id="itemPlaceholder" runat="server"></td>
                    </tr>
                </GroupTemplate>
                <ItemTemplate>

                    <h4>Työpaikan tiedot</h4> 

                    <td runat="server">
                        <table class="auto-style1">

                            <tr>  
                    <td class="auto-style3">  
                          <asp:Label ID="Label1" runat="server" Text="Avoin hakemus"></asp:Label>
                    </td>  
                    <td class="auto-style3">
                        <asp:RadioButton ID="RadioButtonAvoinKylla" runat="server" Text="Kyllä" GroupName="avoinhakemus" Enabled="False" Checked="<%# (bool)(Item.avoinhakemus == 1) %>" />
                        <asp:RadioButton ID="RadioButtonAvoinEi" runat="server" Text="Ei" GroupName="avoinhakemus" Enabled="False" Checked="<%# (bool)(Item.avoinhakemus == 0) %>" /> 
                    </td>  
                </tr> 
                <tr>  
                    <td class="auto-style3">  
                        <asp:Label ID="Label11" runat="server" Text="Työnantaja"></asp:Label></td>  
                    <td>  
                        <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style2" Enabled="False" Text="<%# Item.tyonantaja %>"></asp:TextBox></td>  
                </tr>  
                <tr>  
                    <td class="auto-style3">  
                        <asp:Label ID="Label12" runat="server" Text="Tehtävänimike"></asp:Label></td>  
                    <td>  
                        <asp:TextBox ID="TextBox7" runat="server" CssClass="auto-style2" Enabled="False" Text="<%# Item.tehtavanimike %>"></asp:TextBox></td>  
                </tr>  
                <tr>  
                    <td class="auto-style3">  
                        <asp:Label ID="Label4" runat="server" Text="Vaadittu osaaminen"></asp:Label></td>  
                    <td>  
                        <asp:TextBox TextMode="MultiLine" ID="TextBox10" runat="server" CssClass="auto-style2" Enabled="False" Text="<%# Item.vaadittuosaaminen %>"></asp:TextBox></td>  
                </tr> 
                <tr>  
                    <td class="auto-style3">  
                          <asp:Label ID="Label2" runat="server" Text="Tuliko vastausta"></asp:Label>
                    </td>  
                    <td class="auto-style3">
                        <asp:RadioButton ID="RadioButtonVastausKylla" runat="server" Text="Kyllä" GroupName="vastaus" Enabled="False" Checked="<%# (bool)(Item.tulikovastausta == 1) %>" />
                        <asp:RadioButton ID="RadioButtonVastausEi" runat="server" Text="Ei" GroupName="vastaus" Enabled="False" Checked="<%# (bool)(Item.tulikovastausta == 0) %>" /> 
                    </td>  
                </tr> 
                <tr>  
                    <td class="auto-style3">  
                          <asp:Label ID="Label3" runat="server" Text="Tuliko pakit"></asp:Label>
                    </td>  
                    <td class="auto-style3">
                        <asp:RadioButton ID="RadioButtonPakitKylla" runat="server" Text="Kyllä" GroupName="pakit" Enabled="False" Checked="<%# (bool)(Item.tulikopakit == 1) %>" />
                        <asp:RadioButton ID="RadioButtonPakitEi" runat="server" Text="Ei" GroupName="pakit" Enabled="False" Checked="<%# (bool)(Item.tulikopakit == 0) %>"/> 
                    </td>  
                </tr> 
                 <tr>  
                    <td class="auto-style3">  
                        <asp:Label ID="Label13" runat="server" Text="Perustelu valitsematta jättämiselle"></asp:Label></td>  
                    <td>  
                        <asp:TextBox TextMode="MultiLine" ID="TextBox8" runat="server" CssClass="auto-style2" Enabled="False" Text="<%# Item.perusteluvalitsematta %>"></asp:TextBox></td>  
                </tr> 
                <tr>  
                    <td class="auto-style3">  
                        <asp:Label ID="Label5" runat="server" Text="Päivämäärä"></asp:Label></td>  
                    <td>  
                       <asp:Label ID="Label6" runat="server" Text="<%# Item.hakemustehty %>"></asp:Label></td>  
                </tr> 

                <tr>  
                    <td class="auto-style3"> &nbsp; </td>  
                    <td> &nbsp;</td>  
                </tr>
                
                       </table>
                    </td>
                </ItemTemplate>   
            </asp:ListView>
        </div>
    </section>


</asp:Content>