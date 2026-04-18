<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="M(7:0)" />
        <signal name="BTN3" />
        <signal name="BTN0" />
        <signal name="BTN1" />
        <signal name="BTN2" />
        <signal name="ce10ms" />
        <signal name="FSK_IN(11:0)" />
        <signal name="st_SADC" />
        <signal name="JC8" />
        <signal name="SW(7:0)" />
        <signal name="JC10" />
        <signal name="JC7" />
        <signal name="ce100ms" />
        <signal name="rx_dat(7:0)" />
        <signal name="AMP(15:0)" />
        <signal name="SH(15:0)" />
        <signal name="LED(7:0)" />
        <signal name="JD1" />
        <signal name="JD3" />
        <signal name="JD2" />
        <signal name="st_SDAC" />
        <signal name="JB1" />
        <signal name="JB2" />
        <signal name="JB3" />
        <signal name="clk" />
        <signal name="F50MHz" />
        <signal name="MFSK(11:0)" />
        <signal name="FSK_SH(11:0)" />
        <signal name="XLXN_8" />
        <signal name="AN(3:0)" />
        <signal name="seg(6:0)" />
        <signal name="seg_P" />
        <signal name="Disp_dat(15:0)" />
        <signal name="JC9" />
        <signal name="JA8" />
        <signal name="JA9" />
        <signal name="JA10" />
        <signal name="JD4" />
        <port polarity="Input" name="BTN3" />
        <port polarity="Input" name="BTN0" />
        <port polarity="Input" name="BTN1" />
        <port polarity="Input" name="BTN2" />
        <port polarity="Input" name="JC8" />
        <port polarity="Input" name="SW(7:0)" />
        <port polarity="Output" name="JC10" />
        <port polarity="Output" name="JC7" />
        <port polarity="Output" name="LED(7:0)" />
        <port polarity="Output" name="JD1" />
        <port polarity="Output" name="JD3" />
        <port polarity="Output" name="JD2" />
        <port polarity="Output" name="JB1" />
        <port polarity="Output" name="JB2" />
        <port polarity="Output" name="JB3" />
        <port polarity="Input" name="F50MHz" />
        <port polarity="Output" name="AN(3:0)" />
        <port polarity="Output" name="seg(6:0)" />
        <port polarity="Output" name="seg_P" />
        <port polarity="Input" name="JC9" />
        <port polarity="Output" name="JA8" />
        <port polarity="Output" name="JA9" />
        <port polarity="Output" name="JA10" />
        <port polarity="Output" name="JD4" />
        <blockdef name="BTN_REG_AMP">
            <timestamp>2017-12-5T18:20:45</timestamp>
            <rect width="256" x="64" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-236" height="24" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
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
        <blockdef name="FSK_RXD">
            <timestamp>2018-1-16T7:9:38</timestamp>
            <line x2="432" y1="32" y2="32" x1="368" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <line x2="432" y1="-416" y2="-416" x1="368" />
            <line x2="432" y1="-352" y2="-352" x1="368" />
            <line x2="432" y1="-288" y2="-288" x1="368" />
            <line x2="432" y1="-224" y2="-224" x1="368" />
            <rect width="64" x="368" y="-172" height="24" />
            <line x2="432" y1="-160" y2="-160" x1="368" />
            <rect width="64" x="368" y="-108" height="24" />
            <line x2="432" y1="-96" y2="-96" x1="368" />
            <rect width="64" x="368" y="-44" height="24" />
            <line x2="432" y1="-32" y2="-32" x1="368" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="304" x="64" y="-448" height="512" />
        </blockdef>
        <blockdef name="Gen_FSK_Byte">
            <timestamp>2017-12-6T15:58:33</timestamp>
            <rect width="256" x="64" y="-320" height="320" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-208" y2="-208" x1="64" />
            <rect width="64" x="0" y="-140" height="24" />
            <line x2="0" y1="-128" y2="-128" x1="64" />
            <rect width="64" x="0" y="-60" height="24" />
            <line x2="0" y1="-48" y2="-48" x1="64" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="DISPLAY">
            <timestamp>2017-12-7T6:41:13</timestamp>
            <line x2="384" y1="-352" y2="-352" x1="320" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <rect width="256" x="64" y="-384" height="400" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="0" y1="-192" y2="-192" x1="64" />
            <rect width="64" x="0" y="-364" height="24" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
        </blockdef>
        <blockdef name="bufg">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="0" x1="64" />
            <line x2="64" y1="-32" y2="-64" x1="128" />
            <line x2="128" y1="0" y2="-32" x1="64" />
            <line x2="128" y1="-32" y2="-32" x1="224" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
        </blockdef>
        <blockdef name="MUX_FSK">
            <timestamp>2017-12-7T9:15:45</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
        </blockdef>
        <blockdef name="MUX_dat">
            <timestamp>2017-12-7T15:47:34</timestamp>
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <rect width="64" x="0" y="-300" height="24" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="320" y="-428" height="24" />
            <line x2="384" y1="-416" y2="-416" x1="320" />
            <rect width="256" x="64" y="-448" height="512" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="0" y="20" height="24" />
            <line x2="0" y1="32" y2="32" x1="64" />
        </blockdef>
        <blockdef name="LED_BL">
            <timestamp>2017-12-5T17:36:12</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
        </blockdef>
        <blockdef name="SPI_DAC8043">
            <timestamp>2018-1-15T7:14:30</timestamp>
            <rect width="256" x="64" y="-320" height="320" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="ADC_95">
            <timestamp>2018-1-15T7:20:1</timestamp>
            <rect width="256" x="64" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-128" y2="-128" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <rect width="64" x="320" y="-236" height="24" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
        </blockdef>
        <block symbolname="BTN_REG_AMP" name="XLXI_13">
            <blockpin signalname="BTN3" name="BTN_UP" />
            <blockpin signalname="BTN0" name="BTN_DOWN" />
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="ce10ms" name="ce" />
            <blockpin signalname="M(7:0)" name="M(7:0)" />
        </block>
        <block symbolname="and2" name="XLXI_12">
            <blockpin signalname="BTN1" name="I0" />
            <blockpin signalname="BTN2" name="I1" />
            <blockpin signalname="XLXN_8" name="O" />
        </block>
        <block symbolname="Gen_FSK_Byte" name="XLXI_16">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="ce100ms" name="st" />
            <blockpin signalname="SW(7:0)" name="DAT(7:0)" />
            <blockpin signalname="M(7:0)" name="M(7:0)" />
            <blockpin signalname="JB2" name="UTXD" />
            <blockpin signalname="JB1" name="en_tx" />
            <blockpin signalname="JB3" name="S" />
            <blockpin signalname="st_SDAC" name="ce_SIN" />
            <blockpin signalname="FSK_SH(11:0)" name="FSK_SH(11:0)" />
        </block>
        <block symbolname="bufg" name="XLXI_26">
            <blockpin signalname="F50MHz" name="I" />
            <blockpin signalname="clk" name="O" />
        </block>
        <block symbolname="MUX_FSK" name="XLXI_7">
            <blockpin signalname="XLXN_8" name="s" />
            <blockpin signalname="FSK_SH(11:0)" name="A(11:0)" />
            <blockpin signalname="MFSK(11:0)" name="B(11:0)" />
            <blockpin signalname="FSK_IN(11:0)" name="C(11:0)" />
        </block>
        <block symbolname="LED_BL" name="XLXI_5">
            <blockpin signalname="JD1" name="E" />
            <blockpin signalname="M(7:0)" name="DI(7:0)" />
            <blockpin signalname="LED(7:0)" name="DO(7:0)" />
        </block>
        <block symbolname="SPI_DAC8043" name="XLXI_28">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="st_SDAC" name="st" />
            <blockpin signalname="FSK_SH(11:0)" name="DI(11:0)" />
            <blockpin signalname="JA8" name="SCLK" />
            <blockpin signalname="JA9" name="SDAT" />
            <blockpin signalname="JA10" name="NLD" />
            <blockpin name="ce" />
            <blockpin name="cb_bit(3:0)" />
        </block>
        <block symbolname="ADC_95" name="XLXI_30">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="JC8" name="SDAT" />
            <blockpin signalname="st_SADC" name="st" />
            <blockpin signalname="JC9" name="BUSY" />
            <blockpin signalname="JC7" name="SCLK" />
            <blockpin signalname="JC10" name="st_ADC" />
            <blockpin signalname="MFSK(11:0)" name="ADC_5000(11:0)" />
        </block>
        <block symbolname="DISPLAY" name="XLXI_2">
            <blockpin signalname="seg_P" name="seg_P" />
            <blockpin name="ce1ms" />
            <blockpin signalname="ce10ms" name="ce10ms" />
            <blockpin signalname="ce100ms" name="ce100ms" />
            <blockpin signalname="AN(3:0)" name="AN(3:0)" />
            <blockpin signalname="seg(6:0)" name="seg(6:0)" />
            <blockpin signalname="BTN2" name="BTN2" />
            <blockpin signalname="BTN1" name="BTN1" />
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="Disp_dat(15:0)" name="dat(15:0)" />
        </block>
        <block symbolname="MUX_dat" name="XLXI_27">
            <blockpin signalname="BTN2" name="BTN2" />
            <blockpin signalname="BTN1" name="BTN1" />
            <blockpin signalname="SW(7:0)" name="AH(15:8)" />
            <blockpin signalname="rx_dat(7:0)" name="AL(7:0)" />
            <blockpin signalname="AMP(15:0)" name="B(15:0)" />
            <blockpin signalname="SH(15:0)" name="C(15:0)" />
            <blockpin signalname="SW(7:0)" name="DH(15:8)" />
            <blockpin signalname="rx_dat(7:0)" name="DL(7:0)" />
            <blockpin signalname="Disp_dat(15:0)" name="E(15:0)" />
        </block>
        <block symbolname="FSK_RXD" name="XLXI_31">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="FSK_IN(11:0)" name="FSK_IN(11:0)" />
            <blockpin signalname="JD2" name="URXD" />
            <blockpin signalname="JD3" name="OCD" />
            <blockpin signalname="st_SADC" name="st_SADC" />
            <blockpin signalname="JD1" name="en_rx_byte" />
            <blockpin signalname="rx_dat(7:0)" name="rx_dat(7:0)" />
            <blockpin signalname="AMP(15:0)" name="AMPdec(15:0)" />
            <blockpin signalname="SH(15:0)" name="SHdec(15:0)" />
            <blockpin signalname="JD4" name="FSK_res" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1056" y="1120" name="XLXI_13" orien="R0">
        </instance>
        <branch name="M(7:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1296" y="752" type="branch" />
            <wire x2="880" y1="640" y2="752" x1="880" />
            <wire x2="1296" y1="752" y2="752" x1="880" />
            <wire x2="1488" y1="752" y2="752" x1="1296" />
            <wire x2="1488" y1="752" y2="896" x1="1488" />
            <wire x2="1696" y1="896" y2="896" x1="1488" />
            <wire x2="1008" y1="640" y2="640" x1="880" />
            <wire x2="1488" y1="896" y2="896" x1="1440" />
        </branch>
        <branch name="BTN3">
            <wire x2="1056" y1="896" y2="896" x1="720" />
        </branch>
        <branch name="BTN0">
            <wire x2="1056" y1="960" y2="960" x1="720" />
        </branch>
        <branch name="BTN1">
            <wire x2="752" y1="1232" y2="1232" x1="720" />
        </branch>
        <branch name="BTN2">
            <wire x2="752" y1="1168" y2="1168" x1="720" />
        </branch>
        <branch name="ce10ms">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="992" y="1088" type="branch" />
            <wire x2="992" y1="1088" y2="1088" x1="928" />
            <wire x2="1056" y1="1088" y2="1088" x1="992" />
        </branch>
        <instance x="752" y="1296" name="XLXI_12" orien="R0" />
        <branch name="FSK_IN(11:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1536" y="1248" type="branch" />
            <wire x2="1536" y1="1248" y2="1248" x1="1440" />
            <wire x2="1648" y1="1248" y2="1248" x1="1536" />
        </branch>
        <branch name="st_SADC">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2144" y="1184" type="branch" />
            <wire x2="2144" y1="1184" y2="1184" x1="2080" />
            <wire x2="2224" y1="1184" y2="1184" x1="2144" />
        </branch>
        <branch name="JC8">
            <wire x2="1056" y1="1632" y2="1632" x1="704" />
        </branch>
        <branch name="SW(7:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="896" y="560" type="branch" />
            <wire x2="896" y1="560" y2="560" x1="752" />
            <wire x2="1008" y1="560" y2="560" x1="896" />
        </branch>
        <branch name="ce100ms">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="992" y="480" type="branch" />
            <wire x2="992" y1="480" y2="480" x1="800" />
            <wire x2="1008" y1="480" y2="480" x1="992" />
        </branch>
        <branch name="rx_dat(7:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2208" y="1312" type="branch" />
            <wire x2="2208" y1="1312" y2="1312" x1="2080" />
            <wire x2="2272" y1="1312" y2="1312" x1="2208" />
        </branch>
        <branch name="AMP(15:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2208" y="1376" type="branch" />
            <wire x2="2208" y1="1376" y2="1376" x1="2080" />
            <wire x2="2272" y1="1376" y2="1376" x1="2208" />
        </branch>
        <branch name="SH(15:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2208" y="1440" type="branch" />
            <wire x2="2208" y1="1440" y2="1440" x1="2080" />
            <wire x2="2272" y1="1440" y2="1440" x1="2208" />
        </branch>
        <branch name="LED(7:0)">
            <wire x2="2208" y1="832" y2="832" x1="2080" />
        </branch>
        <branch name="JD1">
            <wire x2="2208" y1="1248" y2="1248" x1="2080" />
        </branch>
        <branch name="JD3">
            <wire x2="2208" y1="1120" y2="1120" x1="2080" />
        </branch>
        <branch name="JD2">
            <wire x2="2208" y1="1056" y2="1056" x1="2080" />
        </branch>
        <instance x="1008" y="688" name="XLXI_16" orien="R0">
        </instance>
        <branch name="st_SDAC">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1520" y="592" type="branch" />
            <wire x2="1520" y1="592" y2="592" x1="1392" />
            <wire x2="1648" y1="592" y2="592" x1="1520" />
            <wire x2="1696" y1="528" y2="528" x1="1648" />
            <wire x2="1648" y1="528" y2="592" x1="1648" />
        </branch>
        <branch name="JB1">
            <wire x2="1504" y1="464" y2="464" x1="1392" />
            <wire x2="1504" y1="240" y2="464" x1="1504" />
            <wire x2="2192" y1="240" y2="240" x1="1504" />
        </branch>
        <branch name="JB2">
            <wire x2="1472" y1="400" y2="400" x1="1392" />
            <wire x2="1472" y1="192" y2="400" x1="1472" />
            <wire x2="2192" y1="192" y2="192" x1="1472" />
        </branch>
        <branch name="JB3">
            <wire x2="1536" y1="528" y2="528" x1="1392" />
            <wire x2="1536" y1="288" y2="528" x1="1536" />
            <wire x2="2192" y1="288" y2="288" x1="1536" />
        </branch>
        <branch name="clk">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="944" y="400" type="branch" />
            <wire x2="944" y1="400" y2="400" x1="864" />
            <wire x2="1008" y1="400" y2="400" x1="944" />
        </branch>
        <instance x="848" y="256" name="XLXI_26" orien="R0" />
        <branch name="F50MHz">
            <wire x2="848" y1="224" y2="224" x1="752" />
        </branch>
        <branch name="MFSK(11:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1104" y="1472" type="branch" />
            <wire x2="960" y1="1376" y2="1472" x1="960" />
            <wire x2="1104" y1="1472" y2="1472" x1="960" />
            <wire x2="1504" y1="1472" y2="1472" x1="1104" />
            <wire x2="1504" y1="1472" y2="1568" x1="1504" />
            <wire x2="1056" y1="1376" y2="1376" x1="960" />
            <wire x2="1504" y1="1568" y2="1568" x1="1440" />
        </branch>
        <branch name="FSK_SH(11:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1504" y="656" type="branch" />
            <wire x2="1504" y1="656" y2="656" x1="1392" />
            <wire x2="1696" y1="656" y2="656" x1="1504" />
        </branch>
        <instance x="1056" y="1408" name="XLXI_7" orien="R0">
        </instance>
        <branch name="XLXN_8">
            <wire x2="1024" y1="1200" y2="1200" x1="1008" />
            <wire x2="1024" y1="1200" y2="1248" x1="1024" />
            <wire x2="1056" y1="1248" y2="1248" x1="1024" />
        </branch>
        <instance x="1696" y="928" name="XLXI_5" orien="R0">
        </instance>
        <iomarker fontsize="28" x="720" y="896" name="BTN3" orien="R180" />
        <iomarker fontsize="28" x="720" y="960" name="BTN0" orien="R180" />
        <iomarker fontsize="28" x="720" y="1168" name="BTN2" orien="R180" />
        <iomarker fontsize="28" x="720" y="1232" name="BTN1" orien="R180" />
        <iomarker fontsize="28" x="704" y="1632" name="JC8" orien="R180" />
        <iomarker fontsize="28" x="2208" y="832" name="LED(7:0)" orien="R0" />
        <iomarker fontsize="28" x="2208" y="1056" name="JD2" orien="R0" />
        <iomarker fontsize="28" x="2208" y="1120" name="JD3" orien="R0" />
        <iomarker fontsize="28" x="2208" y="1248" name="JD1" orien="R0" />
        <iomarker fontsize="28" x="2192" y="192" name="JB2" orien="R0" />
        <iomarker fontsize="28" x="2192" y="240" name="JB1" orien="R0" />
        <iomarker fontsize="28" x="2192" y="288" name="JB3" orien="R0" />
        <iomarker fontsize="28" x="752" y="560" name="SW(7:0)" orien="R180" />
        <iomarker fontsize="28" x="752" y="224" name="F50MHz" orien="R180" />
        <branch name="st_SADC">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="992" y="1696" type="branch" />
            <wire x2="992" y1="1696" y2="1696" x1="928" />
            <wire x2="1056" y1="1696" y2="1696" x1="992" />
        </branch>
        <branch name="clk">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="992" y="1568" type="branch" />
            <wire x2="992" y1="1568" y2="1568" x1="928" />
            <wire x2="1056" y1="1568" y2="1568" x1="992" />
        </branch>
        <branch name="FSK_SH(11:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="928" y="1312" type="branch" />
            <wire x2="928" y1="1312" y2="1312" x1="864" />
            <wire x2="1056" y1="1312" y2="1312" x1="928" />
        </branch>
        <branch name="clk">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="992" y="1024" type="branch" />
            <wire x2="992" y1="1024" y2="1024" x1="912" />
            <wire x2="1056" y1="1024" y2="1024" x1="992" />
        </branch>
        <branch name="clk">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1584" y="1056" type="branch" />
            <wire x2="1584" y1="1056" y2="1056" x1="1536" />
            <wire x2="1648" y1="1056" y2="1056" x1="1584" />
        </branch>
        <branch name="JD1">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1648" y="832" type="branch" />
            <wire x2="1648" y1="832" y2="832" x1="1568" />
            <wire x2="1696" y1="832" y2="832" x1="1648" />
        </branch>
        <branch name="clk">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1664" y="400" type="branch" />
            <wire x2="1664" y1="400" y2="400" x1="1600" />
            <wire x2="1696" y1="400" y2="400" x1="1664" />
        </branch>
        <branch name="clk">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1120" y="224" type="branch" />
            <wire x2="1120" y1="224" y2="224" x1="1072" />
            <wire x2="1232" y1="224" y2="224" x1="1120" />
        </branch>
        <instance x="1056" y="1792" name="XLXI_30" orien="R0">
        </instance>
        <branch name="AN(3:0)">
            <wire x2="2240" y1="2176" y2="2176" x1="2064" />
        </branch>
        <branch name="seg(6:0)">
            <wire x2="2240" y1="2240" y2="2240" x1="2064" />
        </branch>
        <branch name="seg_P">
            <wire x2="2224" y1="1920" y2="1920" x1="2064" />
        </branch>
        <branch name="JC10">
            <wire x2="2224" y1="1760" y2="1760" x1="1440" />
        </branch>
        <branch name="Disp_dat(15:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1568" y="1920" type="branch" />
            <wire x2="1568" y1="1920" y2="1920" x1="1440" />
            <wire x2="1680" y1="1920" y2="1920" x1="1568" />
        </branch>
        <instance x="1680" y="2272" name="XLXI_2" orien="R0">
        </instance>
        <instance x="1056" y="2336" name="XLXI_27" orien="R0">
        </instance>
        <branch name="clk">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1648" y="2080" type="branch" />
            <wire x2="1648" y1="2080" y2="2080" x1="1568" />
            <wire x2="1680" y1="2080" y2="2080" x1="1648" />
        </branch>
        <branch name="BTN2">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1616" y="2176" type="branch" />
            <wire x2="1616" y1="2176" y2="2176" x1="1568" />
            <wire x2="1680" y1="2176" y2="2176" x1="1616" />
        </branch>
        <branch name="BTN1">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1616" y="2240" type="branch" />
            <wire x2="1616" y1="2240" y2="2240" x1="1568" />
            <wire x2="1680" y1="2240" y2="2240" x1="1616" />
        </branch>
        <branch name="BTN2">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="928" y="1920" type="branch" />
            <wire x2="928" y1="1920" y2="1920" x1="864" />
            <wire x2="1056" y1="1920" y2="1920" x1="928" />
        </branch>
        <branch name="BTN1">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="928" y="1984" type="branch" />
            <wire x2="928" y1="1984" y2="1984" x1="864" />
            <wire x2="1056" y1="1984" y2="1984" x1="928" />
        </branch>
        <branch name="SW(7:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="896" y="2048" type="branch" />
            <wire x2="896" y1="2048" y2="2048" x1="864" />
            <wire x2="1056" y1="2048" y2="2048" x1="896" />
        </branch>
        <branch name="rx_dat(7:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="912" y="2112" type="branch" />
            <wire x2="912" y1="2112" y2="2112" x1="864" />
            <wire x2="1056" y1="2112" y2="2112" x1="912" />
        </branch>
        <branch name="AMP(15:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="928" y="2176" type="branch" />
            <wire x2="928" y1="2176" y2="2176" x1="864" />
            <wire x2="1056" y1="2176" y2="2176" x1="928" />
        </branch>
        <branch name="SH(15:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="912" y="2240" type="branch" />
            <wire x2="912" y1="2240" y2="2240" x1="864" />
            <wire x2="1056" y1="2240" y2="2240" x1="912" />
        </branch>
        <branch name="SW(7:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="912" y="2304" type="branch" />
            <wire x2="912" y1="2304" y2="2304" x1="864" />
            <wire x2="1056" y1="2304" y2="2304" x1="912" />
        </branch>
        <branch name="rx_dat(7:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="944" y="2400" type="branch" />
            <wire x2="1024" y1="2400" y2="2400" x1="944" />
            <wire x2="1056" y1="2368" y2="2368" x1="1024" />
            <wire x2="1024" y1="2368" y2="2400" x1="1024" />
        </branch>
        <branch name="ce10ms">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2144" y="2048" type="branch" />
            <wire x2="2144" y1="2048" y2="2048" x1="2064" />
            <wire x2="2288" y1="2048" y2="2048" x1="2144" />
        </branch>
        <branch name="ce100ms">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2160" y="2112" type="branch" />
            <wire x2="2160" y1="2112" y2="2112" x1="2064" />
            <wire x2="2288" y1="2112" y2="2112" x1="2160" />
        </branch>
        <iomarker fontsize="28" x="2240" y="2240" name="seg(6:0)" orien="R0" />
        <iomarker fontsize="28" x="2224" y="1920" name="seg_P" orien="R0" />
        <iomarker fontsize="28" x="2240" y="2176" name="AN(3:0)" orien="R0" />
        <iomarker fontsize="28" x="2224" y="1760" name="JC10" orien="R0" />
        <iomarker fontsize="28" x="2224" y="1664" name="JC7" orien="R0" />
        <branch name="JC7">
            <wire x2="2224" y1="1664" y2="1664" x1="1440" />
        </branch>
        <branch name="JC9">
            <wire x2="1056" y1="1760" y2="1760" x1="704" />
        </branch>
        <iomarker fontsize="28" x="704" y="1760" name="JC9" orien="R180" />
        <instance x="1696" y="688" name="XLXI_28" orien="R0">
        </instance>
        <branch name="JA8">
            <wire x2="2208" y1="400" y2="400" x1="2080" />
        </branch>
        <iomarker fontsize="28" x="2208" y="400" name="JA8" orien="R0" />
        <branch name="JA9">
            <wire x2="2208" y1="464" y2="464" x1="2080" />
        </branch>
        <iomarker fontsize="28" x="2208" y="464" name="JA9" orien="R0" />
        <branch name="JA10">
            <wire x2="2192" y1="528" y2="528" x1="2080" />
        </branch>
        <iomarker fontsize="28" x="2192" y="528" name="JA10" orien="R0" />
        <instance x="1648" y="1472" name="XLXI_31" orien="R0">
        </instance>
        <branch name="JD4">
            <wire x2="2096" y1="1504" y2="1504" x1="2080" />
            <wire x2="2224" y1="1504" y2="1504" x1="2096" />
        </branch>
        <iomarker fontsize="28" x="2224" y="1504" name="JD4" orien="R0" />
    </sheet>
</drawing>