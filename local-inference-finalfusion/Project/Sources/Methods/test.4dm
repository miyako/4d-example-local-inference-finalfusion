//%attributes = {}
var $response : Text

var $data : Object
var $embedding1; $embedding2 : 4D:C1709.Vector

$request:=Lowercase:C14("The quick brown fox jumps over the lazy dog")
$status:=HTTP Request:C1158(HTTP POST method:K71:2; "http://127.0.0.1:8181/embeddings"; $request; $response)

If ($status=200)
	$data:=JSON Parse:C1218($response; Is object:K8:27)
	$embedding1:=4D:C1709.Vector.new($data.aggregate)
End if 

$request:=Lowercase:C14("I think a hound was sleeping when an animal that seemed like a fox leaped over it")
$status:=HTTP Request:C1158(HTTP POST method:K71:2; "http://127.0.0.1:8181/embeddings"; $request; $response)

If ($status=200)
	$data:=JSON Parse:C1218($response; Is object:K8:27)
	$embedding2:=4D:C1709.Vector.new($data.aggregate)
End if 

$cosineSimilarity:=$embedding1.cosineSimilarity($embedding2)
$dotSimilarity:=$embedding1.dotSimilarity($embedding2)
$euclideanDistance:=$embedding1.euclideanDistance($embedding2)

