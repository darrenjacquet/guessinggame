function main {
    file_count=$(ls -1 | wc -l)
    loop_count=0

    keep_trying=0
    while [[ $keep_trying -eq 0 ]] ; do
        show_prompt $loop_count
        read response

        process_response $response

    done
}

function show_prompt {
    if [[ $loop_count -eq 0 ]] ; then
        echo "How many files do you think are in the current directory?"
        echo "(Please make your best guess):"
        loop_count=1

    else
        echo "Please make your best guess again:"

    fi
}

function process_response {
    if [[ $response -gt $file_count ]] ; then
        echo "Sorry, your guess of $response was a little high."

    elif [[ $response -lt $file_count ]] ; then
        echo "Sorry, your guess of $response was a little low."

    else
        echo "Congratulations!!! your guess of $response was spot on."
        keep_trying=1

   fi
}

main