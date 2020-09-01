/// Dummy Business Operation. Returns a pseudo-random output
Class MQTT.BO.DummyData Extends Ens.BusinessOperation
{

Parameter INVOCATION = "Queue";

Parameter ADAPTER;

/// Return a random output
Method GetDummyData(pRequest As MQTT.Msg.DummyDataReq, Output pResponse As MQTT.Msg.DummyDataRsp) As %Status
{
	set ret = $$$OK
	try {
		set pResponse = ##class(MQTT.Msg.DummyDataRsp).%New()
		set pResponse.response =  pRequest.uid_"."_pRequest.val_"."_##class(%Library.PopulateUtils).StringMin(25, 25)
        
	} catch ex {
		set ret = ex.AsStatus()
	} 
	quit ret
}

XData MessageMap
{
<MapItems>
	<MapItem MessageType="MQTT.Msg.DummyDataReq"> 
		<Method>GetDummyData</Method>
	</MapItem>
</MapItems>
}

}
