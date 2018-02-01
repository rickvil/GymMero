<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <title>Credencial Única e instransferible</title>

    <style type="text/css">
    /* Take care of image borders and formatting, client hacks */
    img {
        max-width: 600px;
        outline: none;
        text-decoration: none;
        -ms-interpolation-mode: bicubic;
    }

    a img {
        border: none;
    }

    table {
        /*border-collapse: collapse !important;*/
        border-spacing: 10px;
        border-collapse: separate;
    }

    table td {
        border-collapse: collapse;
    }

    .ExternalClass * {
        line-height: 115%;
    }



    /* General styling */
    * {
        font-family: Helvetica, Arial, sans-serif;
    }

    body {
        -webkit-font-smoothing: antialiased;
        -webkit-text-size-adjust: none;
        width: 100% !important;
        margin: 0 !important;
        height: 100%;
        color: #676767;
    }

    td {
        font-family: Helvetica, Arial, sans-serif;
        font-size: 14px;
        color: #777777;
        text-align: center;
        line-height: 21px;
        padding: 10px;
    }

    a {
        color: #676767;
        text-decoration: none !important;
    }

    .header-sm {
        font-size: 32px;
        font-weight: 600;
        line-height: normal;
        padding: 35px 0 0;
        color: #4d4d4d;
    }


    .header-sm {
        padding: 5px 0;
        font-size: 18px;
        line-height: 1.3;
    }

    .credential{
        border: 5px solid #e5e5e5;
        border-radius: 10px;
        background-color: #ffffff;
        text-align: left;
        width: 50%;
        height: 150px;
        padding: 12px 15px 15px;
    }

    </style>

    <style type="text/css" media="screen">
    @import url(http://fonts.googleapis.com/css?family=Oxygen:400,700);
    </style>

    <style type="text/css" media="screen">
    @media screen {
        * {
            font-family: 'Oxygen', 'Helvetica Neue', 'Arial', 'sans-serif' !important;
        }
    }
    </style>


</head>

<body bgcolor="#f7f7f7">
<table width="100%">
    <tr>
        <td class="credential">
            <span class="header-sm">Merito: ${contractedPack.user.name} ${contractedPack.user.lastName} </span><br/>
            Actividad: ${contractedPack.activity.title} <br/>
            Tipo de Actividad: ${contractedPack.typeActivity.title} <br/>
            Desde: <g:formatDate format="dd-MM-yyyy" date="${contractedPack.contractStartDate}" />
            -
            Hasta: <g:formatDate format="dd-MM-yyyy" date="${contractedPack.contractEndDate}" /><br/><br/>
            <div><g:img dir="barCode" file="showBarcode?barcode=${contractedPack.barCode}" style="width: 300px; height: 30px;"/></div>
        </td>
        <td class="credential">
            <span class="header-sm">Date Shipped</span><br/>
            January 12, 2015 <br/>
            <br/>
            <span class="header-sm">Order</span> <br/>
            #12342
        </td>
    </tr>
</table>
</body>
</html>