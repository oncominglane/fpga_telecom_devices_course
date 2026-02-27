<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_4" />
        <signal name="XLXN_5" />
        <signal name="XLXN_6" />
        <signal name="BTN0" />
        <signal name="BTN3" />
        <signal name="AN(3:0)" />
        <signal name="seg(7:0)" />
        <signal name="F50MHz" />
        <signal name="LED(7:0)" />
        <signal name="SW(5:4)" />
        <signal name="SW(6)" />
        <signal name="dat(7:4)" />
        <signal name="dat(11:8)" />
        <signal name="dat(15:12)" />
        <signal name="dat(15:0)" />
        <signal name="SW(7:0)" />
        <signal name="SW(7)" />
        <signal name="dat(3:0)" />
        <signal name="SW(3:0)" />
        <signal name="XLXN_59" />
        <signal name="XLXN_68" />
        <signal name="XLXN_83" />
        <signal name="BTN1" />
        <signal name="XLXN_86" />
        <port polarity="Input" name="BTN0" />
        <port polarity="Input" name="BTN3" />
        <port polarity="Output" name="AN(3:0)" />
        <port polarity="Output" name="seg(7:0)" />
        <port polarity="Input" name="F50MHz" />
        <port polarity="Output" name="LED(7:0)" />
        <port polarity="Input" name="SW(7:0)" />
        <port polarity="Input" name="BTN1" />
        <blockdef name="DISPLAY">
            <timestamp>2026-2-20T7:0:8</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="Gen_Nms_1s">
            <timestamp>2026-2-20T7:0:27</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
        </blockdef>
        <blockdef name="VCBmCLED">
            <timestamp>2026-2-20T6:57:50</timestamp>
            <rect width="256" x="64" y="-384" height="384" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-352" y2="-352" x1="320" />
            <line x2="384" y1="-192" y2="-192" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="VCJ4RE">
            <timestamp>2026-2-20T6:58:4</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="VCD4RE">
            <timestamp>2026-2-20T6:57:5</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="VCB4RE">
            <timestamp>2026-2-20T6:56:52</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="obuf8">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="128" y1="-32" y2="-32" x1="224" />
            <rect width="64" x="0" y="-44" height="24" />
            <rect width="96" x="128" y="-44" height="24" />
        </blockdef>
        <blockdef name="bufg">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="0" x1="64" />
            <line x2="64" y1="-32" y2="-64" x1="128" />
            <line x2="128" y1="0" y2="-32" x1="64" />
            <line x2="128" y1="-32" y2="-32" x1="224" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
        </blockdef>
        <blockdef name="Debouncer">
            <timestamp>2025-9-19T15:25:28</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <block symbolname="DISPLAY" name="XLXI_1">
            <blockpin signalname="XLXN_68" name="clk" />
            <blockpin signalname="dat(15:0)" name="dat(15:0)" />
            <blockpin signalname="SW(5:4)" name="PTR(1:0)" />
            <blockpin signalname="XLXN_59" name="ce1ms" />
            <blockpin signalname="AN(3:0)" name="AN(3:0)" />
            <blockpin signalname="seg(7:0)" name="SEG(7:0)" />
        </block>
        <block symbolname="Gen_Nms_1s" name="XLXI_2">
            <blockpin signalname="XLXN_68" name="clk" />
            <blockpin signalname="XLXN_59" name="ce" />
            <blockpin signalname="SW(7)" name="Tmod" />
            <blockpin signalname="XLXN_86" name="CEO" />
        </block>
        <block symbolname="VCBmCLED" name="XLXI_3">
            <blockpin signalname="XLXN_83" name="ce" />
            <blockpin signalname="SW(6)" name="up" />
            <blockpin signalname="BTN3" name="L" />
            <blockpin signalname="XLXN_68" name="clk" />
            <blockpin signalname="BTN0" name="clr" />
            <blockpin signalname="SW(3:0)" name="di(3:0)" />
            <blockpin signalname="XLXN_4" name="CEO" />
            <blockpin name="TC" />
            <blockpin signalname="dat(3:0)" name="Q(3:0)" />
        </block>
        <block symbolname="VCJ4RE" name="XLXI_4">
            <blockpin signalname="XLXN_4" name="ce" />
            <blockpin signalname="XLXN_68" name="clk" />
            <blockpin signalname="BTN0" name="R" />
            <blockpin name="TC" />
            <blockpin signalname="XLXN_5" name="CEO" />
            <blockpin signalname="dat(7:4)" name="Q(3:0)" />
        </block>
        <block symbolname="VCD4RE" name="XLXI_5">
            <blockpin signalname="XLXN_68" name="clk" />
            <blockpin signalname="XLXN_5" name="ce" />
            <blockpin signalname="BTN0" name="R" />
            <blockpin name="TC" />
            <blockpin signalname="XLXN_6" name="CEO" />
            <blockpin signalname="dat(11:8)" name="Q(3:0)" />
        </block>
        <block symbolname="VCB4RE" name="XLXI_6">
            <blockpin signalname="XLXN_6" name="ce" />
            <blockpin signalname="XLXN_68" name="clk" />
            <blockpin signalname="BTN0" name="R" />
            <blockpin name="TC" />
            <blockpin name="CEO" />
            <blockpin signalname="dat(15:12)" name="Q(3:0)" />
        </block>
        <block symbolname="obuf8" name="XLXI_7">
            <blockpin signalname="SW(7:0)" name="I(7:0)" />
            <blockpin signalname="LED(7:0)" name="O(7:0)" />
        </block>
        <block symbolname="bufg" name="XLXI_8">
            <blockpin signalname="F50MHz" name="I" />
            <blockpin signalname="XLXN_68" name="O" />
        </block>
        <block symbolname="Debouncer" name="XLXI_100">
            <blockpin signalname="BTN1" name="BTN_IN" />
            <blockpin signalname="XLXN_68" name="clk" />
            <blockpin signalname="XLXN_86" name="ce1ms" />
            <blockpin signalname="XLXN_83" name="BTN_OUT" />
            <blockpin name="Q1" />
            <blockpin name="Q2" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="2160" y="1168" name="XLXI_1" orien="R0">
        </instance>
        <instance x="2160" y="688" name="XLXI_2" orien="R0">
        </instance>
        <instance x="1024" y="1536" name="XLXI_5" orien="R0">
        </instance>
        <branch name="XLXN_5">
            <wire x2="1008" y1="1232" y2="1440" x1="1008" />
            <wire x2="1024" y1="1440" y2="1440" x1="1008" />
            <wire x2="1488" y1="1232" y2="1232" x1="1008" />
            <wire x2="1488" y1="1056" y2="1056" x1="1408" />
            <wire x2="1488" y1="1056" y2="1232" x1="1488" />
        </branch>
        <instance x="1040" y="1952" name="XLXI_6" orien="R0">
        </instance>
        <branch name="XLXN_6">
            <wire x2="976" y1="1648" y2="1792" x1="976" />
            <wire x2="1040" y1="1792" y2="1792" x1="976" />
            <wire x2="1424" y1="1648" y2="1648" x1="976" />
            <wire x2="1424" y1="1440" y2="1440" x1="1408" />
            <wire x2="1424" y1="1440" y2="1648" x1="1424" />
        </branch>
        <branch name="BTN0">
            <wire x2="752" y1="672" y2="672" x1="512" />
            <wire x2="752" y1="672" y2="1120" x1="752" />
            <wire x2="752" y1="1120" y2="1504" x1="752" />
            <wire x2="752" y1="1504" y2="1920" x1="752" />
            <wire x2="1040" y1="1920" y2="1920" x1="752" />
            <wire x2="1024" y1="1504" y2="1504" x1="752" />
            <wire x2="848" y1="1120" y2="1120" x1="752" />
            <wire x2="1024" y1="1120" y2="1120" x1="848" />
            <wire x2="784" y1="672" y2="672" x1="752" />
            <wire x2="1024" y1="672" y2="672" x1="784" />
        </branch>
        <branch name="BTN3">
            <wire x2="1024" y1="544" y2="544" x1="544" />
        </branch>
        <iomarker fontsize="28" x="544" y="544" name="BTN3" orien="R180" />
        <branch name="SW(7)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1920" y="656" type="branch" />
            <wire x2="2160" y1="656" y2="656" x1="1920" />
        </branch>
        <branch name="AN(3:0)">
            <wire x2="2640" y1="1072" y2="1072" x1="2544" />
        </branch>
        <branch name="seg(7:0)">
            <wire x2="2656" y1="1136" y2="1136" x1="2544" />
        </branch>
        <iomarker fontsize="28" x="2640" y="1072" name="AN(3:0)" orien="R0" />
        <iomarker fontsize="28" x="2656" y="1136" name="seg(7:0)" orien="R0" />
        <instance x="2224" y="1456" name="XLXI_7" orien="R0" />
        <instance x="336" y="640" name="XLXI_8" orien="R0" />
        <branch name="F50MHz">
            <wire x2="336" y1="608" y2="608" x1="304" />
        </branch>
        <branch name="LED(7:0)">
            <wire x2="2544" y1="1424" y2="1424" x1="2448" />
        </branch>
        <iomarker fontsize="28" x="2544" y="1424" name="LED(7:0)" orien="R0" />
        <branch name="SW(5:4)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="704" y="2016" type="branch" />
            <wire x2="1984" y1="2016" y2="2016" x1="704" />
            <wire x2="2160" y1="1136" y2="1136" x1="1984" />
            <wire x2="1984" y1="1136" y2="2016" x1="1984" />
        </branch>
        <branch name="SW(6)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="416" y="480" type="branch" />
            <wire x2="1024" y1="480" y2="480" x1="416" />
        </branch>
        <branch name="dat(3:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1488" y="736" type="branch" />
            <wire x2="1488" y1="736" y2="736" x1="1408" />
        </branch>
        <branch name="dat(7:4)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1568" y="1120" type="branch" />
            <wire x2="1568" y1="1120" y2="1120" x1="1408" />
        </branch>
        <branch name="dat(11:8)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1552" y="1504" type="branch" />
            <wire x2="1552" y1="1504" y2="1504" x1="1408" />
        </branch>
        <branch name="dat(15:12)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1616" y="1920" type="branch" />
            <wire x2="1616" y1="1920" y2="1920" x1="1424" />
        </branch>
        <branch name="dat(15:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1904" y="1072" type="branch" />
            <wire x2="2160" y1="1072" y2="1072" x1="1904" />
        </branch>
        <branch name="SW(7:0)">
            <wire x2="2224" y1="1424" y2="1424" x1="2160" />
        </branch>
        <branch name="SW(3:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="400" y="736" type="branch" />
            <wire x2="1024" y1="736" y2="736" x1="400" />
        </branch>
        <iomarker fontsize="28" x="2160" y="1424" name="SW(7:0)" orien="R180" />
        <instance x="1024" y="768" name="XLXI_3" orien="R0">
        </instance>
        <iomarker fontsize="28" x="304" y="608" name="F50MHz" orien="R180" />
        <branch name="XLXN_59">
            <wire x2="2160" y1="592" y2="592" x1="2112" />
            <wire x2="2112" y1="592" y2="768" x1="2112" />
            <wire x2="2608" y1="768" y2="768" x1="2112" />
            <wire x2="2608" y1="768" y2="1008" x1="2608" />
            <wire x2="2608" y1="1008" y2="1008" x1="2544" />
        </branch>
        <branch name="XLXN_4">
            <wire x2="1456" y1="880" y2="880" x1="1008" />
            <wire x2="1008" y1="880" y2="992" x1="1008" />
            <wire x2="1024" y1="992" y2="992" x1="1008" />
            <wire x2="1456" y1="416" y2="416" x1="1408" />
            <wire x2="1456" y1="416" y2="880" x1="1456" />
        </branch>
        <instance x="1024" y="1152" name="XLXI_4" orien="R0">
        </instance>
        <iomarker fontsize="28" x="512" y="672" name="BTN0" orien="R180" />
        <instance x="368" y="272" name="XLXI_100" orien="R0">
        </instance>
        <branch name="XLXN_68">
            <wire x2="320" y1="176" y2="336" x1="320" />
            <wire x2="576" y1="336" y2="336" x1="320" />
            <wire x2="576" y1="336" y2="608" x1="576" />
            <wire x2="784" y1="608" y2="608" x1="576" />
            <wire x2="1024" y1="608" y2="608" x1="784" />
            <wire x2="784" y1="608" y2="1056" x1="784" />
            <wire x2="1024" y1="1056" y2="1056" x1="784" />
            <wire x2="784" y1="1056" y2="1376" x1="784" />
            <wire x2="1024" y1="1376" y2="1376" x1="784" />
            <wire x2="784" y1="1376" y2="1856" x1="784" />
            <wire x2="1040" y1="1856" y2="1856" x1="784" />
            <wire x2="368" y1="176" y2="176" x1="320" />
            <wire x2="576" y1="608" y2="608" x1="560" />
            <wire x2="784" y1="224" y2="608" x1="784" />
            <wire x2="1920" y1="224" y2="224" x1="784" />
            <wire x2="2160" y1="224" y2="224" x1="1920" />
            <wire x2="2160" y1="224" y2="528" x1="2160" />
            <wire x2="1920" y1="224" y2="240" x1="1920" />
            <wire x2="1968" y1="240" y2="240" x1="1920" />
            <wire x2="1968" y1="240" y2="1008" x1="1968" />
            <wire x2="2160" y1="1008" y2="1008" x1="1968" />
        </branch>
        <branch name="XLXN_83">
            <wire x2="880" y1="112" y2="112" x1="752" />
            <wire x2="880" y1="112" y2="416" x1="880" />
            <wire x2="1024" y1="416" y2="416" x1="880" />
        </branch>
        <iomarker fontsize="28" x="240" y="112" name="BTN1" orien="R180" />
        <branch name="BTN1">
            <wire x2="368" y1="112" y2="112" x1="240" />
        </branch>
        <branch name="XLXN_86">
            <wire x2="352" y1="16" y2="240" x1="352" />
            <wire x2="368" y1="240" y2="240" x1="352" />
            <wire x2="2608" y1="16" y2="16" x1="352" />
            <wire x2="2608" y1="16" y2="528" x1="2608" />
            <wire x2="2608" y1="528" y2="528" x1="2544" />
        </branch>
    </sheet>
</drawing>