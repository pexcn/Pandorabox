LuaQ               �      A@  � E   ��  \� �   ��  � AA� �  ��� �A@�� F� F����\�  B �� �  ��B ������  ���� @ � ���B�����  ���@ � E� � \� �� �A � ܀  �  �  ��D��  ��D��  ˀ�E� � ܀ �@ �@ �@�E� �� �� � � ܀  �  �@ �@�E� �� �� B � ܀  �  �@ �@�E� � �� B � ܀  ǀ ŀ $     � �ŀ $A       � � ���@ �@�E� �	 �� B	 � ܀  � 	 � 	 ��I�� 	 $�    �    � ���@ �@�E� �
 �� B
 � ܀  � 
 � 
 ɀJ�� 
 	 �H� ���@ �@�E� ��
 ��  � ܀  ��
 ��
 �@K���
 	 �H� ���@ � E� � \� �� �A � ܀  ǀ ŀ ���E �A ܀ ǀ ŀ ��M�ŀ �@N�ŀ $�      � �ŀ $     � ���  � � � � <      require 	   nixio.fs 	   luci.sys    ipairs    init    names    index    enabled 	�      %02i.%s    name 	   tostring    m    SimpleForm    initmgr 
   translate    Initscripts �   You can enable or disable installed init scripts here. Changes will applied after a device reboot.<br /><strong>Warning: If you disable essential init scripts like "network", your device might become inaccessible!</strong>    reset     submit    s    section    Table    i    option    DummyValue    Start priority    n    Initscript    e    Button 
   endisable    Enable/Disable    render    write    start    Start    inputstyle    apply    restart    Restart    reload    stop    Stop    remove    f    rc    Local Startup �   This is the content of /etc/rc.local. Insert your own commands here (in front of 'exit 0') to execute them at the end of the boot process.    t    field 
   TextValue    rcs    rmempty    rows 	   	   cfgvalue    handle        &   0       �   �@�� ��   @�ŀ  �  ܀ 	���	@A� �ŀ  � ܀ 	���	�A��  �@�   @� � �@  � 
      enabled    title 
   translate    Enabled    inputstyle    save 	   Disabled    reset    Button    render                     2   :       �   �@ � @�   ���   �@ �@@�� � ��@��@�   �@�� ��  �   ���   �@ �@A�� � ��@��A�   �@�� ��  �    �       enabled     init    disable    name    enable                     ?   A       �   � @�  � A �@F�@ �@ �����@  �       call    /etc/init.d/%s %s >/dev/null    name    option                     T   V     	       @ A@  � @    ��     �    	   readfile    /etc/rc.local                         X   _    	   �   �� ���@@�    ��   ƀ��  FA@K��A � \ �@  � � �   �       FORM_VALID    rcs 
   writefile    /etc/rc.local    gsub    
    
                             