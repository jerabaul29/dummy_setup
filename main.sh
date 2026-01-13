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
# sourcing is the usual way to do it, but does not work within the script (probably because of bashrc interactive session check)
# source ~/.bashrc
# load nvm explicitly!
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
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
