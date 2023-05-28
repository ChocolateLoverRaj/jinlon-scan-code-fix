#!/bin/bash
# From https://stackoverflow.com/a/246128/11145447
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

sudo cp $SCRIPT_DIR/90-custom-keyboard.hwdb /etc/udev/hwdb.d/90-custom-keyboard.hwdb
sudo systemd-hwdb update
sudo udevadm trigger

echo "Added custom scan code mappings to fix keys for jinlon. Changes will take effect after you reboot."
echo "If this script didn't work, create an issue at https://github.com/ChocolateLoverRaj/jinlon-scan-code-fix/issues"
