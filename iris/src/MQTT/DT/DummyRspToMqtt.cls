Class MQTT.DT.DummyRspToMqtt Extends Ens.DataTransformDTL [ DependsOn = (MQTT.Msg.DummyDataRsp, EnsLib.MQTT.Message) ]
{

Parameter IGNOREMISSINGSOURCE = 1;

Parameter REPORTERRORS = 1;

Parameter TREATEMPTYREPEATINGFIELDASNULL = 0;

XData DTL [ XMLNamespace = "http://www.intersystems.com/dtl" ]
{
<transform sourceClass='MQTT.Msg.DummyDataRsp' targetClass='EnsLib.MQTT.Message' create='new' language='objectscript' >
<assign value='source.response' property='target.StringValue' action='set' />
<assign value='"t.processed"' property='target.Topic' action='set' />
</transform>
}

}
