<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OnFocusBlur.aspx.cs" Inherits="jQueryOnfocusAndblurExample.OnFocusBlur" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <title>AspnetO.com | jQuery on focus and blur textbox change color example</title>

    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.6.2/jquery.min.js"></script>

    <script type="text/javascript">
        $(document).ready(function () {
            //jQuery on focus method for HTML input
            $('input[type="text"]').focus(function () {
                $(this).addClass("txtFocus");
            });

            //jQuery on blur method for HTML input
            $('input[type="text"]').blur(function () {
                $(this).removeClass("txtFocus");
            });

            //jQuery on focus method for asp.net control
            $('#txtTextbox').focus(function () {
                $(this).addClass("txtFocus");
            });

            //jQuery on blur method for asp.net control
            $('#txtTextbox').blur(function () {
                $(this).removeClass("txtFocus");
            });
        });
    </script>
    <style type="text/css">
        .txtFocus {
            border: 1px solid #fefefe;
            background-color: #e5e5e5;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h4>jQuery on focus and blur textbox change color example</h4>
            <table>
                <tr>
                    <td>To test jQuery "focus" event, click on any of the textbox and click outside textbox
                    to test "blur" event
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;
                    </td>
                </tr>
                <tr>
                    <td>HTML input example:
                    <input type="text" id="txtInput" />
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;
                    </td>
                </tr>
                <tr>
                    <td>Asp.net textbox example:
                    <asp:TextBox ID="txtTextbox" runat="server" ClientIDMode="Static" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
