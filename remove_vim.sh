echo "This sample will check all vim packages in your system."
SAVING_PATH='./vim_pkgs.txt'

if [[ -f $SAVING_PATH ]];then
	rm $SAVING_PATH
fi
echo "All vim's package will store in $SAVING_PATH"
# dpkg -l | grep vim
dpkg-query -f '${Package} ' -W 'vim*' > $SAVING_PATH

VIM_PKGS=$(cat $SAVING_PATH)
echo -e "Show packages list: $VIM_PKGS\n"

printf "Do you want to remove vim ? [Y/n]: "
read OPT

if [[ $OPT = "Y" ]];then
	sudo apt-get remove $VIM_PKGS
fi
echo "Done"
