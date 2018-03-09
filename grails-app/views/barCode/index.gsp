<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<body>
<g:each in="${1..3}" var="number">
    <div>This is the barcode for the number: ${number}</div>
    <div><g:img dir="barCode" file="showBarcode?barcode=${number}"/></div>
    <hr/>
</g:each>
<g:each in="${10..12}" var="number">
    <div>This is the barcode for the number: ${number}</div>
    <div><g:img dir="barCode" file="showBarcode?barcode=${number}"/></div>
    <hr/>
</g:each>
<g:each in="${100..102}" var="number">
    <div>This is the barcode for the number: ${number}</div>
    <div><g:img dir="barCode" file="showBarcode?barcode=${number}"/></div>
    <hr/>
</g:each>
<g:each in="${1000..1002}" var="number">
    <div>This is the barcode for the number: ${number}</div>
    <div><g:img dir="barCode" file="showBarcode?barcode=${number}"/></div>
    <hr/>
</g:each>
<g:each in="${10000..10002}" var="number">
    <div>This is the barcode for the number: ${number}</div>
    <div><g:img dir="barCode" file="showBarcode?barcode=${number}"/></div>
    <hr/>
</g:each>
<g:each in="${100001..100001}" var="number">
    <div>This is the barcode for the number: ${number}</div>
    <div><g:img dir="barCode" file="showBarcode?barcode=${number}"/></div>
    <hr/>
</g:each>
</body>
</html>