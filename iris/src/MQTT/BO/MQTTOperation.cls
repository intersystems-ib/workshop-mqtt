Class MQTT.BO.MQTTOperation Extends Ens.BusinessOperation
{

Parameter ADAPTER = "EnsLib.MQTT.Adapter.Outbound";

Parameter INVOCATION = "Queue";

/// Publish a message using MQTT adapter instead of using built-in passthrough operation
Method PublishMessage(pRequest As EnsLib.MQTT.Message, Output pResponse As Ens.Response) As %Status
{
	set ret = $$$OK
	try {
        // uppercase message
        set message = $zconvert(pRequest.StringValue, "U")
        
        // send using MQTT adapter
        $$$ThrowOnError(..Adapter.Send(pRequest.Topic, message))
	
	} catch ex {
		set ret = ex.AsStatus()
	} 
	quit ret
}

XData MessageMap
{
<MapItems>
	<MapItem MessageType="EnsLib.MQTT.Message"> 
		<Method>PublishMessage</Method>
	</MapItem>
</MapItems>
}

}
