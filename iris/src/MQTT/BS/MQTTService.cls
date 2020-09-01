/// Simple MQTT Service that receives messages and forwards them
Class MQTT.BS.MQTTService Extends Ens.BusinessService
{

Parameter ADAPTER = "EnsLib.MQTT.Adapter.Inbound";

/// Adapter will capture the MQTT message. We can handle the received message in this method.
Method OnProcessInput(pInput As EnsLib.MQTT.Message, pOutput As %RegisteredObject) As %Status
{
   set ret = $$$OK
   try {
       // send the received message to a Business Process
       $$$ThrowOnError(..SendRequestAsync("MQTT.BP.Process", pInput))
       
   } catch ex {
       set ret = ex.AsStatus()
   }
   quit ret
}

}
