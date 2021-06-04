#!/bin/bash

echo "Make sure you're root before installing the tools"
sleep 5s
clear
echo "Installing all dependencies"
cd
sudo apt-get install git
sudo apt-get install python3
sudo apt-get install python3-pip
sudo apt-get install golang-go
sudo apt install cmake
sleep 2s
clear
echo "Installing python tools"
mkdir ~/tools
git clone https://github.com/devanshbatham/OpenRedireX.git ~/tools/OpenRedireX && cd ~/tools/OpenRedireX && sudo pip3 install -r requirements.txt
git clone https://github.com/defparam/smuggler.git ~/tools/smuggler
git clone --depth 1 https://github.com/sqlmapproject/sqlmap.git ~/tools/sqlmap/
git clone https://github.com/ameenmaali/urldedupe.git ~/tools/urldedupe && cd ~/tools/urldedupe && cmake CMakeLists.txt && make && mv urldedupe /usr/bin/
cd
clear
echo "All python tools are installed"
sleep 2s
echo "Installing go-lang tools"
GO111MODULE=on go get -u -v github.com/bp0lr/gauplus
go get github.com/tomnomnom/waybackurls
go get -u github.com/ffuf/ffuf
go get github.com/Emoe/kxss
go get -u github.com/tomnomnom/qsreplace
cd ~/tools/ && git clone https://github.com/projectdiscovery/notify.git; cd notify/cmd/notify; go build; mv notify /usr/bin/
cd ~/tools/ && git clone https://github.com/hahwul/dalfox && cd dalfox && go install
cd ~/tools/ && git clone https://github.com/dwisiswant0/crlfuzz && cd crlfuzz/cmd/crlfuzz && go build . && sudo mv crlfuzz /usr/bin/
cd ~/tools/ && git clone https://github.com/projectdiscovery/nuclei.git && cd nuclei/v2/cmd/nuclei && go build && mv nuclei /usr/bin/
cd
go get -u github.com/tomnomnom/anew
go get -u github.com/tomnomnom/gf
mkdir ~/.gf
cp -r ~/go/src/github.com/tomnomnom/gf/examples ~/.gf/
echo 'source ~/go/src/github.com/tomnomnom/gf/gf-completion.bash' >> ~/.bashrc
git clone https://github.com/1ndianl33t/Gf-Patterns
mv ~/Gf-Patterns/*.json ~/.gf
sudo cp ~/go/bin/* /usr/bin/
nuclei -update-templates
mkdir -p ~/tools/payloads/
cd ~/tools/payloads/
wget https://raw.githubusercontent.com/R0X4R/Garud/master/payloads/lfi.txt
wget https://raw.githubusercontent.com/R0X4R/Garud/master/payloads/ssti.txt
cd
sleep 2s
clear
echo -e "Please add your slack webhook in ~/.config/notify/notify.conf file"
