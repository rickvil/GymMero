<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <title>Credencial Única e instransferible</title>

    <style type="text/css">
    @media print
    {
        .no-print, .no-print *
        {
            display: none !important;
        }
    }

    table {
        border-spacing: 10px;
        border-collapse: separate;
    }

    /*.ExternalClass * { line-height: 115%; }*/

    * { font-family: Helvetica, Arial, sans-serif; }

    body {
        -webkit-font-smoothing: antialiased;
        -webkit-text-size-adjust: none;
        width: 100% !important;
        margin: 0 !important;
        height: 100%;
        color: #676767;
    }

    a {
        color: #676767;
        text-decoration: none !important;
    }

    .header-sm {
        padding: 5px 0;
        font-size: 14px;
        line-height: 1.3;
        font-weight: 600;
        color: #000;
        text-decoration: underline;
    }

    .description {
        font-size: 10px;
        line-height: 1.3;
    }

    .credential{
        border: 5px solid #676767;
        border-radius: 10px;
        background-color: #ffffff;
        text-align: left;
        width: 50%;
        height: 100px;
        padding: 3px 3px 3px;
        font-size: 12px;
    }

    .lettermin{
        font-size: 6px;
        text-align: center !important;
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
<center>
    <span class="lettermin" style="color:black">
        _________________________________________________________________________________________________________________________________________________________________________________________________________________
    </span>
</center>
<table width="100%">
    <tr>

        <td class="credential">
            <table>
                <tr>
                    <td>
                        <img src="${resource(file:'logo.jpg')}" alt="logo" style="width: 100px; margin:2px auto;display:block;">
                    </td>
                    <td>
                        <span class="header-sm">MERITO: </span>
                        <span class="header-sm" style="font-size: x-small">${contractedPack.user.lastName}, ${contractedPack.user.name} </span><br/>
                        <span class="header-sm" style="font-size: x-small">${contractedPack.user.dni}</span><br/><br/>
                        <span style="color: blue">PACKS: </span>
                        <span class="description" style="color: blue">${contractedPack.activity.title}</span><br/>
                        <span class="description" style="color: blue">${contractedPack.typeActivity.title}</span><br/><br/>
                        <span style="color: red">VALIDO: </span>
                        <span class="description" style="color: red"><g:formatDate format="dd-MM-yyyy" date="${contractedPack.contractStartDate}" />
                            /
                            <g:formatDate format="dd-MM-yyyy" date="${contractedPack.contractEndDate}" /></span>
                    </td>
                </tr>
            </table>
            <center>
                <div><g:img dir="barCode" file="showBarcode?barcode=${contractedPack.barCode}" style="width: 200px; height: 30px;"/></div>
                <span style="font-size: xx-small; color:black">${barCodeComplete}</span>
            </center>

        </td>
        <td class="credential">
            <span>
                <img src="${resource(file:'facebook.png')}" style="width: 20px"/>
                <span class="description"> /BAILAMERO</span>
            </span><br/>
            <span>
                <img src="${resource(file:'whatsapp.png')}" style="width: 20px"/>
                <span class="description"> +5493884297472</span>
            </span><br/>
            <span>
                <img src="${resource(file:'gmaps.png')}" style="width: 20px"/>
                <span class="description"> Juana Manuela Gorriti 127 - San Salvador de Jujuy</span>
            </span><br/>
            <br/>
            <center>
                <span class="lettermin" style="color:black">
                    LAS CUOTAS SON PERSONALES Y NO REINTEGRABLES.
                    NO SE RECUPERAN CLASES, EXCEPTO POR AUSENCIA DEL INSTRUCTOR O PARTICULAR DEL GYM.
                    ABONAR EN TIEMPO Y FORMA.
                    NO VENIR CON NIÑOS.
                    FERIADOS NACIONALES CERRADOS Y PROVINCIALES ABIERTO DE 18hs A 21hs MUSC.
                    MERO GYM NO SE RESPONSABILIZA POR LA PERDIDA DE OBJETOS PERSONALES.
                    GRACIAS
                </span>
            </center>
            <br/>
            <br/>
            <br/>
            <center>
                <span class="lettermin" style="color:black">
                    ____________________________
                </span>
                <br/>
                <span class="lettermin" style="color:black">
                    FIRMA DEL SOCIO
                </span>
            </center>
        </td>
    </tr>
</table>
<center>
    <span class="lettermin" style="color:black">
        _________________________________________________________________________________________________________________________________________________________________________________________________________________
    </span>
</center>

<center>
    <br/>
    <button type="button" onclick="window.print();" class='no-print'>Imprimir</button>
    <button type="button" onclick="window.close();" class='no-print'>Cerrar</button>
</center>
</body>
</html>