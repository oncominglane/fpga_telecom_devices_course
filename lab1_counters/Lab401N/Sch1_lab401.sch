<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="BTN0" />
        <signal name="BTN3" />
        <signal name="AN(3:0)" />
        <signal name="seg(7:0)" />
        <signal name="LED(7:0)" />
        <signal name="SW(5:4)" />
        <signal name="SW(6)" />
        <signal name="dat(3:0)" />
        <signal name="dat(7:4)" />
        <signal name="dat(11:8)" />
        <signal name="dat(15:0)" />
        <signal name="SW(7:0)" />
        <signal name="SW(7)" />
        <signal name="SW(3:0)" />
        <signal name="XLXN_59" />
        <signal name="XLXN_68" />
        <signal name="BTN1" />
        <signal name="XLXN_86" />
        <signal name="F50MHz" />
        <signal name="dat(15:12)" />
        <signal name="XLXN_189" />
        <signal name="XLXN_191" />
        <signal name="XLXN_193" />
        <signal name="XLXN_196" />
        <signal name="XLXN_197" />
        <signal name="XLXN_198" />
        <port polarity="Input" name="BTN0" />
        <port polarity="Input" name="BTN3" />
        <port polarity="Output" name="AN(3:0)" />
        <port polarity="Output" name="seg(7:0)" />
        <port polarity="Output" name="LED(7:0)" />
        <port polarity="Input" name="SW(7:0)" />
        <port polarity="Input" name="BTN1" />
        <port polarity="Input" name="F50MHz" />
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
            <blockpin signalname="XLXN_189" name="ce" />
            <blockpin signalname="SW(6)" name="up" />
            <blockpin signalname="BTN3" name="L" />
            <blockpin signalname="XLXN_68" name="clk" />
            <blockpin signalname="BTN0" name="clr" />
            <blockpin signalname="SW(3:0)" name="di(3:0)" />
            <blockpin name="CEO" />
            <blockpin name="TC" />
            <blockpin signalname="dat(15:12)" name="Q(3:0)" />
        </block>
        <block symbolname="VCJ4RE" name="XLXI_4">
            <blockpin signalname="XLXN_189" name="ce" />
            <blockpin signalname="XLXN_68" name="clk" />
            <blockpin signalname="BTN0" name="R" />
            <blockpin name="TC" />
            <blockpin name="CEO" />
            <blockpin signalname="dat(3:0)" name="Q(3:0)" />
        </block>
        <block symbolname="VCB4RE" name="XLXI_6">
            <blockpin signalname="XLXN_189" name="ce" />
            <blockpin signalname="XLXN_68" name="clk" />
            <blockpin signalname="BTN0" name="R" />
            <blockpin name="TC" />
            <blockpin name="CEO" />
            <blockpin signalname="dat(11:8)" name="Q(3:0)" />
        </block>
        <block symbolname="obuf8" name="XLXI_7">
            <blockpin signalname="SW(7:0)" name="I(7:0)" />
            <blockpin signalname="LED(7:0)" name="O(7:0)" />
        </block>
        <block symbolname="Debouncer" name="XLXI_100">
            <blockpin signalname="BTN1" name="BTN_IN" />
            <blockpin signalname="XLXN_68" name="clk" />
            <blockpin signalname="XLXN_86" name="ce1ms" />
            <blockpin signalname="XLXN_189" name="BTN_OUT" />
            <blockpin name="Q1" />
            <blockpin name="Q2" />
        </block>
        <block symbolname="bufg" name="XLXI_8">
            <blockpin signalname="F50MHz" name="I" />
            <blockpin signalname="XLXN_68" name="O" />
        </block>
        <block symbolname="VCD4RE" name="XLXI_5">
            <blockpin signalname="XLXN_68" name="clk" />
            <blockpin signalname="XLXN_189" name="ce" />
            <blockpin signalname="BTN0" name="R" />
            <blockpin name="TC" />
            <blockpin name="CEO" />
            <blockpin signalname="dat(7:4)" name="Q(3:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="2160" y="1168" name="XLXI_1" orien="R0">
        </instance>
        <branch name="AN(3:0)">
            <wire x2="2640" y1="1072" y2="1072" x1="2544" />
        </branch>
        <branch name="seg(7:0)">
            <wire x2="2656" y1="1136" y2="1136" x1="2544" />
        </branch>
        <iomarker fontsize="28" x="2640" y="1072" name="AN(3:0)" orien="R0" />
        <iomarker fontsize="28" x="2656" y="1136" name="seg(7:0)" orien="R0" />
        <instance x="2224" y="1456" name="XLXI_7" orien="R0" />
        <branch name="LED(7:0)">
            <wire x2="2544" y1="1424" y2="1424" x1="2448" />
        </branch>
        <iomarker fontsize="28" x="2544" y="1424" name="LED(7:0)" orien="R0" />
        <branch name="SW(5:4)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="704" y="2608" type="branch" />
            <wire x2="1984" y1="2608" y2="2608" x1="704" />
            <wire x2="2160" y1="1136" y2="1136" x1="1984" />
            <wire x2="1984" y1="1136" y2="2608" x1="1984" />
        </branch>
        <branch name="dat(3:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1568" y="1120" type="branch" />
            <wire x2="1568" y1="1120" y2="1120" x1="1408" />
        </branch>
        <branch name="dat(7:4)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1552" y="1504" type="branch" />
            <wire x2="1536" y1="1504" y2="1504" x1="1408" />
            <wire x2="1552" y1="1504" y2="1504" x1="1536" />
        </branch>
        <branch name="dat(11:8)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1600" y="1920" type="branch" />
            <wire x2="1536" y1="1792" y2="1792" x1="1408" />
            <wire x2="1536" y1="1792" y2="1920" x1="1536" />
            <wire x2="1600" y1="1920" y2="1920" x1="1536" />
        </branch>
        <branch name="dat(15:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1904" y="1072" type="branch" />
            <wire x2="2160" y1="1072" y2="1072" x1="1904" />
        </branch>
        <branch name="SW(7:0)">
            <wire x2="2224" y1="1424" y2="1424" x1="2160" />
        </branch>
        <iomarker fontsize="28" x="2160" y="1424" name="SW(7:0)" orien="R180" />
        <instance x="1024" y="1152" name="XLXI_4" orien="R0">
        </instance>
        <iomarker fontsize="28" x="240" y="112" name="BTN1" orien="R180" />
        <instance x="1024" y="1824" name="XLXI_6" orien="R0">
        </instance>
        <branch name="SW(3:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="400" y="2352" type="branch" />
            <wire x2="1024" y1="2352" y2="2352" x1="400" />
        </branch>
        <branch name="BTN0">
            <wire x2="752" y1="688" y2="688" x1="496" />
            <wire x2="752" y1="688" y2="1120" x1="752" />
            <wire x2="752" y1="1120" y2="1504" x1="752" />
            <wire x2="1024" y1="1504" y2="1504" x1="752" />
            <wire x2="752" y1="1504" y2="1792" x1="752" />
            <wire x2="1024" y1="1792" y2="1792" x1="752" />
            <wire x2="1024" y1="1120" y2="1120" x1="752" />
            <wire x2="752" y1="688" y2="2288" x1="752" />
            <wire x2="1024" y1="2288" y2="2288" x1="752" />
        </branch>
        <branch name="BTN3">
            <wire x2="1024" y1="2160" y2="2160" x1="416" />
        </branch>
        <branch name="SW(6)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="416" y="2096" type="branch" />
            <wire x2="1024" y1="2096" y2="2096" x1="416" />
        </branch>
        <branch name="F50MHz">
            <wire x2="256" y1="608" y2="608" x1="192" />
        </branch>
        <instance x="1024" y="2384" name="XLXI_3" orien="R0">
        </instance>
        <branch name="BTN1">
            <wire x2="368" y1="112" y2="112" x1="240" />
        </branch>
        <branch name="XLXN_86">
            <wire x2="368" y1="240" y2="240" x1="352" />
            <wire x2="352" y1="240" y2="320" x1="352" />
            <wire x2="2624" y1="320" y2="320" x1="352" />
            <wire x2="2624" y1="320" y2="544" x1="2624" />
            <wire x2="2624" y1="544" y2="544" x1="2560" />
        </branch>
        <branch name="XLXN_68">
            <wire x2="320" y1="176" y2="336" x1="320" />
            <wire x2="576" y1="336" y2="336" x1="320" />
            <wire x2="576" y1="336" y2="608" x1="576" />
            <wire x2="784" y1="608" y2="608" x1="576" />
            <wire x2="896" y1="608" y2="608" x1="784" />
            <wire x2="1920" y1="608" y2="608" x1="896" />
            <wire x2="896" y1="608" y2="2224" x1="896" />
            <wire x2="1024" y1="2224" y2="2224" x1="896" />
            <wire x2="784" y1="608" y2="1056" x1="784" />
            <wire x2="1024" y1="1056" y2="1056" x1="784" />
            <wire x2="784" y1="1056" y2="1376" x1="784" />
            <wire x2="1024" y1="1376" y2="1376" x1="784" />
            <wire x2="784" y1="1376" y2="1728" x1="784" />
            <wire x2="1024" y1="1728" y2="1728" x1="784" />
            <wire x2="368" y1="176" y2="176" x1="320" />
            <wire x2="576" y1="608" y2="608" x1="480" />
            <wire x2="1968" y1="544" y2="544" x1="1920" />
            <wire x2="1968" y1="544" y2="1008" x1="1968" />
            <wire x2="2160" y1="1008" y2="1008" x1="1968" />
            <wire x2="1920" y1="544" y2="560" x1="1920" />
            <wire x2="1920" y1="560" y2="608" x1="1920" />
            <wire x2="2032" y1="560" y2="560" x1="1920" />
            <wire x2="2032" y1="544" y2="560" x1="2032" />
            <wire x2="2176" y1="544" y2="544" x1="2032" />
        </branch>
        <instance x="368" y="272" name="XLXI_100" orien="R0">
        </instance>
        <iomarker fontsize="28" x="416" y="2160" name="BTN3" orien="R180" />
        <instance x="256" y="640" name="XLXI_8" orien="R0" />
        <iomarker fontsize="28" x="192" y="608" name="F50MHz" orien="R180" />
        <iomarker fontsize="28" x="496" y="688" name="BTN0" orien="R180" />
        <branch name="dat(15:12)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1808" y="2352" type="branch" />
            <wire x2="1808" y1="2352" y2="2352" x1="1408" />
        </branch>
        <branch name="SW(7)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1920" y="656" type="branch" />
            <wire x2="1936" y1="656" y2="656" x1="1920" />
            <wire x2="1936" y1="656" y2="672" x1="1936" />
            <wire x2="2176" y1="672" y2="672" x1="1936" />
        </branch>
        <branch name="XLXN_189">
            <wire x2="992" y1="112" y2="112" x1="752" />
            <wire x2="992" y1="112" y2="992" x1="992" />
            <wire x2="1024" y1="992" y2="992" x1="992" />
            <wire x2="992" y1="992" y2="1440" x1="992" />
            <wire x2="1024" y1="1440" y2="1440" x1="992" />
            <wire x2="992" y1="1440" y2="1664" x1="992" />
            <wire x2="1024" y1="1664" y2="1664" x1="992" />
            <wire x2="992" y1="1664" y2="2032" x1="992" />
            <wire x2="1024" y1="2032" y2="2032" x1="992" />
        </branch>
        <instance x="2176" y="704" name="XLXI_2" orien="R0">
        </instance>
        <branch name="XLXN_59">
            <wire x2="2176" y1="608" y2="608" x1="2096" />
            <wire x2="2096" y1="608" y2="768" x1="2096" />
            <wire x2="2560" y1="768" y2="768" x1="2096" />
            <wire x2="2560" y1="768" y2="1008" x1="2560" />
            <wire x2="2560" y1="1008" y2="1008" x1="2544" />
        </branch>
        <instance x="1024" y="1536" name="XLXI_5" orien="R0">
        </instance>
    </sheet>
</drawing>