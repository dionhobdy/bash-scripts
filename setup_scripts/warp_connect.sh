: ' 
    WARP_CONNECT 
    Bash script used to manage server connection to Cloudflare WARP Client.

    Frontend/Backend Goals:
    1. Create and print script title. ✔
    2. Set an array of functions and print each function by line.
    3. Prompt user to input available function. ✔
    4. Listen and follow input. ✔
    5. Make while loop recursive, so user does not exit script unless requested.
    6. Implement all function goals.
    7. Use error listening and handling.

    Function Goals:
    1. Connect - Disconnect ✔
    2. Help ✔
        ↳ Include a brief tutorial on warp-cli usage.
    3. Exit
    4. Families Full
        ↳ Indicate that all Families features are in use.
    5. Families Malware
        ↳ Indicate that only Families malware protection is in use.
    6. Families Off
        ↳ Indicate that Families features are not in use.
    7. DNS Only ✔
    8. WARP with DoH
    9. Status ✔

    WARP Client Docs:
    https://developers.cloudflare.com/warp-client/get-started/linux/

'

echo "
██     ██  █████  ██████  ██████           ██████  ██████  ███    ██ ███    ██ ███████  ██████ ████████ 
██     ██ ██   ██ ██   ██ ██   ██         ██      ██    ██ ████   ██ ████   ██ ██      ██         ██    
██  █  ██ ███████ ██████  ██████          ██      ██    ██ ██ ██  ██ ██ ██  ██ █████   ██         ██    
██ ███ ██ ██   ██ ██   ██ ██              ██      ██    ██ ██  ██ ██ ██  ██ ██ ██      ██         ██    
 ███ ███  ██   ██ ██   ██ ██      ███████  ██████  ██████  ██   ████ ██   ████ ███████  ██████    ██   
"
echo
echo "Script by Dion Hobdy"
echo

# Array of available functions and their number.
array=("1.connect" "2.disconnect" "3.dns" "4.help" "5.status")
echo "Number Function"
echo "---------------"
# Iterate through the function array and print to console.
for x in ${array[@]}; do
    echo $x
done

# While loop used with the exit condition. Await input from user. 
while true; do
    echo
    # Indicate to use to input a option.
    read -p "select option " op
    echo
    # Read for function query from user.
    case $op in
        # If connect, connect to WARP Client.
        [1connect]* ) warp-cli connect
            echo "Connected To WARP Client"; exit;;
        # If disconnect, disconnect from WARP Client.
        [2diconnect]* ) warp-cli disconnect
            echo "Disconnected From WARP Client"; exit;;
        # If dns, switch WARP Client to DNS only mode.
        [3dns]*) warp-cli mode doh
            echo "WARP Client Switched To DNS Only Mode"; exit;;
        # If help, display the list of available commands and show user how to use warp-cli.
        [4help]*) warp-cli --help
        echo
        echo "If Using A Different Command Use warp-cli <command>."; exit;;
        # If status, display the status of connection to WARP Client
        [5status]*) curl https://www.cloudflare.com/cdn-cgi/trace/
            echo
            echo "If warp=on You Are Connected To WARP Client"; exit;;
        # If user answers neither, let the user know that they need to enter yes or no.
        * ) echo "Invalid response. Please enter a function.";;
        # Escape when exit condition is met.
        esac
    done