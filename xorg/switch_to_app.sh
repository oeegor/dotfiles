#!/bin/bash

# What it does:

#     gets the current desktop number
#     searches current desktop for the given name (parameter one)

#     then, depending on the result:
#         either switches to found app
#         or launches given app (parameter two)

# Usage (expecting the script name to be switch_to_app:

# switch_to_app LookForThisString LaunchThisIfNotFound

# eg

# switch_to_app Chromium chromium-browser

# EDIT: more awesome version - when you launch the command again (eg press the keystroke again), it cycles to another instance of the window
# source: https://askubuntu.com/questions/272566/wmctrl-ignore-other-workspaces/274231#274231

echo "switch to app called $@"

app_name=$1
workspace_number=`wmctrl -d | grep '\*' | cut -d' ' -f 1`
win_list=`wmctrl -lx | grep -i $app_name | grep " $workspace_number " | awk '{print $1}'`

active_win_id=`xprop -root | grep '^_NET_ACTIVE_W' | awk -F'# 0x' '{print $2}' | awk -F', ' '{print $1}'`
if [ "$active_win_id" == "0" ]; then
    active_win_id=""
fi

# get next window to focus on, removing id active
switch_to=`echo $win_list | sed s/.*$active_win_id// | awk '{print $1}'`
echo "switch to: $switch_to; active: $active_win_id; list: $win_list"


# if the current window is the last in the list ... take the first one
if [ "$switch_to" == "" ];then
    switch_to=`echo $win_list | awk '{print $1}'`
fi

if [[ -n "${switch_to}" ]]
    then
    	echo "switching to $switch_to"
        wmctrl -ia "$switch_to"
    else
        if [[ -n "$2" ]]
            then
            	echo "executing $2"
                ($2) &
        fi
fi

exit 0