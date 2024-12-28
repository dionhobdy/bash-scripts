# Mount_Drives is a tool used to mount external drives to specified locations.

# Wow the user with a cool title and let them know who written the script.
echo "
 __   __  _______  __   __  __    _  _______          ______   ______    ___   __   __  _______  _______ 
|  |_|  ||       ||  | |  ||  |  | ||       |        |      | |    _ |  |   | |  | |  ||       ||       |
|       ||   _   ||  | |  ||   |_| ||_     _|        |  _    ||   | ||  |   | |  |_|  ||    ___||  _____|
|       ||  | |  ||  |_|  ||       |  |   |          | | |   ||   |_||_ |   | |       ||   |___ | |_____ 
|       ||  |_|  ||       ||  _    |  |   |          | |_|   ||    __  ||   | |       ||    ___||_____  |
| ||_|| ||       ||       || | |   |  |   |   _____  |       ||   |  | ||   |  |     | |   |___  _____| |
|_|   |_||_______||_______||_|  |__|  |___|  |_____| |______| |___|  |_||___|   |___|  |_______||_______|
"
echo
echo "Script by Dion Hobdy"
echo
# List the available drives for the user to select.
lsblk

# While loop used with the exit condition of user not needing to mount a drive.
while true; do
    echo
    # Ask the user if there is a drive they would like to mount.
    read -p "Mount a drive? [y/n] " yn
    echo
    # Read for a Y or N query from user.
    case $yn in
        # If yes, ask the user for drive name and desired location.
        [Yy]* ) read -p "Enter name of drive: " drive;
                read -p "Enter the folder location: " location;
                echo
                sudo mount /dev/$drive $location; break;;
        # If no, state that user is exiting script and thank them for using Mount_Drives.
        [Nn]* ) echo "Exiting. Thank you for using Mount_Drives!"; exit;;
            # If user answers neither, let the user know that they need to enter yes or no.
        * ) echo "Invalid response. Please enter y or n.";;
        # Escape when exit condition is met.
        esac
    done


