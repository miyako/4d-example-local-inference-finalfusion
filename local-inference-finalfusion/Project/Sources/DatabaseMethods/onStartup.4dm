$file:=File:C1566("/RESOURCES/models/glove.50d.fifu")

var $finalfusion : cs:C1710.finalfusion.server
$finalfusion:=cs:C1710.finalfusion.server.new()
$finalfusion.start({\
model: $file; \
port: 8181})
