LuaQ               �     A@  � E   ��  \� ��@ �  �� �@ ƀ�� A ܀���  �A�A� ܁� �[ � ���BA ܁�@�Z   ��   �BCA� ��� ��C� ���  ��� CD PC�� ܂  ��B������ � �ł ���F܂ ����� �B����A   �ˁ��A � B E� �� \ ܁  �� �� B �H�HA	 � ���A	 �A��   ��� Ɓ����AB �B	 �BF܁ W ����A �A���� H�A  � �� ˁ�E�
 �B	 �BF�
 � A  ܁  �
 �
 Ɂ˖�
 �̗�
 �A�A� �� �� � �A  �
 �A�A �� �B � �A  �
 ˁ�A� �� � � AC  ܁  �L��
 ˁ�A� � �B � A� � E� �� \ ܁  �� �   � �C�  @�C�  ��� CP�C���D�F���D��C����C ��C�   �� CP�C�� D�F���C �Ã�C �   ��� �A�A �� �B � �A  �
 ˁ�A� � �� � A� � E� � \ ܁  �� �� �A�AB � �A �   � ���  @�C�  ��� CP�������F���D��C����C ����   �� CP���� ��F���C �Ã�C �   ��� �A�A �� �� � �A  �
 ˁ�A� � �� � A � E� �C \ ܁  �� �� �A�J�  IўIQ��A��   � �C�  @�� CP���� ��FD��C ���C � �� CP���C��   ��
 ˁ�A� � �� � A � E� �C \ ܁  �� �� �A�A� �� �� � �A  �� �A�A �� �B � �A  �
 ˁ�A� �� �� � A  ܁  �� �� �A�A� �� �A �� Ɂˬ�� 
  E� � \ "B  �����
 ˁ�A � �B � A� � E� �� \ ܁  �� �� �A�A � �A ��B BXA� @����� ��� W �� �� CP��C�!B  ��
 �M� � C E� �� \� �� �� � �  � � 	BZ��    �
 �M� �� � E� �� \� �� � � �  � �   � m      require 	   nixio.fs    nixio.util    access    /usr/sbin/e2fsck    io    popen    block info    r    read    *l    match    ^/dev/(.-):    gmatch    (%w+)="(.-)"    lower 	   tonumber 	   readfile    /sys/class/block/%s/size    dev    /dev/%s    size    math    floor 	   	      close    m    Map    fstab 
   translate    Mount Points - Mount Entry 	   redirect    luci    dispatcher 
   build_url    admin/system/fstab    arg    uci    get    mount    http    section    NamedSection    Mount Entry 
   anonymous 
   addremove     tab    general    General Settings 	   advanced    Advanced Settings 
   taboption    Flag    enabled    Enable this mount    rmempty    o    Value    uuid    UUID J   If specified, mount the device by its UUID instead of a fixed device node    ipairs    value    %s (%s, %d MB)    %s (%s)        -- match by label --    label    Label U   If specified, mount the device by the partition label instead of a fixed device node    depends    -- match by device --    device    Device j   The device file of the memory or partition (<abbr title="for example">e.g.</abbr> <code>/dev/sda1</code>)    %s (%d MB)    target    Mount point 2   Specifies the directory the device is attached to    /    Use as root filesystem (/) 	   /overlay #   Use as external overlay (/overlay)    DummyValue 	   __notice    Root preparation    rawhtml    default �   <p>%s</p><pre>mkdir -p /tmp/introot
mkdir -p /tmp/extroot
mount --bind / /tmp/introot
mount /dev/sda1 /tmp/extroot
tar -C /tmp/introot -cvf - . | tar -C /tmp/extroot -xf -
umount /tmp/introot
umount /tmp/extroot</pre>
 P   Make sure to clone the root filesystem using something like the commands below:    fstype    Filesystem �   The filesystem that was used to format the memory (<abbr title="for example">e.g.</abbr> <samp><abbr title="Third Extended Filesystem">ext3</abbr></samp>)    auto    lines    /proc/filesystems    %S+    nodev    options    Mount options     See "mount" manpage for details    placeholder 	   defaults    enabled_fsck    Run filesystem check 2   Run a filesystem check before mounting the device                 