Class MQTT.Msg.DummyDataRsp Extends Ens.Request
{

Property response As %String(MAXLEN = "");

Storage Default
{
<Data name="DummyDataRspDefaultData">
<Subscript>"DummyDataRsp"</Subscript>
<Value name="1">
<Value>response</Value>
</Value>
</Data>
<DefaultData>DummyDataRspDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
