<%@ Page Title="Lähetetyn työhakemuksen lisäys" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Tab2.aspx.cs" Inherits="WebApplication5.Tab2" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Lähetetyn työhakemuksen lisäys</h2>

        <div>  
           <h4>Työpaikan tiedot</h4>  
            
            <table class="auto-style1"> 
                <tr>  
                    <td class="auto-style3">  
                          <asp:Label ID="Label16" runat="server" Text="Avoin hakemus"></asp:Label>
                    </td>  
                    <td class="auto-style3">
                        <asp:RadioButton ID="RadioButtonAvoinKyllaValinta" runat="server" Text="Kyllä" GroupName="avoinhakemus" />
                        <asp:RadioButton ID="RadioButtonAvoinEiValinta" runat="server" Text="Ei" GroupName="avoinhakemus" /> 
                    </td>  
                </tr> 
                <tr>  
                    <td class="auto-style3">  
                        <!--<a class="btn btn-default" id ="Button2"</a>-->
                        <asp:Label ID="Label8" runat="server" Text="Työnantaja"></asp:Label></td>  
                    <td>  
                        <asp:TextBox ID="TextBox3" runat="server" CssClass="auto-style2"></asp:TextBox></td>  
                </tr>
                <tr>  
                    <td class="auto-style3">  
                        <asp:Label ID="Label9" runat="server" Text="Tehtävänimike"></asp:Label></td>  
                    <td>  
                        <asp:TextBox ID="TextBox4" runat="server" CssClass="auto-style2"></asp:TextBox></td>  
                </tr>  
                <tr>  
                    <td class="auto-style3">  
                        <asp:Label ID="Label15" runat="server" Text="Vaadittu osaaminen"></asp:Label></td>  
                    <td>  
                        <asp:TextBox TextMode="MultiLine" ID="TextBox9" runat="server" CssClass="auto-style2"></asp:TextBox></td>  
                </tr> 
                <tr>  
                    <td class="auto-style3">  
                          <asp:Label ID="Label17" runat="server" Text="Tuliko vastausta"></asp:Label>
                    </td>  
                    <td class="auto-style3">
                        <asp:RadioButton ID="RadioButtonVastausKyllaValinta" runat="server" Text="Kyllä" GroupName="vastaus" />
                        <asp:RadioButton ID="RadioButtonVastausEiValinta" runat="server" Text="Ei" GroupName="vastaus" /> 
                    </td>  
                </tr> 
                <tr>  
                    <td class="auto-style3">  
                          <asp:Label ID="Label14" runat="server" Text="Tuliko pakit"></asp:Label>
                    </td>  
                    <td class="auto-style3">
                        <asp:RadioButton ID="RadioButtonPakitKyllaValinta" runat="server" Text="Kyllä" GroupName="pakit" />
                        <asp:RadioButton ID="RadioButtonPakitEiValinta" runat="server" Text="Ei" GroupName="pakit" /> 
                    </td>  
                </tr> 
                 <tr>  
                    <td class="auto-style3">  
                        <asp:Label ID="Label10" runat="server" Text="Perustelu valitsematta jättämiselle"></asp:Label></td>  
                    <td>  
                        <asp:TextBox TextMode="MultiLine" ID="TextBox5" runat="server" CssClass="auto-style2"></asp:TextBox></td>  
                </tr> 
                
                <tr>  
                    <td class="auto-style3">  
                        <asp:Button ID="Button3" runat="server" Text="Lisää" OnClick="Button3_Click" BorderStyle="Solid" ToolTip="Submit"/>
                    </td>  
                </tr>  
            </table>          
        </div>  

    <div>  
           <h4>Työpaikan tiedot</h4>  
            
            <table class="auto-style1"> 
                <tr>  
                    <td class="auto-style3">  
                          <asp:Label ID="Label1" runat="server" Text="Avoin hakemus"></asp:Label>
                    </td>  
                    <td class="auto-style3">
                        <asp:RadioButton ID="RadioButtonAvoinKylla" runat="server" Text="Kyllä" GroupName="avoinhakemus" />
                        <asp:RadioButton ID="RadioButtonAvoinEi" runat="server" Text="Ei" GroupName="avoinhakemus" /> 
                    </td>  
                </tr> 
                <tr>  
                    <td class="auto-style3">  
                        <!--<a class="btn btn-default" id ="Button2"</a>-->
                        <asp:Label ID="Label11" runat="server" Text="Työnantaja"></asp:Label></td>  
                    <td>  
                        <asp:TextBox ID="TextBox6" runat="server" CssClass="auto-style2"></asp:TextBox></td>  
                </tr>  
                <tr>  
                    <td class="auto-style3">  
                        <asp:Label ID="Label12" runat="server" Text="Tehtävänimike"></asp:Label></td>  
                    <td>  
                        <asp:TextBox ID="TextBox7" runat="server" CssClass="auto-style2"></asp:TextBox></td>  
                </tr>  
                <tr>  
                    <td class="auto-style3">  
                        <asp:Label ID="Label4" runat="server" Text="Vaadittu osaaminen"></asp:Label></td>  
                    <td>  
                        <asp:TextBox TextMode="MultiLine" ID="TextBox10" runat="server" CssClass="auto-style2"></asp:TextBox></td>  
                </tr> 
                <tr>  
                    <td class="auto-style3">  
                          <asp:Label ID="Label2" runat="server" Text="Tuliko vastausta"></asp:Label>
                    </td>  
                    <td class="auto-style3">
                        <asp:RadioButton ID="RadioButtonVastausKylla" runat="server" Text="Kyllä" GroupName="vastaus" />
                        <asp:RadioButton ID="RadioButtonVastausEi" runat="server" Text="Ei" GroupName="vastaus" /> 
                    </td>  
                </tr> 
                <tr>  
                    <td class="auto-style3">  
                          <asp:Label ID="Label3" runat="server" Text="Tuliko pakit"></asp:Label>
                    </td>  
                    <td class="auto-style3">
                        <asp:RadioButton ID="RadioButtonPakitKylla" runat="server" Text="Kyllä" GroupName="pakit" />
                        <asp:RadioButton ID="RadioButtonPakitEi" runat="server" Text="Ei" GroupName="pakit" /> 
                    </td>  
                </tr> 
                 <tr>  
                    <td class="auto-style3">  
                        <asp:Label ID="Label13" runat="server" Text="Perustelu valitsematta jättämiselle"></asp:Label></td>  
                    <td>  
                        <asp:TextBox TextMode="MultiLine" ID="TextBox8" runat="server" CssClass="auto-style2"></asp:TextBox></td>  
                </tr> 

            </table>          
        </div>  

    

</asp:Content>