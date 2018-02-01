<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<body>
<g:each in="${101..103}" var="number">
    <div>This is the barcode for the number: ${number}</div>
    <div><g:img dir="barCode" file="showBarcode?barcode=${number}" style="width: 300px; height: 30px;"/></div>
    <hr/>
</g:each>
</body>
</html>