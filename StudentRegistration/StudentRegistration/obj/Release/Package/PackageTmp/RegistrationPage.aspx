<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistrationPage.aspx.cs" Inherits="StudentRegistration.RegistrationPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Temple Student Registration Form</title>
    <style type="text/css">
        #registrationForm {
            height: 1011px;
        }
    </style>
    <link rel="stylesheet" href="Registration.css" />
</head>
<body>
    <div class="nav">
        <p1>Temple University Class Registration Form</p1>
    </div>
    <form id="registrationForm" runat="server">
        <div style="height: 71px">
            <asp:CustomValidator ID="chckvalidator" runat="server" ErrorMessage="Course registration is required" OnServerValidate="chckvalidator_ServerValidate" ForeColor="Red" style="z-index: 1; left: 295px; top: 436px; position: absolute; height: 19px;"></asp:CustomValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Address cannot be blank" ControlToValidate="addresstxt" ForeColor="Red" style="z-index: 1; left: 613px; top: 292px; position: absolute"></asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Phone number cannot be blank" ControlToValidate="phoneNumbertxt" ForeColor="Red" style="z-index: 1; left: 615px; top: 152px; position: absolute"></asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Email cannot be blank" ControlToValidate="emailtxt" ForeColor="#FF3300" style="z-index: 1; left: 611px; top: 255px; position: absolute; height: 15px"></asp:RequiredFieldValidator>
            <asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" style="z-index: 1; left: 55px; top: 433px; position: absolute" Text="Submit Registration" />
            <asp:Label ID="namelbl" runat="server" style="z-index: 1; left: 63px; top: 109px; position: absolute; height: 19px; bottom: 485px;" Text="Please enter your name:"></asp:Label>
            <asp:Label ID="idlbl" runat="server" style="z-index: 1; left: 60px; top: 198px; position: absolute" Text="Please enter your student ID:"></asp:Label>
            <asp:TextBox ID="nametxt" runat="server" OnTextChanged="nametxt_TextChanged" style="z-index: 1; left: 378px; top: 110px; position: absolute"></asp:TextBox>
        
        <asp:TextBox ID="emailtxt" runat="server" style="z-index: 1; left: 375px; top: 199px; position: absolute"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Name cannot be blank" ControlToValidate="nametxt" style="z-index: 1; left: 608px; top: 113px; position: absolute; height: 20px;" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="ID cannot be blank" ControlToValidate="idtxt" ForeColor="#FF3300" style="z-index: 1; left: 619px; top: 200px; position: absolute"></asp:RequiredFieldValidator>
            <asp:Label ID="testlbl" runat="server" style="z-index: 1; left: 121px; top: 207px; position: absolute"></asp:Label>
        <p>
            <asp:TextBox ID="idtxt" runat="server" style="z-index: 1; left: 375px; top: 151px; position: absolute"></asp:TextBox>
            <asp:Label ID="emaillbl" runat="server" style="z-index: 1; left: 61px; top: 247px; position: absolute" Text="Please enter your email:"></asp:Label>
            <asp:Label ID="addresslbl" runat="server" style="z-index: 1; left: 59px; top: 291px; position: absolute" Text="Please enter your address:"></asp:Label>
            <asp:TextBox ID="addresstxt" runat="server" style="z-index: 1; left: 374px; top: 245px; position: absolute; height: 22px"></asp:TextBox>
            <asp:Label ID="phonelbl" runat="server" style="z-index: 1; left: 60px; top: 154px; position: absolute" Text="Please enter your phone: "></asp:Label>
            <asp:TextBox ID="phoneNumbertxt" runat="server" OnTextChanged="TextBox1_TextChanged" style="z-index: 1; left: 372px; top: 292px; position: absolute"></asp:TextBox>
            <asp:DropDownList ID="statusddl" runat="server" style="z-index: 1; left: 371px; top: 338px; position: absolute; height: 25px">
                <asp:ListItem>Full-time</asp:ListItem>
                <asp:ListItem>part-time</asp:ListItem>
            </asp:DropDownList>
            <asp:Label ID="statuslbl" runat="server" style="z-index: 1; left: 62px; top: 337px; position: absolute; right: 1220px" Text="Status:"></asp:Label>
            <asp:Label ID="paymentlbl" runat="server" style="z-index: 1; left: 58px; top: 379px; position: absolute" Text="Please choose your payment option:"></asp:Label>
            <asp:DropDownList ID="paymentddl" runat="server" style="z-index: 1; left: 370px; top: 381px; position: absolute">
                <asp:ListItem>Pay Now</asp:ListItem>
                <asp:ListItem>Payment Plan</asp:ListItem>
                <asp:ListItem>Financial Aid</asp:ListItem>
            </asp:DropDownList>
           
            <asp:GridView ID="gvInput" runat="server" CssClass="gvInput" RowStyle-CssClass="row" CellSpacing="5">
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
            <asp:GridView ID="gvOutput" runat="server" EnableTheming="False" style="z-index: 1; left: 46px; top: 552px; position: absolute; height: 212px; width: 403px" Visible="False">
            </asp:GridView>
        <br />
        <br />
        <br />
        
    </form>
    <p>
        &nbsp;</p>
    

</body>
    
</html>
