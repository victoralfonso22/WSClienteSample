<%@page contentType="text/html;charset=UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<HTML>
<HEAD>
<TITLE>Result</TITLE>
</HEAD>
<BODY>
<H1>Result</H1>

<jsp:useBean id="sampleWsGetInfSorteoSoapProxyid" scope="session" class="mx.uv.dsia.webservices.WsGetInfSorteoSoapProxy" />
<%
if (request.getParameter("endpoint") != null && request.getParameter("endpoint").length() > 0)
sampleWsGetInfSorteoSoapProxyid.setEndpoint(request.getParameter("endpoint"));
%>

<%
String method = request.getParameter("method");
int methodID = 0;
if (method == null) methodID = -1;

if(methodID != -1) methodID = Integer.parseInt(method);
boolean gotMethod = false;

try {
switch (methodID){ 
case 2:
        gotMethod = true;
        java.lang.String getEndpoint2mtemp = sampleWsGetInfSorteoSoapProxyid.getEndpoint();
if(getEndpoint2mtemp == null){
%>
<%=getEndpoint2mtemp %>
<%
}else{
        String tempResultreturnp3 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(getEndpoint2mtemp));
        %>
        <%= tempResultreturnp3 %>
        <%
}
break;
case 5:
        gotMethod = true;
        String endpoint_0id=  request.getParameter("endpoint8");
            java.lang.String endpoint_0idTemp = null;
        if(!endpoint_0id.equals("")){
         endpoint_0idTemp  = endpoint_0id;
        }
        sampleWsGetInfSorteoSoapProxyid.setEndpoint(endpoint_0idTemp);
break;
case 10:
        gotMethod = true;
        mx.uv.dsia.webservices.WsGetInfSorteoSoap getWsGetInfSorteoSoap10mtemp = sampleWsGetInfSorteoSoapProxyid.getWsGetInfSorteoSoap();
if(getWsGetInfSorteoSoap10mtemp == null){
%>
<%=getWsGetInfSorteoSoap10mtemp %>
<%
}else{
        if(getWsGetInfSorteoSoap10mtemp!= null){
        String tempreturnp11 = getWsGetInfSorteoSoap10mtemp.toString();
        %>
        <%=tempreturnp11%>
        <%
        }}
break;
case 13:
        gotMethod = true;
        String fecha_1id=  request.getParameter("fecha16");
            java.lang.String fecha_1idTemp = null;
        if(!fecha_1id.equals("")){
         fecha_1idTemp  = fecha_1id;
        }
        java.lang.String sorteoUV13mtemp = sampleWsGetInfSorteoSoapProxyid.sorteoUV(fecha_1idTemp);
if(sorteoUV13mtemp == null){
%>
<%=sorteoUV13mtemp %>
<%
}else{
        String tempResultreturnp14 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(sorteoUV13mtemp));
        %>
        <%= tempResultreturnp14 %>
        <%
}
break;
}
} catch (Exception e) { 
%>
Exception: <%= org.eclipse.jst.ws.util.JspUtils.markup(e.toString()) %>
Message: <%= org.eclipse.jst.ws.util.JspUtils.markup(e.getMessage()) %>
<%
return;
}
if(!gotMethod){
%>
result: N/A
<%
}
%>
</BODY>
</HTML>