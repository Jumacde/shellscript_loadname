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
            get_logdir()
            - test-enviroment:sudo ./main.sh 
            - prod-enviroment: sudo ENV=prod ./main.sh
            log_message()
            - show date, status and message.
                [status]
                    SUCCSESS, FAILD, INFO, WARN
                        INFO: if you not cinfirm inputted name and input again.
                        WARN: if input is Invadild.
            
    5. input_name.sh:
        input_names() 
            - allow input name and confirm
            - inputted name is saved.
        confirm_names()
            - input 1(yes) or 0(no)
            - if you choose 0 then back to input_names().
            - if input is Invalid show error message and choose 1 or 0 again.
            - status and message for each action is saved in log file.
    6. get_name.sh:
        just check code style to load values from another script.
        function get_names()
            - get inputted name
            


    [test-log]
        # case1: input name and confirm yes
        06-07-2026 18:02:24 [main.sh] [Name test_name1 is inputted] -  SUCCESS
        06-07-2026 18:02:26 [main.sh] [test_name1 is confirmed] -  SUCCESS
        test_name1

        # case2: confirm no then input a new name and confirm this.
        06-07-2026 18:02:58 [main.sh] [Name test_name2 is inputted] -  SUCCESS
        06-07-2026 18:02:59 [main.sh] [comfirmation rejected. re-inputting] -  INFO
        06-07-2026 18:03:06 [main.sh] [Name testname2.0 is inputted] -  SUCCESS
        06-07-2026 18:03:11 [main.sh] [testname2.0 is confirmed] -  SUCCESS
        testname2.0

        #case3: input invalid to confirm. then input 1(yes)
        06-07-2026 18:03:32 [main.sh] [Name test_name3 is inputted] -  SUCCESS
        06-07-2026 18:03:35 [main.sh] [Invalid confirm choice: fdsf] -  WARN
        06-07-2026 18:03:38 [main.sh] [test_name3 is confirmed] -  SUCCESS
        test_name3

        # case4: input invalid to confirm. then input 0(no) and input a new name. confirm finally name.
        06-07-2026 18:04:04 [main.sh] [Name test_name4 is inputted] -  SUCCESS
        06-07-2026 18:04:07 [main.sh] [Invalid confirm choice: rewrwtwr] -  WARN
        06-07-2026 18:04:11 [main.sh] [comfirmation rejected. re-inputting] -  INFO
        06-07-2026 18:04:22 [main.sh] [Name test_name4.0 is inputted] -  SUCCESS
        06-07-2026 18:04:24 [main.sh] [test_name4.0 is confirmed] -  SUCCESS
test_name4.0

