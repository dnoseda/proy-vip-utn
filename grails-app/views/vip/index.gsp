<!DOCTYPE HTML>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>
			${item.title}
		</title>
		<link rel="stylesheet" href="http://www.chico-ui.com.ar/versions/0.7.9/chico-min-0.7.9.css">
	</head>
	<body>
		${item.title}
		<div class="gallery ch-carousel">
			<ul>
				<g:each in="${item.pictures}">
					<li><img src="${it.url}"></li>
				</g:each>
			</ul>
		</div>
		<script type="text/javascript" src="http://www.chico-ui.com.ar/src/js/jquery.js"></script>
		<script type="text/javascript" src="http://www.chico-ui.com.ar/versions/0.7.9/chico-min-0.7.9.js"></script>
		<script type="text/javascript">
			var foo = $(".gallery").carousel();
		</script>
	</body>
</html>
