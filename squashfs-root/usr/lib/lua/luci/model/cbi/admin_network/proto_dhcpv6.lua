LuaQ               �   %  � � AA  ��  ��   AB  ܀  ���� A���� A����A �� A ����� �A  � B E �� \ �  �  ���� �  � A  ���A � � � A  ���� A����� A���� A����A A����� A���Å� �� � B E �� \� � �� � �  �  �� ��� �� � B E �� \� � �� � �  �  �� ��� �� �  E �B \ �  �  ��H�� �� �	 B	 E ��	 \ �  �  ���A �
 A ɀʔ� ˕� �� � B E �� \ �  �  � LAL�L@� �� �  � A  � �� � B E �� \ �  �  � Λ�@Δ � :   
   taboption    general 
   ListValue    reqaddress 
   translate    Request IPv6-address    value    try    force    none 	   disabled    default    Value 
   reqprefix    Request IPv6-prefix of length    auto 
   automatic    no    48    52    56    60    64 	   advanced    Flag    defaultroute    Use default gateway -   If unchecked, no default route is configured    enabled    peerdns #   Use DNS servers advertised by peer >   If unchecked, the advertised DNS server addresses are ignored 
   ip6prefix    Custom delegated IPv6-prefix    dataype    ip6addr    DynamicList    dns    Use custom DNS servers    depends     	   datatype    list(ip6addr)    cast    string 	   clientid '   Client ID to send when requesting DHCP    luci    tools    proto    opt_macaddr    ifc    Override MAC address    mtu    Override MTU    placeholder    1500 
   max(9200)                 