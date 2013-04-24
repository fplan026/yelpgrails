<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="main">
<meta name="viewport" content="initial-scale=1.0, user-scalable=no" />
<title>Yelp Grails Demo</title>
<g:javascript library='jquery' />
</head>
<body>

<div class="nav" role="navigation">
	<ul>
		<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
	</ul>
</div>
<div id="theform">
<g:formRemote name="myForm" on404="alert('not found!')" update="thecontent"
              url="[controller: 'yelp', action:'search']">
    Term: <input name="term" type="text" /><br/>
    Location: <input name="location" type="text" /><br/>
    
    Limit: <g:select name="limit" from="${1..10}" noSelection="['1':'-Number of results-']"/><br/>
          
    <input type="submit" name="Search">
</g:formRemote>
</div>
<div id="thecontent">thecontent</div>

</body>
</html>
