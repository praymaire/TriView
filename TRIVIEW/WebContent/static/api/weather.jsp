<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
 <script src="../js/jquery-3.6.0.min.js"></script>
  <script type="text/javascript">
$(document).ready(function() {

$.ajax({
url:'http://api.openweathermap.org/data/2.5/weather?q=seoul&APPID=&units=metric',
dataType:'json',
type:'GET',
success:function(data){

var $Temp = Math.floor(data.main.temp) + 'º';
var $city = data.name;
$('.CurrTemp').prepend($Temp);
$('.City').append($city);
}
})
});
</script>

</head>
<body>
<div class="weather">
<div class="CurrTemp"></div>
<div class="City"></div>
</div>

</body>
</html>


