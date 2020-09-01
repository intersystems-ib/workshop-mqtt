Class MQTT.Msg.DummyDataReq Extends Ens.Request
{

Property uid As %String;

Property val As %String;

Storage Default
{
<Data name="DummyDataReqDefaultData">
<Subscript>"DummyDataReq"</Subscript>
<Value name="1">
<Value>uid</Value>
</Value>
<Value name="2">
<Value>val</Value>
</Value>
</Data>
<DefaultData>DummyDataReqDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
