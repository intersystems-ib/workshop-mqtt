Class MQTT.Prod Extends Ens.Production
{

XData ProductionDefinition
{
<Production Name="MQTT.Prod" TestingEnabled="true" LogGeneralTraceEvents="false">
  <Description></Description>
  <ActorPoolSize>2</ActorPoolSize>
  <Item Name="EnsLib.MQTT.Operation.Passthrough" Category="" ClassName="EnsLib.MQTT.Operation.Passthrough" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
    <Setting Target="Adapter" Name="QOS">1</Setting>
    <Setting Target="Adapter" Name="Topic">iris/out</Setting>
    <Setting Target="Adapter" Name="Url">tcp://mqtt-server:1883</Setting>
    <Setting Target="Adapter" Name="Trace">0</Setting>
    <Setting Target="Adapter" Name="KeepAlive">15</Setting>
    <Setting Target="Host" Name="ReplyCodeActions">E=R</Setting>
    <Setting Target="Host" Name="RetryInterval">1</Setting>
  </Item>
</Production>
}

}
