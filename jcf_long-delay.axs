<patch-1.0 appVersion="1.0.12">
   <obj type="patch/inlet a" uuid="b577fe41e0a6bc7b5502ce33cb8a3129e2e28ee5" name="inlet_1" x="42" y="42">
      <params/>
      <attribs/>
   </obj>
   <obj type="gain/vca" uuid="a9f2dcd18043e2f47364e45cb8814f63c2a37c0d" name="vca_1" x="294" y="70">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet b" uuid="3b0d3eacb5bb978cb05d1372aa2714d5a4790844" name="rec-gate" x="42" y="84">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet b" uuid="3b0d3eacb5bb978cb05d1372aa2714d5a4790844" name="erase-gate" x="42" y="126">
      <params/>
      <attribs/>
   </obj>
   <obj type="kfilter/lowpass" uuid="4f0d68b39b6f6b1c1d371b028d84391d14062d68" name="lowpass_1" x="406" y="182">
      <params>
         <frac32.s.map name="freq" onParent="true" value="-53.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="conv/interp" uuid="d68c1a8709d8b55e3de8715d727ec0a2d8569d9a" name="interp_2" x="518" y="196">
      <params/>
      <attribs/>
   </obj>
   <obj type="delay/read interp" uuid="e3d8b8823ab551c588659520bf6cc25c630466c7" name="read_2" x="602" y="196">
      <params>
         <frac32.u.map name="time" value="0.0"/>
      </params>
      <attribs>
         <objref attributeName="delayname" obj="sound"/>
      </attribs>
   </obj>
   <obj type="math/*" uuid="c16a625a661f40e4b359db604dcd00b3befcdbe3" name="*_2" x="770" y="196">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/+" uuid="faedbea4612d9bd3644d6d3bf31946d848a70e19" name="+_1" x="840" y="196">
      <params/>
      <attribs/>
   </obj>
   <obj type="delay/write sdram" uuid="5ae03f8d7b815edcfc40585d8bbac2ed48460fba" name="sound" x="924" y="196">
      <params/>
      <attribs>
         <combo attributeName="size" selection="262144 (5.46s)"/>
      </attribs>
   </obj>
   <obj type="mix/xfade" uuid="375dc91d218e96cdc9cbc7e92adb48f705ef701a" name="xfade_2" x="1050" y="196">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet a" uuid="abd8c5fd3b0524a6630f65cad6dc27f6c58e2a3e" name="outlet_1" x="1134" y="196">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet f" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="speed" x="42" y="210">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet f" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="feedback" x="42" y="252">
      <params/>
      <attribs/>
   </obj>
   <obj type="mux/mux 2" uuid="3bcb8a666381ed18b8962eda50b1aa679136f618" name="mux_1" x="280" y="266">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet f" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="amount" x="42" y="294">
      <params/>
      <attribs/>
   </obj>
   <obj type="toneburst/math/interpolation-bezier-cubic" uuid="42de82bd-22c1-4662-a63d-c43f6b824c40" name="interpolation-bezier-cubic_1" x="168" y="406">
      <params>
         <frac32.u.map name="start" value="0.0"/>
         <frac32.s.map name="end" value="0.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="sss/math/scaleInOut" uuid="1469e0f0-7674-4f23-897c-5dff075314f6" name="scaleInOut_1" x="420" y="406">
      <params>
         <frac32.s.map name="inMin" value="0.0"/>
         <frac32.s.map name="inMax" value="64.0"/>
         <frac32.s.map name="outMin" value="0.009999999999999912"/>
         <frac32.s.map name="outMax" value="63.8"/>
      </params>
      <attribs/>
   </obj>
   <nets>
      <net>
         <source obj="inlet_1" outlet="inlet"/>
         <dest obj="vca_1" inlet="a"/>
      </net>
      <net>
         <source obj="+_1" outlet="out"/>
         <dest obj="sound" inlet="in"/>
      </net>
      <net>
         <source obj="read_2" outlet="out"/>
         <dest obj="xfade_2" inlet="i2"/>
         <dest obj="*_2" inlet="a"/>
      </net>
      <net>
         <source obj="interp_2" outlet="o"/>
         <dest obj="read_2" inlet="time"/>
      </net>
      <net>
         <source obj="lowpass_1" outlet="out"/>
         <dest obj="interp_2" inlet="i"/>
      </net>
      <net>
         <source obj="*_2" outlet="result"/>
         <dest obj="+_1" inlet="in2"/>
      </net>
      <net>
         <source obj="xfade_2" outlet="o"/>
         <dest obj="outlet_1" inlet="outlet"/>
      </net>
      <net>
         <source obj="amount" outlet="inlet"/>
         <dest obj="xfade_2" inlet="c"/>
      </net>
      <net>
         <source obj="speed" outlet="inlet"/>
         <dest obj="interpolation-bezier-cubic_1" inlet="in"/>
      </net>
      <net>
         <source obj="vca_1" outlet="o"/>
         <dest obj="xfade_2" inlet="i1"/>
         <dest obj="+_1" inlet="in1"/>
      </net>
      <net>
         <source obj="rec-gate" outlet="inlet"/>
         <dest obj="vca_1" inlet="v"/>
      </net>
      <net>
         <source obj="mux_1" outlet="o"/>
         <dest obj="*_2" inlet="b"/>
      </net>
      <net>
         <source obj="feedback" outlet="inlet"/>
         <dest obj="mux_1" inlet="i1"/>
      </net>
      <net>
         <source obj="erase-gate" outlet="inlet"/>
         <dest obj="mux_1" inlet="s"/>
      </net>
      <net>
         <source obj="interpolation-bezier-cubic_1" outlet="out"/>
         <dest obj="scaleInOut_1" inlet="in"/>
      </net>
      <net>
         <source obj="scaleInOut_1" outlet="out"/>
         <dest obj="lowpass_1" inlet="in"/>
      </net>
   </nets>
   <settings>
      <subpatchmode>no</subpatchmode>
      <MidiChannel>1</MidiChannel>
      <NPresets>8</NPresets>
      <NPresetEntries>32</NPresetEntries>
      <NModulationSources>8</NModulationSources>
      <NModulationTargetsPerSource>8</NModulationTargetsPerSource>
   </settings>
   <notes><![CDATA[]]></notes>
   <windowPos>
      <x>148</x>
      <y>23</y>
      <width>1920</width>
      <height>1096</height>
   </windowPos>
</patch-1.0>