<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Money.aspx.cs" Inherits="PlzWork.Money" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Donations Predictor</title>
    <link rel="stylesheet" type="text/css" href="StyleSheet1.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Donation Predictor</h1>
            <h3>
            <asp:HyperLink ID="HyperLink1" NavigateUrl="Donators.aspx" runat="server">Donator Predictor</asp:HyperLink>
            <br />
            <asp:HyperLink ID="HyperLink2" NavigateUrl="https://coronacampaigns.herokuapp.com/" runat="server">Return to previous website</asp:HyperLink>
            </h3>
        </div>
        <table>
            <tr>
                <td>
                    Does your campaign auto update on facebook?
                </td>
                <td>
                    <asp:RadioButtonList ID="facebookupdate" runat="server">
                        <asp:ListItem selected="True" Value="0">No</asp:ListItem>
                        <asp:ListItem Value="0">Yes</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td>
                    What is the name of your campaign?
                </td>
                <td>
                    <asp:TextBox ID="ctitle" Columns="30" MaxLength="50" Text="" runat="server"/>
                </td>
            </tr>
            <tr>
               <td>
                    What is the campaign description?
                </td>
                <td>
                    <asp:TextBox ID="description" Columns="30" MaxLength="50" Text="" runat="server"/>
                </td>
            </tr>
            <tr>
                <td>
                    Do you have a beneficiary?
                </td>
                <td>
                    <asp:RadioButtonList ID="beneficiary" runat="server">
                        <asp:ListItem selected="True" Value="0">No</asp:ListItem>
                        <asp:ListItem Value="1">Yes</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td>
                    Is your campaign on facebook?
                </td>
                <td>
                    <asp:RadioButtonList ID="onfacebook" runat="server">
                        <asp:ListItem selected="True" Value="0">No</asp:ListItem>
                        <asp:ListItem Value="1">Yes</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td>
                    Is this a charity?
                </td>
                <td>
                    <asp:RadioButtonList ID="charity" runat="server">
                        <asp:ListItem selected="True" Value="0">No</asp:ListItem>
                        <asp:ListItem Value="1">Yes</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
               <td>
                   What is your campaigns goal?
                </td>
                <td>
                    <asp:TextBox ID="goal" Columns="30" MaxLength="50" Text="" runat="server"/>
                </td>
            </tr>
            <tr>
                <td>
                    Is this a for Accidents and Emergencies?
                </td>
                <td>
                    <asp:RadioButtonList ID="Accident" runat="server">
                        <asp:ListItem selected="True" Value="0">No</asp:ListItem>
                        <asp:ListItem Value="1">Yes</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td>
                    Is this a for Animals and/or Pets?
                </td>
                <td>
                    <asp:RadioButtonList ID="animals" runat="server">
                        <asp:ListItem selected="True" Value="0">No</asp:ListItem>
                        <asp:ListItem Value="1">Yes</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td>
                    Is this a for Babies, Kids, and Family?
                </td>
                <td>
                    <asp:RadioButtonList ID="baby" runat="server">
                        <asp:ListItem selected="True" Value="0">No</asp:ListItem>
                        <asp:ListItem Value="1">Yes</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td>
                    Is this a for Business and Entrepreneurs?
                </td>
                <td>
                    <asp:RadioButtonList ID="business" runat="server">
                        <asp:ListItem selected="True" Value="0">No</asp:ListItem>
                        <asp:ListItem Value="1">Yes</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td>
                    Is this a for Celebrations and/or Events?
                </td>
                <td>
                    <asp:RadioButtonList ID="celebrate" runat="server">
                        <asp:ListItem selected="True" Value="0">No</asp:ListItem>
                        <asp:ListItem Value="1">Yes</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td>
                    Is this a for Community and Neighboors?
                </td>
                <td>
                    <asp:RadioButtonList ID="community" runat="server">
                        <asp:ListItem selected="True" Value="0">No</asp:ListItem>
                        <asp:ListItem Value="1">Yes</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td>
                    Is this a for Competitions and Pageants?
                </td>
                <td>
                    <asp:RadioButtonList ID="competitions" runat="server">
                        <asp:ListItem selected="True" Value="0">No</asp:ListItem>
                        <asp:ListItem Value="1">Yes</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td>
                    Is this a for Creative Arts and Music and Film?
                </td>
                <td>
                    <asp:RadioButtonList ID="creative" runat="server">
                        <asp:ListItem selected="True" Value="0">No</asp:ListItem>
                        <asp:ListItem Value="1">Yes</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td>
                    Is this a for Dreams and Hopes and Wishes?
                </td>
                <td>
                    <asp:RadioButtonList ID="dream" runat="server">
                        <asp:ListItem selected="True" Value="0">No</asp:ListItem>
                        <asp:ListItem Value="1">Yes</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td>
                    Is this a for Education and Learning?
                </td>
                <td>
                    <asp:RadioButtonList ID="education" runat="server">
                        <asp:ListItem selected="True" Value="0">No</asp:ListItem>
                        <asp:ListItem Value="1">Yes</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td>
                    Is this a for Funerals and Memorials?
                </td>
                <td>
                    <asp:RadioButtonList ID="funerals" runat="server">
                        <asp:ListItem selected="True" Value="0">No</asp:ListItem>
                        <asp:ListItem Value="1">Yes</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td>
                    Is this a for Medical and Illness?
                </td>
                <td>
                    <asp:RadioButtonList ID="medical" runat="server">
                        <asp:ListItem selected="True" Value="0">No</asp:ListItem>
                        <asp:ListItem Value="1">Yes</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td>
                    Is this a for Missions and Faith and Church?
                </td>
                <td>
                    <asp:RadioButtonList ID="mission" runat="server">
                        <asp:ListItem selected="True" Value="0">No</asp:ListItem>
                        <asp:ListItem Value="1">Yes</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td>
                    Is this a for something not specified?
                </td>
                <td>
                    <asp:RadioButtonList ID="other" runat="server">
                        <asp:ListItem selected="True" Value="0">No</asp:ListItem>
                        <asp:ListItem Value="1">Yes</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td>
                    Is this a for Sports and Teams and Clubs?
                </td>
                <td>
                    <asp:RadioButtonList ID="sports" runat="server">
                        <asp:ListItem selected="True" Value="0">No</asp:ListItem>
                        <asp:ListItem Value="1">Yes</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td>
                    Is this a for Travel and Adventure?
                </td>
                <td>
                    <asp:RadioButtonList ID="Travel" runat="server">
                        <asp:ListItem selected="True" Value="0">No</asp:ListItem>
                        <asp:ListItem Value="1">Yes</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td>
                    Is this a for Volunteer and Service?
                </td>
                <td>
                    <asp:RadioButtonList ID="volunteer" runat="server">
                        <asp:ListItem selected="True" Value="0">No</asp:ListItem>
                        <asp:ListItem Value="1">Yes</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td>
                    Is this a for Weddings and Honeymoon?
                </td>
                <td>
                    <asp:RadioButtonList ID="wedding" runat="server">
                        <asp:ListItem selected="True" Value="0">No</asp:ListItem>
                        <asp:ListItem Value="1">Yes</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
              <tr>
                <td>
                    Is the country Australlia?
                </td>
                <td>
                    <asp:RadioButtonList ID="Australlia" runat="server">
                        <asp:ListItem selected="True" Value="0">No</asp:ListItem>
                        <asp:ListItem Value="1">Yes</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
              <tr>
                <td>
                    Is the country Canada?
                </td>
                <td>
                    <asp:RadioButtonList ID="Canada" runat="server">
                        <asp:ListItem selected="True" Value="0">No</asp:ListItem>
                        <asp:ListItem Value="1">Yes</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
              <tr>
                <td>
                    Is the country Switzerland?
                </td>
                <td>
                    <asp:RadioButtonList ID="Switzerland" runat="server">
                        <asp:ListItem selected="True" Value="0">No</asp:ListItem>
                        <asp:ListItem Value="1">Yes</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
              <tr>
                <td>
                    Is the country Germany?
                </td>
                <td>
                    <asp:RadioButtonList ID="Germany" runat="server">
                        <asp:ListItem selected="True" Value="0">No</asp:ListItem>
                        <asp:ListItem Value="1">Yes</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
              <tr>
                <td>
                    Is the country Spain?
                </td>
                <td>
                    <asp:RadioButtonList ID="Spain" runat="server">
                        <asp:ListItem selected="True" Value="0">No</asp:ListItem>
                        <asp:ListItem Value="1">Yes</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
              <tr>
                <td>
                    Is the country France?
                </td>
                <td>
                    <asp:RadioButtonList ID="France" runat="server">
                        <asp:ListItem selected="True" Value="0">No</asp:ListItem>
                        <asp:ListItem Value="1">Yes</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
              <tr>
                <td>
                    Is the country United Kingdom?
                </td>
                <td>
                    <asp:RadioButtonList ID="UnitedK" runat="server">
                        <asp:ListItem selected="True" Value="0">No</asp:ListItem>
                        <asp:ListItem Value="1">Yes</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
              <tr>
                <td>
                    Is the country Ireland?
                </td>
                <td>
                    <asp:RadioButtonList ID="Ireland" runat="server">
                        <asp:ListItem selected="True" Value="0">No</asp:ListItem>
                        <asp:ListItem Value="1">Yes</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
              <tr>
                <td>
                    Is the country Italy?
                </td>
                <td>
                    <asp:RadioButtonList ID="italy" runat="server">
                        <asp:ListItem selected="True" Value="0">No</asp:ListItem>
                        <asp:ListItem Value="1">Yes</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
              <tr>
                <td>
                    Is the country the Netherlands?
                </td>
                <td>
                    <asp:RadioButtonList ID="netherlands" runat="server">
                        <asp:ListItem selected="True" Value="0">No</asp:ListItem>
                        <asp:ListItem Value="1">Yes</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
              <tr>
                <td>
                    Is the country not listed here?
                </td>
                <td>
                    <asp:RadioButtonList ID="other2" runat="server">
                        <asp:ListItem selected="True" Value="0">No</asp:ListItem>
                        <asp:ListItem Value="1">Yes</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td>
                    Is the country the United States?
                </td>
                <td>
                    <asp:RadioButtonList ID="united" runat="server">
                        <asp:ListItem selected="True" Value="0">No</asp:ListItem>
                        <asp:ListItem Value="1">Yes</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr> 
                <td>
                    <asp:LinkButton class="button:hover" ID="submit" runat="server" OnClick="submit_Click">Submit</asp:LinkButton>
                </td>
            </tr>
            <tr>
                 
                <td>
                    <h1>
                        Results
                    </h1>
                    </td>
                
            </tr>
            <tr>
                 
                <td>
                   <h3> <asp:Label ID="lblResults" runat="server" Text=""></asp:Label> </h3>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>