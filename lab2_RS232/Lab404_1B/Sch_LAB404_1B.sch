<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="SW(7:0)" />
        <signal name="bf_TXD" />
        <signal name="LED7" />
        <signal name="UTXD" />
        <signal name="JB3" />
        <signal name="JB4" />
        <signal name="JB7" />
        <signal name="JD3" />
        <signal name="JB2" />
        <signal name="ce1ms" />
        <signal name="F50MHz" />
        <signal name="clk" />
        <signal name="seg_P" />
        <signal name="seg(6:0)" />
        <signal name="AN(3:0)" />
        <signal name="RX_DAT(7:0)" />
        <signal name="BTN3" />
        <signal name="XLXN_4" />
        <signal name="JC3" />
        <signal name="JC2" />
        <signal name="JC4" />
        <signal name="JC7" />
        <signal name="JC1" />
        <signal name="LED0" />
        <signal name="BTN0" />
        <signal name="XLXN_1(7:0)" />
        <signal name="XLXN_116" />
        <signal name="JB8" />
        <signal name="JC8" />
        <signal name="XLXN_153" />
        <signal name="URXD" />
        <signal name="JD4" />
        <port polarity="Input" name="SW(7:0)" />
        <port polarity="Output" name="LED7" />
        <port polarity="Output" name="UTXD" />
        <port polarity="Output" name="JB3" />
        <port polarity="Output" name="JB4" />
        <port polarity="Output" name="JB7" />
        <port polarity="Output" name="JD3" />
        <port polarity="Output" name="JB2" />
        <port polarity="Input" name="F50MHz" />
        <port polarity="Output" name="seg_P" />
        <port polarity="Output" name="seg(6:0)" />
        <port polarity="Output" name="AN(3:0)" />
        <port polarity="Input" name="BTN3" />
        <port polarity="Output" name="JC3" />
        <port polarity="Output" name="JC2" />
        <port polarity="Output" name="JC4" />
        <port polarity="Output" name="JC7" />
        <port polarity="Output" name="JC1" />
        <port polarity="Output" name="LED0" />
        <port polarity="Input" name="BTN0" />
        <port polarity="Output" name="JB8" />
        <port polarity="Output" name="JC8" />
        <port polarity="Input" name="URXD" />
        <port polarity="Input" name="JD4" />
        <blockdef name="UTXD1B">
            <timestamp>2017-1-14T6:25:29</timestamp>
            <rect width="256" x="64" y="-576" height="576" />
            <line x2="0" y1="-544" y2="-544" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-544" y2="-544" x1="320" />
            <line x2="384" y1="-480" y2="-480" x1="320" />
            <line x2="384" y1="-416" y2="-416" x1="320" />
            <line x2="384" y1="-352" y2="-352" x1="320" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="URXD1B">
            <timestamp>2017-1-14T6:35:40</timestamp>
            <rect width="256" x="64" y="-704" height="704" />
            <line x2="0" y1="-672" y2="-672" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-672" y2="-672" x1="320" />
            <line x2="384" y1="-608" y2="-608" x1="320" />
            <line x2="384" y1="-544" y2="-544" x1="320" />
            <line x2="384" y1="-480" y2="-480" x1="320" />
            <line x2="384" y1="-416" y2="-416" x1="320" />
            <line x2="384" y1="-352" y2="-352" x1="320" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="fd8re">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <rect width="64" x="0" y="-268" height="24" />
            <rect width="64" x="320" y="-268" height="24" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
            <line x2="64" y1="-32" y2="-32" x1="192" />
            <line x2="192" y1="-64" y2="-32" x1="192" />
            <rect width="256" x="64" y="-320" height="256" />
        </blockdef>
        <blockdef name="m2_1">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="96" y1="-64" y2="-192" x1="96" />
            <line x2="96" y1="-96" y2="-64" x1="256" />
            <line x2="256" y1="-160" y2="-96" x1="256" />
            <line x2="256" y1="-192" y2="-160" x1="96" />
            <line x2="96" y1="-32" y2="-32" x1="176" />
            <line x2="176" y1="-80" y2="-32" x1="176" />
            <line x2="96" y1="-32" y2="-32" x1="0" />
            <line x2="256" y1="-128" y2="-128" x1="320" />
            <line x2="96" y1="-96" y2="-96" x1="0" />
            <line x2="96" y1="-160" y2="-160" x1="0" />
        </blockdef>
        <blockdef name="buf">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="128" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="0" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="-64" x1="128" />
            <line x2="64" y1="-64" y2="0" x1="64" />
        </blockdef>
        <blockdef name="DISPL">
            <timestamp>2016-2-16T16:1:4</timestamp>
            <rect width="256" x="64" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-140" height="24" />
            <line x2="0" y1="-128" y2="-128" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="bufg">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="0" x1="64" />
            <line x2="64" y1="-32" y2="-64" x1="128" />
            <line x2="128" y1="0" y2="-32" x1="64" />
            <line x2="128" y1="-32" y2="-32" x1="224" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
        </blockdef>
        <blockdef name="and2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="144" ey="-144" sx="144" sy="-48" r="48" cx="144" cy="-96" />
            <line x2="64" y1="-48" y2="-48" x1="144" />
            <line x2="144" y1="-144" y2="-144" x1="64" />
            <line x2="64" y1="-48" y2="-144" x1="64" />
        </blockdef>
        <block symbolname="UTXD1B" name="XLXI_1">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="ce1ms" name="st" />
            <blockpin signalname="SW(7:0)" name="dat(7:0)" />
            <blockpin signalname="UTXD" name="UTXD" />
            <blockpin signalname="JB8" name="ce_tact" />
            <blockpin signalname="LED7" name="en_tx_byte" />
            <blockpin signalname="JB3" name="T_start" />
            <blockpin signalname="JB4" name="T_dat" />
            <blockpin signalname="JB7" name="T_stop" />
            <blockpin name="ce_stop" />
            <blockpin name="cb_bit(3:0)" />
            <blockpin name="sr_dat(7:0)" />
        </block>
        <block symbolname="buf" name="XLXI_6">
            <blockpin signalname="UTXD" name="I" />
            <blockpin signalname="bf_TXD" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_11">
            <blockpin signalname="UTXD" name="I" />
            <blockpin signalname="JD3" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_12">
            <blockpin signalname="LED7" name="I" />
            <blockpin signalname="JB2" name="O" />
        </block>
        <block symbolname="bufg" name="XLXI_14">
            <blockpin signalname="F50MHz" name="I" />
            <blockpin signalname="clk" name="O" />
        </block>
        <block symbolname="DISPL" name="XLXI_8">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="SW(7:0)" name="HB(7:0)" />
            <blockpin signalname="RX_DAT(7:0)" name="LB(7:0)" />
            <blockpin signalname="seg_P" name="seg_P" />
            <blockpin signalname="ce1ms" name="ce1ms" />
            <blockpin signalname="AN(3:0)" name="AN(3:0)" />
            <blockpin signalname="seg(6:0)" name="seg(6:0)" />
        </block>
        <block symbolname="m2_1" name="XLXI_5">
            <blockpin signalname="XLXN_153" name="D0" />
            <blockpin signalname="bf_TXD" name="D1" />
            <blockpin signalname="BTN3" name="S0" />
            <blockpin signalname="XLXN_116" name="O" />
        </block>
        <block symbolname="URXD1B" name="XLXI_2">
            <blockpin signalname="XLXN_116" name="Inp" />
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="LED0" name="en_rx_byte" />
            <blockpin signalname="XLXN_4" name="ok_rx_byte" />
            <blockpin name="start" />
            <blockpin signalname="JC4" name="T_dat" />
            <blockpin signalname="JC8" name="ce_tact" />
            <blockpin name="ce_bit" />
            <blockpin signalname="JC3" name="T_start" />
            <blockpin signalname="JC7" name="T_stop" />
            <blockpin signalname="JC1" name="URXD" />
            <blockpin signalname="XLXN_1(7:0)" name="sr_dat(7:0)" />
            <blockpin name="cb_bit(3:0)" />
        </block>
        <block symbolname="fd8re" name="XLXI_3">
            <blockpin signalname="clk" name="C" />
            <blockpin signalname="XLXN_4" name="CE" />
            <blockpin signalname="XLXN_1(7:0)" name="D(7:0)" />
            <blockpin signalname="BTN0" name="R" />
            <blockpin signalname="RX_DAT(7:0)" name="Q(7:0)" />
        </block>
        <block symbolname="buf" name="XLXI_13">
            <blockpin signalname="LED0" name="I" />
            <blockpin signalname="JC2" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_15">
            <blockpin signalname="URXD" name="I0" />
            <blockpin signalname="JD4" name="I1" />
            <blockpin signalname="XLXN_153" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="SW(7:0)">
            <wire x2="848" y1="848" y2="848" x1="624" />
            <wire x2="1488" y1="848" y2="848" x1="848" />
            <wire x2="912" y1="784" y2="784" x1="848" />
            <wire x2="848" y1="784" y2="848" x1="848" />
        </branch>
        <branch name="bf_TXD">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1680" y="224" type="branch" />
            <wire x2="1680" y1="224" y2="224" x1="1600" />
            <wire x2="1712" y1="224" y2="224" x1="1680" />
        </branch>
        <branch name="LED7">
            <wire x2="1552" y1="400" y2="400" x1="1296" />
            <wire x2="1552" y1="400" y2="448" x1="1552" />
            <wire x2="1568" y1="448" y2="448" x1="1552" />
            <wire x2="1840" y1="400" y2="400" x1="1552" />
        </branch>
        <branch name="JB3">
            <wire x2="1488" y1="464" y2="464" x1="1296" />
            <wire x2="1488" y1="464" y2="512" x1="1488" />
            <wire x2="1856" y1="512" y2="512" x1="1488" />
        </branch>
        <branch name="JB4">
            <wire x2="1440" y1="528" y2="528" x1="1296" />
            <wire x2="1440" y1="528" y2="576" x1="1440" />
            <wire x2="1856" y1="576" y2="576" x1="1440" />
        </branch>
        <branch name="JB7">
            <wire x2="1392" y1="592" y2="592" x1="1296" />
            <wire x2="1392" y1="592" y2="640" x1="1392" />
            <wire x2="1856" y1="640" y2="640" x1="1392" />
        </branch>
        <branch name="JD3">
            <wire x2="1824" y1="144" y2="144" x1="1600" />
        </branch>
        <branch name="JB2">
            <wire x2="1856" y1="448" y2="448" x1="1792" />
        </branch>
        <branch name="ce1ms">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="848" y="528" type="branch" />
            <wire x2="848" y1="528" y2="528" x1="768" />
            <wire x2="912" y1="528" y2="528" x1="848" />
        </branch>
        <branch name="seg_P">
            <wire x2="2000" y1="752" y2="752" x1="1872" />
        </branch>
        <branch name="ce1ms">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1936" y="816" type="branch" />
            <wire x2="1936" y1="816" y2="816" x1="1872" />
            <wire x2="2016" y1="816" y2="816" x1="1936" />
        </branch>
        <branch name="clk">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1424" y="752" type="branch" />
            <wire x2="1424" y1="752" y2="752" x1="1376" />
            <wire x2="1488" y1="752" y2="752" x1="1424" />
        </branch>
        <branch name="seg(6:0)">
            <wire x2="2000" y1="944" y2="944" x1="1872" />
        </branch>
        <branch name="AN(3:0)">
            <wire x2="2000" y1="880" y2="880" x1="1872" />
        </branch>
        <branch name="RX_DAT(7:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1808" y="1040" type="branch" />
            <wire x2="1488" y1="944" y2="944" x1="1456" />
            <wire x2="1456" y1="944" y2="1040" x1="1456" />
            <wire x2="1808" y1="1040" y2="1040" x1="1456" />
            <wire x2="1968" y1="1040" y2="1040" x1="1808" />
            <wire x2="1968" y1="1040" y2="1888" x1="1968" />
            <wire x2="1968" y1="1888" y2="1888" x1="1872" />
        </branch>
        <branch name="BTN3">
            <wire x2="1024" y1="1152" y2="1152" x1="608" />
        </branch>
        <branch name="bf_TXD">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="896" y="1088" type="branch" />
            <wire x2="896" y1="1088" y2="1088" x1="752" />
            <wire x2="1024" y1="1088" y2="1088" x1="896" />
        </branch>
        <instance x="912" y="1984" name="XLXI_2" orien="R0">
        </instance>
        <instance x="1488" y="2144" name="XLXI_3" orien="R0" />
        <instance x="1456" y="1424" name="XLXI_13" orien="R0" />
        <branch name="XLXN_4">
            <wire x2="1376" y1="1376" y2="1376" x1="1296" />
            <wire x2="1376" y1="1376" y2="1952" x1="1376" />
            <wire x2="1488" y1="1952" y2="1952" x1="1376" />
        </branch>
        <branch name="clk">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="816" y="2016" type="branch" />
            <wire x2="816" y1="2016" y2="2016" x1="736" />
            <wire x2="848" y1="2016" y2="2016" x1="816" />
            <wire x2="1488" y1="2016" y2="2016" x1="848" />
            <wire x2="848" y1="1952" y2="2016" x1="848" />
            <wire x2="912" y1="1952" y2="1952" x1="848" />
        </branch>
        <branch name="JC3">
            <wire x2="1424" y1="1696" y2="1696" x1="1296" />
            <wire x2="1424" y1="1616" y2="1696" x1="1424" />
            <wire x2="1696" y1="1616" y2="1616" x1="1424" />
        </branch>
        <branch name="JC2">
            <wire x2="1696" y1="1392" y2="1392" x1="1680" />
        </branch>
        <branch name="JC4">
            <wire x2="1696" y1="1504" y2="1504" x1="1296" />
        </branch>
        <branch name="JC7">
            <wire x2="1456" y1="1760" y2="1760" x1="1296" />
            <wire x2="1456" y1="1664" y2="1760" x1="1456" />
            <wire x2="1696" y1="1664" y2="1664" x1="1456" />
        </branch>
        <branch name="JC1">
            <wire x2="1488" y1="1824" y2="1824" x1="1296" />
            <wire x2="1488" y1="1712" y2="1824" x1="1488" />
            <wire x2="1696" y1="1712" y2="1712" x1="1488" />
        </branch>
        <branch name="LED0">
            <wire x2="1440" y1="1312" y2="1312" x1="1296" />
            <wire x2="1440" y1="1312" y2="1392" x1="1440" />
            <wire x2="1456" y1="1392" y2="1392" x1="1440" />
            <wire x2="1680" y1="1312" y2="1312" x1="1440" />
        </branch>
        <branch name="BTN0">
            <wire x2="1488" y1="2112" y2="2112" x1="640" />
        </branch>
        <branch name="XLXN_1(7:0)">
            <wire x2="1488" y1="1888" y2="1888" x1="1296" />
        </branch>
        <iomarker fontsize="28" x="1680" y="1312" name="LED0" orien="R0" />
        <iomarker fontsize="28" x="1696" y="1712" name="JC1" orien="R0" />
        <iomarker fontsize="28" x="1696" y="1392" name="JC2" orien="R0" />
        <branch name="XLXN_116">
            <wire x2="1424" y1="1200" y2="1200" x1="896" />
            <wire x2="896" y1="1200" y2="1312" x1="896" />
            <wire x2="912" y1="1312" y2="1312" x1="896" />
            <wire x2="1424" y1="1056" y2="1056" x1="1344" />
            <wire x2="1424" y1="1056" y2="1200" x1="1424" />
        </branch>
        <iomarker fontsize="28" x="640" y="2112" name="BTN0" orien="R180" />
        <branch name="UTXD">
            <wire x2="1328" y1="272" y2="272" x1="1296" />
            <wire x2="1840" y1="272" y2="272" x1="1328" />
            <wire x2="1376" y1="144" y2="144" x1="1328" />
            <wire x2="1328" y1="144" y2="224" x1="1328" />
            <wire x2="1376" y1="224" y2="224" x1="1328" />
            <wire x2="1328" y1="224" y2="272" x1="1328" />
        </branch>
        <instance x="1376" y="176" name="XLXI_11" orien="R0" />
        <branch name="JB8">
            <wire x2="1840" y1="336" y2="336" x1="1296" />
        </branch>
        <iomarker fontsize="28" x="1696" y="1664" name="JC7" orien="R0" />
        <iomarker fontsize="28" x="1696" y="1616" name="JC3" orien="R0" />
        <branch name="JC8">
            <wire x2="1696" y1="1568" y2="1568" x1="1296" />
        </branch>
        <iomarker fontsize="28" x="1696" y="1568" name="JC8" orien="R0" />
        <iomarker fontsize="28" x="1696" y="1504" name="JC4" orien="R0" />
        <iomarker fontsize="28" x="608" y="1152" name="BTN3" orien="R180" />
        <instance x="912" y="816" name="XLXI_1" orien="R0">
        </instance>
        <instance x="1376" y="256" name="XLXI_6" orien="R0" />
        <iomarker fontsize="28" x="1840" y="336" name="JB8" orien="R0" />
        <iomarker fontsize="28" x="1840" y="400" name="LED7" orien="R0" />
        <instance x="1568" y="480" name="XLXI_12" orien="R0" />
        <iomarker fontsize="28" x="1856" y="448" name="JB2" orien="R0" />
        <iomarker fontsize="28" x="1856" y="512" name="JB3" orien="R0" />
        <iomarker fontsize="28" x="1856" y="576" name="JB4" orien="R0" />
        <iomarker fontsize="28" x="1856" y="640" name="JB7" orien="R0" />
        <iomarker fontsize="28" x="1840" y="272" name="UTXD" orien="R0" />
        <iomarker fontsize="28" x="1824" y="144" name="JD3" orien="R0" />
        <instance x="1488" y="976" name="XLXI_8" orien="R0">
        </instance>
        <iomarker fontsize="28" x="2000" y="752" name="seg_P" orien="R0" />
        <iomarker fontsize="28" x="2000" y="880" name="AN(3:0)" orien="R0" />
        <iomarker fontsize="28" x="2000" y="944" name="seg(6:0)" orien="R0" />
        <instance x="1024" y="1184" name="XLXI_5" orien="R0" />
        <instance x="720" y="1056" name="XLXI_15" orien="R0" />
        <branch name="XLXN_153">
            <wire x2="992" y1="960" y2="960" x1="976" />
            <wire x2="992" y1="960" y2="1024" x1="992" />
            <wire x2="1024" y1="1024" y2="1024" x1="992" />
        </branch>
        <branch name="URXD">
            <wire x2="704" y1="992" y2="992" x1="576" />
            <wire x2="720" y1="992" y2="992" x1="704" />
        </branch>
        <branch name="JD4">
            <wire x2="704" y1="928" y2="928" x1="560" />
            <wire x2="720" y1="928" y2="928" x1="704" />
        </branch>
        <iomarker fontsize="28" x="576" y="992" name="URXD" orien="R180" />
        <branch name="F50MHz">
            <wire x2="624" y1="272" y2="272" x1="560" />
        </branch>
        <iomarker fontsize="28" x="560" y="272" name="F50MHz" orien="R180" />
        <instance x="624" y="304" name="XLXI_14" orien="R0" />
        <branch name="clk">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="864" y="272" type="branch" />
            <wire x2="864" y1="272" y2="272" x1="848" />
            <wire x2="912" y1="272" y2="272" x1="864" />
        </branch>
        <iomarker fontsize="28" x="560" y="928" name="JD4" orien="R180" />
        <iomarker fontsize="28" x="624" y="848" name="SW(7:0)" orien="R180" />
    </sheet>
</drawing>