#!/bin/bash
source "$(dirname "$0")/log_manager.sh"

conf=""
name=""

input_names {

}

confirm_names {
	# input module to confirm inputted name.
	# 1: yes, 0: no and input name again, other: error and choice again.
	while [[ "$conf" =~ ^[0-1]$ ]]
	do
		# if input is invalid show error message and save this in log_dir.
		echo "Invalid input.\n1: yes, 0: no.\nplease input again. " | tee -a "$log_dir"
	
		# if 1 is inpputed show message and save log. 
		if [ "$conf" == 1 ]; then 
			echo ""
			exit 0
		fi"
	
	
	done
}
