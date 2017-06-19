<?xml version="1.0" encoding="utf-8"?>
<serviceModel xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" name="Lab9service" generation="1" functional="0" release="0" Id="6fba1002-cfd5-451f-8964-b23bbca50d8f" dslVersion="1.2.0.0" xmlns="http://schemas.microsoft.com/dsltools/RDSM">
  <groups>
    <group name="Lab9serviceGroup" generation="1" functional="0" release="0">
      <componentports>
        <inPort name="CalcWebrole:Endpoint1" protocol="http">
          <inToChannel>
            <lBChannelMoniker name="/Lab9service/Lab9serviceGroup/LB:CalcWebrole:Endpoint1" />
          </inToChannel>
        </inPort>
      </componentports>
      <settings>
        <aCS name="CalcWebrole:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" defaultValue="">
          <maps>
            <mapMoniker name="/Lab9service/Lab9serviceGroup/MapCalcWebrole:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" />
          </maps>
        </aCS>
        <aCS name="CalcWebroleInstances" defaultValue="[1,1,1]">
          <maps>
            <mapMoniker name="/Lab9service/Lab9serviceGroup/MapCalcWebroleInstances" />
          </maps>
        </aCS>
      </settings>
      <channels>
        <lBChannel name="LB:CalcWebrole:Endpoint1">
          <toPorts>
            <inPortMoniker name="/Lab9service/Lab9serviceGroup/CalcWebrole/Endpoint1" />
          </toPorts>
        </lBChannel>
      </channels>
      <maps>
        <map name="MapCalcWebrole:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" kind="Identity">
          <setting>
            <aCSMoniker name="/Lab9service/Lab9serviceGroup/CalcWebrole/Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" />
          </setting>
        </map>
        <map name="MapCalcWebroleInstances" kind="Identity">
          <setting>
            <sCSPolicyIDMoniker name="/Lab9service/Lab9serviceGroup/CalcWebroleInstances" />
          </setting>
        </map>
      </maps>
      <components>
        <groupHascomponents>
          <role name="CalcWebrole" generation="1" functional="0" release="0" software="c:\users\priyanka\documents\visual studio 2015\Projects\Lab9service\Lab9service\csx\Release\roles\CalcWebrole" entryPoint="base\x64\WaHostBootstrapper.exe" parameters="base\x64\WaIISHost.exe " memIndex="-1" hostingEnvironment="frontendadmin" hostingEnvironmentVersion="2">
            <componentports>
              <inPort name="Endpoint1" protocol="http" portRanges="80" />
            </componentports>
            <settings>
              <aCS name="Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" defaultValue="" />
              <aCS name="__ModelData" defaultValue="&lt;m role=&quot;CalcWebrole&quot; xmlns=&quot;urn:azure:m:v1&quot;&gt;&lt;r name=&quot;CalcWebrole&quot;&gt;&lt;e name=&quot;Endpoint1&quot; /&gt;&lt;/r&gt;&lt;/m&gt;" />
            </settings>
            <resourcereferences>
              <resourceReference name="DiagnosticStore" defaultAmount="[4096,4096,4096]" defaultSticky="true" kind="Directory" />
              <resourceReference name="EventStore" defaultAmount="[1000,1000,1000]" defaultSticky="false" kind="LogStore" />
            </resourcereferences>
          </role>
          <sCSPolicy>
            <sCSPolicyIDMoniker name="/Lab9service/Lab9serviceGroup/CalcWebroleInstances" />
            <sCSPolicyUpdateDomainMoniker name="/Lab9service/Lab9serviceGroup/CalcWebroleUpgradeDomains" />
            <sCSPolicyFaultDomainMoniker name="/Lab9service/Lab9serviceGroup/CalcWebroleFaultDomains" />
          </sCSPolicy>
        </groupHascomponents>
      </components>
      <sCSPolicy>
        <sCSPolicyUpdateDomain name="CalcWebroleUpgradeDomains" defaultPolicy="[5,5,5]" />
        <sCSPolicyFaultDomain name="CalcWebroleFaultDomains" defaultPolicy="[2,2,2]" />
        <sCSPolicyID name="CalcWebroleInstances" defaultPolicy="[1,1,1]" />
      </sCSPolicy>
    </group>
  </groups>
  <implements>
    <implementation Id="0ca083aa-49aa-4be3-a032-ae71ee7ecf25" ref="Microsoft.RedDog.Contract\ServiceContract\Lab9serviceContract@ServiceDefinition">
      <interfacereferences>
        <interfaceReference Id="b1c2f634-141a-4f45-beb6-c644ee98c5cb" ref="Microsoft.RedDog.Contract\Interface\CalcWebrole:Endpoint1@ServiceDefinition">
          <inPort>
            <inPortMoniker name="/Lab9service/Lab9serviceGroup/CalcWebrole:Endpoint1" />
          </inPort>
        </interfaceReference>
      </interfacereferences>
    </implementation>
  </implements>
</serviceModel>