# --
# Environmental Preferences
# --
## Remove default apps from Dock
defaults delete com.apple.dock persistent-apps
killall Dock

# --
# Directories
# --
## ~/Developer
DIRDEV="${HOME}/Developer"
if [ ! -d $DIRDEV ]; then
	mkdir $DIRDEV
fi

## ~/Sites
DIRSITES="${HOME}/Sites"
if [ ! -d $DIRSITES ]; then
	mkdir $DIRSITES
fi

# --
# Command Line Tools
# --
echo "- Checking for 'Command Line Tools'..."
which xcode-select
if [ $? -ne 0 ]; then
	xcode-select --install
fi
echo

# --
# homebrew
# --
echo "- Checking for 'Homebrew'..."
which brew
if [ $? -ne 0 ]; then
	ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi
echo
