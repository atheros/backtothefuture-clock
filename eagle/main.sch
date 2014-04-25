<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="6.5.0">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="15" fill="1" visible="no" active="no"/>
<layer number="21" name="tPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="22" name="bPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="23" name="tOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="24" name="bOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="25" name="tNames" color="7" fill="1" visible="no" active="no"/>
<layer number="26" name="bNames" color="7" fill="1" visible="no" active="no"/>
<layer number="27" name="tValues" color="7" fill="1" visible="no" active="no"/>
<layer number="28" name="bValues" color="7" fill="1" visible="no" active="no"/>
<layer number="29" name="tStop" color="7" fill="3" visible="no" active="no"/>
<layer number="30" name="bStop" color="7" fill="6" visible="no" active="no"/>
<layer number="31" name="tCream" color="7" fill="4" visible="no" active="no"/>
<layer number="32" name="bCream" color="7" fill="5" visible="no" active="no"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="no"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="no"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="no"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="no"/>
<layer number="37" name="tTest" color="7" fill="1" visible="no" active="no"/>
<layer number="38" name="bTest" color="7" fill="1" visible="no" active="no"/>
<layer number="39" name="tKeepout" color="4" fill="11" visible="no" active="no"/>
<layer number="40" name="bKeepout" color="1" fill="11" visible="no" active="no"/>
<layer number="41" name="tRestrict" color="4" fill="10" visible="no" active="no"/>
<layer number="42" name="bRestrict" color="1" fill="10" visible="no" active="no"/>
<layer number="43" name="vRestrict" color="2" fill="10" visible="no" active="no"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="no"/>
<layer number="45" name="Holes" color="7" fill="1" visible="no" active="no"/>
<layer number="46" name="Milling" color="3" fill="1" visible="no" active="no"/>
<layer number="47" name="Measures" color="7" fill="1" visible="no" active="no"/>
<layer number="48" name="Document" color="7" fill="1" visible="no" active="no"/>
<layer number="49" name="Reference" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="arduino-pro-mini">
<packages>
<package name="DIP24W">
<pad name="P$1" x="-7.62" y="13.97" drill="0.8" diameter="1.27" shape="long"/>
<pad name="P$2" x="-7.62" y="11.43" drill="0.8" diameter="1.27" shape="long"/>
<pad name="P$3" x="-7.62" y="8.89" drill="0.8" diameter="1.27" shape="long"/>
<pad name="P$4" x="-7.62" y="6.35" drill="0.8" diameter="1.27" shape="long"/>
<pad name="P$5" x="-7.62" y="3.81" drill="0.8" diameter="1.27" shape="long"/>
<pad name="P$6" x="-7.62" y="1.27" drill="0.8" diameter="1.27" shape="long"/>
<pad name="P$7" x="-7.62" y="-1.27" drill="0.8" diameter="1.27" shape="long"/>
<pad name="P$8" x="-7.62" y="-3.81" drill="0.8" diameter="1.27" shape="long"/>
<pad name="P$9" x="-7.62" y="-6.35" drill="0.8" diameter="1.27" shape="long"/>
<pad name="P$10" x="-7.62" y="-8.89" drill="0.8" diameter="1.27" shape="long"/>
<pad name="P$11" x="-7.62" y="-11.43" drill="0.8" diameter="1.27" shape="long"/>
<pad name="P$12" x="-7.62" y="-13.97" drill="0.8" diameter="1.27" shape="long"/>
<pad name="P$24" x="7.62" y="13.97" drill="0.8" diameter="1.27" shape="long"/>
<pad name="P$23" x="7.62" y="11.43" drill="0.8" diameter="1.27" shape="long"/>
<pad name="P$22" x="7.62" y="8.89" drill="0.8" diameter="1.27" shape="long"/>
<pad name="P$21" x="7.62" y="6.35" drill="0.8" diameter="1.27" shape="long"/>
<pad name="P$20" x="7.62" y="3.81" drill="0.8" diameter="1.27" shape="long"/>
<pad name="P$19" x="7.62" y="1.27" drill="0.8" diameter="1.27" shape="long"/>
<pad name="P$18" x="7.62" y="-1.27" drill="0.8" diameter="1.27" shape="long"/>
<pad name="P$17" x="7.62" y="-3.81" drill="0.8" diameter="1.27" shape="long"/>
<pad name="P$16" x="7.62" y="-6.35" drill="0.8" diameter="1.27" shape="long"/>
<pad name="P$15" x="7.62" y="-8.89" drill="0.8" diameter="1.27" shape="long"/>
<pad name="P$14" x="7.62" y="-11.43" drill="0.8" diameter="1.27" shape="long"/>
<pad name="P$13" x="7.62" y="-13.97" drill="0.8" diameter="1.27" shape="long"/>
<wire x1="-8.89" y1="15.24" x2="-1.27" y2="15.24" width="0.127" layer="21"/>
<wire x1="-1.27" y1="15.24" x2="0" y2="13.97" width="0.127" layer="21" curve="90"/>
<wire x1="0" y1="13.97" x2="1.27" y2="15.24" width="0.127" layer="21" curve="90"/>
<wire x1="1.27" y1="15.24" x2="8.89" y2="15.24" width="0.127" layer="21"/>
<wire x1="8.89" y1="15.24" x2="8.89" y2="-15.24" width="0.127" layer="21"/>
<wire x1="8.89" y1="-15.24" x2="-8.89" y2="-15.24" width="0.127" layer="21"/>
<wire x1="-8.89" y1="-15.24" x2="-8.89" y2="15.24" width="0.127" layer="21"/>
<text x="1.27" y="-13.97" size="2.54" layer="25" rot="R90">&gt;NAME</text>
<text x="-6.35" y="13.335" size="1.27" layer="49">TX0</text>
<text x="2.54" y="13.335" size="1.27" layer="49">RAW</text>
</package>
</packages>
<symbols>
<symbol name="ARDUINO-PRO-MINI-BARE">
<pin name="TXO" x="-15.24" y="20.32" length="middle"/>
<pin name="RXI" x="-15.24" y="17.78" length="middle" direction="in"/>
<pin name="RST" x="15.24" y="2.54" length="middle" rot="R180"/>
<pin name="D2" x="-15.24" y="7.62" length="middle"/>
<pin name="D3~" x="-15.24" y="5.08" length="middle"/>
<pin name="D4" x="-15.24" y="2.54" length="middle"/>
<pin name="D5~" x="-15.24" y="0" length="middle"/>
<pin name="D6~" x="-15.24" y="-2.54" length="middle"/>
<pin name="D7" x="-15.24" y="-5.08" length="middle"/>
<pin name="D8" x="-15.24" y="-7.62" length="middle"/>
<pin name="D9~" x="-15.24" y="-10.16" length="middle"/>
<pin name="D10~" x="-15.24" y="-12.7" length="middle"/>
<pin name="D11~" x="-15.24" y="-15.24" length="middle"/>
<pin name="D12" x="-15.24" y="-17.78" length="middle"/>
<pin name="D13" x="-15.24" y="-20.32" length="middle"/>
<pin name="A0" x="15.24" y="-20.32" length="middle" rot="R180"/>
<pin name="A1" x="15.24" y="-17.78" length="middle" rot="R180"/>
<pin name="A2" x="15.24" y="-15.24" length="middle" rot="R180"/>
<pin name="A3" x="15.24" y="-12.7" length="middle" rot="R180"/>
<pin name="RAW" x="15.24" y="10.16" length="middle" rot="R180"/>
<pin name="VCC" x="15.24" y="20.32" length="middle" rot="R180"/>
<pin name="GND" x="15.24" y="17.78" length="middle" rot="R180"/>
<wire x1="-10.16" y1="22.86" x2="10.16" y2="22.86" width="0.254" layer="94"/>
<wire x1="10.16" y1="22.86" x2="10.16" y2="-22.86" width="0.254" layer="94"/>
<wire x1="10.16" y1="-22.86" x2="-10.16" y2="-22.86" width="0.254" layer="94"/>
<wire x1="-10.16" y1="-22.86" x2="-10.16" y2="22.86" width="0.254" layer="94"/>
<text x="-10.16" y="22.86" size="1.778" layer="95">&gt;NAME</text>
<text x="0.635" y="1.27" size="1.778" layer="97" rot="R90">Arduino Pro Mini</text>
<text x="1.905" y="1.27" size="1.016" layer="97" rot="R90">ATMega328</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="ARDUINO-PRO-MINI-BARE">
<gates>
<gate name="G$1" symbol="ARDUINO-PRO-MINI-BARE" x="0" y="0"/>
</gates>
<devices>
<device name="" package="DIP24W">
<connects>
<connect gate="G$1" pin="A0" pad="P$17"/>
<connect gate="G$1" pin="A1" pad="P$18"/>
<connect gate="G$1" pin="A2" pad="P$19"/>
<connect gate="G$1" pin="A3" pad="P$20"/>
<connect gate="G$1" pin="D10~" pad="P$13"/>
<connect gate="G$1" pin="D11~" pad="P$14"/>
<connect gate="G$1" pin="D12" pad="P$15"/>
<connect gate="G$1" pin="D13" pad="P$16"/>
<connect gate="G$1" pin="D2" pad="P$5"/>
<connect gate="G$1" pin="D3~" pad="P$6"/>
<connect gate="G$1" pin="D4" pad="P$7"/>
<connect gate="G$1" pin="D5~" pad="P$8"/>
<connect gate="G$1" pin="D6~" pad="P$9"/>
<connect gate="G$1" pin="D7" pad="P$10"/>
<connect gate="G$1" pin="D8" pad="P$11"/>
<connect gate="G$1" pin="D9~" pad="P$12"/>
<connect gate="G$1" pin="GND" pad="P$4 P$23"/>
<connect gate="G$1" pin="RAW" pad="P$24"/>
<connect gate="G$1" pin="RST" pad="P$3 P$22"/>
<connect gate="G$1" pin="RXI" pad="P$2"/>
<connect gate="G$1" pin="TXO" pad="P$1"/>
<connect gate="G$1" pin="VCC" pad="P$21"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="con-lstb">
<description>&lt;b&gt;Pin Headers&lt;/b&gt;&lt;p&gt;
Naming:&lt;p&gt;
MA = male&lt;p&gt;
# contacts - # rows&lt;p&gt;
W = angled&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="MA04-1">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<wire x1="-4.445" y1="1.27" x2="-3.175" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="1.27" x2="-2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="-0.635" x2="-3.175" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="0.635" x2="-1.905" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="1.27" x2="-0.635" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="1.27" x2="0" y2="0.635" width="0.1524" layer="21"/>
<wire x1="0" y1="-0.635" x2="-0.635" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="-1.27" x2="-1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="-1.27" x2="-2.54" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="0.635" x2="-5.08" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="1.27" x2="-5.08" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="-0.635" x2="-4.445" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="-1.27" x2="-4.445" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="0" y1="0.635" x2="0.635" y2="1.27" width="0.1524" layer="21"/>
<wire x1="0.635" y1="1.27" x2="1.905" y2="1.27" width="0.1524" layer="21"/>
<wire x1="1.905" y1="1.27" x2="2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="2.54" y1="-0.635" x2="1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="1.905" y1="-1.27" x2="0.635" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="0.635" y1="-1.27" x2="0" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="3.175" y1="1.27" x2="4.445" y2="1.27" width="0.1524" layer="21"/>
<wire x1="4.445" y1="1.27" x2="5.08" y2="0.635" width="0.1524" layer="21"/>
<wire x1="5.08" y1="0.635" x2="5.08" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="5.08" y1="-0.635" x2="4.445" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="3.175" y1="1.27" x2="2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="2.54" y1="-0.635" x2="3.175" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="4.445" y1="-1.27" x2="3.175" y2="-1.27" width="0.1524" layer="21"/>
<pad name="1" x="-3.81" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="2" x="-1.27" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="3" x="1.27" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="4" x="3.81" y="0" drill="1.016" shape="long" rot="R90"/>
<text x="-5.08" y="1.651" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-6.223" y="-0.635" size="1.27" layer="21" ratio="10">1</text>
<text x="0.635" y="1.651" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<text x="5.334" y="-0.635" size="1.27" layer="21" ratio="10">4</text>
<rectangle x1="-1.524" y1="-0.254" x2="-1.016" y2="0.254" layer="51"/>
<rectangle x1="-4.064" y1="-0.254" x2="-3.556" y2="0.254" layer="51"/>
<rectangle x1="1.016" y1="-0.254" x2="1.524" y2="0.254" layer="51"/>
<rectangle x1="3.556" y1="-0.254" x2="4.064" y2="0.254" layer="51"/>
</package>
</packages>
<symbols>
<symbol name="MA04-1">
<wire x1="3.81" y1="-7.62" x2="-1.27" y2="-7.62" width="0.4064" layer="94"/>
<wire x1="1.27" y1="0" x2="2.54" y2="0" width="0.6096" layer="94"/>
<wire x1="1.27" y1="-2.54" x2="2.54" y2="-2.54" width="0.6096" layer="94"/>
<wire x1="1.27" y1="-5.08" x2="2.54" y2="-5.08" width="0.6096" layer="94"/>
<wire x1="-1.27" y1="5.08" x2="-1.27" y2="-7.62" width="0.4064" layer="94"/>
<wire x1="3.81" y1="-7.62" x2="3.81" y2="5.08" width="0.4064" layer="94"/>
<wire x1="-1.27" y1="5.08" x2="3.81" y2="5.08" width="0.4064" layer="94"/>
<wire x1="1.27" y1="2.54" x2="2.54" y2="2.54" width="0.6096" layer="94"/>
<text x="-1.27" y="-10.16" size="1.778" layer="96">&gt;VALUE</text>
<text x="-1.27" y="5.842" size="1.778" layer="95">&gt;NAME</text>
<pin name="1" x="7.62" y="-5.08" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="2" x="7.62" y="-2.54" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="3" x="7.62" y="0" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="4" x="7.62" y="2.54" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="MA04-1" prefix="SV" uservalue="yes">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<gates>
<gate name="1" symbol="MA04-1" x="0" y="0"/>
</gates>
<devices>
<device name="" package="MA04-1">
<connects>
<connect gate="1" pin="1" pad="1"/>
<connect gate="1" pin="2" pad="2"/>
<connect gate="1" pin="3" pad="3"/>
<connect gate="1" pin="4" pad="4"/>
</connects>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="supply1">
<description>&lt;b&gt;Supply Symbols&lt;/b&gt;&lt;p&gt;
 GND, VCC, 0V, +5V, -5V, etc.&lt;p&gt;
 Please keep in mind, that these devices are necessary for the
 automatic wiring of the supply signals.&lt;p&gt;
 The pin name defined in the symbol is identical to the net which is to be wired automatically.&lt;p&gt;
 In this library the device names are the same as the pin names of the symbols, therefore the correct signal names appear next to the supply symbols in the schematic.&lt;p&gt;
 &lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
