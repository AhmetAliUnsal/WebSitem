<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="veri tabanı deneme.aspx.cs" Inherits="WebSitem.veri_tabanı_deneme" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Button ID="Button1" runat="server" Text="Entity framework deneme" OnClick="Button1_Click" /><br /><br />
            <asp:Label ID="Label1" runat="server" Text="Kullanıcı Adınız=  "></asp:Label><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><br />
            <asp:Label ID="Label2" runat="server" Text="Adınız Soyadınız="></asp:Label><asp:TextBox ID="TextBox2" runat="server"></asp:TextBox><br />
            <asp:Label ID="Label3" runat="server" Text="Tc Numaranız="></asp:Label><asp:TextBox ID="TextBox3" runat="server" MaxLength="11"></asp:TextBox><br />
            <asp:Label ID="Label4" runat="server" Text="Telefon Numaranız="></asp:Label><asp:TextBox ID="TextBox4" runat="server" MaxLength="11"></asp:TextBox><br />
            <asp:Label ID="Label5" runat="server" Text="E-mail Adresiniz="></asp:Label><asp:TextBox ID="TextBox5" runat="server" ></asp:TextBox><br />
            <asp:Button ID="Button2" runat="server" Text="Bilgileri Ekle" BackColor="Yellow" CssClass="button" Onclick="Button2_Click"/><br /><br /><hr />
            <asp:Label ID="Label6" runat="server" Text="Güncellenecek olan kişinin tcsini giriniz=:"></asp:Label><asp:TextBox ID="TextBox6" runat="server" MaxLength="11"></asp:TextBox><br />
            <asp:Button ID="Button3" runat="server" Text="Button" OnClick="Button3_Click" /><br /><br /><hr />
            <asp:Label ID="Label7" runat="server" Text="Silinecek olan kişinin tcsini giriniz=:"></asp:Label><asp:TextBox ID="TextBox7" runat="server" MaxLength="11"></asp:TextBox><br />
            <asp:Button ID="Button4" runat="server" Text="Sil Verileri" OnClick="Button4_Click" />
        </div>
        <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
    </form>
</body>
</html>