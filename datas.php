<?php 

try
{
    $db = new PDO('mysql:host=localhost;dbname=upload_photos;charset=utf8', 'root', '');
    //var_dump($db);
}

catch(Exception $e)
{
    die('Erreur : ' . $e->getMessage());
}

$sql = "SELECT * FROM markers WHERE 1";
$result = $db->query($sql);

// XML File
$dom = new DOMDocument("1.0");
//$dom->formatOutput = true;
$node = $dom->createElement("markers");
$parnode = $dom->appendChild($node);

//var_dump($dom);


//var_dump($result);

//header("Content-type: text/xml");

while($row = $result->fetch()){
    // Add to XML document node
    $node = $dom->createElement("marker");
    $newnode = $parnode->appendChild($node);
    $newnode->setAttribute("id",$row['id']);
    $newnode->setAttribute("name",$row['name']);
    $newnode->setAttribute("address", $row['address']);
    $newnode->setAttribute("lat", $row['lat']);
    $newnode->setAttribute("lng", $row['lng']);
    $newnode->setAttribute("alt", $row['altitude']);
    $newnode->setAttribute("type", $row['type']);
}

echo $dom->saveXML();
$dom->save('markers.xml');// Save the file.