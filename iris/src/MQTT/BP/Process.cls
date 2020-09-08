/// 
Class MQTT.BP.Process Extends Ens.BusinessProcessBPL
{

Storage Default
{
<Type>%Storage.Persistent</Type>
}

/// BPL Definition
XData BPL [ XMLNamespace = "http://www.intersystems.com/bpl" ]
{
<process language='objectscript' request='EnsLib.MQTT.Message' response='Ens.Response' height='2000' width='2000' >
<context>
<property name='dummyReq' type='MQTT.Msg.DummyDataReq' instantiate='0' />
<property name='dummyRsp' type='MQTT.Msg.DummyDataRsp' instantiate='0' />
<property name='mqttProcessed' type='EnsLib.MQTT.Message' instantiate='0' />
</context>
<sequence xend='200' yend='750' >
<transform name='MQTT To DummyDataReq' class='MQTT.DT.MqttToDummyReq' source='request' target='context.dummyReq' xpos='200' ypos='250' />
<call name='Call DummyData' target='MQTT.BO.DummyData' async='1' xpos='200' ypos='350' >
<annotation><![CDATA[Get DummyData]]></annotation>
<request type='MQTT.Msg.DummyDataReq' >
<assign property="callrequest" value="context.dummyReq" action="set" />
</request>
<response type='EnsLib.MQTT.Message' >
<assign property="context.dummyRsp" value="callresponse" action="set" />
</response>
</call>
<sync name='Sync' calls='Call DummyData' type='all' xpos='200' ypos='450' />
<transform name='DummyDataRsp To MQTT' class='MQTT.DT.DummyRspToMqtt' source='context.dummyRsp' target='context.mqttProcessed' xpos='200' ypos='550' />
<call name='MQTT Operation' target='EnsLib.MQTT.Operation.Passthrough' async='1' xpos='200' ypos='650' >
<request type='EnsLib.MQTT.Message' >
<assign property="callrequest" value="context.mqttProcessed" action="set" />
</request>
<response type='Ens.Response' />
</call>
</sequence>
</process>
}

}
