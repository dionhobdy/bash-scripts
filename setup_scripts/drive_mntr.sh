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

cd ~/ext_drives || exit 1

while true; do
    # list all mountable drives and their mountpoints
    lsblk

    echo #

    # prompt user asking if they want to mount a drive
    read -p "Would you like to mount a drive? (y/n): " mount_choice

    case "$mount_choice" in
        [yY]|[yY][eE][sS])
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
                echo "🚫 Mounting cancelled. Exiting script."
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
        [nN]|[nN][oO])
            echo "🚫 No drive will be mounted. Exiting script."
            echo #
            break
            ;;
        *)
            echo "⚠️ Invalid choice. Please enter y or n."
            echo #
            ;;
    esac

    echo #
done
