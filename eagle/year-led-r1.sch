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
<layer number="51" name="tDocu" color="6" fill="1" visible="no" active="no"/>
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
<library name="display-kingbright">
<description>&lt;b&gt;KINGBRIGHT Numeric Displays&lt;/b&gt;&lt;p&gt;
&lt;author&gt;librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="DA56">
<description>&lt;b&gt;14.22mm (0.56INCH) DUAL DIGIT NUMERIC DISPLAYS&lt;/b&gt;&lt;p&gt;
Source: DA56-11SRWA.pdf</description>
<wire x1="-12.425" y1="9.4" x2="12.395" y2="9.4" width="0.2032" layer="21"/>
<wire x1="12.395" y1="9.4" x2="12.395" y2="-9.4" width="0.2032" layer="21"/>
<wire x1="12.395" y1="-9.4" x2="-12.425" y2="-9.4" width="0.2032" layer="21"/>
<wire x1="-12.425" y1="-9.4" x2="-12.425" y2="9.4" width="0.2032" layer="21"/>
<circle x="-1.3517" y="-6.4231" radius="0.84" width="0" layer="21"/>
<circle x="11.2733" y="-6.4231" radius="0.84" width="0" layer="21"/>
<pad name="1" x="-10.26" y="-7.62" drill="0.8" diameter="1.4224"/>
<pad name="2" x="-7.72" y="-7.62" drill="0.8" diameter="1.4224"/>
<pad name="3" x="-5.18" y="-7.62" drill="0.8" diameter="1.4224"/>
<pad name="4" x="-2.64" y="-7.62" drill="0.8" diameter="1.4224"/>
<pad name="5" x="-0.1" y="-7.62" drill="0.8" diameter="1.4224"/>
<pad name="6" x="2.44" y="-7.62" drill="0.8" diameter="1.4224"/>
<pad name="7" x="4.98" y="-7.62" drill="0.8" diameter="1.4224"/>
<pad name="8" x="7.52" y="-7.62" drill="0.8" diameter="1.4224"/>
<pad name="9" x="10.06" y="-7.62" drill="0.8" diameter="1.4224"/>
<pad name="10" x="10.26" y="7.62" drill="0.8" diameter="1.4224" rot="R180"/>
<pad name="11" x="7.72" y="7.62" drill="0.8" diameter="1.4224" rot="R180"/>
<pad name="12" x="5.18" y="7.62" drill="0.8" diameter="1.4224" rot="R180"/>
<pad name="13" x="2.64" y="7.62" drill="0.8" diameter="1.4224" rot="R180"/>
<pad name="14" x="0.1" y="7.62" drill="0.8" diameter="1.4224" rot="R180"/>
<pad name="15" x="-2.64" y="7.62" drill="0.8" diameter="1.4224" rot="R180"/>
<pad name="16" x="-5.18" y="7.62" drill="0.8" diameter="1.4224" rot="R180"/>
<pad name="17" x="-7.72" y="7.62" drill="0.8" diameter="1.4224" rot="R180"/>
<pad name="18" x="-10.26" y="7.62" drill="0.8" diameter="1.4224" rot="R180"/>
<text x="-12.165" y="10.16" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="0.535" y="10.16" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
<polygon width="0.3976" layer="51" spacing="1.2428">
<vertex x="-7.3945" y="5.9694"/>
<vertex x="-7.2233" y="6.948"/>
<vertex x="-3.2037" y="6.948"/>
<vertex x="-3.326" y="5.9694"/>
</polygon>
<polygon width="0.3976" layer="51" spacing="1.2428">
<vertex x="-3.6132" y="1.0329"/>
<vertex x="-2.5796" y="6.9034"/>
<vertex x="-2.277" y="6.9114" curve="-104.731141"/>
<vertex x="-1.6592" y="6.071"/>
<vertex x="-2.6899" y="0.4893"/>
<vertex x="-3.1547" y="0.4893"/>
</polygon>
<polygon width="0.3976" layer="51" spacing="1.2428">
<vertex x="-8.8869" y="1.0764"/>
<vertex x="-7.8593" y="6.948"/>
<vertex x="-8.1285" y="6.948" curve="77.705866"/>
<vertex x="-9.0092" y="6.2385"/>
<vertex x="-10.0122" y="0.4893"/>
<vertex x="-9.4495" y="0.4893"/>
</polygon>
<polygon width="0.3976" layer="21" spacing="1.2428">
<vertex x="-8.9847" y="0.0245"/>
<vertex x="-8.3731" y="0.6361"/>
<vertex x="-4.1578" y="0.6361"/>
<vertex x="-3.7908" y="0.1223"/>
<vertex x="-4.2312" y="-0.3425"/>
<vertex x="-8.6177" y="-0.3425"/>
</polygon>
<polygon width="0.3976" layer="51" spacing="1.2428">
<vertex x="-5.3321" y="-5.7003"/>
<vertex x="-5.5033" y="-6.6789"/>
<vertex x="-9.5229" y="-6.6789"/>
<vertex x="-9.4006" y="-5.7003"/>
</polygon>
<polygon width="0.3976" layer="51" spacing="1.2428">
<vertex x="-9.1868" y="-0.7149"/>
<vertex x="-10.1471" y="-6.6343"/>
<vertex x="-10.4497" y="-6.6423" curve="-104.72259"/>
<vertex x="-11.0674" y="-5.8019"/>
<vertex x="-10.1101" y="-0.1713"/>
<vertex x="-9.6453" y="-0.1713"/>
</polygon>
<polygon width="0.3976" layer="51" spacing="1.2428">
<vertex x="-3.8887" y="-0.9541"/>
<vertex x="-4.8673" y="-6.6789"/>
<vertex x="-4.5982" y="-6.6789" curve="77.701982"/>
<vertex x="-3.7174" y="-5.9694"/>
<vertex x="-2.7878" y="-0.4159"/>
<vertex x="-3.3505" y="-0.4159"/>
</polygon>
<polygon width="0.3976" layer="51" spacing="1.2428">
<vertex x="5.3055" y="5.9694"/>
<vertex x="5.4767" y="6.948"/>
<vertex x="9.4963" y="6.948"/>
<vertex x="9.374" y="5.9694"/>
</polygon>
<polygon width="0.3976" layer="51" spacing="1.2428">
<vertex x="9.0868" y="1.0329"/>
<vertex x="10.1204" y="6.9034"/>
<vertex x="10.423" y="6.9114" curve="-104.731141"/>
<vertex x="11.0408" y="6.071"/>
<vertex x="10.0101" y="0.4893"/>
<vertex x="9.5453" y="0.4893"/>
</polygon>
<polygon width="0.3976" layer="51" spacing="1.2428">
<vertex x="3.8131" y="1.0764"/>
<vertex x="4.8407" y="6.948"/>
<vertex x="4.5715" y="6.948" curve="77.705866"/>
<vertex x="3.6908" y="6.2385"/>
<vertex x="2.6878" y="0.4893"/>
<vertex x="3.2505" y="0.4893"/>
</polygon>
<polygon width="0.3976" layer="21" spacing="1.2428">
<vertex x="3.7153" y="0.0245"/>
<vertex x="4.3269" y="0.6361"/>
<vertex x="8.5422" y="0.6361"/>
<vertex x="8.9092" y="0.1223"/>
<vertex x="8.4688" y="-0.3425"/>
<vertex x="4.0823" y="-0.3425"/>
</polygon>
<polygon width="0.3976" layer="51" spacing="1.2428">
<vertex x="7.3679" y="-5.7003"/>
<vertex x="7.1967" y="-6.6789"/>
<vertex x="3.1771" y="-6.6789"/>
<vertex x="3.2994" y="-5.7003"/>
</polygon>
<polygon width="0.3976" layer="51" spacing="1.2428">
<vertex x="3.5132" y="-0.7149"/>
<vertex x="2.5529" y="-6.6343"/>
<vertex x="2.2503" y="-6.6423" curve="-104.72259"/>
<vertex x="1.6326" y="-5.8019"/>
<vertex x="2.5899" y="-0.1713"/>
<vertex x="3.0547" y="-0.1713"/>
</polygon>
<polygon width="0.3976" layer="51" spacing="1.2428">
<vertex x="8.8113" y="-0.9541"/>
<vertex x="7.8327" y="-6.6789"/>
<vertex x="8.1018" y="-6.6789" curve="77.701982"/>
<vertex x="8.9826" y="-5.9694"/>
<vertex x="9.9122" y="-0.4159"/>
<vertex x="9.3495" y="-0.4159"/>
</polygon>
</package>
</packages>
<symbols>
<symbol name="7SEG-LED-COM1">
<wire x1="2.794" y1="-3.683" x2="3.048" y2="-3.683" width="0.3048" layer="94"/>
<wire x1="2.3368" y1="3.1242" x2="2.032" y2="2.8194" width="0.254" layer="94"/>
<wire x1="2.032" y1="2.8194" x2="1.6256" y2="0.6096" width="0.254" layer="94"/>
<wire x1="1.6256" y1="0.6096" x2="1.905" y2="0.3302" width="0.254" layer="94"/>
<wire x1="1.905" y1="0.3302" x2="2.159" y2="0.5842" width="0.254" layer="94"/>
<wire x1="2.159" y1="0.5842" x2="2.54" y2="2.921" width="0.254" layer="94"/>
<wire x1="2.54" y1="2.921" x2="2.3368" y2="3.1242" width="0.254" layer="94"/>
<wire x1="2.032" y1="3.429" x2="1.778" y2="3.175" width="0.254" layer="94"/>
<wire x1="1.778" y1="3.175" x2="-0.762" y2="3.175" width="0.254" layer="94"/>
<wire x1="-0.762" y1="3.175" x2="-1.016" y2="3.429" width="0.254" layer="94"/>
<wire x1="-1.016" y1="3.429" x2="-0.762" y2="3.683" width="0.254" layer="94"/>
<wire x1="-0.762" y1="3.683" x2="1.778" y2="3.683" width="0.254" layer="94"/>
<wire x1="1.778" y1="3.683" x2="2.032" y2="3.429" width="0.254" layer="94"/>
<wire x1="-1.3208" y1="3.1242" x2="-1.016" y2="2.8194" width="0.254" layer="94"/>
<wire x1="-1.016" y1="2.8194" x2="-1.397" y2="0.6096" width="0.254" layer="94"/>
<wire x1="-1.397" y1="0.6096" x2="-1.651" y2="0.3556" width="0.254" layer="94"/>
<wire x1="-1.651" y1="0.3556" x2="-1.905" y2="0.6096" width="0.254" layer="94"/>
<wire x1="-1.905" y1="0.6096" x2="-1.524" y2="2.921" width="0.254" layer="94"/>
<wire x1="-1.524" y1="2.921" x2="-1.3208" y2="3.1242" width="0.254" layer="94"/>
<wire x1="-1.4732" y1="-0.0762" x2="-1.143" y2="0.254" width="0.254" layer="94"/>
<wire x1="-1.143" y1="0.254" x2="1.3462" y2="0.254" width="0.254" layer="94"/>
<wire x1="1.3462" y1="0.254" x2="1.5494" y2="0.0508" width="0.254" layer="94"/>
<wire x1="1.5494" y1="0.0508" x2="1.2446" y2="-0.254" width="0.254" layer="94"/>
<wire x1="1.2446" y1="-0.254" x2="-1.2954" y2="-0.254" width="0.254" layer="94"/>
<wire x1="-1.2954" y1="-0.254" x2="-1.4732" y2="-0.0762" width="0.254" layer="94"/>
<wire x1="-1.8288" y1="-0.3302" x2="-1.5748" y2="-0.5842" width="0.254" layer="94"/>
<wire x1="-2.286" y1="-3.1242" x2="-1.9558" y2="-2.794" width="0.254" layer="94"/>
<wire x1="-1.9558" y1="-2.794" x2="-1.5748" y2="-0.5842" width="0.254" layer="94"/>
<wire x1="-1.8288" y1="-0.3302" x2="-2.1082" y2="-0.6096" width="0.254" layer="94"/>
<wire x1="-2.1082" y1="-0.6096" x2="-2.4892" y2="-2.921" width="0.254" layer="94"/>
<wire x1="-2.4892" y1="-2.921" x2="-2.286" y2="-3.1242" width="0.254" layer="94"/>
<wire x1="-1.9812" y1="-3.429" x2="-1.7272" y2="-3.175" width="0.254" layer="94"/>
<wire x1="-1.7272" y1="-3.175" x2="0.8128" y2="-3.175" width="0.254" layer="94"/>
<wire x1="0.8128" y1="-3.175" x2="1.0668" y2="-3.429" width="0.254" layer="94"/>
<wire x1="1.0668" y1="-3.429" x2="0.8128" y2="-3.683" width="0.254" layer="94"/>
<wire x1="0.8128" y1="-3.683" x2="-1.7272" y2="-3.683" width="0.254" layer="94"/>
<wire x1="-1.7272" y1="-3.683" x2="-1.9812" y2="-3.429" width="0.254" layer="94"/>
<wire x1="1.7018" y1="-0.4064" x2="1.4478" y2="-0.6604" width="0.254" layer="94"/>
<wire x1="1.4478" y1="-0.6604" x2="1.0668" y2="-2.8194" width="0.254" layer="94"/>
<wire x1="1.0668" y1="-2.8194" x2="1.3716" y2="-3.1242" width="0.254" layer="94"/>
<wire x1="1.3716" y1="-3.1242" x2="1.5748" y2="-2.921" width="0.254" layer="94"/>
<wire x1="1.5748" y1="-2.921" x2="1.9558" y2="-0.6604" width="0.254" layer="94"/>
<wire x1="1.9558" y1="-0.6604" x2="1.7018" y2="-0.4064" width="0.254" layer="94"/>
<wire x1="2.286" y1="2.794" x2="1.905" y2="0.635" width="0.4064" layer="94"/>
<wire x1="1.778" y1="3.429" x2="-0.762" y2="3.429" width="0.4064" layer="94"/>
<wire x1="-1.27" y1="2.794" x2="-1.651" y2="0.635" width="0.4064" layer="94"/>
<wire x1="-1.27" y1="0" x2="1.27" y2="0" width="0.4064" layer="94"/>
<wire x1="1.651" y1="-0.762" x2="1.27" y2="-2.794" width="0.4064" layer="94"/>
<wire x1="0.762" y1="-3.429" x2="-1.651" y2="-3.429" width="0.4064" layer="94"/>
<wire x1="-2.286" y1="-2.921" x2="-1.905" y2="-0.635" width="0.4064" layer="94"/>
<wire x1="5.969" y1="8.89" x2="5.969" y2="7.62" width="0.4064" layer="94"/>
<wire x1="5.969" y1="7.62" x2="5.969" y2="-7.62" width="0.4064" layer="94"/>
<wire x1="5.969" y1="-7.62" x2="5.969" y2="-8.89" width="0.4064" layer="94"/>
<wire x1="-5.08" y1="-8.89" x2="5.969" y2="-8.89" width="0.4064" layer="94"/>
<wire x1="-5.08" y1="-8.89" x2="-5.08" y2="8.89" width="0.4064" layer="94"/>
<wire x1="5.969" y1="8.89" x2="-5.08" y2="8.89" width="0.4064" layer="94"/>
<wire x1="7.62" y1="7.62" x2="5.969" y2="7.62" width="0.1524" layer="94"/>
<wire x1="7.62" y1="-7.62" x2="5.969" y2="-7.62" width="0.1524" layer="94"/>
<circle x="2.921" y="-3.683" radius="0.254" width="0.3048" layer="94"/>
<text x="-5.08" y="9.525" size="1.778" layer="95">&gt;NAME</text>
<text x="-5.08" y="-11.43" size="1.778" layer="96">&gt;VALUE</text>
<text x="-6.477" y="7.874" size="1.27" layer="95">a</text>
<text x="-6.477" y="5.334" size="1.27" layer="95">b</text>
<text x="-6.477" y="2.794" size="1.27" layer="95">c</text>
<text x="-6.477" y="0.254" size="1.27" layer="95">d</text>
<text x="-6.477" y="-2.286" size="1.27" layer="95">e</text>
<text x="-6.477" y="-4.826" size="1.27" layer="95">f</text>
<text x="-6.477" y="-7.366" size="1.27" layer="95">g</text>
<pin name="DP" x="10.16" y="-7.62" length="short" direction="pas" rot="R180"/>
<pin name="F" x="-10.16" y="-5.08" visible="pad" length="middle" direction="pas"/>
<pin name="D" x="-10.16" y="0" visible="pad" length="middle" direction="pas"/>
<pin name="B" x="-10.16" y="5.08" visible="pad" length="middle" direction="pas"/>
<pin name="A" x="-10.16" y="7.62" visible="pad" length="middle" direction="pas"/>
<pin name="COM" x="10.16" y="7.62" length="short" direction="pas" rot="R180"/>
<pin name="C" x="-10.16" y="2.54" visible="pad" length="middle" direction="pas"/>
<pin name="E" x="-10.16" y="-2.54" visible="pad" length="middle" direction="pas"/>
<pin name="G" x="-10.16" y="-7.62" visible="pad" length="middle" direction="pas"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="DA56-11" prefix="LED">
<description>&lt;b&gt;14.22mm (0.56INCH) DUAL DIGIT NUMERIC DISPLAYS&lt;/b&gt;&lt;p&gt;
Source: www.kingbright.com .. DA56-11SRWA.pdf</description>
<gates>
<gate name="DIG1" symbol="7SEG-LED-COM1" x="-15.24" y="0" addlevel="always"/>
<gate name="DIG2" symbol="7SEG-LED-COM1" x="15.24" y="0" addlevel="always"/>
</gates>
<devices>
<device name="" package="DA56">
<connects>
<connect gate="DIG1" pin="A" pad="16"/>
<connect gate="DIG1" pin="B" pad="15"/>
<connect gate="DIG1" pin="C" pad="3"/>
<connect gate="DIG1" pin="COM" pad="14"/>
<connect gate="DIG1" pin="D" pad="2"/>
<connect gate="DIG1" pin="DP" pad="4"/>
<connect gate="DIG1" pin="E" pad="1"/>
<connect gate="DIG1" pin="F" pad="18"/>
<connect gate="DIG1" pin="G" pad="17"/>
<connect gate="DIG2" pin="A" pad="11"/>
<connect gate="DIG2" pin="B" pad="10"/>
<connect gate="DIG2" pin="C" pad="8"/>
<connect gate="DIG2" pin="COM" pad="13"/>
<connect gate="DIG2" pin="D" pad="6"/>
<connect gate="DIG2" pin="DP" pad="9"/>
<connect gate="DIG2" pin="E" pad="5"/>
<connect gate="DIG2" pin="F" pad="12"/>
<connect gate="DIG2" pin="G" pad="7"/>
</connects>
<technologies>
<technology name="EWA">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
<technology name="GWA">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
<technology name="SRWA">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
<technology name="YWA">
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
<library name="con-lstb">
<description>&lt;b&gt;Pin Headers&lt;/b&gt;&lt;p&gt;
Naming:&lt;p&gt;
MA = male&lt;p&gt;
# contacts - # rows&lt;p&gt;
W = angled&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="MA20-1W">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<wire x1="25.4" y1="1.524" x2="22.86" y2="1.524" width="0.1524" layer="21"/>
<wire x1="22.86" y1="1.524" x2="22.86" y2="4.318" width="0.1524" layer="21"/>
<wire x1="22.86" y1="1.524" x2="20.32" y2="1.524" width="0.1524" layer="21"/>
<wire x1="20.32" y1="1.524" x2="20.32" y2="4.318" width="0.1524" layer="21"/>
<wire x1="20.32" y1="4.318" x2="22.86" y2="4.318" width="0.1524" layer="21"/>
<wire x1="25.4" y1="1.524" x2="25.4" y2="4.318" width="0.1524" layer="21"/>
<wire x1="22.86" y1="4.318" x2="25.4" y2="4.318" width="0.1524" layer="21"/>
<wire x1="20.32" y1="1.524" x2="17.78" y2="1.524" width="0.1524" layer="21"/>
<wire x1="17.78" y1="4.318" x2="20.32" y2="4.318" width="0.1524" layer="21"/>
<wire x1="15.24" y1="1.524" x2="15.24" y2="4.318" width="0.1524" layer="21"/>
<wire x1="12.7" y1="4.318" x2="15.24" y2="4.318" width="0.1524" layer="21"/>
<wire x1="17.78" y1="1.524" x2="17.78" y2="4.318" width="0.1524" layer="21"/>
<wire x1="15.24" y1="1.524" x2="17.78" y2="1.524" width="0.1524" layer="21"/>
<wire x1="15.24" y1="4.318" x2="17.78" y2="4.318" width="0.1524" layer="21"/>
<wire x1="13.97" y1="5.08" x2="13.97" y2="9.779" width="0.6604" layer="21"/>
<wire x1="16.51" y1="5.08" x2="16.51" y2="9.779" width="0.6604" layer="21"/>
<wire x1="19.05" y1="5.08" x2="19.05" y2="9.779" width="0.6604" layer="21"/>
<wire x1="21.59" y1="5.08" x2="21.59" y2="9.779" width="0.6604" layer="21"/>
<wire x1="24.13" y1="5.08" x2="24.13" y2="9.779" width="0.6604" layer="21"/>
<wire x1="15.24" y1="1.524" x2="12.7" y2="1.524" width="0.1524" layer="21"/>
<wire x1="12.7" y1="1.524" x2="10.16" y2="1.524" width="0.1524" layer="21"/>
<wire x1="10.16" y1="1.524" x2="10.16" y2="4.318" width="0.1524" layer="21"/>
<wire x1="10.16" y1="1.524" x2="7.62" y2="1.524" width="0.1524" layer="21"/>
<wire x1="7.62" y1="1.524" x2="7.62" y2="4.318" width="0.1524" layer="21"/>
<wire x1="7.62" y1="4.318" x2="10.16" y2="4.318" width="0.1524" layer="21"/>
<wire x1="12.7" y1="1.524" x2="12.7" y2="4.318" width="0.1524" layer="21"/>
<wire x1="10.16" y1="4.318" x2="12.7" y2="4.318" width="0.1524" layer="21"/>
<wire x1="7.62" y1="1.524" x2="5.08" y2="1.524" width="0.1524" layer="21"/>
<wire x1="5.08" y1="4.318" x2="7.62" y2="4.318" width="0.1524" layer="21"/>
<wire x1="2.54" y1="1.524" x2="2.54" y2="4.318" width="0.1524" layer="21"/>
<wire x1="2.54" y1="1.524" x2="0" y2="1.524" width="0.1524" layer="21"/>
<wire x1="0" y1="1.524" x2="0" y2="4.318" width="0.1524" layer="21"/>
<wire x1="0" y1="4.318" x2="2.54" y2="4.318" width="0.1524" layer="21"/>
<wire x1="5.08" y1="1.524" x2="5.08" y2="4.318" width="0.1524" layer="21"/>
<wire x1="2.54" y1="1.524" x2="5.08" y2="1.524" width="0.1524" layer="21"/>
<wire x1="2.54" y1="4.318" x2="5.08" y2="4.318" width="0.1524" layer="21"/>
<wire x1="1.27" y1="5.08" x2="1.27" y2="9.779" width="0.6604" layer="21"/>
<wire x1="3.81" y1="5.08" x2="3.81" y2="9.779" width="0.6604" layer="21"/>
<wire x1="6.35" y1="5.08" x2="6.35" y2="9.779" width="0.6604" layer="21"/>
<wire x1="8.89" y1="5.08" x2="8.89" y2="9.779" width="0.6604" layer="21"/>
<wire x1="11.43" y1="5.08" x2="11.43" y2="9.779" width="0.6604" layer="21"/>
<wire x1="0" y1="1.524" x2="-2.54" y2="1.524" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="1.524" x2="-2.54" y2="4.318" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="1.524" x2="-5.08" y2="1.524" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="1.524" x2="-5.08" y2="4.318" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="4.318" x2="-2.54" y2="4.318" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="4.318" x2="0" y2="4.318" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="1.524" x2="-7.62" y2="1.524" width="0.1524" layer="21"/>
<wire x1="-7.62" y1="4.318" x2="-5.08" y2="4.318" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="1.524" x2="-10.16" y2="4.318" width="0.1524" layer="21"/>
<wire x1="-12.7" y1="4.318" x2="-10.16" y2="4.318" width="0.1524" layer="21"/>
<wire x1="-7.62" y1="1.524" x2="-7.62" y2="4.318" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="1.524" x2="-7.62" y2="1.524" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="4.318" x2="-7.62" y2="4.318" width="0.1524" layer="21"/>
<wire x1="-11.43" y1="5.08" x2="-11.43" y2="9.779" width="0.6604" layer="21"/>
<wire x1="-8.89" y1="5.08" x2="-8.89" y2="9.779" width="0.6604" layer="21"/>
<wire x1="-6.35" y1="5.08" x2="-6.35" y2="9.779" width="0.6604" layer="21"/>
<wire x1="-3.81" y1="5.08" x2="-3.81" y2="9.779" width="0.6604" layer="21"/>
<wire x1="-1.27" y1="5.08" x2="-1.27" y2="9.779" width="0.6604" layer="21"/>
<wire x1="-10.16" y1="1.524" x2="-12.7" y2="1.524" width="0.1524" layer="21"/>
<wire x1="-12.7" y1="1.524" x2="-15.24" y2="1.524" width="0.1524" layer="21"/>
<wire x1="-15.24" y1="1.524" x2="-15.24" y2="4.318" width="0.1524" layer="21"/>
<wire x1="-15.24" y1="1.524" x2="-17.78" y2="1.524" width="0.1524" layer="21"/>
<wire x1="-17.78" y1="1.524" x2="-17.78" y2="4.318" width="0.1524" layer="21"/>
<wire x1="-17.78" y1="4.318" x2="-15.24" y2="4.318" width="0.1524" layer="21"/>
<wire x1="-12.7" y1="1.524" x2="-12.7" y2="4.318" width="0.1524" layer="21"/>
<wire x1="-15.24" y1="4.318" x2="-12.7" y2="4.318" width="0.1524" layer="21"/>
<wire x1="-17.78" y1="1.524" x2="-20.32" y2="1.524" width="0.1524" layer="21"/>
<wire x1="-20.32" y1="4.318" x2="-17.78" y2="4.318" width="0.1524" layer="21"/>
<wire x1="-22.86" y1="1.524" x2="-22.86" y2="4.318" width="0.1524" layer="21"/>
<wire x1="-22.86" y1="1.524" x2="-25.4" y2="1.524" width="0.1524" layer="21"/>
<wire x1="-25.4" y1="1.524" x2="-25.4" y2="4.318" width="0.1524" layer="21"/>
<wire x1="-25.4" y1="4.318" x2="-22.86" y2="4.318" width="0.1524" layer="21"/>
<wire x1="-20.32" y1="1.524" x2="-20.32" y2="4.318" width="0.1524" layer="21"/>
<wire x1="-22.86" y1="1.524" x2="-20.32" y2="1.524" width="0.1524" layer="21"/>
<wire x1="-22.86" y1="4.318" x2="-20.32" y2="4.318" width="0.1524" layer="21"/>
<wire x1="-24.13" y1="5.08" x2="-24.13" y2="9.779" width="0.6604" layer="21"/>
<wire x1="-21.59" y1="5.08" x2="-21.59" y2="9.779" width="0.6604" layer="21"/>
<wire x1="-19.05" y1="5.08" x2="-19.05" y2="9.779" width="0.6604" layer="21"/>
<wire x1="-16.51" y1="5.08" x2="-16.51" y2="9.779" width="0.6604" layer="21"/>
<wire x1="-13.97" y1="5.08" x2="-13.97" y2="9.779" width="0.6604" layer="21"/>
<pad name="20" x="24.13" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="19" x="21.59" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="18" x="19.05" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="17" x="16.51" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="16" x="13.97" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="15" x="11.43" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="14" x="8.89" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="13" x="6.35" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="12" x="3.81" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="11" x="1.27" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="10" x="-1.27" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="9" x="-3.81" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="8" x="-6.35" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="7" x="-8.89" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="6" x="-11.43" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="5" x="-13.97" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="4" x="-16.51" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="3" x="-19.05" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="2" x="-21.59" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="1" x="-24.13" y="0" drill="1.016" shape="long" rot="R90"/>
<text x="-25.4" y="-2.54" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-23.495" y="2.032" size="1.27" layer="21" ratio="10" rot="R90">1</text>
<text x="-20.955" y="2.032" size="1.27" layer="21" ratio="10" rot="R90">2</text>
<text x="-18.415" y="2.032" size="1.27" layer="21" ratio="10" rot="R90">3</text>
<text x="-15.875" y="2.032" size="1.27" layer="21" ratio="10" rot="R90">4</text>
<text x="-13.335" y="2.032" size="1.27" layer="21" ratio="10" rot="R90">5</text>
<text x="-10.795" y="2.032" size="1.27" layer="21" ratio="10" rot="R90">6</text>
<text x="-8.255" y="2.032" size="1.27" layer="21" ratio="10" rot="R90">7</text>
<text x="-5.715" y="2.032" size="1.27" layer="21" ratio="10" rot="R90">8</text>
<text x="-3.175" y="2.032" size="1.27" layer="21" ratio="10" rot="R90">9</text>
<text x="-0.635" y="1.905" size="1.27" layer="21" ratio="10" rot="R90">10</text>
<text x="1.905" y="2.032" size="1.27" layer="21" ratio="10" rot="R90">11</text>
<text x="4.445" y="1.905" size="1.27" layer="21" ratio="10" rot="R90">12</text>
<text x="6.985" y="2.032" size="1.27" layer="21" ratio="10" rot="R90">13</text>
<text x="9.525" y="1.905" size="1.27" layer="21" ratio="10" rot="R90">14</text>
<text x="12.065" y="1.905" size="1.27" layer="21" ratio="10" rot="R90">15</text>
<text x="14.605" y="1.905" size="1.27" layer="21" ratio="10" rot="R90">16</text>
<text x="17.145" y="1.905" size="1.27" layer="21" ratio="10" rot="R90">17</text>
<text x="19.685" y="1.905" size="1.27" layer="21" ratio="10" rot="R90">18</text>
<text x="22.225" y="1.905" size="1.27" layer="21" ratio="10" rot="R90">19</text>
<text x="24.765" y="1.778" size="1.27" layer="21" ratio="10" rot="R90">20</text>
<text x="-15.24" y="-2.54" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="13.6398" y1="4.318" x2="14.3002" y2="5.08" layer="21"/>
<rectangle x1="16.1798" y1="4.318" x2="16.8402" y2="5.08" layer="21"/>
<rectangle x1="18.7198" y1="4.318" x2="19.3802" y2="5.08" layer="21"/>
<rectangle x1="21.2598" y1="4.318" x2="21.9202" y2="5.08" layer="21"/>
<rectangle x1="23.7998" y1="4.318" x2="24.4602" y2="5.08" layer="21"/>
<rectangle x1="0.9398" y1="4.318" x2="1.6002" y2="5.08" layer="21"/>
<rectangle x1="3.4798" y1="4.318" x2="4.1402" y2="5.08" layer="21"/>
<rectangle x1="6.0198" y1="4.318" x2="6.6802" y2="5.08" layer="21"/>
<rectangle x1="8.5598" y1="4.318" x2="9.2202" y2="5.08" layer="21"/>
<rectangle x1="11.0998" y1="4.318" x2="11.7602" y2="5.08" layer="21"/>
<rectangle x1="-11.7602" y1="4.318" x2="-11.0998" y2="5.08" layer="21"/>
<rectangle x1="-9.2202" y1="4.318" x2="-8.5598" y2="5.08" layer="21"/>
<rectangle x1="-6.6802" y1="4.318" x2="-6.0198" y2="5.08" layer="21"/>
<rectangle x1="-4.1402" y1="4.318" x2="-3.4798" y2="5.08" layer="21"/>
<rectangle x1="-1.6002" y1="4.318" x2="-0.9398" y2="5.08" layer="21"/>
<rectangle x1="-24.4602" y1="4.318" x2="-23.7998" y2="5.08" layer="21"/>
<rectangle x1="-21.9202" y1="4.318" x2="-21.2598" y2="5.08" layer="21"/>
<rectangle x1="-19.3802" y1="4.318" x2="-18.7198" y2="5.08" layer="21"/>
<rectangle x1="-16.8402" y1="4.318" x2="-16.1798" y2="5.08" layer="21"/>
<rectangle x1="-14.3002" y1="4.318" x2="-13.6398" y2="5.08" layer="21"/>
<rectangle x1="16.1798" y1="0.8636" x2="16.8402" y2="1.524" layer="21"/>
<rectangle x1="16.1798" y1="-0.3302" x2="16.8402" y2="0.8636" layer="51"/>
<rectangle x1="18.7198" y1="0.8636" x2="19.3802" y2="1.524" layer="21"/>
<rectangle x1="18.7198" y1="-0.3302" x2="19.3802" y2="0.8636" layer="51"/>
<rectangle x1="21.2598" y1="0.8636" x2="21.9202" y2="1.524" layer="21"/>
<rectangle x1="23.7998" y1="0.8636" x2="24.4602" y2="1.524" layer="21"/>
<rectangle x1="21.2598" y1="-0.3302" x2="21.9202" y2="0.8636" layer="51"/>
<rectangle x1="23.7998" y1="-0.3302" x2="24.4602" y2="0.8636" layer="51"/>
<rectangle x1="13.6398" y1="0.8636" x2="14.3002" y2="1.524" layer="21"/>
<rectangle x1="11.0998" y1="0.8636" x2="11.7602" y2="1.524" layer="21"/>
<rectangle x1="13.6398" y1="-0.3302" x2="14.3002" y2="0.8636" layer="51"/>
<rectangle x1="11.0998" y1="-0.3302" x2="11.7602" y2="0.8636" layer="51"/>
<rectangle x1="8.5598" y1="0.8636" x2="9.2202" y2="1.524" layer="21"/>
<rectangle x1="8.5598" y1="-0.3302" x2="9.2202" y2="0.8636" layer="51"/>
<rectangle x1="6.0198" y1="0.8636" x2="6.6802" y2="1.524" layer="21"/>
<rectangle x1="6.0198" y1="-0.3302" x2="6.6802" y2="0.8636" layer="51"/>
<rectangle x1="3.4798" y1="0.8636" x2="4.1402" y2="1.524" layer="21"/>
<rectangle x1="0.9398" y1="0.8636" x2="1.6002" y2="1.524" layer="21"/>
<rectangle x1="-1.6002" y1="0.8636" x2="-0.9398" y2="1.524" layer="21"/>
<rectangle x1="3.4798" y1="-0.3302" x2="4.1402" y2="0.8636" layer="51"/>
<rectangle x1="0.9398" y1="-0.3302" x2="1.6002" y2="0.8636" layer="51"/>
<rectangle x1="-1.6002" y1="-0.3302" x2="-0.9398" y2="0.8636" layer="51"/>
<rectangle x1="-4.1402" y1="0.8636" x2="-3.4798" y2="1.524" layer="21"/>
<rectangle x1="-6.6802" y1="0.8636" x2="-6.0198" y2="1.524" layer="21"/>
<rectangle x1="-4.1402" y1="-0.3302" x2="-3.4798" y2="0.8636" layer="51"/>
<rectangle x1="-6.6802" y1="-0.3302" x2="-6.0198" y2="0.8636" layer="51"/>
<rectangle x1="-9.2202" y1="0.8636" x2="-8.5598" y2="1.524" layer="21"/>
<rectangle x1="-9.2202" y1="-0.3302" x2="-8.5598" y2="0.8636" layer="51"/>
<rectangle x1="-11.7602" y1="0.8636" x2="-11.0998" y2="1.524" layer="21"/>
<rectangle x1="-11.7602" y1="-0.3302" x2="-11.0998" y2="0.8636" layer="51"/>
<rectangle x1="-14.3002" y1="0.8636" x2="-13.6398" y2="1.524" layer="21"/>
<rectangle x1="-16.8402" y1="0.8636" x2="-16.1798" y2="1.524" layer="21"/>
<rectangle x1="-19.3802" y1="0.8636" x2="-18.7198" y2="1.524" layer="21"/>
<rectangle x1="-14.3002" y1="-0.3302" x2="-13.6398" y2="0.8636" layer="51"/>
<rectangle x1="-16.8402" y1="-0.3302" x2="-16.1798" y2="0.8636" layer="51"/>
<rectangle x1="-19.3802" y1="-0.3302" x2="-18.7198" y2="0.8636" layer="51"/>
<rectangle x1="-21.9202" y1="0.8636" x2="-21.2598" y2="1.524" layer="21"/>
<rectangle x1="-24.4602" y1="0.8636" x2="-23.7998" y2="1.524" layer="21"/>
<rectangle x1="-21.9202" y1="-0.3302" x2="-21.2598" y2="0.8636" layer="51"/>
<rectangle x1="-24.4602" y1="-0.3302" x2="-23.7998" y2="0.8636" layer="51"/>
</package>
</packages>
<symbols>
<symbol name="MA20-1">
<wire x1="3.81" y1="-25.4" x2="-1.27" y2="-25.4" width="0.4064" layer="94"/>
<wire x1="1.27" y1="-17.78" x2="2.54" y2="-17.78" width="0.6096" layer="94"/>
<wire x1="1.27" y1="-20.32" x2="2.54" y2="-20.32" width="0.6096" layer="94"/>
<wire x1="1.27" y1="-22.86" x2="2.54" y2="-22.86" width="0.6096" layer="94"/>
<wire x1="1.27" y1="-12.7" x2="2.54" y2="-12.7" width="0.6096" layer="94"/>
<wire x1="1.27" y1="-15.24" x2="2.54" y2="-15.24" width="0.6096" layer="94"/>
<wire x1="1.27" y1="-5.08" x2="2.54" y2="-5.08" width="0.6096" layer="94"/>
<wire x1="1.27" y1="-7.62" x2="2.54" y2="-7.62" width="0.6096" layer="94"/>
<wire x1="1.27" y1="-10.16" x2="2.54" y2="-10.16" width="0.6096" layer="94"/>
<wire x1="1.27" y1="0" x2="2.54" y2="0" width="0.6096" layer="94"/>
<wire x1="1.27" y1="-2.54" x2="2.54" y2="-2.54" width="0.6096" layer="94"/>
<wire x1="1.27" y1="7.62" x2="2.54" y2="7.62" width="0.6096" layer="94"/>
<wire x1="1.27" y1="5.08" x2="2.54" y2="5.08" width="0.6096" layer="94"/>
<wire x1="1.27" y1="2.54" x2="2.54" y2="2.54" width="0.6096" layer="94"/>
<wire x1="1.27" y1="15.24" x2="2.54" y2="15.24" width="0.6096" layer="94"/>
<wire x1="1.27" y1="12.7" x2="2.54" y2="12.7" width="0.6096" layer="94"/>
<wire x1="1.27" y1="10.16" x2="2.54" y2="10.16" width="0.6096" layer="94"/>
<wire x1="1.27" y1="20.32" x2="2.54" y2="20.32" width="0.6096" layer="94"/>
<wire x1="1.27" y1="17.78" x2="2.54" y2="17.78" width="0.6096" layer="94"/>
<wire x1="1.27" y1="25.4" x2="2.54" y2="25.4" width="0.6096" layer="94"/>
<wire x1="1.27" y1="22.86" x2="2.54" y2="22.86" width="0.6096" layer="94"/>
<wire x1="-1.27" y1="27.94" x2="-1.27" y2="-25.4" width="0.4064" layer="94"/>
<wire x1="3.81" y1="-25.4" x2="3.81" y2="27.94" width="0.4064" layer="94"/>
<wire x1="-1.27" y1="27.94" x2="3.81" y2="27.94" width="0.4064" layer="94"/>
<text x="-1.27" y="-27.94" size="1.778" layer="96">&gt;VALUE</text>
<text x="-1.27" y="28.702" size="1.778" layer="95">&gt;NAME</text>
<pin name="1" x="7.62" y="-22.86" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="2" x="7.62" y="-20.32" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="3" x="7.62" y="-17.78" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="4" x="7.62" y="-15.24" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="5" x="7.62" y="-12.7" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="6" x="7.62" y="-10.16" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="7" x="7.62" y="-7.62" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="8" x="7.62" y="-5.08" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="9" x="7.62" y="-2.54" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="10" x="7.62" y="0" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="11" x="7.62" y="2.54" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="12" x="7.62" y="5.08" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="13" x="7.62" y="7.62" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="14" x="7.62" y="10.16" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="15" x="7.62" y="12.7" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="16" x="7.62" y="15.24" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="17" x="7.62" y="17.78" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="18" x="7.62" y="20.32" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="19" x="7.62" y="22.86" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="20" x="7.62" y="25.4" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="MA20-1W" prefix="SV" uservalue="yes">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<gates>
<gate name="1" symbol="MA20-1" x="0" y="0"/>
</gates>
<devices>
<device name="" package="MA20-1W">
<connects>
<connect gate="1" pin="1" pad="1"/>
<connect gate="1" pin="10" pad="10"/>
<connect gate="1" pin="11" pad="11"/>
<connect gate="1" pin="12" pad="12"/>
<connect gate="1" pin="13" pad="13"/>
<connect gate="1" pin="14" pad="14"/>
<connect gate="1" pin="15" pad="15"/>
<connect gate="1" pin="16" pad="16"/>
<connect gate="1" pin="17" pad="17"/>
<connect gate="1" pin="18" pad="18"/>
<connect gate="1" pin="19" pad="19"/>
<connect gate="1" pin="2" pad="2"/>
<connect gate="1" pin="20" pad="20"/>
<connect gate="1" pin="3" pad="3"/>
<connect gate="1" pin="4" pad="4"/>
<connect gate="1" pin="5" pad="5"/>
<connect gate="1" pin="6" pad="6"/>
<connect gate="1" pin="7" pad="7"/>
<connect gate="1" pin="8" pad="8"/>
<connect gate="1" pin="9" pad="9"/>
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
<part name="LED1" library="display-kingbright" deviceset="DA56-11" device="" technology="EWA"/>
<part name="LED2" library="display-kingbright" deviceset="DA56-11" device="" technology="EWA"/>
<part name="SV1" library="con-lstb" deviceset="MA20-1W" device=""/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="LED1" gate="DIG1" x="96.52" y="101.6"/>
<instance part="LED1" gate="DIG2" x="144.78" y="101.6"/>
<instance part="LED2" gate="DIG1" x="96.52" y="48.26"/>
<instance part="LED2" gate="DIG2" x="144.78" y="48.26"/>
<instance part="SV1" gate="1" x="22.86" y="73.66" rot="MR180"/>
</instances>
<busses>
</busses>
<nets>
<net name="N$1" class="0">
<segment>
<pinref part="LED1" gate="DIG1" pin="A"/>
<wire x1="86.36" y1="109.22" x2="83.82" y2="109.22" width="0.1524" layer="91"/>
<wire x1="83.82" y1="109.22" x2="83.82" y2="116.84" width="0.1524" layer="91"/>
<wire x1="83.82" y1="116.84" x2="132.08" y2="116.84" width="0.1524" layer="91"/>
<wire x1="132.08" y1="116.84" x2="132.08" y2="109.22" width="0.1524" layer="91"/>
<pinref part="LED1" gate="DIG2" pin="A"/>
<wire x1="132.08" y1="109.22" x2="134.62" y2="109.22" width="0.1524" layer="91"/>
<wire x1="48.26" y1="109.22" x2="83.82" y2="109.22" width="0.1524" layer="91"/>
<junction x="83.82" y="109.22"/>
<pinref part="SV1" gate="1" pin="1"/>
<wire x1="30.48" y1="96.52" x2="35.56" y2="96.52" width="0.1524" layer="91"/>
<wire x1="35.56" y1="96.52" x2="48.26" y2="109.22" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$2" class="0">
<segment>
<pinref part="LED1" gate="DIG2" pin="B"/>
<wire x1="134.62" y1="106.68" x2="129.54" y2="106.68" width="0.1524" layer="91"/>
<wire x1="129.54" y1="106.68" x2="129.54" y2="119.38" width="0.1524" layer="91"/>
<wire x1="129.54" y1="119.38" x2="81.28" y2="119.38" width="0.1524" layer="91"/>
<wire x1="81.28" y1="119.38" x2="81.28" y2="106.68" width="0.1524" layer="91"/>
<pinref part="LED1" gate="DIG1" pin="B"/>
<wire x1="81.28" y1="106.68" x2="86.36" y2="106.68" width="0.1524" layer="91"/>
<wire x1="81.28" y1="106.68" x2="48.26" y2="106.68" width="0.1524" layer="91"/>
<junction x="81.28" y="106.68"/>
<pinref part="SV1" gate="1" pin="2"/>
<wire x1="30.48" y1="93.98" x2="35.56" y2="93.98" width="0.1524" layer="91"/>
<wire x1="35.56" y1="93.98" x2="48.26" y2="106.68" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$3" class="0">
<segment>
<pinref part="LED1" gate="DIG1" pin="C"/>
<wire x1="86.36" y1="104.14" x2="78.74" y2="104.14" width="0.1524" layer="91"/>
<wire x1="78.74" y1="104.14" x2="78.74" y2="121.92" width="0.1524" layer="91"/>
<wire x1="78.74" y1="121.92" x2="127" y2="121.92" width="0.1524" layer="91"/>
<wire x1="127" y1="121.92" x2="127" y2="104.14" width="0.1524" layer="91"/>
<pinref part="LED1" gate="DIG2" pin="C"/>
<wire x1="127" y1="104.14" x2="134.62" y2="104.14" width="0.1524" layer="91"/>
<wire x1="78.74" y1="104.14" x2="48.26" y2="104.14" width="0.1524" layer="91"/>
<junction x="78.74" y="104.14"/>
<pinref part="SV1" gate="1" pin="3"/>
<wire x1="30.48" y1="91.44" x2="35.56" y2="91.44" width="0.1524" layer="91"/>
<wire x1="35.56" y1="91.44" x2="48.26" y2="104.14" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$4" class="0">
<segment>
<pinref part="LED1" gate="DIG1" pin="D"/>
<wire x1="86.36" y1="101.6" x2="76.2" y2="101.6" width="0.1524" layer="91"/>
<wire x1="76.2" y1="101.6" x2="76.2" y2="124.46" width="0.1524" layer="91"/>
<wire x1="76.2" y1="124.46" x2="124.46" y2="124.46" width="0.1524" layer="91"/>
<wire x1="124.46" y1="124.46" x2="124.46" y2="101.6" width="0.1524" layer="91"/>
<pinref part="LED1" gate="DIG2" pin="D"/>
<wire x1="124.46" y1="101.6" x2="134.62" y2="101.6" width="0.1524" layer="91"/>
<wire x1="76.2" y1="101.6" x2="48.26" y2="101.6" width="0.1524" layer="91"/>
<junction x="76.2" y="101.6"/>
<pinref part="SV1" gate="1" pin="4"/>
<wire x1="30.48" y1="88.9" x2="35.56" y2="88.9" width="0.1524" layer="91"/>
<wire x1="35.56" y1="88.9" x2="48.26" y2="101.6" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$5" class="0">
<segment>
<pinref part="LED1" gate="DIG2" pin="E"/>
<wire x1="134.62" y1="99.06" x2="121.92" y2="99.06" width="0.1524" layer="91"/>
<wire x1="121.92" y1="99.06" x2="121.92" y2="127" width="0.1524" layer="91"/>
<wire x1="121.92" y1="127" x2="73.66" y2="127" width="0.1524" layer="91"/>
<wire x1="73.66" y1="127" x2="73.66" y2="99.06" width="0.1524" layer="91"/>
<pinref part="LED1" gate="DIG1" pin="E"/>
<wire x1="73.66" y1="99.06" x2="86.36" y2="99.06" width="0.1524" layer="91"/>
<wire x1="73.66" y1="99.06" x2="48.26" y2="99.06" width="0.1524" layer="91"/>
<junction x="73.66" y="99.06"/>
<pinref part="SV1" gate="1" pin="5"/>
<wire x1="30.48" y1="86.36" x2="35.56" y2="86.36" width="0.1524" layer="91"/>
<wire x1="35.56" y1="86.36" x2="48.26" y2="99.06" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$6" class="0">
<segment>
<pinref part="LED1" gate="DIG2" pin="F"/>
<wire x1="134.62" y1="96.52" x2="119.38" y2="96.52" width="0.1524" layer="91"/>
<wire x1="119.38" y1="96.52" x2="119.38" y2="129.54" width="0.1524" layer="91"/>
<wire x1="119.38" y1="129.54" x2="71.12" y2="129.54" width="0.1524" layer="91"/>
<wire x1="71.12" y1="129.54" x2="71.12" y2="96.52" width="0.1524" layer="91"/>
<pinref part="LED1" gate="DIG1" pin="F"/>
<wire x1="71.12" y1="96.52" x2="86.36" y2="96.52" width="0.1524" layer="91"/>
<wire x1="71.12" y1="96.52" x2="48.26" y2="96.52" width="0.1524" layer="91"/>
<junction x="71.12" y="96.52"/>
<pinref part="SV1" gate="1" pin="6"/>
<wire x1="30.48" y1="83.82" x2="35.56" y2="83.82" width="0.1524" layer="91"/>
<wire x1="35.56" y1="83.82" x2="48.26" y2="96.52" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$7" class="0">
<segment>
<pinref part="LED1" gate="DIG2" pin="G"/>
<wire x1="134.62" y1="93.98" x2="116.84" y2="93.98" width="0.1524" layer="91"/>
<wire x1="116.84" y1="93.98" x2="116.84" y2="132.08" width="0.1524" layer="91"/>
<wire x1="116.84" y1="132.08" x2="68.58" y2="132.08" width="0.1524" layer="91"/>
<wire x1="68.58" y1="132.08" x2="68.58" y2="93.98" width="0.1524" layer="91"/>
<pinref part="LED1" gate="DIG1" pin="G"/>
<wire x1="68.58" y1="93.98" x2="86.36" y2="93.98" width="0.1524" layer="91"/>
<wire x1="68.58" y1="93.98" x2="48.26" y2="93.98" width="0.1524" layer="91"/>
<junction x="68.58" y="93.98"/>
<pinref part="SV1" gate="1" pin="7"/>
<wire x1="30.48" y1="81.28" x2="35.56" y2="81.28" width="0.1524" layer="91"/>
<wire x1="35.56" y1="81.28" x2="48.26" y2="93.98" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$9" class="0">
<segment>
<pinref part="LED2" gate="DIG1" pin="A"/>
<wire x1="86.36" y1="55.88" x2="83.82" y2="55.88" width="0.1524" layer="91"/>
<wire x1="83.82" y1="55.88" x2="83.82" y2="63.5" width="0.1524" layer="91"/>
<wire x1="83.82" y1="63.5" x2="132.08" y2="63.5" width="0.1524" layer="91"/>
<wire x1="132.08" y1="63.5" x2="132.08" y2="55.88" width="0.1524" layer="91"/>
<pinref part="LED2" gate="DIG2" pin="A"/>
<wire x1="132.08" y1="55.88" x2="134.62" y2="55.88" width="0.1524" layer="91"/>
<wire x1="45.72" y1="55.88" x2="83.82" y2="55.88" width="0.1524" layer="91"/>
<junction x="83.82" y="55.88"/>
<pinref part="SV1" gate="1" pin="11"/>
<wire x1="45.72" y1="55.88" x2="30.48" y2="71.12" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$10" class="0">
<segment>
<pinref part="LED2" gate="DIG2" pin="B"/>
<wire x1="134.62" y1="53.34" x2="129.54" y2="53.34" width="0.1524" layer="91"/>
<wire x1="129.54" y1="53.34" x2="129.54" y2="66.04" width="0.1524" layer="91"/>
<wire x1="129.54" y1="66.04" x2="81.28" y2="66.04" width="0.1524" layer="91"/>
<wire x1="81.28" y1="66.04" x2="81.28" y2="53.34" width="0.1524" layer="91"/>
<pinref part="LED2" gate="DIG1" pin="B"/>
<wire x1="81.28" y1="53.34" x2="86.36" y2="53.34" width="0.1524" layer="91"/>
<wire x1="81.28" y1="53.34" x2="45.72" y2="53.34" width="0.1524" layer="91"/>
<junction x="81.28" y="53.34"/>
<pinref part="SV1" gate="1" pin="12"/>
<wire x1="30.48" y1="68.58" x2="45.72" y2="53.34" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$11" class="0">
<segment>
<pinref part="LED2" gate="DIG1" pin="C"/>
<wire x1="86.36" y1="50.8" x2="78.74" y2="50.8" width="0.1524" layer="91"/>
<wire x1="78.74" y1="50.8" x2="78.74" y2="68.58" width="0.1524" layer="91"/>
<wire x1="78.74" y1="68.58" x2="127" y2="68.58" width="0.1524" layer="91"/>
<wire x1="127" y1="68.58" x2="127" y2="50.8" width="0.1524" layer="91"/>
<pinref part="LED2" gate="DIG2" pin="C"/>
<wire x1="127" y1="50.8" x2="134.62" y2="50.8" width="0.1524" layer="91"/>
<wire x1="78.74" y1="50.8" x2="45.72" y2="50.8" width="0.1524" layer="91"/>
<junction x="78.74" y="50.8"/>
<pinref part="SV1" gate="1" pin="13"/>
<wire x1="30.48" y1="66.04" x2="45.72" y2="50.8" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$12" class="0">
<segment>
<pinref part="LED2" gate="DIG1" pin="D"/>
<wire x1="86.36" y1="48.26" x2="76.2" y2="48.26" width="0.1524" layer="91"/>
<wire x1="76.2" y1="48.26" x2="76.2" y2="71.12" width="0.1524" layer="91"/>
<wire x1="76.2" y1="71.12" x2="124.46" y2="71.12" width="0.1524" layer="91"/>
<wire x1="124.46" y1="71.12" x2="124.46" y2="48.26" width="0.1524" layer="91"/>
<pinref part="LED2" gate="DIG2" pin="D"/>
<wire x1="124.46" y1="48.26" x2="134.62" y2="48.26" width="0.1524" layer="91"/>
<wire x1="76.2" y1="48.26" x2="45.72" y2="48.26" width="0.1524" layer="91"/>
<junction x="76.2" y="48.26"/>
<pinref part="SV1" gate="1" pin="14"/>
<wire x1="30.48" y1="63.5" x2="45.72" y2="48.26" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$13" class="0">
<segment>
<pinref part="LED2" gate="DIG2" pin="E"/>
<wire x1="134.62" y1="45.72" x2="121.92" y2="45.72" width="0.1524" layer="91"/>
<wire x1="121.92" y1="45.72" x2="121.92" y2="73.66" width="0.1524" layer="91"/>
<wire x1="121.92" y1="73.66" x2="73.66" y2="73.66" width="0.1524" layer="91"/>
<wire x1="73.66" y1="73.66" x2="73.66" y2="45.72" width="0.1524" layer="91"/>
<pinref part="LED2" gate="DIG1" pin="E"/>
<wire x1="73.66" y1="45.72" x2="86.36" y2="45.72" width="0.1524" layer="91"/>
<wire x1="73.66" y1="45.72" x2="45.72" y2="45.72" width="0.1524" layer="91"/>
<junction x="73.66" y="45.72"/>
<pinref part="SV1" gate="1" pin="15"/>
<wire x1="30.48" y1="60.96" x2="45.72" y2="45.72" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$14" class="0">
<segment>
<pinref part="LED2" gate="DIG2" pin="F"/>
<wire x1="134.62" y1="43.18" x2="119.38" y2="43.18" width="0.1524" layer="91"/>
<wire x1="119.38" y1="43.18" x2="119.38" y2="76.2" width="0.1524" layer="91"/>
<wire x1="119.38" y1="76.2" x2="71.12" y2="76.2" width="0.1524" layer="91"/>
<wire x1="71.12" y1="76.2" x2="71.12" y2="43.18" width="0.1524" layer="91"/>
<pinref part="LED2" gate="DIG1" pin="F"/>
<wire x1="71.12" y1="43.18" x2="86.36" y2="43.18" width="0.1524" layer="91"/>
<wire x1="71.12" y1="43.18" x2="45.72" y2="43.18" width="0.1524" layer="91"/>
<junction x="71.12" y="43.18"/>
<pinref part="SV1" gate="1" pin="16"/>
<wire x1="30.48" y1="58.42" x2="45.72" y2="43.18" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$15" class="0">
<segment>
<pinref part="LED2" gate="DIG2" pin="G"/>
<wire x1="134.62" y1="40.64" x2="116.84" y2="40.64" width="0.1524" layer="91"/>
<wire x1="116.84" y1="40.64" x2="116.84" y2="78.74" width="0.1524" layer="91"/>
<wire x1="116.84" y1="78.74" x2="68.58" y2="78.74" width="0.1524" layer="91"/>
<wire x1="68.58" y1="78.74" x2="68.58" y2="40.64" width="0.1524" layer="91"/>
<pinref part="LED2" gate="DIG1" pin="G"/>
<wire x1="68.58" y1="40.64" x2="86.36" y2="40.64" width="0.1524" layer="91"/>
<wire x1="68.58" y1="40.64" x2="45.72" y2="40.64" width="0.1524" layer="91"/>
<junction x="68.58" y="40.64"/>
<pinref part="SV1" gate="1" pin="17"/>
<wire x1="30.48" y1="55.88" x2="45.72" y2="40.64" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$16" class="0">
<segment>
<pinref part="LED2" gate="DIG2" pin="DP"/>
<wire x1="154.94" y1="40.64" x2="157.48" y2="40.64" width="0.1524" layer="91"/>
<wire x1="157.48" y1="40.64" x2="157.48" y2="35.56" width="0.1524" layer="91"/>
<wire x1="157.48" y1="35.56" x2="109.22" y2="35.56" width="0.1524" layer="91"/>
<wire x1="109.22" y1="35.56" x2="63.5" y2="35.56" width="0.1524" layer="91"/>
<wire x1="63.5" y1="35.56" x2="63.5" y2="38.1" width="0.1524" layer="91"/>
<wire x1="63.5" y1="38.1" x2="45.72" y2="38.1" width="0.1524" layer="91"/>
<pinref part="LED2" gate="DIG1" pin="DP"/>
<wire x1="106.68" y1="40.64" x2="109.22" y2="40.64" width="0.1524" layer="91"/>
<wire x1="109.22" y1="40.64" x2="109.22" y2="35.56" width="0.1524" layer="91"/>
<junction x="109.22" y="35.56"/>
<pinref part="SV1" gate="1" pin="18"/>
<wire x1="30.48" y1="53.34" x2="45.72" y2="38.1" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$8" class="0">
<segment>
<pinref part="LED1" gate="DIG1" pin="DP"/>
<wire x1="106.68" y1="93.98" x2="109.22" y2="93.98" width="0.1524" layer="91"/>
<wire x1="109.22" y1="93.98" x2="109.22" y2="88.9" width="0.1524" layer="91"/>
<wire x1="109.22" y1="88.9" x2="157.48" y2="88.9" width="0.1524" layer="91"/>
<wire x1="157.48" y1="88.9" x2="157.48" y2="93.98" width="0.1524" layer="91"/>
<pinref part="LED1" gate="DIG2" pin="DP"/>
<wire x1="157.48" y1="93.98" x2="154.94" y2="93.98" width="0.1524" layer="91"/>
<wire x1="109.22" y1="88.9" x2="45.72" y2="88.9" width="0.1524" layer="91"/>
<wire x1="45.72" y1="88.9" x2="35.56" y2="78.74" width="0.1524" layer="91"/>
<junction x="109.22" y="88.9"/>
<pinref part="SV1" gate="1" pin="8"/>
<wire x1="35.56" y1="78.74" x2="30.48" y2="78.74" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$20" class="0">
<segment>
<pinref part="LED1" gate="DIG1" pin="COM"/>
<wire x1="111.76" y1="109.22" x2="106.68" y2="109.22" width="0.1524" layer="91"/>
<wire x1="111.76" y1="86.36" x2="111.76" y2="109.22" width="0.1524" layer="91"/>
<wire x1="111.76" y1="86.36" x2="45.72" y2="86.36" width="0.1524" layer="91"/>
<wire x1="45.72" y1="86.36" x2="35.56" y2="76.2" width="0.1524" layer="91"/>
<pinref part="SV1" gate="1" pin="9"/>
<wire x1="35.56" y1="76.2" x2="30.48" y2="76.2" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$17" class="0">
<segment>
<pinref part="LED1" gate="DIG2" pin="COM"/>
<wire x1="154.94" y1="109.22" x2="160.02" y2="109.22" width="0.1524" layer="91"/>
<wire x1="160.02" y1="109.22" x2="160.02" y2="83.82" width="0.1524" layer="91"/>
<wire x1="160.02" y1="83.82" x2="45.72" y2="83.82" width="0.1524" layer="91"/>
<wire x1="45.72" y1="83.82" x2="35.56" y2="73.66" width="0.1524" layer="91"/>
<pinref part="SV1" gate="1" pin="10"/>
<wire x1="35.56" y1="73.66" x2="30.48" y2="73.66" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$26" class="0">
<segment>
<pinref part="SV1" gate="1" pin="19"/>
<wire x1="30.48" y1="50.8" x2="48.26" y2="33.02" width="0.1524" layer="91"/>
<wire x1="48.26" y1="33.02" x2="111.76" y2="33.02" width="0.1524" layer="91"/>
<wire x1="111.76" y1="33.02" x2="111.76" y2="55.88" width="0.1524" layer="91"/>
<pinref part="LED2" gate="DIG1" pin="COM"/>
<wire x1="111.76" y1="55.88" x2="106.68" y2="55.88" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$27" class="0">
<segment>
<pinref part="LED2" gate="DIG2" pin="COM"/>
<wire x1="154.94" y1="55.88" x2="160.02" y2="55.88" width="0.1524" layer="91"/>
<wire x1="160.02" y1="55.88" x2="160.02" y2="30.48" width="0.1524" layer="91"/>
<wire x1="160.02" y1="30.48" x2="48.26" y2="30.48" width="0.1524" layer="91"/>
<pinref part="SV1" gate="1" pin="20"/>
<wire x1="48.26" y1="30.48" x2="30.48" y2="48.26" width="0.1524" layer="91"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
</eagle>
