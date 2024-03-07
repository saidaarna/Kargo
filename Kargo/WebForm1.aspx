<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Kargo.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            color: #333;
            background-color: #f4f4f4;
            padding: 20px;
        }

        #div1 {
            background-color: #fff;
            max-width: 600px;
            margin: 20px auto;
            padding: 20px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
        }

        label {
            display: block;
            margin: 10px 0 5px;
            font-size: 16px;
            font-weight: 600;
            color: #555;
        }

        input[type="text"],
        select,
        .aspNetDisabled {
            width: 100%;
            padding: 8px;
            margin: 5px 0 20px;
            display: inline-block;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }

        input[type="text"]:focus,
        select:focus {
            border-color: #66afe9;
            outline: 0;
            box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075), 0 0 8px rgba(102, 175, 233, .6);
        }

        button,
        input[type="submit"],
        input[type="button"] {
            background-color: #4CAF50;
            color: white;
            padding: 14px 20px;
            margin: 8px 0;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
        }

        button:hover,
        input[type="submit"]:hover,
        input[type="button"]:hover {
            background-color: #45a049;
        }

        .aspNetDisabled {
            background-color: #ddd;
            color: #666;
        }
    </style>
     
   
    <div id="div1">
          <asp:Label ID="Label2" runat="server" Text="">Hesabla:</asp:Label><br />
        <asp:DropDownList ID="ddlCountry" runat="server" placeholder="Ölkə seç">
            <asp:ListItem Text="" Value="">Ölkə seç</asp:ListItem>
            <asp:ListItem Text="Türkiyə" Value="Türkiyə"></asp:ListItem>
            <asp:ListItem Text="Rusiya" Value="Rusiya"></asp:ListItem>
            <asp:ListItem Text="ABŞ" Value="ABŞ"></asp:ListItem>
        </asp:DropDownList>
        <br />
        <asp:DropDownList ID="ddlCargoType" runat="server" placeholder="Tip seç">
            <asp:ListItem Text="" Value="">Tip seç</asp:ListItem>
            <asp:ListItem Text="Maye" Value="Maye"></asp:ListItem>
            <asp:ListItem Text="Digər" Value="Digər"></asp:ListItem>
        </asp:DropDownList>
        <br />
        <asp:TextBox ID="txtWeight" runat="server" placeholder="Çəki (kq)"></asp:TextBox>
        <br />
        <asp:Button ID="btnCalculate" runat="server" Text="Hesabla" OnClick="btnCalculate_Click" />
    </div>
     <asp:Label ID="lblCost" runat="server" Text=""></asp:Label>
</asp:Content>
