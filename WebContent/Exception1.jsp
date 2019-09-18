<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
		<title>Exception page</title>
		<link rel="stylesheet" href="bootstrap-3.4.1-dist/css/bootstrap.css">
        <link rel="stylesheet" href="fontawesome-free-5.9.0-web/css/all.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="css/custom2.css">
	</head>
	<body>
		<%@ include file="Header.jsp" %>
		<%@ include file="navbar.jsp" %>
 		<div id="row3" class="container-fluid">
			<div class="container">

<!-- ----------------------------------------------- ROW START ------------------------------------------------------------ -->
				<div class="col-md-6 row3col1">EXCEPTION PAGE</div>
				<!-- ROW 3 COL 1 END -->
		
				<!-- -------------------- BREADCRUMB START --------------------->
				<div class="col-md-6 row3col2">
					<ol id="breadcrumb" class="breadcrumb">
						<li class="breadcrumb-item"><a id="unactivelink" href="home">Home</a></li>
						<li class="breadcrumb-item" aria-current="page">Exception Page</li>
					</ol>
				</div>	
			</div>
		</div>
<!-- ----------------------------------------------- ROW END ------------------------------------------------------------ -->
        <!------------------------------- BODY START --------------------------------------------->
		<div id="row4exceptionpage" class="container-fluid">
			<div class="container">
				<div class="col-md-12">
					<hr>
					<h3 class="text-center"><strong>Sorry for the inconvenience - The page you are looking for have a Technical Error</strong></h3>
                    <h3 class="text-center"><small><strong>Kindly proceed to the Home Page or Report this issue to the website Administrator with the Description mentioned below.</strong></small></h3>
                    <div class="wrapper">
                            <button type="button" class="btn btn-default center-block" id="green_button" style="display: inline-block;"><i class="fas fa-home"></i> Home</button>&nbsp;&nbsp;   
                            <button type="button" class="btn btn-default center-block" id="green_button" style="display: inline-block;"><i class="fas fa-bug"></i> Report</button>   
                    </div>
                    <br>
                        <section style="background-color: #FF8E70">
						  <p> &nbsp;javax.servlet.ServletException: Something bad happened
							    at com.example.myproject.OpenSessionInViewFilter.doFilter(OpenSessionInViewFilter.java:60)
							    at org.mortbay.jetty.servlet.ServletHandler$CachedChain.doFilter(ServletHandler.java:1157)
							    at com.example.myproject.ExceptionHandlerFilter.doFilter(ExceptionHandlerFilter.java:28)
							    at org.mortbay.jetty.servlet.ServletHandler$CachedChain.doFilter(ServletHandler.java:1157)
							    at com.example.myproject.OutputBufferFilter.doFilter(OutputBufferFilter.java:33)
							    at org.mortbay.jetty.servlet.ServletHandler$CachedChain.doFilter(ServletHandler.java:1157)
							    at org.mortbay.jetty.servlet.ServletHandler.handle(ServletHandler.java:388)
							    at org.mortbay.jetty.security.SecurityHandler.handle(SecurityHandler.java:216)
							    at org.mortbay.jetty.servlet.SessionHandler.handle(SessionHandler.java:182)
							    at org.mortbay.jetty.handler.ContextHandler.handle(ContextHandler.java:765)
							    at org.mortbay.jetty.webapp.WebAppContext.handle(WebAppContext.java:418)
							    at org.mortbay.jetty.handler.HandlerWrapper.handle(HandlerWrapper.java:152)
							    at org.mortbay.jetty.Server.handle(Server.java:326)
							    at org.mortbay.jetty.HttpConnection.handleRequest(HttpConnection.java:542)
							    at org.mortbay.jetty.HttpConnection$RequestHandler.content(HttpConnection.java:943)
							    at org.mortbay.jetty.HttpParser.parseNext(HttpParser.java:756)
							    at org.mortbay.jetty.HttpParser.parseAvailable(HttpParser.java:218)
							    at org.mortbay.jetty.HttpConnection.handle(HttpConnection.java:404)
							    at org.mortbay.jetty.bio.SocketConnector$Connection.run(SocketConnector.java:228)
							    at org.mortbay.thread.QueuedThreadPool$PoolThread.run(QueuedThreadPool.java:582)
							Caused by: com.example.myproject.MyProjectServletException
							    at com.example.myproject.MyServlet.doPost(MyServlet.java:169)
							    at javax.servlet.http.HttpServlet.service(HttpServlet.java:727)
							    at javax.servlet.http.HttpServlet.service(HttpServlet.java:820)
							    at org.mortbay.jetty.servlet.ServletHolder.handle(ServletHolder.java:511)
							    at org.mortbay.jetty.servlet.ServletHandler$CachedChain.doFilter(ServletHandler.java:1166)
							    at com.example.myproject.OpenSessionInViewFilter.doFilter(OpenSessionInViewFilter.java:30)
							    ... 27 more
							Caused by: org.hibernate.exception.ConstraintViolationException: could not insert: [com.example.myproject.MyEntity]
							    at org.hibernate.exception.SQLStateConverter.convert(SQLStateConverter.java:96)
							    at org.hibernate.exception.JDBCExceptionHelper.convert(JDBCExceptionHelper.java:66)
							    at org.hibernate.id.insert.AbstractSelectingDelegate.performInsert(AbstractSelectingDelegate.java:64)
							    at org.hibernate.persister.entity.AbstractEntityPersister.insert(AbstractEntityPersister.java:2329)
							    at org.hibernate.persister.entity.AbstractEntityPersister.insert(AbstractEntityPersister.java:2822)
							    at org.hibernate.action.EntityIdentityInsertAction.execute(EntityIdentityInsertAction.java:71)
							    at org.hibernate.engine.ActionQueue.execute(ActionQueue.java:268)
							    at org.hibernate.event.def.AbstractSaveEventListener.performSaveOrReplicate(AbstractSaveEventListener.java:321)
							    at org.hibernate.event.def.AbstractSaveEventListener.performSave(AbstractSaveEventListener.java:204)
							    at org.hibernate.event.def.AbstractSaveEventListener.saveWithGeneratedId(AbstractSaveEventListener.java:130)
							    at org.hibernate.event.def.DefaultSaveOrUpdateEventListener.saveWithGeneratedOrRequestedId(DefaultSaveOrUpdateEventListener.java:210)
							    at org.hibernate.event.def.DefaultSaveEventListener.saveWithGeneratedOrRequestedId(DefaultSaveEventListener.java:56)
							    at org.hibernate.event.def.DefaultSaveOrUpdateEventListener.entityIsTransient(DefaultSaveOrUpdateEventListener.java:195)
							    at org.hibernate.event.def.DefaultSaveEventListener.performSaveOrUpdate(DefaultSaveEventListener.java:50)
							    at org.hibernate.event.def.DefaultSaveOrUpdateEventListener.onSaveOrUpdate(DefaultSaveOrUpdateEventListener.java:93)
							    at org.hibernate.impl.SessionImpl.fireSave(SessionImpl.java:705)
							    at org.hibernate.impl.SessionImpl.save(SessionImpl.java:693)
							    at org.hibernate.impl.SessionImpl.save(SessionImpl.java:689)
							    at sun.reflect.GeneratedMethodAccessor5.invoke(Unknown Source)
							    at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:25)
							    at java.lang.reflect.Method.invoke(Method.java:597)
							    at org.hibernate.context.ThreadLocalSessionContext$TransactionProtectionWrapper.invoke(ThreadLocalSessionContext.java:344)
							    at $Proxy19.save(Unknown Source)
							    at com.example.myproject.MyEntityService.save(MyEntityService.java:59) <-- relevant call (see notes below)
							    at com.example.myproject.MyServlet.doPost(MyServlet.java:164)</p>
						</section> 
						<hr>
				</div>
			</div>
		</div>        
       
<!-- ----------------------------------------------------------Body End  --------------------------------------------------->
		
		<!-- ROW 3 END -->
		<%@ include file="Footer.html" %>
		<%@ include file="LastRow.html" %>
		
	</body>
</html>