<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>${name.getName()}Page</title>
</head>
<body style='background-color: WHITE; padding: 20px;'>
	<font style='color: BLACK; font-family: georgia;'>
		<div style='padding: 20px; background-color: GOLD;'>
			<a href="http://www.calstatela.edu/"> <img
				src="http://www.calstatela.edu/sites/default/files/groups/Mind%20Matters/brand_logo_homepage.png"
				style='width: 300px;' /> <br> <br>
			</a>
			<nav class="navbar navbar-inverse navbar-static-top marginBottom-0"
				role="navigation">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle"
						data-target="#navbar-collapse-1">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="Home">Home</a> <a
						class="navbar-brand" href="#">Courses</a> <a class="navbar-brand"
						href="Help">Help</a> <a class="navbar-brand"
						href="Setting">Setting</a>
				</div>
				<div class="profile-userbuttons" align="Right"
					; style='padding: 10px;'>
					<form action="Logout" method="post">
						<input class="btn btn-danger btn-sm" type="submit" value="Logout" />
					</form>

				</div>
			</nav>
			<div class="container">
				<div class="row profile">
					<div class="col-md-3">
						<div class="profile-sidebar"
							style='background-color: WHITE; text-align ="CENTER"; padding: 20px;'>
							<img src="C:\Users\Roi\Desktop\profile.png"
								style='width: 150px; height: 150px; align: ""'> <br>
							<br> <br> <br> <br> <br>

							<div class="profile-usertitle">
								<div class="profile-usertitle-name">
									<h1>
										Welcome <br>
										<c:out value="${name.getName()}"></c:out>
									</h1>
									<br>
								</div>
								<h4>
									Email:
									<c:out value="${name.getEmail()}"></c:out>
								</h4>
								<br>
								<h4>
									CIN:
									<c:out value="${name.getCIN()}"></c:out>
								</h4>
								<br>
								<h4>
									GPA:
									<c:out value="${name.getGPA()}"></c:out>
								</h4>

							</div>



						</div>
					</div>

					<div class="col-md-9" style='background-color: WHITE;'
						align="CENTER">
						<div class="profile-content">
							<h3>EDIT</h3>
							Some user related content goes here... <br> <br> <img
								src="C:\Users\Roi\Desktop\profile.png"
								style='width: 150px; height: 150px; align: ""'> <br>
							<br> <br> <br> <br> <br>
							<form action="Home" method="Post" enctype="multipart/form-data">
								<input type="file" name="file" value="select image..." /> <input
									type="submit" value="start upload" />
							</form>
							<h5>
								Name: <input type="text" value="${user.getName()}">
							</h5>
							<h5>
								Email: <input type="text" value="${user.getEmail()}">
							</h5>
						</div>
						<br> <br> <br> <br> <br>
					</div>
				</div>
			</div>
		</div>
	</font>
</body>
</html>