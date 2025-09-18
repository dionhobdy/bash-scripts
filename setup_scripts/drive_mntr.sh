#!/bin/bash
# drv_mntr.sh
# a simple script to display drive information and mount drives

cat <<EOF
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡀⠀⠄⠠⢀⠀⠀⠄⠀⠠⠐⠠⠁⢆⡘⠠⢓⠄⡂⠆⡘⠄⠰⠀⠐⢂⠀⠄⢢⠌⠲⢩⡐⠄⡂⠤⠐⠀⠠⢀⠐⠀⡀⠀⠀⠀⡀⢀⠠⠀⠔⠠⢰
⠀⠀⠀⠀⠀⠀⠀⠀⠀⡀⠁⢄⡐⠀⠌⠁⠄⠂⠀⠂⠁⠀⠄⠀⡁⠂⠠⢁⠊⠰⠐⡠⠁⠘⡀⠀⠀⡀⠡⠘⠤⠊⠑⡄⡛⠤⣁⠆⡐⠈⠀⡀⠄⠁⠠⢀⠡⠐⠀⠄⢂⠉⡔⢢⢧
⠀⠀⠀⠁⠠⠐⠀⠄⠂⠄⠑⠠⠀⢉⠀⠂⠐⠈⠄⡀⠀⠀⠀⢀⠀⠀⠀⠄⠀⠁⠀⠁⠀⠐⢁⠀⠀⡀⠄⠈⠀⡐⠀⠀⢣⠑⠂⠌⡀⢂⠡⢀⠌⡠⢑⠀⠂⡁⡐⢌⠰⠈⡴⣛⢮
⠀⢀⠠⠐⠠⢂⢁⠊⠐⠈⠈⠀⠌⠀⠁⠀⠀⠀⠀⠁⠀⠀⠀⠀⠀⠈⠀⠀⠐⠀⠂⠀⠀⡈⠀⠀⠀⠀⠈⠀⡀⠀⠁⠀⠐⢀⡉⠀⠄⠠⠀⡈⠤⡁⢆⠈⡐⠠⠌⡠⢂⡹⣖⣭⡿
⠀⠤⢀⠢⠁⠂⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠄⠀⠀⢁⠂⠀⢀⠀⠀⠠⠀⠐⠈⠀⢀⠀⠀⠀⠀⠀⠡⠐⡡⢉⠢⢡⠐⡁⠆⡑⢦⣟⡾⣿⣿
⠀⠂⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⠈⠀⠌⠀⠀⠂⢀⠀⠡⠀⠀⠀⠀⠄⠀⠀⠈⠀⠀⠀⠈⠀⡁⠡⠈⠦⠑⡖⣌⠢⡙⣼⣽⣿⣿⣿
⠀⠀⠁⠠⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⠡⢀⠂⠌⡄⠀⠠⠘⠀⢠⠀⠀⡄⠐⠀⠄⠀⠀⠀⠀⢀⠀⠀⠂⠄⠐⠈⠀⠀⠈⠔⢣⣙⣶⣿⣿⣿⣿
⠀⠠⢄⣡⠀⠀⠀⢀⠂⠀⠀⠀⠀⠀⠈⠈⠃⠀⠀⠀⠀⠀⠀⢌⠰⣈⠤⣂⠆⡌⢂⠰⠌⠐⡈⠐⠀⠐⢀⠠⢙⡰⡈⡀⢀⠐⠀⠂⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠠⣙⣿⣿⣿⣿⣿
⢀⠒⡬⢑⡂⠀⠀⠌⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡁⠀⠀⠈⢲⡱⣲⣡⠞⠐⣊⢡⠎⢠⢠⢡⠀⡈⠂⠱⣄⠃⡟⡥⣠⠞⠀⠀⠀⠀⢀⠠⢠⡀⠀⢢⠀⠀⠂⣜⣻⣿⣿⣿⣿
⠀⢎⠐⠯⠳⡄⠄⠀⡁⠀⠀⠀⠀⠀⠀⠄⠀⠀⠀⠀⠆⠀⠀⠀⠀⡳⡗⣦⢋⢜⣠⠇⣮⣑⡈⡼⢅⠰⡱⣎⡊⠢⡜⡸⣿⠄⠀⠀⠀⠀⠠⠀⠀⠀⠀⠀⣳⠀⢄⢪⡿⣿⣿⣿⣿
⢈⢂⠸⠰⡍⢳⡎⡄⠁⢀⠀⠀⠀⠀⠀⠀⠀⠀⡔⠈⠀⠀⠀⠀⠀⢁⠿⣔⣋⢮⣥⣛⡖⣼⣑⢎⡳⢯⣵⣿⣷⡖⣼⣷⣽⠀⠀⠄⠀⠀⠀⢀⠀⠀⠀⠀⢸⡅⢈⢸⣿⡝⣿⣿⣿
⠀⠠⢀⠡⠘⡤⢛⡽⣳⣦⣥⣀⣀⣄⠀⣠⠄⠓⣀⣀⣄⠠⢀⠀⠀⢈⠳⡜⢮⡷⣝⡾⣽⡳⢯⡖⡦⢿⣻⢧⡿⣟⣻⣯⠯⡀⠀⠘⡀⠀⠈⠉⠀⠀⠀⢠⡿⠀⡈⣾⣿⣿⣻⣿⣿
⠀⠠⠀⠈⠁⠀⡉⠐⡱⢚⣻⢛⣿⣻⣿⣟⣿⣿⡿⢻⣋⠷⣡⡟⡀⢌⢳⢩⢧⣋⡷⢭⣲⣏⢳⡜⣹⠳⣜⡳⢾⣙⡿⣿⡃⡡⣄⢢⠐⠄⠀⠀⠀⢀⡰⠟⠁⢐⣿⣿⡿⣿⣳⣿⣿
⠀⠀⠀⠀⠀⢀⠀⠂⡁⠌⡌⡻⣔⢯⣚⣛⣳⣾⣟⡭⢇⣾⢷⠿⠄⠌⣧⣛⢾⡵⢯⣛⠷⡘⢇⡜⢆⡏⣞⢭⡓⢿⣿⣷⡱⠨⢹⣧⣽⣿⣷⣦⣷⣦⣶⣶⣾⣿⣿⣻⡟⣥⡳⣿⣿
⠀⠀⡀⢀⢈⢀⡀⠠⠐⠠⠒⠔⠈⠌⠫⠜⡵⢋⠶⢹⠮⣝⡽⡏⣎⠳⣌⣹⢎⠿⡭⠞⢂⠍⡒⢌⠦⡹⣜⠲⡝⡄⠻⣿⡷⢄⠠⢵⡌⡻⢿⡝⢯⠿⣿⣿⣿⢿⣙⠕⡚⢰⡽⣿⣿
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡈⠈⠁⢂⠰⢉⠲⣡⢯⡿⣯⣼⣬⡗⢾⡭⡞⡸⠐⡐⢀⠊⠴⣉⣖⠳⣜⡳⣝⡞⣤⠹⣿⣄⣀⣠⣥⡕⠘⢏⢦⡙⣾⢵⢮⡙⠠⠡⡘⠶⣽⣿⣿
⠀⠀⠘⠀⠀⠀⠀⠀⠀⠀⠘⠀⠀⠀⢀⠃⡘⠰⠇⠷⣞⡾⣶⢿⣿⣟⣻⣇⠟⡳⠃⠀⠀⠀⠆⠀⠀⡛⠛⠃⢛⠈⠠⠶⠸⣿⣿⣿⡿⢿⠸⡆⠱⠈⡛⠶⡆⠠⠃⣄⢹⢻⣾⣿⣿
⠀⠀⠀⠂⠀⠀⠀⠀⠀⠀⠀⠀⠀⠐⠂⠠⠐⠊⢍⠣⣻⢾⣻⣯⡟⢿⠽⡆⠀⠑⠀⠀⠀⠀⠀⠈⠀⡀⠁⢀⠀⠀⠀⠀⠀⢸⣿⣿⣿⣿⢎⠈⣄⠀⠁⠀⠐⡡⢡⢎⢧⣻⣿⣿⣿
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠁⠈⢁⠦⣙⢼⢻⡵⡚⣽⣻⣿⣿⣦⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣼⣿⣿⣿⣿⣿⡓⠈⢂⠀⠀⠄⠀⢣⠞⣞⣿⣿⣿⣿
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡀⠄⠂⡄⢣⡎⢤⣒⠉⠎⡴⢋⢦⠝⢎⡿⢿⣿⣠⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣴⣾⣿⣿⣿⣿⣻⡷⣔⠔⠀⢀⠀⢀⠃⢎⡽⣿⣿⣿⣿⣿
⠀⠀⠄⠀⠀⠀⠀⠀⠀⠀⠠⠐⠀⠂⠐⡈⠆⣉⡘⣨⢇⢝⡲⢋⠤⣩⣶⠼⣫⢞⣽⣿⣶⣆⠀⠀⠀⠀⠀⠀⢀⣀⣿⣿⣿⣝⣾⣷⣿⣅⢟⡝⢿⣦⡁⠢⠜⡌⣧⣟⣿⣿⣿⣿⣿
⠀⠀⠀⠀⠈⠀⠀⠀⠀⠐⠀⠀⠀⢂⡵⣬⡙⢜⢳⠣⡞⠥⠓⢊⠠⡡⢂⣛⣲⣙⢻⣻⢿⣿⣷⡀⠀⠀⠀⡀⢾⠻⣯⣻⣿⡿⠻⣶⠫⢿⢬⣝⢮⣯⠩⡦⢏⠘⣗⣺⣿⣿⣿⣿⣿
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⣁⠋⠂⠐⠀⠀⠊⠠⣐⠠⢁⡤⠖⡑⣒⠣⢃⡖⣚⠯⣓⢋⢉⡾⠟⠀⠀⠰⠿⡲⢽⣌⣻⣿⠿⣿⢯⣅⣎⣡⠙⠄⠪⣷⣶⡈⢑⣈⠳⢿⣿⣿⣿⣿
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡀⢀⠈⣠⠡⠐⠡⠓⠒⠜⠒⠋⠒⠈⠌⣀⠱⣈⠜⣂⢳⠤⡉⠎⡐⡁⠂⠀⠐⡀⠃⢶⡧⣄⣍⠳⣲⡬⠙⢛⠻⣶⢾⣴⡘⠧⣙⠦⢭⣿⣷⣾⣿⣿⣿
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠂⠎⠀⠁⠀⠁⠀⠈⢀⠠⢀⠘⣀⠰⢈⡒⢀⠞⠉⡐⠒⠁⠂⠘⠀⠀⠀⠀⠃⢙⢆⢻⣤⡙⠷⠀⠹⣳⡀⢔⠀⠂⢹⡿⢢⡍⣖⡈⢛⠿⣿⣿⣿⣿
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠐⡀⠄⡠⠈⠐⠀⠁⠈⢀⠠⠀⠁⠀⢊⠀⡎⠑⠀⠀⠀⠀⠀⠀⠀⠀⠈⠀⠚⡸⣍⠋⢂⢥⠀⠀⠪⠘⣕⠲⢌⡉⢣⢞⣩⢿⣿⣿⣾⣝⣿⣿
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠁⠀⠀⠀⠀⠀⠀⠀⢀⠀⠀⠂⠀⠀⠀⠀⠀⠀⠀⢀⠄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢓⠈⡌⠂⡵⠸⣧⠽⣄⠲⢌⠨⣄⢉⣿⣿⣿⣿⣿⣿⣿
⠀⠀⠀⠐⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠠⠀⠠⡆⠠⠂⠀⠄⠀⠠⠐⠀⢄⡀⢊⠒⡌⢰⠈⣈⠳⠏⡲⢦⡀⠙⢶⣣⣔⣝⡿⣿⣿⣿⣿
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡀⠂⠀⢀⠁⢠⠁⠁⢂⠐⠀⣆⠈⠤⢈⠲⡀⠁⠘⠤⢅⢢⣁⠂⡑⠣⡍⠴⠈⣟⣛⢷⣯⣻⣿⣿⣿
⠀⠄⡀⠂⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡀⢂⠂⠂⠌⢠⠄⠂⠀⡴⢉⠃⡘⠂⠐⠈⡐⠰⠀⠈⠂⠌⢁⠈⣁⠐⡒⣣⣿⣿⣿⣿⣿⣿⣿⣿
⠐⡈⠔⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠐⠈⠀⠂⠀⠀⠐⠀⠐⠀⠀⠀⠀⠀⠀⠀⠀⠂⠀⠈⠠⢄⠢⡽⣽⢿⣻⢿⣿⣿⣿⣿⣿
⠐⡈⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠂⠀⠁⠈⠀⠠⠑⣎⢳⡭⢿⣻⡟⣎⢿⣻⣿⣿⣿
⠀⠠⠐⠀⠐⠀⠀⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠠⠀⠒⠀⠁⠂⠄⠁⠎⡁⢚⣌⡿⣷⣯⠱⣍⠶⡹⢿⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
 ______   ______    __   __          __   __  __    _  _______  ______   
