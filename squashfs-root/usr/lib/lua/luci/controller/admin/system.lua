LuaQ               +      A@  ��  ��@@�$     $@  @ $�  � $�  d  �@ � $� d   �   G� dA       �      �   G d� GA d� G� d   �G� dA G d� GA d� G� d G�  �       module    luci.controller.admin.system    package    seeall    index    action_clock_status    action_packages    action_flashops    action_sysupgrade    action_backup    action_restore    action_reset    action_passwd    action_reboot 
   fork_exec    ltn12_popen           -           A@  � E�  �  ��   �@ �@ �  A � ܀ � A� � A \��I�E�  � ���   A �@���  ܀ � A� � AA \@�E�  � ���   A� �@��� 
A  	�B�AA � �\@  E�  � ���   A�  �@��� � ܀ � A� � A \@�F@E �� \� Z   ��E�  � ���   A� �@��� 
A  	AF�A� ܀�� A� � A \@�E�  �  ��   A� �A �@ ŀ � �  \@  E�  � ���   A �@�ŀ A ܀ � A� � A� \@�E�  � ���   A	 �@�ŀ A	 ܀ � A�	 � A�	 \@�F@E � 
 \� Z   �	�E�  � ���   AA
 �@��� �
 ܀ � A�
 � A \@�E�  �  ��   AA
 �A �@ �� � ܀  \� I�E�  �  ��   AA
 � �@ �� A ܀  \� I�F@E �� \� Z   @�E�  � ���   A� �@���  ܀ � AA � A� \@�E�  � ���   A� �@��  A ܀ � A� � A� \@�E�  �  ��   A� � �@ �@ � �  \@  E�  �  ��   A� �� �@ �@  �  \@  E�  �  ��   A� �A �@ ŀ � �  \@  E�  �  ��   A� �� �@ �   �  \@  E�  �  ��   A� �A �@ �  � �  \@  E�  � ���   A� �@��  A ܀ � A� � A� \@�E�  �  ��   A� � �@ �@  �  \@   � M      require 	   nixio.fs    entry    admin    system    alias    _    System 	      index    cbi    admin_system/system 	      clock_status    post_on    set    action_clock_status    admin_system/admin    Administration 	      access 
   /bin/opkg 	   packages    exec    1    action_packages 	   Software 	
      ipkg    form    admin_system/ipkg    startup    admin_system/startup    Startup 	-      crontab    admin_system/crontab    Scheduled Tasks 	.      /sbin/block    fstab    admin_system/fstab    Mount Points 	2      mount    admin_system/fstab/mount    leaf    swap    admin_system/fstab/swap    /sys/class/leds    leds    admin_system/leds <   <abbr title="Light Emitting Diode">LED</abbr> Configuration 	<   	   flashops    call    action_flashops    Backup / Flash Firmware 	F      reset    post    action_reset    backup    action_backup    backupfiles    admin_system/backupfiles    restore    action_restore    sysupgrade    action_sysupgrade    reboot 	   template    admin_system/reboot    Reboot 	Z      action_reboot                     /   <      
