all :
	grub-mkfont --name='Terminus-grub' --size=14 --output='boot/grub/themes/dist-common/terminus-grub_14.pf2' '/usr/share/fonts/opentype/terminus/terminus-normal.otb'
	grub-mkfont --name='Inter-grub' --size=20 --output='boot/grub/themes/dist-common/inter-grub_regular_20.pf2' '/usr/share/fonts/opentype/inter/Inter-Regular.otf'
	grub-mkfont --name='Inter-grub' --size=17 --output='boot/grub/themes/dist-common/inter-grub_regular_17.pf2' '/usr/share/fonts/opentype/inter/Inter-Regular.otf'
	grub-mkfont --name='Inter-grub' --size=34 --output='boot/grub/themes/dist-common/inter-grub_bold_34.pf2' '/usr/share/fonts/opentype/inter/Inter-Bold.otf'
