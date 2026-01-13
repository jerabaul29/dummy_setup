echo "Dummy setup start..."
echo ""

# show basic stats
echo "date:"
date
echo ""

echo "pwd:"
pwd
echo ""

echo "install nvm, node, copilot cli"
echo "--- nvm"
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.1/install.sh | bash
source ~/.bashrc
echo "--- node"
nvm install node
echo "--- copilot cli"
npm install -g @github/copilot
echo ""

# if I wanted to create a folder, add a file, write to it, I would for example:
#   mkdir -p $HOME/some_location
#   touch $HOME/some_location/myfile
#   echo "writing" >> $HOME/some_location/myfile

echo "... dummy setup end"
