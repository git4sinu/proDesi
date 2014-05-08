<%--
  Created by IntelliJ IDEA.
  User: Sridhar
  Date: 5/8/14
  Time: 4:47 PM
  To change this template use File | Settings | File Templates.
--%>
<%@include file="/taglibs.jsp"%>
<c:if test="${!empty model.bucketsList}">
    <display:table name="${model.bucketsList}" class="table table-condensed table-striped table-hover" requestURI="users" id="bucketList" export="true" pagesize="10" excludedParams="ajax">
        <display:setProperty name="export.pdf.filename" value="users.pdf"/>
        <display:column property="id" sortable="true" href="userform" media="html"
                        paramId="id" paramProperty="id" titleKey="bucketData.id"/>
        <display:column property="id" media="csv excel xml pdf" titleKey="bucketData.id"/>
    </display:table>
</c:if>
