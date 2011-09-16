SESSIONS="work play"

function has-session {
    tmux has-session -t $1 2>/dev/null
}

function except 
{
    if [ "$?" -eq 1 ] ; then
        $1
    fi
}

# Configure your sessions here
function session-work
{
    tmux new-session -d -s work
    tmux neww -k -t work:1
}

function session-play
{
    tmux new-session -d -s play
    tmux neww -k -t play:1
}

#
#MAIN 
for x in $SESSIONS
do
    echo $x
    has-session $x
    except session-$x
done

