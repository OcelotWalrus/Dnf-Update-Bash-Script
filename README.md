# Dnf-Update-Script
A custom dnf update bash script i made to update your system easier, with differents options and parameters.

## using the script:
Simply run the update.sh script:

    chmod +x update.sh
    sh update.sh
And you should get an output like this:

    HELP PAGE:
 
    OPTIONS (First entry):
 
    autoremove: remove all unneeded packages that were originally installed as dependencies
    check/check-updates: check for updates
    help: show this page
    upgrade/update: update your system
 
    PARAMETERS (Second and Third entry):
 
    -clean: clean cashed data after executing option
    -exit: close terminal window after executing option
    -poweroff: poweroff your system after executing option (alias: -shutdown)
    -reboot: reboot your system after executing option (alias: -restart)
    -restart: restart your system after executing option (alias: -reboot)
    -shutdown: shutdown your system after executing option (alias: -poweroff)
Here is the expected syntax:
    sh update.sh *option* *first parameter* *second parameter*
   
