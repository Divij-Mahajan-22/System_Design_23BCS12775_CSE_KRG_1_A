<mxfile host="app.diagrams.net" agent="Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36" version="29.3.7">
  <diagram name="Page-1" id="aBcDeFgHiJkLmNoPqRsT">
    <mxGraphModel dx="1620" dy="836" grid="1" gridSize="10" guides="1" tooltips="1" connect="1" arrows="1" fold="1" page="1" pageScale="1" pageWidth="1100" pageHeight="850" background="#ffffff" math="0" shadow="0">
      <root>
        <mxCell id="0" />
        <mxCell id="1" parent="0" />
        <mxCell id="d9dd7ea8-79c2-4f2b-b441-b54cff269e6b" parent="1" style="text;html=1;strokeColor=none;fillColor=none;align=center;verticalAlign=middle;whiteSpace=wrap;rounded=0;rotation=-45;fontSize=70;fontColor=#E0E0E0;fontStyle=1;" value="Converted by ImageToDrawio" vertex="1">
          <mxGeometry height="100" width="500" x="300" y="375" as="geometry" />
        </mxCell>
        <mxCell id="2" parent="1" style="rounded=1;arcSize=12;whiteSpace=wrap;html=1;fillColor=#dae8fc;strokeColor=#6c8ebf;" value="" vertex="1">
          <mxGeometry height="700" width="800" x="180" y="70" as="geometry" />
        </mxCell>
        <mxCell id="5" parent="2" style="rounded=1;arcSize=12;whiteSpace=wrap;html=1;fillColor=#dae8fc;strokeColor=#6c8ebf;" value="" vertex="1">
          <mxGeometry height="200" width="200" x="580" y="80" as="geometry" />
        </mxCell>
        <mxCell id="L5" parent="5" style="shape=rectangle;fillColor=#dae8fc;strokeColor=#6c8ebf;fontColor=#000000;fontSize=10;align=center;verticalAlign=middle;whiteSpace=wrap;html=1;" value="MONITORING &amp; ALERTING" vertex="1">
          <mxGeometry height="20" width="150" x="10" y="-10" as="geometry" />
        </mxCell>
        <mxCell id="V22" parent="5" style="shape=mxgraph.flowchart.document;whiteSpace=wrap;html=1;fillColor=#ffffff;strokeColor=#6c8ebf;rounded=1;arcSize=6;" value="Logging/Audit" vertex="1">
          <mxGeometry height="50" width="80" x="10" y="40" as="geometry" />
        </mxCell>
        <mxCell id="V23" parent="5" style="shape=mxgraph.flowchart.document;whiteSpace=wrap;html=1;fillColor=#ffffff;strokeColor=#6c8ebf;rounded=1;arcSize=6;" value="Log Aggregator&lt;br&gt;(ELK Stack)" vertex="1">
          <mxGeometry height="50" width="80" x="10" y="100" as="geometry" />
        </mxCell>
        <mxCell id="V24" parent="5" style="shape=mxgraph.basic.bell;whiteSpace=wrap;html=1;fillColor=#ffffff;strokeColor=#6c8ebf;rounded=1;arcSize=6;" value="Alert Manager&lt;br&gt;(Prometheus)" vertex="1">
          <mxGeometry height="50" width="80" x="10" y="160" as="geometry" />
        </mxCell>
        <mxCell id="7" edge="1" parent="5" source="V22" style="edgeStyle=none;curved=1;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;exitX=0.98;exitY=0.015;exitDx=0;exitDy=0;exitPerimeter=0;fontSize=12;startSize=8;endSize=8;" target="V22">
          <mxGeometry relative="1" as="geometry" />
        </mxCell>
        <mxCell id="6" parent="2" style="rounded=1;arcSize=12;whiteSpace=wrap;html=1;fillColor=#dae8fc;strokeColor=#6c8ebf;" value="" vertex="1">
          <mxGeometry height="200" width="200" x="580" y="430" as="geometry" />
        </mxCell>
        <mxCell id="L6" parent="6" style="shape=rectangle;fillColor=#dae8fc;strokeColor=#6c8ebf;fontColor=#000000;fontSize=10;align=center;verticalAlign=middle;whiteSpace=wrap;html=1;" value="SECURITY SUBMODULES" vertex="1">
          <mxGeometry height="20" width="150" x="10" y="-10" as="geometry" />
        </mxCell>
        <mxCell id="V25" parent="6" style="shape=mxgraph.security.lock;whiteSpace=wrap;html=1;fillColor=#ffffff;strokeColor=#6c8ebf;rounded=1;arcSize=6;" value="Encryption&lt;br&gt;Service (AES-&lt;br&gt;256)" vertex="1">
          <mxGeometry height="70" width="80" x="10" y="40" as="geometry" />
        </mxCell>
        <mxCell id="V26" parent="6" style="shape=mxgraph.security.key;whiteSpace=wrap;html=1;fillColor=#ffffff;strokeColor=#6c8ebf;rounded=1;arcSize=6;" value="Tokenization&lt;br&gt;Service (Vault)" vertex="1">
          <mxGeometry height="50" width="80" x="10" y="120" as="geometry" />
        </mxCell>
        <mxCell id="V27" parent="6" style="shape=mxgraph.flowchart.document;whiteSpace=wrap;html=1;fillColor=#ffffff;strokeColor=#6c8ebf;rounded=1;arcSize=6;" value="Audit Logger&lt;br&gt;(ELK)" vertex="1">
          <mxGeometry height="50" width="80" x="10" y="180" as="geometry" />
        </mxCell>
        <mxCell id="V10" parent="2" style="shape=mxgraph.flowchart.data_storage;whiteSpace=wrap;html=1;fillColor=#ffffff;strokeColor=#6c8ebf;rounded=1;arcSize=6;" value="Interface Layer" vertex="1">
          <mxGeometry height="50" width="80" x="10" y="260" as="geometry" />
        </mxCell>
        <mxCell id="V11" parent="2" style="shape=mxgraph.flowchart.document;whiteSpace=wrap;html=1;fillColor=#ffffff;strokeColor=#6c8ebf;rounded=1;arcSize=6;" value="API GATEWAY&lt;br&gt;(KONG)" vertex="1">
          <mxGeometry height="50" width="100" x="100" y="260" as="geometry" />
        </mxCell>
        <mxCell id="V12" parent="2" style="shape=mxgraph.flowchart.document;whiteSpace=wrap;html=1;fillColor=#ffffff;strokeColor=#6c8ebf;rounded=1;arcSize=6;" value="LOAD BALANCER&lt;br&gt;(NGINX)" vertex="1">
          <mxGeometry height="50" width="100" x="210" y="260" as="geometry" />
        </mxCell>
        <mxCell id="V13" parent="2" style="shape=mxgraph.security.lock;whiteSpace=wrap;html=1;fillColor=#ffffff;strokeColor=#6c8ebf;rounded=1;arcSize=6;" value="AUTHENTICATION&lt;br&gt;SERVICE (OAUTH2)" vertex="1">
          <mxGeometry height="50" width="100" x="320" y="260" as="geometry" />
        </mxCell>
        <mxCell id="V14" parent="2" style="shape=mxgraph.flowchart.data_storage;whiteSpace=wrap;html=1;fillColor=#ffffff;strokeColor=#6c8ebf;rounded=1;arcSize=6;" value="Payment&lt;br&gt;Gateway&lt;br&gt;Handler" vertex="1">
          <mxGeometry height="70" width="60" x="430" y="250" as="geometry" />
        </mxCell>
        <mxCell id="V15" parent="2" style="shape=cylinder;whiteSpace=wrap;html=1;fillColor=#ffffff;strokeColor=#6c8ebf;rounded=1;arcSize=6;" value="Transaction&lt;br&gt;Manager" vertex="1">
          <mxGeometry height="70" width="60" x="430" y="160" as="geometry" />
        </mxCell>
        <mxCell id="V16" parent="2" style="shape=datastore;whiteSpace=wrap;html=1;fillColor=#ffffff;strokeColor=#6c8ebf;rounded=1;arcSize=6;" value="POSTGRESQL" vertex="1">
          <mxGeometry height="50" width="100" x="430" y="90" as="geometry" />
        </mxCell>
        <mxCell id="V17" parent="2" style="shape=datastore;whiteSpace=wrap;html=1;fillColor=#ffffff;strokeColor=#6c8ebf;rounded=1;arcSize=6;" value="CACHE LAYER&lt;br&gt;(REDIS)" vertex="1">
          <mxGeometry height="50" width="100" x="430" y="340" as="geometry" />
        </mxCell>
        <mxCell id="V18" parent="2" style="shape=mxgraph.flowchart.document;whiteSpace=wrap;html=1;fillColor=#ffffff;strokeColor=#6c8ebf;rounded=1;arcSize=6;" value="CARD NETWORK&lt;br&gt;ADAPTER&lt;br&gt;(VISA/MASTERCARD)" vertex="1">
          <mxGeometry height="70" width="100" x="430" y="410" as="geometry" />
        </mxCell>
        <mxCell id="V19" parent="2" style="shape=datastore;whiteSpace=wrap;html=1;fillColor=#ffffff;strokeColor=#6c8ebf;rounded=1;arcSize=6;" value="QUEUE SYSTEM&lt;br&gt;(RABBITMQ)" vertex="1">
          <mxGeometry height="50" width="100" x="430" y="500" as="geometry" />
        </mxCell>
        <mxCell id="V20" parent="2" style="shape=mxgraph.finance.money_bag;whiteSpace=wrap;html=1;fillColor=#ffffff;strokeColor=#6c8ebf;rounded=1;arcSize=6;" value="CURRENCY CONVERTER&lt;br&gt;(FIXER.IO)" vertex="1">
          <mxGeometry height="50" width="100" x="430" y="570" as="geometry" />
        </mxCell>
        <mxCell id="V21" parent="2" style="shape=mxgraph.flowchart.document;whiteSpace=wrap;html=1;fillColor=#ffffff;strokeColor=#6c8ebf;rounded=1;arcSize=6;" value="PAYMENT PROCESSOR&lt;br&gt;(STRIPE)" vertex="1">
          <mxGeometry height="50" width="100" x="320" y="670" as="geometry" />
        </mxCell>
        <mxCell id="V28" parent="2" style="shape=mxgraph.flowchart.document;whiteSpace=wrap;html=1;fillColor=#ffffff;strokeColor=#6c8ebf;rounded=1;arcSize=6;" value="Security/Compl&lt;br&gt;iance (PCI&lt;br&gt;DSS)" vertex="1">
          <mxGeometry height="70" width="80" x="700" y="500" as="geometry" />
        </mxCell>
        <mxCell id="L2" parent="1" style="shape=rectangle;fillColor=#dae8fc;strokeColor=#6c8ebf;fontColor=#000000;fontSize=10;align=center;verticalAlign=middle;whiteSpace=wrap;html=1;" value="CORE PAYMENT PROCESSING SYSTEM" vertex="1">
          <mxGeometry height="20" width="200" x="190" y="60" as="geometry" />
        </mxCell>
        <mxCell id="3" parent="1" style="rounded=1;arcSize=12;whiteSpace=wrap;html=1;fillColor=#fff2cc;strokeColor=#d6b656;" value="" vertex="1">
          <mxGeometry height="200" width="150" x="10" y="300" as="geometry" />
        </mxCell>
        <mxCell id="V7" parent="3" style="shape=mxgraph.aws3.mobile_client;whiteSpace=wrap;html=1;fillColor=#ffffff;strokeColor=#d6b656;rounded=1;arcSize=6;" value="Mobile App" vertex="1">
          <mxGeometry height="70" width="50" x="20" y="40" as="geometry" />
        </mxCell>
        <mxCell id="V8" parent="3" style="shape=mxgraph.aws3.desktop_client;whiteSpace=wrap;html=1;fillColor=#ffffff;strokeColor=#d6b656;rounded=1;arcSize=6;" value="Web App" vertex="1">
          <mxGeometry height="70" width="50" x="80" y="40" as="geometry" />
        </mxCell>
        <mxCell id="V9" parent="3" style="shape=mxgraph.aws3.database;whiteSpace=wrap;html=1;fillColor=#ffffff;strokeColor=#d6b656;rounded=1;arcSize=6;" value="Admin&lt;br&gt;Dashboard" vertex="1">
          <mxGeometry height="70" width="50" x="50" y="120" as="geometry" />
        </mxCell>
        <mxCell id="L3" parent="1" style="shape=rectangle;fillColor=#fff2cc;strokeColor=#d6b656;fontColor=#000000;fontSize=10;align=center;verticalAlign=middle;whiteSpace=wrap;html=1;" value="USER INTERFACES" vertex="1">
          <mxGeometry height="20" width="100" x="20" y="290" as="geometry" />
        </mxCell>
        <mxCell id="4" parent="1" style="rounded=1;arcSize=12;whiteSpace=wrap;html=1;fillColor=#d5e8d4;strokeColor=#82b366;" value="" vertex="1">
          <mxGeometry height="490" width="200" x="1000" y="280" as="geometry" />
        </mxCell>
        <mxCell id="V29" parent="4" style="shape=mxgraph.basic.user;whiteSpace=wrap;html=1;fillColor=#ffffff;strokeColor=#82b366;rounded=1;arcSize=6;" value="CRM" vertex="1">
          <mxGeometry height="50" width="60" x="10" y="40" as="geometry" />
        </mxCell>
        <mxCell id="V30" parent="4" style="shape=mxgraph.aws3.cloud;whiteSpace=wrap;html=1;fillColor=#ffffff;strokeColor=#82b366;rounded=1;arcSize=6;" value="Salesforce" vertex="1">
          <mxGeometry height="50" width="80" x="100" y="40" as="geometry" />
        </mxCell>
        <mxCell id="V31" parent="4" style="shape=mxgraph.electrical.signal_generator;whiteSpace=wrap;html=1;fillColor=#ffffff;strokeColor=#82b366;rounded=1;arcSize=6;" value="Fraud&lt;br&gt;Detection&lt;br&gt;Service" vertex="1">
          <mxGeometry height="70" width="60" x="10" y="110" as="geometry" />
        </mxCell>
        <mxCell id="V32" parent="4" style="shape=mxgraph.electrical.chip;whiteSpace=wrap;html=1;fillColor=#ffffff;strokeColor=#82b366;rounded=1;arcSize=6;" value="ML Model&lt;br&gt;(scikit-learn)" vertex="1">
          <mxGeometry height="70" width="80" x="100" y="110" as="geometry" />
        </mxCell>
        <mxCell id="V33" parent="4" style="shape=mxgraph.basic.bell;whiteSpace=wrap;html=1;fillColor=#ffffff;strokeColor=#82b366;rounded=1;arcSize=6;" value="Notification&lt;br&gt;Service" vertex="1">
          <mxGeometry height="50" width="60" x="10" y="200" as="geometry" />
        </mxCell>
        <mxCell id="V34" parent="4" style="shape=mxgraph.aws3.cloud;whiteSpace=wrap;html=1;fillColor=#ffffff;strokeColor=#82b366;rounded=1;arcSize=6;" value="Twilio" vertex="1">
          <mxGeometry height="50" width="80" x="100" y="200" as="geometry" />
        </mxCell>
        <mxCell id="V35" parent="4" style="shape=mxgraph.aws3.cloud;whiteSpace=wrap;html=1;fillColor=#ffffff;strokeColor=#82b366;rounded=1;arcSize=6;" value="Firebase Cloud&lt;br&gt;Messaging" vertex="1">
          <mxGeometry height="50" width="80" x="100" y="260" as="geometry" />
        </mxCell>
        <mxCell id="V36" parent="4" style="shape=mxgraph.basic.calculator;whiteSpace=wrap;html=1;fillColor=#ffffff;strokeColor=#82b366;rounded=1;arcSize=6;" value="Accounting&lt;br&gt;Platform" vertex="1">
          <mxGeometry height="50" width="60" x="10" y="330" as="geometry" />
        </mxCell>
        <mxCell id="V37" parent="4" style="shape=mxgraph.basic.calculator;whiteSpace=wrap;html=1;fillColor=#ffffff;strokeColor=#82b366;rounded=1;arcSize=6;" value="QuickBooks&lt;br&gt;API" vertex="1">
          <mxGeometry height="50" width="80" x="100" y="330" as="geometry" />
        </mxCell>
        <mxCell id="V38" parent="4" style="shape=mxgraph.finance.money_bag;whiteSpace=wrap;html=1;fillColor=#ffffff;strokeColor=#82b366;rounded=1;arcSize=6;" value="Banking&lt;br&gt;Gateways" vertex="1">
          <mxGeometry height="50" width="60" x="10" y="400" as="geometry" />
        </mxCell>
        <mxCell id="V39" parent="4" style="shape=mxgraph.basic.globe;whiteSpace=wrap;html=1;fillColor=#ffffff;strokeColor=#82b366;rounded=1;arcSize=6;" value="SWIFT" vertex="1">
          <mxGeometry height="50" width="80" x="100" y="400" as="geometry" />
        </mxCell>
        <mxCell id="V40" parent="4" style="shape=mxgraph.basic.globe;whiteSpace=wrap;html=1;fillColor=#ffffff;strokeColor=#82b366;rounded=1;arcSize=6;" value="ISO 20022" vertex="1">
          <mxGeometry height="50" width="80" x="100" y="460" as="geometry" />
        </mxCell>
        <mxCell id="L4" parent="1" style="shape=rectangle;fillColor=#d5e8d4;strokeColor=#82b366;fontColor=#000000;fontSize=10;align=center;verticalAlign=middle;whiteSpace=wrap;html=1;" value="EXTERNAL INTEGRATIONS" vertex="1">
          <mxGeometry height="20" width="150" x="1010" y="270" as="geometry" />
        </mxCell>
        <mxCell id="E1" edge="1" parent="1" source="V7" style="edgeStyle=orthogonalEdgeStyle;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;endArrow=classic;endFill=1;" target="V10" value="">
          <mxGeometry relative="1" as="geometry">
            <Array as="points">
              <mxPoint x="160" y="365" />
            </Array>
          </mxGeometry>
        </mxCell>
        <mxCell id="E2" edge="1" parent="1" source="V8" style="edgeStyle=orthogonalEdgeStyle;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;endArrow=classic;endFill=1;" target="V10" value="">
          <mxGeometry relative="1" as="geometry">
            <Array as="points">
              <mxPoint x="160" y="365" />
            </Array>
          </mxGeometry>
        </mxCell>
        <mxCell id="E3" edge="1" parent="1" source="V9" style="edgeStyle=orthogonalEdgeStyle;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;endArrow=classic;endFill=1;" target="V10" value="">
          <mxGeometry relative="1" as="geometry">
            <Array as="points">
              <mxPoint x="160" y="365" />
            </Array>
          </mxGeometry>
        </mxCell>
        <mxCell id="E4" edge="1" parent="1" source="V10" style="edgeStyle=orthogonalEdgeStyle;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;endArrow=classic;endFill=1;" target="V11" value="">
          <mxGeometry relative="1" as="geometry" />
        </mxCell>
        <mxCell id="E5" edge="1" parent="1" source="V11" style="edgeStyle=orthogonalEdgeStyle;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;endArrow=classic;endFill=1;" target="V12" value="">
          <mxGeometry relative="1" as="geometry" />
        </mxCell>
        <mxCell id="E6" edge="1" parent="1" source="V12" style="edgeStyle=orthogonalEdgeStyle;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;endArrow=classic;endFill=1;" target="V13" value="">
          <mxGeometry relative="1" as="geometry" />
        </mxCell>
        <mxCell id="E7" edge="1" parent="1" source="V13" style="edgeStyle=orthogonalEdgeStyle;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;endArrow=classic;endFill=1;" target="V14" value="">
          <mxGeometry relative="1" as="geometry" />
        </mxCell>
        <mxCell id="E8" edge="1" parent="1" source="V14" style="edgeStyle=orthogonalEdgeStyle;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;endArrow=classic;endFill=1;" target="V15" value="">
          <mxGeometry relative="1" as="geometry" />
        </mxCell>
        <mxCell id="E9" edge="1" parent="1" source="V15" style="edgeStyle=orthogonalEdgeStyle;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;endArrow=classic;endFill=1;" target="V16" value="">
          <mxGeometry relative="1" as="geometry">
            <Array as="points">
              <mxPoint x="460" y="150" />
              <mxPoint x="460" y="140" />
            </Array>
          </mxGeometry>
        </mxCell>
        <mxCell id="E10" edge="1" parent="1" source="V15" style="edgeStyle=orthogonalEdgeStyle;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;endArrow=classic;endFill=1;" target="V17" value="">
          <mxGeometry relative="1" as="geometry">
            <Array as="points">
              <mxPoint x="460" y="230" />
              <mxPoint x="460" y="330" />
            </Array>
          </mxGeometry>
        </mxCell>
        <mxCell id="E11" edge="1" parent="1" source="V15" style="edgeStyle=orthogonalEdgeStyle;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;endArrow=classic;endFill=1;" target="V18" value="">
          <mxGeometry relative="1" as="geometry">
            <Array as="points">
              <mxPoint x="460" y="230" />
              <mxPoint x="460" y="400" />
            </Array>
          </mxGeometry>
        </mxCell>
        <mxCell id="E12" edge="1" parent="1" source="V15" style="edgeStyle=orthogonalEdgeStyle;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;endArrow=classic;endFill=1;" target="V19" value="">
          <mxGeometry relative="1" as="geometry">
            <Array as="points">
              <mxPoint x="460" y="230" />
              <mxPoint x="460" y="490" />
            </Array>
          </mxGeometry>
        </mxCell>
        <mxCell id="E13" edge="1" parent="1" source="V15" style="edgeStyle=orthogonalEdgeStyle;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;endArrow=classic;endFill=1;" target="V20" value="">
          <mxGeometry relative="1" as="geometry">
            <Array as="points">
              <mxPoint x="460" y="230" />
              <mxPoint x="460" y="560" />
            </Array>
          </mxGeometry>
        </mxCell>
        <mxCell id="E14" edge="1" parent="1" source="V15" style="edgeStyle=orthogonalEdgeStyle;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;endArrow=classic;endFill=1;" target="V22" value="">
          <mxGeometry relative="1" as="geometry">
            <Array as="points">
              <mxPoint x="500" y="195" />
              <mxPoint x="570" y="195" />
              <mxPoint x="570" y="130" />
              <mxPoint x="580" y="130" />
            </Array>
          </mxGeometry>
        </mxCell>
        <mxCell id="E15" edge="1" parent="1" source="V16" style="edgeStyle=orthogonalEdgeStyle;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;endArrow=classic;endFill=1;labelBackgroundColor=#dae8fc;" target="V22" value="log transaction">
          <mxGeometry relative="1" as="geometry">
            <Array as="points">
              <mxPoint x="530" y="115" />
              <mxPoint x="570" y="115" />
              <mxPoint x="570" y="130" />
              <mxPoint x="580" y="130" />
            </Array>
          </mxGeometry>
        </mxCell>
        <mxCell id="E16" edge="1" parent="1" source="V22" style="edgeStyle=orthogonalEdgeStyle;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;endArrow=classic;endFill=1;" target="V23" value="">
          <mxGeometry relative="1" as="geometry" />
        </mxCell>
        <mxCell id="E17" edge="1" parent="1" source="V23" style="edgeStyle=orthogonalEdgeStyle;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;endArrow=classic;endFill=1;" target="V24" value="">
          <mxGeometry relative="1" as="geometry" />
        </mxCell>
        <mxCell id="E18" edge="1" parent="1" source="V14" style="edgeStyle=orthogonalEdgeStyle;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;endArrow=classic;endFill=1;" target="V25" value="">
          <mxGeometry relative="1" as="geometry">
            <Array as="points">
              <mxPoint x="500" y="285" />
              <mxPoint x="570" y="285" />
              <mxPoint x="570" y="470" />
              <mxPoint x="580" y="470" />
            </Array>
          </mxGeometry>
        </mxCell>
        <mxCell id="E19" edge="1" parent="1" source="V14" style="edgeStyle=orthogonalEdgeStyle;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;endArrow=classic;endFill=1;" target="V26" value="">
          <mxGeometry relative="1" as="geometry">
            <Array as="points">
              <mxPoint x="500" y="285" />
              <mxPoint x="570" y="285" />
              <mxPoint x="570" y="550" />
              <mxPoint x="580" y="550" />
            </Array>
          </mxGeometry>
        </mxCell>
        <mxCell id="E20" edge="1" parent="1" source="V14" style="edgeStyle=orthogonalEdgeStyle;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;endArrow=classic;endFill=1;" target="V27" value="">
          <mxGeometry relative="1" as="geometry">
            <Array as="points">
              <mxPoint x="500" y="285" />
              <mxPoint x="570" y="285" />
              <mxPoint x="570" y="610" />
              <mxPoint x="580" y="610" />
            </Array>
          </mxGeometry>
        </mxCell>
        <mxCell id="E21" edge="1" parent="1" source="V25" style="edgeStyle=orthogonalEdgeStyle;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;endArrow=classic;endFill=1;" target="V28" value="">
          <mxGeometry relative="1" as="geometry" />
        </mxCell>
        <mxCell id="E22" edge="1" parent="1" source="V26" style="edgeStyle=orthogonalEdgeStyle;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;endArrow=classic;endFill=1;" target="V28" value="">
          <mxGeometry relative="1" as="geometry" />
        </mxCell>
        <mxCell id="E23" edge="1" parent="1" source="V27" style="edgeStyle=orthogonalEdgeStyle;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;endArrow=classic;endFill=1;" target="V28" value="">
          <mxGeometry relative="1" as="geometry" />
        </mxCell>
        <mxCell id="E24" edge="1" parent="1" source="V14" style="edgeStyle=orthogonalEdgeStyle;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;endArrow=classic;endFill=1;" target="V21" value="">
          <mxGeometry relative="1" as="geometry">
            <Array as="points">
              <mxPoint x="460" y="320" />
              <mxPoint x="460" y="695" />
              <mxPoint x="420" y="695" />
            </Array>
          </mxGeometry>
        </mxCell>
        <mxCell id="E25" edge="1" parent="1" source="V21" style="edgeStyle=orthogonalEdgeStyle;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;endArrow=classic;endFill=1;labelBackgroundColor=#dae8fc;" target="V28" value="validate, encrypt">
          <mxGeometry relative="1" as="geometry">
            <Array as="points">
              <mxPoint x="420" y="695" />
              <mxPoint x="690" y="695" />
              <mxPoint x="690" y="535" />
              <mxPoint x="700" y="535" />
            </Array>
          </mxGeometry>
        </mxCell>
        <mxCell id="E26" edge="1" parent="1" source="V14" style="edgeStyle=orthogonalEdgeStyle;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;endArrow=classic;endFill=1;" target="V29" value="">
          <mxGeometry relative="1" as="geometry">
            <Array as="points">
              <mxPoint x="500" y="285" />
              <mxPoint x="990" y="285" />
              <mxPoint x="990" y="345" />
              <mxPoint x="1000" y="345" />
            </Array>
          </mxGeometry>
        </mxCell>
        <mxCell id="E27" edge="1" parent="1" source="V29" style="edgeStyle=orthogonalEdgeStyle;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;endArrow=classic;endFill=1;" target="V30" value="">
          <mxGeometry relative="1" as="geometry" />
        </mxCell>
        <mxCell id="E28" edge="1" parent="1" source="V14" style="edgeStyle=orthogonalEdgeStyle;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;endArrow=classic;endFill=1;" target="V31" value="">
          <mxGeometry relative="1" as="geometry">
            <Array as="points">
              <mxPoint x="500" y="285" />
              <mxPoint x="990" y="285" />
              <mxPoint x="990" y="445" />
              <mxPoint x="1000" y="445" />
            </Array>
          </mxGeometry>
        </mxCell>
        <mxCell id="E29" edge="1" parent="1" source="V31" style="edgeStyle=orthogonalEdgeStyle;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;endArrow=classic;endFill=1;" target="V32" value="">
          <mxGeometry relative="1" as="geometry" />
        </mxCell>
        <mxCell id="E30" edge="1" parent="1" source="V14" style="edgeStyle=orthogonalEdgeStyle;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;endArrow=classic;endFill=1;" target="V33" value="">
          <mxGeometry relative="1" as="geometry">
            <Array as="points">
              <mxPoint x="500" y="285" />
              <mxPoint x="990" y="285" />
              <mxPoint x="990" y="525" />
              <mxPoint x="1000" y="525" />
            </Array>
          </mxGeometry>
        </mxCell>
        <mxCell id="E31" edge="1" parent="1" source="V33" style="edgeStyle=orthogonalEdgeStyle;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;endArrow=classic;endFill=1;" target="V34" value="">
          <mxGeometry relative="1" as="geometry" />
        </mxCell>
        <mxCell id="E32" edge="1" parent="1" source="V33" style="edgeStyle=orthogonalEdgeStyle;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;endArrow=classic;endFill=1;" target="V35" value="">
          <mxGeometry relative="1" as="geometry" />
        </mxCell>
        <mxCell id="E33" edge="1" parent="1" source="V14" style="edgeStyle=orthogonalEdgeStyle;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;endArrow=classic;endFill=1;" target="V36" value="">
          <mxGeometry relative="1" as="geometry">
            <Array as="points">
              <mxPoint x="500" y="285" />
              <mxPoint x="990" y="285" />
              <mxPoint x="990" y="655" />
              <mxPoint x="1000" y="655" />
            </Array>
          </mxGeometry>
        </mxCell>
        <mxCell id="E34" edge="1" parent="1" source="V36" style="edgeStyle=orthogonalEdgeStyle;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;endArrow=classic;endFill=1;" target="V37" value="">
          <mxGeometry relative="1" as="geometry" />
        </mxCell>
        <mxCell id="E35" edge="1" parent="1" source="V14" style="edgeStyle=orthogonalEdgeStyle;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;endArrow=classic;endFill=1;" target="V38" value="">
          <mxGeometry relative="1" as="geometry">
            <Array as="points">
              <mxPoint x="500" y="285" />
              <mxPoint x="990" y="285" />
              <mxPoint x="990" y="725" />
              <mxPoint x="1000" y="725" />
            </Array>
          </mxGeometry>
        </mxCell>
        <mxCell id="E36" edge="1" parent="1" source="V38" style="edgeStyle=orthogonalEdgeStyle;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;endArrow=classic;endFill=1;" target="V39" value="">
          <mxGeometry relative="1" as="geometry" />
        </mxCell>
        <mxCell id="E37" edge="1" parent="1" source="V38" style="edgeStyle=orthogonalEdgeStyle;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;endArrow=classic;endFill=1;" target="V40" value="">
          <mxGeometry relative="1" as="geometry" />
        </mxCell>
        <mxCell id="E38" edge="1" parent="1" source="V20" style="edgeStyle=orthogonalEdgeStyle;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;endArrow=classic;endFill=1;labelBackgroundColor=#dae8fc;" target="V14" value="compliance check">
          <mxGeometry relative="1" as="geometry">
            <Array as="points">
              <mxPoint x="530" y="595" />
              <mxPoint x="570" y="595" />
              <mxPoint x="570" y="300" />
              <mxPoint x="490" y="300" />
            </Array>
          </mxGeometry>
        </mxCell>
        <mxCell id="A5k8O8aPqV8sXoWMiL35-8" parent="1" style="text;html=1;whiteSpace=wrap;strokeColor=none;fillColor=none;align=center;verticalAlign=middle;rounded=0;" value="The Use of interfaces:&lt;span style=&quot;background-color: transparent; color: light-dark(rgb(0, 0, 0), rgb(255, 255, 255));&quot;&gt;&amp;nbsp;&lt;/span&gt;" vertex="1">
          <mxGeometry height="90" width="290" x="1120" y="50" as="geometry" />
        </mxCell>
        <mxCell id="A5k8O8aPqV8sXoWMiL35-9" parent="1" style="text;html=1;whiteSpace=wrap;strokeColor=none;fillColor=none;align=center;verticalAlign=middle;rounded=0;" value="1.To &lt;strong data-start=&quot;206&quot; data-end=&quot;242&quot;&gt;define a common payment contract&lt;/strong&gt;&amp;nbsp;&lt;div&gt;t&lt;span style=&quot;background-color: transparent; color: light-dark(rgb(0, 0, 0), rgb(255, 255, 255));&quot;&gt;hat all payment methods must follow.&lt;/span&gt;&lt;/div&gt;" vertex="1">
          <mxGeometry height="30" width="260" x="1190" y="110" as="geometry" />
        </mxCell>
        <mxCell id="A5k8O8aPqV8sXoWMiL35-10" parent="1" style="text;html=1;whiteSpace=wrap;strokeColor=none;fillColor=none;align=center;verticalAlign=middle;rounded=0;" value="2.To &lt;strong data-start=&quot;287&quot; data-end=&quot;323&quot;&gt;support multiple payment methods&lt;/strong&gt; (card, UPI, wallet, net banking) in a uniform way." vertex="1">
          <mxGeometry height="30" width="270" x="1200" y="150" as="geometry" />
        </mxCell>
        <mxCell id="A5k8O8aPqV8sXoWMiL35-11" parent="1" style="text;html=1;whiteSpace=wrap;strokeColor=none;fillColor=none;align=center;verticalAlign=middle;rounded=0;" value="3.To &lt;strong data-start=&quot;381&quot; data-end=&quot;427&quot;&gt;separate payment logic from business logic&lt;/strong&gt;, keeping the checkout system independent" vertex="1">
          <mxGeometry height="40" width="290" x="1200" y="190" as="geometry" />
        </mxCell>
        <mxCell id="A5k8O8aPqV8sXoWMiL35-12" parent="1" style="text;html=1;whiteSpace=wrap;strokeColor=none;fillColor=none;align=center;verticalAlign=middle;rounded=0;" value="4.To enable &lt;strong data-start=&quot;571&quot; data-end=&quot;619&quot;&gt;switching between different payment gateways&lt;/strong&gt; based on availability or cost" vertex="1">
          <mxGeometry height="30" width="280" x="1205" y="240" as="geometry" />
        </mxCell>
        <mxCell id="A5k8O8aPqV8sXoWMiL35-13" parent="1" style="text;html=1;whiteSpace=wrap;strokeColor=none;fillColor=none;align=center;verticalAlign=middle;rounded=0;" value="5.To improve &lt;strong data-start=&quot;665&quot; data-end=&quot;707&quot;&gt;system scalability and maintainability&lt;/strong&gt;" vertex="1">
          <mxGeometry height="30" width="220" x="1200" y="285" as="geometry" />
        </mxCell>
      </root>
    </mxGraphModel>
  </diagram>
</mxfile>