/      E@  F�� F�� �  \  �  W@A @�  ���E� F � �@ �   \��Z    ��@  ��B��B�  A� F�� ��� �� B� F�� �@ �� ��@ E@  F�� F�� �  \@ E@  F�� F@� �@  �� � �� ܀ �� �\@  �    	   tonumber    luci    http 
   formvalue    set  	       os    date    *t    sys    call (   date -s '%04d-%02d-%02d %02d:%02d:%02d'    year    month    day    hour    min    sec    prepare_content    application/json    write_json    timestring    %c                     >   �      �      A@  � E   ��  \� ��  � A�@A�� �� W�A  ��@  � � �  B  �  �  
� A "B� J� � bB� ���  ACAAC � C    �� E� F���  �A�CA�C �� �C    ��� �� \��W �� �@��� ���@ �ZC    �AC ��  �A�CA�� �� W B@ ��C    �� �    ���  ���C� ܃  E�  F�FD��D \� Z  � �W �  � ��   ��� ���� 
��	���� ��C		�	����C	I�	B�   @�� 	��  Ƅ�	���	  � ���   ���� ��� ���	�������IB� �D   ���  �A	�DA	� �� �   ���   	���
� 
��	� ���		��	�����	I	B� ��  ��	�D�	E ܄ � �	�   ���D� �� ��
� 
� �	� ���		��	�����	I	��  ��	�D�	� ܄  �	  ��Ƅ� �� ��
� 
 �	� ���		��	�����	I	��   F�F � \� Z   �C��DG � �@��  ��G �  �
��� ����E    �� �E ƅ�܅� ����@ �� @ ��D  ��E�  F�FD���	 �� ����D��Ʉ��Ʉ�����Ā����ă����
 �J
@ � ������
 �J
@�� ����\D�Z  � �FDK �� \D  � /      require 	   nixio.fs    luci.model.ipkg    luci    http 
   formvalue    exec    1        display 
   installed    string    byte    letter    A 	   	#   	A   	Z      query    install    url    util    imatch    remove    update    upgrade    access    /var/opkg-lists/    dir    stat    mtime 	       os    time 	�Q 	   template    render    admin_system/packages 	   no_lists 
   old_lists    stdout    table    concat    stderr    unlink    /tmp/luci-indexcache                     �   �     
   E   F@� �  �\� W��   �B@  B � ^   �       os    execute    sysupgrade -T %q >/dev/null 	                        �   �     
   E   F@� F�� � ��\� K � �@ \��^   �       luci    sys    exec 
   md5sum %q    match 
   ^([^%s]+)                     �   �            @@ �@ A�        �       nixio    fs    access    /lib/upgrade/platform.sh                     �   �      
      @@ A�  � W�@   �@   �    �       os    execute #   grep -sq '"rootfs_data"' /proc/mtd 	                        �   �      >      E@  F�� F�� �  \� Z    �E@ F�� �  \  �K�A� \A�W@B@ ��B@�E� � � \��  �@�a@   ���E@  F�� F�� �@ \� Z   ��E@ F�� �@ \  �K�A�� \A��  ��  @�K�A�� \��ZB   �E� ��\�  �@ �a@   �   �    	       nixio    fs    access 
   /proc/mtd    io    lines    match -   ^([^%s]+)%s+([^%s]+)%s+([^%s]+)%s+"([^%s]+)"    linux 	   firmware 	   tonumber 	      /proc/partitions (   ^%s*(%d+)%s+(%d+)%s+([^%s]+)%s+([^%s]+)    [0-9] 	                       �   �           @@ �@ A�  ��  �   ܀� �� �� � ܀� ����@� �       luci 	   template    render    admin_system/flashops    reset_avail    upgrade_avail                     �   '    �      A@  � E   ��  \� ��  � �� d    �   A A �A�A�� A  � �B @ A  � A� A� �   ��B @ A �� EA F��F��A \ A   � � FA� �� \� ZA    �A �  D@�D  � \� Z  ��EA FA�F���� � � @ � �� �� ����E @ �� ��B    � ��B� AB �   ���\A� �FB � \A EA FA�F���� ��  ��� ��� �� ��Ɂǎ\A��
��G@
�FA� �A \�  �� �AA ZA    �A� �A �AD��D�� 
�  EB FB�F����	 \� 	B�EB FB�F���B
 \� 	B�T�@�� �A�
 ZB    �C�	B��A�� �  �@ �A �����A  � .      require 	   nixio.fs 
   luci.http    /tmp/firmware.img    setfilehandler    luci    dispatcher    test_post_security    unlink 
   formvalue    cancel 	   redirect 
   build_url    admin/system/flashops 	   tonumber    step 	   	   template    render    admin_system/upgrade 	   checksum    storage    size    stat 	       keep    admin_system/flashops    reset_avail    upgrade_avail    image_invalid 	      1        -n    admin_system/applyreboot    title    i18n 
   translate    Flashing...    msg �   The system is flashing now.<br /> DO NOT POWER OFF THE DEVICE!<br /> Wait a few minutes before you try to reconnect. It might be necessary to renew the address of your computer to reach the device again, depending on your settings.    addr    192.168.1.1 
   fork_exec 9   killall dropbear uhttpd; sleep 1; /sbin/sysupgrade %s %q        �   �        �   �@  ��    �� @ @�@�ŀ  ���� A ܀��   �   �   @�Z   � ��   �@�@� �@��   �    ��   � ��   ˀ��@  �       name    image    io    open    w    write    close                                 )  4     "      A@  � E�  F�� F � �@ � � �  �AB�� EA F���� \ �@  �� �\@�E�  F�� F � �@ \@ E�  F�� F�� F � �   ŀ  ����@�\@� �       ltn12_popen )   sysupgrade --create-backup - 2>/dev/null    luci    http    header    Content-Disposition +   attachment; filename="backup-%s-%s.tar.gz"    sys 	   hostname    os    date 	   %Y-%m-%d    prepare_content    application/x-targz    ltn12    pump    all    write                     6  X     5      A@  � E   ��  \� ��  � �� d    �   A A �A�A�� A  � �B @ A  � A� A� �    �T @��@�EA F�FA��� \A E� F�����\A EA F��F��\A�  � F� �A ��A�AE�� � \A   �       require 	   nixio.fs 
   luci.http    /tmp/restore.tar.gz    setfilehandler    luci    dispatcher    test_post_security    unlink 
   formvalue    archive 	    	   template    render    admin_system/applyreboot    os    execute !   tar -C / -xzf %q >/dev/null 2>&1    sys    reboot 	   redirect 
   build_url    admin/system/flashops        =  G       �   �@  ��    �� @ @�@�ŀ  ���� A ܀��   �   �   @�Z   � ��   �@�@� �@��   �    ��   � ��   ˀ��@  �       name    archive    io    open    w    write    close                                 Z  g    $      ��    ��   @@ �@ A�  ��  �   �@�ƀ�� ܀ �� ��   �@�ƀ�A ܀ �� ���B�@�  A@ @  � � �C E   F � F@� �� \  @   �       luci 	   template    render    admin_system/applyreboot    title    i18n 
   translate    Erasing...    msg \   The system is erasing the configuration partition now and will reboot itself when finished.    addr    192.168.1.1 
   fork_exec ;   killall dropbear uhttpd; sleep 1; mtd -r erase rootfs_data    http 	   redirect    dispatcher 
   build_url    admin/system/flashops                     i  w     #      @@ �@ A�  � E   F@� F�� �  \� �  @  @ �Z   ��@   ��   �@�ƀ���� @  ܀�� �  ��@ �   ƀ���� JA  I����@� �       luci    http 
   formvalue    pwd1    pwd2    sys    user 
   setpasswd    root 	
   	   template    render    admin_system/passwd    stat                     y  {           @@ �@ @�  �       luci    sys    reboot                     }  �    3   E   F@� \�� @ �@ � � �
���  
��   ��@�  �@ �   �@A�� � ����   ���   � �  E  FA��@��   � �  E  F���@��   � �  E  F���@�� C܀ ���@ �ˀC�@ �   ��� AA �  �@  �       nixio    fork 	       chdir    /    open 
   /dev/null    w+    dup    stderr    stdout    stdin    fileno 	      close    exec    /bin/sh    -c                     �  �    %   E   F@� \�� �   ƀ�܀� ���@�AA  d    �   �   ^ #  @�����  AA@ �  ��AA�� A AA   �AA �A �  A  � 
      nixio    pipe    fork 	       close    dup    stdout    exec    /bin/sh    -c        �  �    "       @ �@  ��E�  F�� � � �  \���  �@  @�Z   � �@A@ �� � �      ��   � �@ �  ���  �    ��   ����@ � ��   �       read 	      nixio    waitpid    nohang    exited 	       close                                         