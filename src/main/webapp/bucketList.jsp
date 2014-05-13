<%--
  Created by IntelliJ IDEA.
  User: Sridhar
  Date: 5/8/14
  Time: 4:47 PM
  To change this template use File | Settings | File Templates.
--%>
<%@include file="/taglibs.jsp"%>
<c:if test="${!empty model.bucketsList}">
    <center>
    <display:table name="${model.bucketsList}" class="table table-condensed table-striped table-hover" requestURI="view" id="bucketList" export="true" pagesize="10" excludedParams="ajax">
        <display:setProperty name="export.pdf.filename" value="mybukets.pdf"/>
        <display:column property="beltSpeed" sortable="true" title="Belt Speed" escapeXml="true"/>
        <display:column property="diameter" sortable="true" title="Diameter" escapeXml="true"/>
        <display:column property="driveSpeed" sortable="true" title="Speed" escapeXml="true"/>
        <display:column property="chuteDepth" sortable="true" title="Chute Depth" escapeXml="true"/>
        <display:column property="chuteVertical" sortable="true" title="Chute Vertical" escapeXml="true"/>
        <display:column property="beltWidth" sortable="true" title="Belt Width" escapeXml="true"/>
        <display:column property="pulleyWidth" sortable="true" title="Pulley Width" escapeXml="true"/>
        <display:column property="grossWeight" sortable="true" title="Gross Weight" escapeXml="true"/>
        <display:column property="tensionTight" sortable="true" title="Tension Tight" escapeXml="true"/>
        <display:column property="tensionSlack" sortable="true" title="Tension Slack" escapeXml="true"/>
        <display:column property="power" sortable="true" title="Power" escapeXml="true"/>
        <display:column property="bucketCount" sortable="true" title="Bucket Count" escapeXml="true"/>
        <display:column property="torque" sortable="true" title="Torque" escapeXml="true"/>
        <display:column property="shaftDiameter" sortable="true" title="Shaft Diameter" escapeXml="true"/>
        <display:column property="gearLoad" sortable="true" title="Gear Load" escapeXml="true"/>
        <display:column property="pulleyThickness" sortable="true" title="Thickness" escapeXml="true"/>
        <display:column property="pulleyArmsCount" sortable="true" title="Arms Count" escapeXml="true"/>
        <display:column property="twoPoleGearRatio" sortable="true" title="Two PoleRatio" escapeXml="true"/>
        <display:column property="fourPoleGearRatio" sortable="true" title="Four PoleRatio" escapeXml="true"/>
        <display:column property="sixPoleGearRatio" sortable="true" title="Six PoleRatio" escapeXml="true"/>
        <%--<display:column property="dateCreated" sortable="true" title="dateCreated" escapeXml="true"/>--%>
    </display:table>
    </center>
    <c:forEach items="${model.bucketsList}" var="bdata">
        <a href="/user/pdf/${bdata.id}">PDF</a>
    </c:forEach>
</c:if>
<style>
    .export.csv{display: none}
</style>


