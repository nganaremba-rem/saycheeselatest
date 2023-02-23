echo "Press 1 for Phone or Press 2 for Computer"
read -r device
if [ $device == "1" ]; then
apt install git -y
apt install httrack -y
apt install php -y
elif [ $device == "2" ]; then
sudo apt install git -y
sudo apt install httrack -y
sudo apt install php -y
else
exit 1
fi
if [ ! -e "~/ngrok" ]; then
cd ~
git clone https://github.com/remku/ngrokold
cd ngrokold
bash Install.sh
fi
cd ~
cp -R ngrok saycheese
cd saycheese
chmod 7777 saycheese.sh
echo "Type 'bash saycheese.sh' to Run"
read -r run
$run
