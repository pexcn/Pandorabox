LuaQ               �      A@  � �@ �� E   ��  \� F�� \�� �   �  �� �   A ܀ ƀ�܀�  AA �� �� � �  � � EA F��F��� \� 	A�� 	�Ĉ� E�A �� � A� � E� � �B ��\ �  � � �F�� � A � E� F��Z  ��A �� ��G�AH� A� �� U��	A��� 	AI�� E��	 �
 � AB
  �  �	 � E��
 � � AB  �  �
 � E�A �� � A  �  � � 	�̘� 	͙� 	�͚� E�A � � AB  �  � � 	�Θ� 	͙� 	�͚��� �O � �  
��BO܂ �   	�ł	 ˂�K�O\� �P� �B  �BP܂ �B  @�ł
 ˂�A
 ��O� �B  ˂P܂ �B  ��ł ˂�J�  IG���O�� I���B��� ˂�J�  I�P���O�� I���B���   ���	 �         �����	 �A         ������ �  � F      require    luci.model.network    init    luci.model.firewall 
   luci.util    luci.model.uci    cursor    m    SimpleForm    network 
   translate    Create Interface 	   redirect    luci    dispatcher 
   build_url    admin/network/network    reset     newnet    field    Value 	   _netname    Name of the new interface A   The allowed characters are: <code>A-Z</code>, <code>a-z</code>,  $   <code>0-9</code> and <code>_</code>    depends    _attach        default    arg 	      net_    gsub    [^%w_]+    _ 	   datatype    uciname 	   newproto 
   ListValue 
   _netproto    Protocol of the new interface 
   netbridge    Flag    _bridge )   Create a bridge over multiple interfaces    sifname    _ifname    Cover the following interface    widget    radio 	   template    cbi/network_ifacelist 
   nobridges    mifname 	   _ifnames    Cover the following interfaces 	   checkbox    ipairs    get_protocols    is_installed    value    proto 	   get_i18n    is_virtual    is_floating    1 	   validate    write        A   S    K   �   �@�@ ܀��   � ���@��  �@� � B � A   �� �A����  ��  �@� �  � A    AB�� ��   	�K�B\� ZA   �E� KA�� \��W �  �BA  B� Z  @��A �A@  ����A  � ��� �A@  ����� ���  �  �^  �A   ��� A  �  ^   �       newnet 
   formvalue 	    
   add_error 
   translate    No network name specified    m    get %   The given network name is not unique    get_protocol    is_floating 
   netbridge    1    mifname    sifname    imatch .   The selected protocol needs a device assigned                     U   f    E   �   �@�@� ܀��   @�� ����  A@�� �� A� �A A    � D  K����
�  	���	�\� Z  @�� �� �A�  @�� B@�� ��B  � �� B@�� ���� ���@ �B��A  ���  �A�A� �A��  �A�A� �A�� �AD��D� �����B @����A   �       newnet 
   formvalue 	    
   netbridge    1    bridge    add_network    proto    type    imatch    mifname    sifname    add_interface    save    network 	   wireless    luci    http 	   redirect    dispatcher 
   build_url    admin/network/network                             