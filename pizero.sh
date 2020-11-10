sudo apt-get install gawk wget git-core diffstat unzip texinfo gcc-multilib build-essential chrpath socat cpio python3 python3-pip python3-pexpect xz-utils debianutils iputils-ping python3-git python3-jinja2 libegl1-mesa libsdl1.2-dev pylint3 xterm -y
#export BRANCH="warrior"  
export BRANCH="zeus"
mkdir raspberrypi && cd raspberrypi
repo init -u https://github.com/mendersoftware/meta-mender-community -m meta-mender-raspberrypi/scripts/manifest-raspberrypi.xml -b ${BRANCH}
repo sync
source setup-environment raspberrypi
MACHINE=raspberrypi0-wifi bitbake core-image-base
