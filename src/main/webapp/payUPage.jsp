<%--
  Created by IntelliJ IDEA.
  User: Sridhar
  Date: 5/30/14
  Time: 11:08 AM
  To change this template use File | Settings | File Templates.
--%>
<form action="https://test.payu.in/_payment" method="post" name="payuForm">
    <input type="hidden" name="key" value="${model.merchantKey}" />
    <input type="hidden" name="hash" value="${model.hash}"/>
    <input type="hidden" name="txnid" value="${model.transactionId}" />
    <input type="hidden" name="udf2" value="${model.transactionId}" />
    <input type="hidden" name="service_provider" value="payu_paisa" />
    <input type="hidden" name="amount" value="${model.amount}" />
    <input type="hidden" name="firstname" id="firstname" value="${model.user.firstName}"/>
    <input type="hidden" name="email" id="email" value="${model.user.email}" />
    <input type="hidden" name="phone"  value="${model.user.phoneNumber}" />
    <input type="hidden" name="productinfo" value="${model.productInfo}" />
    <input type="hidden" name="surl" value="http://desiengg.com/desiengg/home/showBucket" />
    <input type="hidden" name="furl" value="http://desiengg.com" />
    <input type="hidden" name="curl" value="http://desiengg.comm" />
</form>
<script>
    window.onload = function () {
        document.forms['payuForm'].submit()
    }
</script>