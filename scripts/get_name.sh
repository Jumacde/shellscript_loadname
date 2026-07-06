#!/bin/bash
source "$(dirname "$0")/log_manager.sh"
source "$(dirname "$0")/input_name.sh"
get_names() {

	echo "$name" | tee -a "$log_dir" 

}
