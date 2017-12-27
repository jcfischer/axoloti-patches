<patch-1.0 appVersion="1.0.12">
   <obj type="midi/in/keyb" uuid="53b04874696932f38aceaa168bd5d9efb743716d" name="keyb_1" x="84" y="140">
      <params/>
      <attribs/>
   </obj>
   <obj type="osc/square" uuid="aa9592566d3673fe64dcaede132e9ebd45d2202f" name="square_1" x="448" y="168">
      <params>
         <frac32.s.map name="pitch" value="8.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="gain/vca" uuid="a9f2dcd18043e2f47364e45cb8814f63c2a37c0d" name="vca_1" x="658" y="196">
      <params/>
      <attribs/>
   </obj>
   <obj type="env/adsr" uuid="d1dbcc5fa6f87b98a6a91c87fd44acee5e690bac" name="adsr_1" x="266" y="238">
      <params>
         <frac32.s.map name="a" value="10.0"/>
         <frac32.s.map name="d" value="-15.0"/>
         <frac32.u.map name="s" value="41.0"/>
         <frac32.s.map name="r" value="20.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="filter/vcf3" uuid="92455c652cd098cbb682a5497baa18abbf2ef865" name="vcf3_1" x="770" y="252">
      <params>
         <frac32.s.map name="pitch" value="0.0"/>
         <frac32.u.map name="reso" onParent="true" value="0.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="gain/vca" uuid="a9f2dcd18043e2f47364e45cb8814f63c2a37c0d" name="vca_2" x="644" y="308">
      <params/>
      <attribs/>
   </obj>
   <obj type="mix/mix 2 g" uuid="221f038da51943034a75e442c90624fcebfe6112" name="mix_1" x="910" y="308">
      <params>
         <frac32.u.map name="gain1" value="32.0"/>
         <frac32.u.map name="gain2" value="32.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="patch/outlet a" uuid="abd8c5fd3b0524a6630f65cad6dc27f6c58e2a3e" name="outlet_1" x="1050" y="322">
      <params/>
      <attribs/>
   </obj>
   <obj type="env/adsr" uuid="d1dbcc5fa6f87b98a6a91c87fd44acee5e690bac" name="adsr_2" x="266" y="448">
      <params>
         <frac32.s.map name="a" value="11.0"/>
         <frac32.s.map name="d" value="-11.0"/>
         <frac32.u.map name="s" value="40.5"/>
         <frac32.s.map name="r" value="32.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="gain/vca" uuid="a9f2dcd18043e2f47364e45cb8814f63c2a37c0d" name="vca_3" x="644" y="462">
      <params/>
      <attribs/>
   </obj>
   <obj type="filter/vcf3" uuid="92455c652cd098cbb682a5497baa18abbf2ef865" name="vcf3_2" x="770" y="462">
      <params>
         <frac32.s.map name="pitch" value="0.0"/>
         <frac32.u.map name="reso" value="0.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="osc/tri" uuid="905879afa8256b0ca207557d656949e476ca6f16" name="tri_1" x="448" y="476">
      <params>
         <frac32.s.map name="pitch" value="-4.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="gain/vca" uuid="a9f2dcd18043e2f47364e45cb8814f63c2a37c0d" name="vca_4" x="644" y="560">
      <params/>
      <attribs/>
   </obj>
   <nets>
      <net>
         <source obj="keyb_1" outlet="note"/>
         <dest obj="square_1" inlet="pitch"/>
         <dest obj="tri_1" inlet="pitch"/>
      </net>
      <net>
         <source obj="keyb_1" outlet="gate"/>
         <dest obj="adsr_1" inlet="gate"/>
         <dest obj="adsr_2" inlet="gate"/>
      </net>
      <net>
         <source obj="square_1" outlet="wave"/>
         <dest obj="vca_1" inlet="a"/>
      </net>
      <net>
         <source obj="vca_1" outlet="o"/>
         <dest obj="vca_2" inlet="a"/>
      </net>
      <net>
         <source obj="vca_2" outlet="o"/>
         <dest obj="vcf3_1" inlet="in"/>
      </net>
      <net>
         <source obj="keyb_1" outlet="velocity"/>
         <dest obj="vca_2" inlet="v"/>
         <dest obj="vca_3" inlet="v"/>
      </net>
      <net>
         <source obj="adsr_1" outlet="env"/>
         <dest obj="vca_1" inlet="v"/>
      </net>
      <net>
         <source obj="vcf3_1" outlet="out"/>
         <dest obj="mix_1" inlet="in1"/>
      </net>
      <net>
         <source obj="vcf3_2" outlet="out"/>
         <dest obj="mix_1" inlet="in2"/>
      </net>
      <net>
         <source obj="vca_4" outlet="o"/>
         <dest obj="vcf3_2" inlet="in"/>
      </net>
      <net>
         <source obj="vca_3" outlet="o"/>
         <dest obj="vca_4" inlet="a"/>
      </net>
      <net>
         <source obj="tri_1" outlet="wave"/>
         <dest obj="vca_3" inlet="a"/>
      </net>
      <net>
         <source obj="adsr_2" outlet="env"/>
         <dest obj="vca_4" inlet="v"/>
      </net>
      <net>
         <source obj="mix_1" outlet="out"/>
         <dest obj="outlet_1" inlet="outlet"/>
      </net>
   </nets>
   <settings>
      <subpatchmode>polyphonic</subpatchmode>
      <MidiChannel>1</MidiChannel>
      <HasMidiChannelSelector>true</HasMidiChannelSelector>
      <NPresets>8</NPresets>
      <NPresetEntries>32</NPresetEntries>
      <NModulationSources>8</NModulationSources>
      <NModulationTargetsPerSource>8</NModulationTargetsPerSource>
      <Author></Author>
   </settings>
   <notes><![CDATA[]]></notes>
   <windowPos>
      <x>750</x>
      <y>23</y>
      <width>1428</width>
      <height>783</height>
   </windowPos>
</patch-1.0>