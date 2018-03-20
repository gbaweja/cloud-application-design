<html>
<head>
<script type="text/javascript">
var xmlhttp;

var items;

function ProcessResponse()
{
  if (xmlhttp.readyState==4 && xmlhttp.status==200) {
    items = JSON.parse(xmlhttp.responseText); 

    document.getElementById("raw").innerHTML = xmlhttp.responseText;

    output = "<table style='background-color:green'>";
    for (i in items) {
      output += '<tr>';
      output += '<td>' + i + "</td><td>" + items[i] + "</td>";
      output += '</tr>';
    }
    output += "</table>"

    document.getElementById("parsed").innerHTML = output;

  } else {
    alert("data not available");
  }
}

xmlhttp=new XMLHttpRequest();
xmlhttp.onload = ProcessResponse;
xmlhttp.open("GET", "/my_items.json", true);
xmlhttp.send();

</script>
</head>
<body>
  <p>The raw result from the ajax json request is:</p>
  <div id="raw"></div>
  <br />
  <p>The parsed JSON produces:</p>
  <div id="parsed"></div>
</body>
</html>