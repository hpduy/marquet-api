<%@ page import="java.util.List" %>
<%--
  Created by IntelliJ IDEA.
  User: hpduy17
  Date: 1/21/15
  Time: 10:38 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="head.jsp"/>
</head>
<body class="skin-blue">
<jsp:include page="header.jsp"/>
<div class="wrapper row-offcanvas row-offcanvas-left">
    <jsp:include page="left-side.jsp"/>
    <!-- Right side column. Contains the navbar and content of the page -->
    <aside class="right-side">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <h1>
                Home
                <small>it all starts here</small>
            </h1>
            <ol class="breadcrumb">
                <li class="active"><i class="fa fa-dashboard"></i> Home</li>
            </ol>
        </section>

        <!-- Main content -->
        <section class="content">
            <div class="modal fade" id="errorModal">
                <div class="callout callout-danger">
                    <div class="callout callout-danger">
                        <h4>I am a danger callout!</h4>
                        <p>There is a problem that we need to fix. A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with my whole heart.</p>
                        <button style="margin-left: 30px;" class="btn btn-danger">Okay</button>
                    </div>
                </div>
                <!-- /.modal-dialog -->
            </div>
        </section>
        <!-- /.content -->
    </aside>
    <!-- /.right-side -->
</div>
<!-- ./wrapper -->
<jsp:include page="footer.jsp"></jsp:include>
<script type="text/javascript">
    $(window).load(function(){
        $('#errorModal').modal('show');
    });
</script>
</body>
</html>
