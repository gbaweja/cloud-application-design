<html>
<head>
<script type="text/javascript">
var xmlhttp;

var items;

var counter=101;

function DisplayItems()
{
  output = "<table style='background-color:yellow'>";
  for (i in items) {
    output += '<tr>';
    output += '<td>' + i + "</td><td>" + items[i] + "</td>";
    output += '</tr>';
  }
  output += "</table>"
  document.getElementById("items").innerHTML = output;
}

function ProcessResponse()
{
  if (xmlhttp.readyState==4 && xmlhttp.status==200) {
    items = JSON.parse(xmlhttp.responseText); 
      DisplayItems()
  } else {
    alert("Error: data not available");
  }
}

function whichButton(buttonElement){
    document.getElementById("debug").innerHTML += "DEBUGGING<br>";
    var buttonClickedId = buttonElement.id;
    if( buttonClickedId === 'add_button' ) {
        keys = Object.keys(items);
        max = 1
        for (i in keys) {
          n = parseInt(keys[i])
          if (n >= max) {
            max = n + 1
          }
        }
        items[String(max)] = "A new item"
        DisplayItems();
    }
    else if( buttonClickedId === 'delete_button' ) {
        keys = Object.keys(items);
        if (keys.length > 0) {
          delete items[keys[0]];
        }
        DisplayItems();
    }
}

xmlhttp=new XMLHttpRequest();
xmlhttp.onload = ProcessResponse;
xmlhttp.open("GET", "/my_items.json", true);
xmlhttp.send();

</script>
</head>
<body>
  <p>My items:</p>
  <hr>
  <div id="items"></div>
  <hr>
  <button id="add_button"   onclick="whichButton(this)">Add</button>&nbsp;
  <button id="delete_button" onclick="whichButton(this)">Delete</button><br/> 
  <hr>
  <div id="debug"></div>
</body>
</html>