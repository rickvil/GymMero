<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<body>
<g:each in="${7728306691717..7728306691718}" var="number">
    <div>This is the barcode for the number: ${number}</div>
    <div><g:img dir="barCode" file="showBarcode?barcode=${number}"/></div>
    <hr/>
</g:each>
</body>
</html>