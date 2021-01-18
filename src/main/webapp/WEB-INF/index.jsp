<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Basic Authentication</title>
    <link rel="stylesheet" href="/webjars/bootstrap/4.5.0/css/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="css/styles.css">
    <script src="/webjars/jquery/3.5.1/jquery.min.js"></script>
    <script src="/webjars/bootstrap/4.5.0/js/bootstrap.min.js"></script>
</head>
<body>
   <div class="container col-md-8 mt-5">
       <div class="row">
           <form:form action="/register" method="post" modelAttribute="newUser" class="col-6">
               <div class="form-group col-md-10 ">
                   <h3 class="main-color text-center">Registration</h3>
                   <label class="col-form-label">Username:</label> 
                   <form:input path="username" class="form-control" /> 
                   <form:errors path="username" class="text-danger" />  

                   <label class="col-form-label">Email:</label> 
                   <form:input path="email" class="form-control" />
				   <form:errors path="email" class="text-danger" /> 
                 
                   <label class="col-form-label">Password:</label> 
                   <form:password path="password" class="form-control" />
				   <form:errors path="password" class="text-danger" /> 

                   <label class="col-form-label">Confirm:</label> 
                   <form:password path="confirm" class="form-control" />
				   <form:errors path="confirm" class="text-danger" /> 

                   <input type='submit' value='Register' class="btn main-bg-color btn-block text-white mt-4">
               </div>
           </form:form>
         </div>
     </div>
</body>
</html>