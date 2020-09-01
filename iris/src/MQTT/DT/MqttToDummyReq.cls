Class MQTT.DT.MqttToDummyReq Extends Ens.DataTransformDTL [ DependsOn = (EnsLib.MQTT.Message, MQTT.Msg.DummyDataReq) ]
{

Parameter IGNOREMISSINGSOURCE = 1;

Parameter REPORTERRORS = 1;

Parameter TREATEMPTYREPEATINGFIELDASNULL = 0;

XData DTL [ XMLNamespace = "http://www.intersystems.com/dtl" ]
{
<transform sourceClass='EnsLib.MQTT.Message' targetClass='MQTT.Msg.DummyDataReq' create='new' language='objectscript' >
<assign value='source.StringValue' property='target.val' action='set' />
<assign value='"data"' property='target.uid' action='set' />
</transform>
}

}
