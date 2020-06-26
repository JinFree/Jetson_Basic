#!/bin/bash
cd
git clone https://github.com/JetsonHacksNano/installVSCode.git
cd installVSCode
./installVSCode.sh
echo "alias VSCODE=code-oss" >> ~/.bashrc
#!/bin/sh
source ~/.bashrc