</packages>
<symbols>
<symbol name="VCC">
<wire x1="1.27" y1="-1.905" x2="0" y2="0" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="-1.27" y2="-1.905" width="0.254" layer="94"/>
<text x="-2.54" y="-2.54" size="1.778" layer="96" rot="R90">&gt;VALUE</text>
<pin name="VCC" x="0" y="-2.54" visible="off" length="short" direction="sup" rot="R90"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="VCC" prefix="P+">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="VCC" symbol="VCC" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="supply2">
<description>&lt;b&gt;Supply Symbols&lt;/b&gt;&lt;p&gt;
GND, VCC, 0V, +5V, -5V, etc.&lt;p&gt;
Please keep in mind, that these devices are necessary for the
automatic wiring of the supply signals.&lt;p&gt;
The pin name defined in the symbol is identical to the net which is to be wired automatically.&lt;p&gt;
In this library the device names are the same as the pin names of the symbols, therefore the correct signal names appear next to the supply symbols in the schematic.&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
</packages>
<symbols>
<symbol name="GND">
<wire x1="-1.27" y1="0" x2="1.27" y2="0" width="0.254" layer="94"/>
<wire x1="1.27" y1="0" x2="0" y2="-1.27" width="0.254" layer="94"/>
<wire x1="0" y1="-1.27" x2="-1.27" y2="0" width="0.254" layer="94"/>
<text x="-1.905" y="-3.175" size="1.778" layer="96">&gt;VALUE</text>
<pin name="GND" x="0" y="2.54" visible="off" length="short" direction="sup" rot="R270"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="GND" prefix="SUPPLY">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="GND" symbol="GND" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
</libraries>
<attributes>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="default" width="0" drill="0">
</class>
</classes>
<parts>
<part name="U$1" library="arduino-pro-mini" deviceset="ARDUINO-PRO-MINI-BARE" device=""/>
<part name="A4567" library="con-lstb" deviceset="MA04-1" device=""/>
<part name="I2C$1" library="con-lstb" deviceset="MA04-1" device=""/>
<part name="P+1" library="supply1" deviceset="VCC" device=""/>
<part name="SUPPLY1" library="supply2" deviceset="GND" device=""/>
<part name="I2C$2" library="con-lstb" deviceset="MA04-1" device=""/>
<part name="P+2" library="supply1" deviceset="VCC" device=""/>
<part name="SUPPLY2" library="supply2" deviceset="GND" device=""/>
<part name="I2C$3" library="con-lstb" deviceset="MA04-1" device=""/>
<part name="P+3" library="supply1" deviceset="VCC" device=""/>
<part name="SUPPLY3" library="supply2" deviceset="GND" device=""/>
<part name="I2C$4" library="con-lstb" deviceset="MA04-1" device=""/>
<part name="P+4" library="supply1" deviceset="VCC" device=""/>
<part name="SUPPLY4" library="supply2" deviceset="GND" device=""/>
<part name="I2C$5" library="con-lstb" deviceset="MA04-1" device=""/>
<part name="P+5" library="supply1" deviceset="VCC" device=""/>
<part name="SUPPLY5" library="supply2" deviceset="GND" device=""/>
<part name="I2C$6" library="con-lstb" deviceset="MA04-1" device=""/>
<part name="P+6" library="supply1" deviceset="VCC" device=""/>
<part name="SUPPLY6" library="supply2" deviceset="GND" device=""/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="U$1" gate="G$1" x="63.5" y="129.54"/>
<instance part="A4567" gate="1" x="66.04" y="104.14" rot="R270"/>
<instance part="I2C$1" gate="1" x="10.16" y="63.5"/>
<instance part="P+1" gate="VCC" x="25.4" y="76.2"/>
<instance part="SUPPLY1" gate="GND" x="2.54" y="66.04"/>
<instance part="I2C$2" gate="1" x="10.16" y="35.56"/>
<instance part="P+2" gate="VCC" x="25.4" y="48.26"/>
<instance part="SUPPLY2" gate="GND" x="2.54" y="38.1"/>
<instance part="I2C$3" gate="1" x="10.16" y="7.62"/>
<instance part="P+3" gate="VCC" x="25.4" y="20.32"/>
<instance part="SUPPLY3" gate="GND" x="2.54" y="10.16"/>
<instance part="I2C$4" gate="1" x="55.88" y="63.5"/>
<instance part="P+4" gate="VCC" x="71.12" y="76.2"/>
<instance part="SUPPLY4" gate="GND" x="48.26" y="66.04"/>
<instance part="I2C$5" gate="1" x="55.88" y="35.56"/>
<instance part="P+5" gate="VCC" x="71.12" y="48.26"/>
<instance part="SUPPLY5" gate="GND" x="48.26" y="38.1"/>
<instance part="I2C$6" gate="1" x="55.88" y="7.62"/>
<instance part="P+6" gate="VCC" x="71.12" y="20.32"/>
<instance part="SUPPLY6" gate="GND" x="48.26" y="10.16"/>
</instances>
<busses>
</busses>
<nets>
<net name="SDA" class="0">
<segment>
<pinref part="I2C$1" gate="1" pin="1"/>
<wire x1="17.78" y1="58.42" x2="22.86" y2="58.42" width="0.1524" layer="91"/>
<label x="22.86" y="58.42" size="1.778" layer="95" xref="yes"/>
</segment>
<segment>
<pinref part="I2C$2" gate="1" pin="1"/>
<wire x1="17.78" y1="30.48" x2="22.86" y2="30.48" width="0.1524" layer="91"/>
<label x="22.86" y="30.48" size="1.778" layer="95" xref="yes"/>
</segment>
<segment>
<pinref part="I2C$3" gate="1" pin="1"/>
<wire x1="17.78" y1="2.54" x2="22.86" y2="2.54" width="0.1524" layer="91"/>
<label x="22.86" y="2.54" size="1.778" layer="95" xref="yes"/>
</segment>
<segment>
<pinref part="I2C$4" gate="1" pin="1"/>
<wire x1="63.5" y1="58.42" x2="68.58" y2="58.42" width="0.1524" layer="91"/>
<label x="68.58" y="58.42" size="1.778" layer="95" xref="yes"/>
</segment>
<segment>
<pinref part="I2C$5" gate="1" pin="1"/>
<wire x1="63.5" y1="30.48" x2="68.58" y2="30.48" width="0.1524" layer="91"/>
<label x="68.58" y="30.48" size="1.778" layer="95" xref="yes"/>
</segment>
<segment>
<pinref part="I2C$6" gate="1" pin="1"/>
<wire x1="63.5" y1="2.54" x2="68.58" y2="2.54" width="0.1524" layer="91"/>
<label x="68.58" y="2.54" size="1.778" layer="95" xref="yes"/>
</segment>
</net>
<net name="SCL" class="0">
<segment>
<pinref part="I2C$1" gate="1" pin="2"/>
<wire x1="17.78" y1="60.96" x2="30.48" y2="60.96" width="0.1524" layer="91"/>
<label x="30.48" y="60.96" size="1.778" layer="95" xref="yes"/>
</segment>
<segment>
<pinref part="I2C$2" gate="1" pin="2"/>
<wire x1="17.78" y1="33.02" x2="30.48" y2="33.02" width="0.1524" layer="91"/>
<label x="30.48" y="33.02" size="1.778" layer="95" xref="yes"/>
</segment>
<segment>
<pinref part="I2C$3" gate="1" pin="2"/>
<wire x1="17.78" y1="5.08" x2="30.48" y2="5.08" width="0.1524" layer="91"/>
<label x="30.48" y="5.08" size="1.778" layer="95" xref="yes"/>
</segment>
<segment>
<pinref part="I2C$4" gate="1" pin="2"/>
<wire x1="63.5" y1="60.96" x2="76.2" y2="60.96" width="0.1524" layer="91"/>
<label x="76.2" y="60.96" size="1.778" layer="95" xref="yes"/>
</segment>
<segment>
<pinref part="I2C$5" gate="1" pin="2"/>
<wire x1="63.5" y1="33.02" x2="76.2" y2="33.02" width="0.1524" layer="91"/>
<label x="76.2" y="33.02" size="1.778" layer="95" xref="yes"/>
</segment>
<segment>
<pinref part="I2C$6" gate="1" pin="2"/>
<wire x1="63.5" y1="5.08" x2="76.2" y2="5.08" width="0.1524" layer="91"/>
<label x="76.2" y="5.08" size="1.778" layer="95" xref="yes"/>
</segment>
</net>
<net name="VCC" class="0">
<segment>
<pinref part="I2C$1" gate="1" pin="3"/>
<wire x1="17.78" y1="63.5" x2="25.4" y2="63.5" width="0.1524" layer="91"/>
<wire x1="25.4" y1="63.5" x2="25.4" y2="73.66" width="0.1524" layer="91"/>
<pinref part="P+1" gate="VCC" pin="VCC"/>
</segment>
<segment>
<pinref part="I2C$2" gate="1" pin="3"/>
<wire x1="17.78" y1="35.56" x2="25.4" y2="35.56" width="0.1524" layer="91"/>
<wire x1="25.4" y1="35.56" x2="25.4" y2="45.72" width="0.1524" layer="91"/>
<pinref part="P+2" gate="VCC" pin="VCC"/>
</segment>
<segment>
<pinref part="I2C$3" gate="1" pin="3"/>
<wire x1="17.78" y1="7.62" x2="25.4" y2="7.62" width="0.1524" layer="91"/>
<wire x1="25.4" y1="7.62" x2="25.4" y2="17.78" width="0.1524" layer="91"/>
<pinref part="P+3" gate="VCC" pin="VCC"/>
</segment>
<segment>
<pinref part="I2C$4" gate="1" pin="3"/>
<wire x1="63.5" y1="63.5" x2="71.12" y2="63.5" width="0.1524" layer="91"/>
<wire x1="71.12" y1="63.5" x2="71.12" y2="73.66" width="0.1524" layer="91"/>
<pinref part="P+4" gate="VCC" pin="VCC"/>
</segment>
<segment>
<pinref part="I2C$5" gate="1" pin="3"/>
<wire x1="63.5" y1="35.56" x2="71.12" y2="35.56" width="0.1524" layer="91"/>
<wire x1="71.12" y1="35.56" x2="71.12" y2="45.72" width="0.1524" layer="91"/>
<pinref part="P+5" gate="VCC" pin="VCC"/>
</segment>
<segment>
<pinref part="I2C$6" gate="1" pin="3"/>
<wire x1="63.5" y1="7.62" x2="71.12" y2="7.62" width="0.1524" layer="91"/>
<wire x1="71.12" y1="7.62" x2="71.12" y2="17.78" width="0.1524" layer="91"/>
<pinref part="P+6" gate="VCC" pin="VCC"/>
</segment>
</net>
<net name="GND" class="0">
<segment>
<pinref part="I2C$1" gate="1" pin="4"/>
<wire x1="17.78" y1="66.04" x2="17.78" y2="73.66" width="0.1524" layer="91"/>
<wire x1="17.78" y1="73.66" x2="2.54" y2="73.66" width="0.1524" layer="91"/>
<wire x1="2.54" y1="73.66" x2="2.54" y2="68.58" width="0.1524" layer="91"/>
<pinref part="SUPPLY1" gate="GND" pin="GND"/>
</segment>
<segment>
<pinref part="I2C$2" gate="1" pin="4"/>
<wire x1="17.78" y1="38.1" x2="17.78" y2="45.72" width="0.1524" layer="91"/>
<wire x1="17.78" y1="45.72" x2="2.54" y2="45.72" width="0.1524" layer="91"/>
<wire x1="2.54" y1="45.72" x2="2.54" y2="40.64" width="0.1524" layer="91"/>
<pinref part="SUPPLY2" gate="GND" pin="GND"/>
</segment>
<segment>
<pinref part="I2C$3" gate="1" pin="4"/>
<wire x1="17.78" y1="10.16" x2="17.78" y2="17.78" width="0.1524" layer="91"/>
<wire x1="17.78" y1="17.78" x2="2.54" y2="17.78" width="0.1524" layer="91"/>
<wire x1="2.54" y1="17.78" x2="2.54" y2="12.7" width="0.1524" layer="91"/>
<pinref part="SUPPLY3" gate="GND" pin="GND"/>
</segment>
<segment>
<pinref part="I2C$4" gate="1" pin="4"/>
<wire x1="63.5" y1="66.04" x2="63.5" y2="73.66" width="0.1524" layer="91"/>
<wire x1="63.5" y1="73.66" x2="48.26" y2="73.66" width="0.1524" layer="91"/>
<wire x1="48.26" y1="73.66" x2="48.26" y2="68.58" width="0.1524" layer="91"/>
<pinref part="SUPPLY4" gate="GND" pin="GND"/>
</segment>
<segment>
<pinref part="I2C$5" gate="1" pin="4"/>
<wire x1="63.5" y1="38.1" x2="63.5" y2="45.72" width="0.1524" layer="91"/>
<wire x1="63.5" y1="45.72" x2="48.26" y2="45.72" width="0.1524" layer="91"/>
<wire x1="48.26" y1="45.72" x2="48.26" y2="40.64" width="0.1524" layer="91"/>
<pinref part="SUPPLY5" gate="GND" pin="GND"/>
</segment>
<segment>
<pinref part="I2C$6" gate="1" pin="4"/>
<wire x1="63.5" y1="10.16" x2="63.5" y2="17.78" width="0.1524" layer="91"/>
<wire x1="63.5" y1="17.78" x2="48.26" y2="17.78" width="0.1524" layer="91"/>
<wire x1="48.26" y1="17.78" x2="48.26" y2="12.7" width="0.1524" layer="91"/>
<pinref part="SUPPLY6" gate="GND" pin="GND"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
</eagle>
