#!/bin/bash
source "$(dirname "$0")/log_manager.sh"

conf=""
name=""

input_names() {
	read -p "input name: " name
	#log message
	if [ -n "$name" ]; then
		log_message "SUCCESS" "Name ${name} is inputted"
	else
		log_message "FAILD" "Name is empty"
	fi
}

confirm_names() {
	# input module to confirm inputted name.
	# 1: yes, 0: no and input name again, other: error and choice again.
	while [[ ! "$conf" =~ ^[0-1]$ ]]
	do	
		# choose confirm
		echo "confirm ${name}: 1(yes), 0(no)." 
		read conf
		if [ "$conf" = 1 ]; then
			log_message "SUCCESS" "${name} is confirmed"
			break
		elif [ "$conf" = 0 ]; then
			echo "please input name again."
			log_message "INFO" "comfirmation rejected. re-inputting" 
			# back to input name method.
			input_names
			# reset inputted conf
			conf=""
		else 
			echo "Invalid input. please choose 1(yes) or 0(no)."
			log_message "WARN" "Invalid confirm choice: ${conf}"
			# reset inputted conf
                        conf=""
			continue
		fi
	
	done
}
