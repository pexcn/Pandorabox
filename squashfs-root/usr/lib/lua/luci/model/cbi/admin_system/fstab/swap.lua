LuaQ               �      A@  � E   ��  \� �   ��� A AA � @ �@���� A A� � @ �@���� A A� � @ �@���� A A � @ �@��   A @ ��E� ��B �BCA� ܂������ \� ��� ��� �D�B��� ɀ!�  ��� A �A �� � �  � � E FA�F���� \� 	A�� AG   �� �G�G� � �A�� W H�� AH�EE� F��A  � � �H�	 � �A� EB �B	 \ �  � � 	�I�� 	AJ�� �J��
 �A  � A  � �J�A �A � � A  � �K��
 � B EB �� \ �  	Aʙ� �K��
 �A � EB �� \� �B � � �   A @ ��E KB�� �   �
 @ ��"C �\B !�  @�� �K�A �A � EB � \� �B �B � �   � �K�A �A � EB �� \� �B � � �   �   � A      require 	   nixio.fs    nixio.util    consume    glob 	   /dev/sd* 	   /dev/hd* 
   /dev/scd* 
   /dev/mmc*    ipairs 	   tonumber 	   readfile    /sys/class/block/%s/size    sub 	      math    floor 	      m    Map    fstab 
   translate    Mount Points - Swap Entry 	   redirect    luci    dispatcher 
   build_url    admin/system/fstab    arg 	      uci    get    swap    http    mount    section    NamedSection    Swap Entry 
   anonymous 
   addremove     tab    general    General Settings 	   advanced    Advanced Settings 
   taboption    Flag    enabled    Enable this swap    rmempty    o    Value    device    Device j   The device file of the memory or partition (<abbr title="for example">e.g.</abbr> <code>/dev/sda1</code>)    value    %s (%s MB)    uuid    UUID J   If specified, mount the device by its UUID instead of a fixed device node    label    Label U   If specified, mount the device by the partition label instead of a fixed device node                 