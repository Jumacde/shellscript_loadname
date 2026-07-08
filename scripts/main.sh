#!/bin/bash
source "$(dirname "$0")/log_manager.sh"
source "$(dirname "$0")/get_name.sh"
main() {
	get_logdir
	input_names
	confirm_names
	get_names
}
main
