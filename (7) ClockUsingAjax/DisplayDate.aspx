<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DisplayDate.aspx.cs" Inherits="AjaxDemo.DisplayDate" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        &nbsp;&nbsp;
            <asp:Label ID="lbldate" runat="server" Font-Size="X-Large" ForeColor="#CC0000"></asp:Label>
            <br />
            <br />
&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnwithoutajax" runat="server" Font-Size="X-Large" OnClick="btnwithoutajax_Click" Text="Without Ajax" />
            <br />
            <br />
            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
            <br />
            <br />
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    &nbsp;&nbsp;
                    <asp:Label ID="lblajaxdate" runat="server" Font-Size="X-Large"></asp:Label>
                    <br />
                    <br />
                    &nbsp;&nbsp;
                </ContentTemplate>
                <Triggers>
                    <asp:AsyncPostBackTrigger ControlID ="btnwithajax" EventName="Click" />
                </Triggers>
            </asp:UpdatePanel>
            &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnwithajax" runat="server" Font-Size="X-Large" OnClick="btnwithajax_Click" Text="With Ajax" />
        </div>
    </form>
</body>
</html>
