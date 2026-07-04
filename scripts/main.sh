#!/bin/bash
source "$(dirname "$0")/log_manager.sh"

main() {
	get_logdir
	log_message
}
main
