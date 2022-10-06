<%@ Page Title="Tab1" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Tab1.aspx.cs" Inherits="WebApplication5.Tab1" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <!-- <h2><%: Title %>.</h2> -->
  
        <div>  
           <h4>Ilmoita opinto- ja asumistukesi tässä:</h4>  
            
            <table class="auto-style1">  
                <tr>  
                    <td class="auto-style3">  
                        <!--<a class="btn btn-default" id ="Button2"</a>-->
                        <asp:Label ID="Label1" runat="server" Text="Opintotuki"></asp:Label></td>  
                    <td>  
                        <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style2"></asp:TextBox></td>  
                </tr>  
                <tr>  
                    <td class="auto-style3">  
                        <asp:Label ID="Label2" runat="server" Text="Asumistuki"></asp:Label></td>  
                    <td>  
                        <asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style2"></asp:TextBox></td>  
                </tr>  
                <tr>  
                    <td class="auto-style3">  
                        <asp:Button ID="Button1" runat="server" Text="Ulosmittaa" OnClick="Button1_Click" BorderStyle="Solid" ToolTip="Submit"/>
                    </td>  
                </tr>  
            </table>          
        </div>  

        <div>  
           <h4></h4>  
            <asp:Label ID="Label7" runat="server" Text=""></asp:Label>

            <table class="auto-style1">  
                <tr>  
                    <td class="auto-style3">  
                        <asp:Label ID="Label3" runat="server" Text="Opintotuki"></asp:Label>&nbsp;
                    </td>  
                    <td>  
                        <asp:Label ID="Label4" runat="server" Text=""></asp:Label>
                    </td>  
                </tr>  
                <tr>  
                    <td class="auto-style3">  
                        <asp:Label ID="Label5" runat="server" Text="Asumistuki"></asp:Label>&nbsp;
                    </td>  
                    <td>  
                        <asp:Label ID="Label6" runat="server" Text=""></asp:Label>
                    </td>  
                </tr>  
            </table>
            <asp:Button ID="Button2" runat="server" Text="Tyhjennä" OnClick="Button2_Click" BorderStyle="Solid" ToolTip="Submit"/>

        </div> 



</asp:Content>