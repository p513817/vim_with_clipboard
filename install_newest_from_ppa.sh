echo "[1] Before install, you have to remove all via `check_vim.sh` in advance."
echo "[2] You can found another way to install `vim` in `build_from_source.sh`."
echo "[3] Notice that: many confirm options have to be confirmed during installation"

echo "Checking software command"
sudo apt-get install software-properties-common -qy

echo "Add Newest Repository"
sudo add-apt-repository ppa:jonathonf/vim

echo "Update"
sudo apt-get update -q

echo "Install Newest"
sudo apt-get install vim vim-gnome -qy
