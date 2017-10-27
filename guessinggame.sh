file_count=$(ls -1 | wc -l)
loop_count=0
# Test input
echo "Starting script in $(pwd) with code $file_count."

keep_trying=0
while [[ $keep_trying -eq 0 ]] ; do
    if [[ $loop_count -eq 0 ]] ; then
        echo "How many files do you think are in the current directory?"
        echo "(Please make your best guess):"

    else
        echo "Please make your best guess again:"

    fi
    read response
#    clear

    if [[ $response -gt $file_count ]] ; then
        echo "Sorry, your guess of $response was a little high."

    elif [[ $response -lt $file_count ]] ; then
        echo "Sorry, your guess of $response was a little low."

    else
        echo "Congratulations!!! your guess of $response was spot on."
        keep_trying=1

    fi

done