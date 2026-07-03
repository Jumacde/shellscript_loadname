# shellscript_loadname
check how to load variable(inputted name) from other script by shellscript.
what does this scrupts?
    • input name and show and save this in the log-directory. 
strcture: 
    1. main.sh:
        load finctions from other scripts. 
    2. .env: 
        include log path for test- and prod enviroment. 
    3. .gitignore 
        include .env and hide log path on gitlab/github.
    4. log_manager.sh
         get log path from .env and save log in each log path via run-command. 
            - test-enviroment:sudo ./main.sh 
            - prod-enviroment: sudo ENV=prod ./main.sh
    5. input_name.sh:
         function input_names() 
            - allow input name and confirm
    6. get_name.sh:
        function get_names()
            - get inputted name

