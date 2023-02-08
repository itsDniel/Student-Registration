<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistrationPage.aspx.cs" Inherits="StudentRegistration.RegistrationPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Temple Student Registration Form</title>
    <style type="text/css">
        #registrationForm {
            height: 697px;
        }
    </style>
</head>
<body>
    <form id="registrationForm" runat="server">
        <div style="height: 71px">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Address cannot be blank" ControlToValidate="addresstxt" ForeColor="Red" style="z-index: 1; left: 492px; top: 166px; position: absolute"></asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Phone number cannot be blank" ControlToValidate="phoneNumbertxt" ForeColor="Red" style="z-index: 1; left: 492px; top: 202px; position: absolute"></asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Email cannot be blank" ControlToValidate="emailtxt" ForeColor="#FF3300" style="z-index: 1; left: 493px; top: 124px; position: absolute; height: 15px"></asp:RequiredFieldValidator>
            <asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" style="z-index: 1; left: 650px; top: 668px; position: absolute" Text="Submit Registration" />
            <asp:Label ID="namelbl" runat="server" style="z-index: 1; left: 48px; top: 24px; position: absolute" Text="Please enter your name:"></asp:Label>
            <asp:Label ID="idlbl" runat="server" style="z-index: 1; left: 47px; top: 78px; position: absolute" Text="Please enter your student ID:"></asp:Label>
            <asp:TextBox ID="nametxt" runat="server" OnTextChanged="nametxt_TextChanged" style="z-index: 1; left: 302px; top: 23px; position: absolute"></asp:TextBox>
        
        <asp:TextBox ID="emailtxt" runat="server" style="z-index: 1; left: 301px; top: 122px; position: absolute"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Name cannot be blank" ControlToValidate="nametxt" style="z-index: 1; left: 490px; top: 22px; position: absolute" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="ID cannot be blank" ControlToValidate="idtxt" ForeColor="#FF3300" style="z-index: 1; left: 489px; top: 75px; position: absolute"></asp:RequiredFieldValidator>
            <asp:Label ID="testlbl" runat="server" style="z-index: 1; left: 53px; top: 52px; position: absolute"></asp:Label>
        <p>
            <asp:TextBox ID="idtxt" runat="server" style="z-index: 1; left: 302px; top: 78px; position: absolute"></asp:TextBox>
            <asp:Label ID="emaillbl" runat="server" style="z-index: 1; left: 46px; top: 122px; position: absolute" Text="Please enter your email:"></asp:Label>
            <asp:Label ID="addresslbl" runat="server" style="z-index: 1; left: 46px; top: 167px; position: absolute" Text="Please enter your address:"></asp:Label>
            <asp:TextBox ID="addresstxt" runat="server" style="z-index: 1; left: 302px; top: 165px; position: absolute; height: 22px"></asp:TextBox>
            <asp:Label ID="phonelbl" runat="server" style="z-index: 1; left: 46px; top: 205px; position: absolute" Text="Please enter your phone: "></asp:Label>
            <asp:TextBox ID="phoneNumbertxt" runat="server" OnTextChanged="TextBox1_TextChanged" style="z-index: 1; left: 302px; top: 205px; position: absolute"></asp:TextBox>
            <asp:DropDownList ID="statusddl" runat="server" style="z-index: 1; left: 301px; top: 250px; position: absolute; height: 25px">
                <asp:ListItem>full-time</asp:ListItem>
                <asp:ListItem>part-time</asp:ListItem>
            </asp:DropDownList>
            <asp:Label ID="statuslbl" runat="server" style="z-index: 1; left: 47px; top: 248px; position: absolute; right: 1235px" Text="Status:"></asp:Label>
            <asp:Label ID="paymentlbl" runat="server" style="z-index: 1; left: 49px; top: 288px; position: absolute" Text="Please choose your payment option:"></asp:Label>
            <asp:DropDownList ID="paymentddl" runat="server" style="z-index: 1; left: 361px; top: 289px; position: absolute">
                <asp:ListItem>pay now</asp:ListItem>
                <asp:ListItem>payment plan</asp:ListItem>
                <asp:ListItem>financial aid</asp:ListItem>
            </asp:DropDownList>
           
            <asp:GridView ID="gvInput" runat="server" style="z-index: 1; left: 49px; top: 362px; position: absolute; height: 152px; width: 331px">
                <Columns>
                    <asp:TemplateField HeaderText="Section">
                        <ItemTemplate>
                            <asp:CheckBox ID="sectionchck" runat="server" />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Course Delivery">
                        <ItemTemplate>
                            <asp:DropDownList ID="deliveryddl" runat="server">
                                <asp:ListItem>Traditional</asp:ListItem>
                                <asp:ListItem>Online</asp:ListItem>
                                <asp:ListItem>Hybrid</asp:ListItem>
                            </asp:DropDownList>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
            </div>
            <asp:GridView ID="gvOutput" runat="server" EnableTheming="False" style="z-index: 1; left: 43px; top: 365px; position: absolute; height: 212px; width: 403px" Visible="False">
            </asp:GridView>
        </p>
    </form>
    <p>
        &nbsp;</p>
</body>
</html>