|      | |    _ |  |  | |  |        |  |_|  ||  |  | ||       ||    _ |  
|  _    ||   | ||  |  |_|  |        |       ||   |_| ||_     _||   | ||  
| | |   ||   |_||_ |       |        |       ||       |  |   |  |   |_||_ 
| |_|   ||    __  ||       |        |       ||  _    |  |   |  |    __  |
|       ||   |  | | |     |  _____  | ||_|| || | |   |  |   |  |   |  | |
|______| |___|  |_|  |___|  |_____| |_|   |_||_|  |__|  |___|  |___|  |_|
A script by Dion Hobdy [ https://github.com/dionhobdy ]

EOF
echo #

# backup fstab, keeping only the 5 most recent backups
echo "💾 Backing up /etc/fstab..."
sudo ls -t /etc/fstab.bak.* | tail -n +6 | xargs sudo rm -f
sudo cp /etc/fstab "/etc/fstab.bak.$(date +%Y%m%d%H%M%S)"
echo "✅ Backup complete."
echo #

# create ~/ext_drives directory if it doesn't exist
if [ ! -d "~/ext_drives" ]; then
    echo "📂 Creating ~/ext_drives directory..."
    mkdir ~/ext_drives
    echo #
fi
echo "📁 Changing to ~/ext_drives directory..."
cd ~/ext_drives || exit 1

while true; do
    # list all mountable drives and their mountpoints
    lsblk

    echo #

    # prompt user asking for input
    read -p "(M)ount drive, (U)nmount drive, or (E)xit? [M/U/E]: " mount_choice

    case "$mount_choice" in
        [uU]|[uU][nN][mM][oO][uU][nN][tT])
            # list currently mounted drives
            echo #
            # prompt user to enter the device name to unmount
            read -p "Enter the device name to unmount [e.g. sdX1]: " unmount_device
            echo #
            # unmount the specified device
            sudo umount "/dev/$unmount_device"
            echo "✅ Unmounted /dev/$unmount_device"
            echo #
            ;;
        [mM]|[mM][oO][uU][nN][tT])
            # prompt user to select a listed
            read -p "Enter the device name [e.g. sdX1]: " device
            echo #
            echo "🔍 Checking device information for /dev/$device..."
            echo #
            # display detailed information about the selected drive using file, blkid, hexdump, and fdisk
            sudo file "/dev/$device"
            sudo blkid "/dev/$device"
            echo #
            sudo hexdump -C "/dev/$device" | head
            echo #
            sudo fdisk -l "/dev/$device"
            echo #
            echo "📂 Listing contents of /dev/$device (read-only)..."
            echo #
            # list contents of the drive by temporarily mounting the drive
            sudo mkdir /mnt/temp
            sudo mount -o ro "/dev/$device" /mnt/temp
            ls /mnt/temp
            sudo umount /mnt/temp
            echo #
            # confirm that the user would want to mount the drive
            read -p "Are you sure you want to mount $device? (y/n): " confirm_mount
            # if the user does not confirm dive mount, cancel and exit
            if [[ ! "$confirm_mount" =~ ^[yY]|[yY][eE][sS]$ ]]; then
                echo "🚫 Mounting cancelled."
                echo #
                break
            fi
            # prompt user to enter a mountpoint
            read -p "Enter the mount point [e.g. mydrive]: " mount_point
            echo #
            sudo mkdir -p "$mount_point"
            # mount the selected drive to the mountpoint
            sudo mount "/dev/$device" "$mount_point"
            echo #
            echo "✅ Mounted $device at $mount_point"
            echo #
            # ask user if they want to make the mount permanent by adding it to /etc/fstab
            read -p "Do you want to make this mount permanent (auto-mount on reboot)? (y/n): " persist_choice
            if [[ "$persist_choice" =~ ^[yY]|[yY][eE][sS]$ ]]; then
                # get UUID of the device
                uuid=$(sudo blkid -s UUID -o value "/dev/$device")
                # get filesystem type
                fstype=$(sudo blkid -s TYPE -o value "/dev/$device")
                # create fstab entry
                fstab_entry="UUID=$uuid /home/ext_drives/$mount_point $fstype defaults 0 2"
                # backup fstab before modifying
                sudo cp /etc/fstab /etc/fstab.bak
                # append entry to fstab
                echo "$fstab_entry" | sudo tee -a /etc/fstab > /dev/null
                echo "📌 Persistent mount added to /etc/fstab:"
                echo "$fstab_entry"
            else
                echo "🕒 Mount will not persist after reboot."
            fi
            ;;
        [eE]|[eE][xX][iI][tT])
            echo "👋 Exiting script. Goodbye!"
            break
            ;;
        *)
            echo "⚠️ Invalid choice. Please enter [M/U/E]."
            echo #
            ;;
    esac

    echo #
done
