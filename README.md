# Dnf Update Script

A custom dnf update bash script i made to update your system easier, with differents options and parameters. It actually not only update your system and can do other severals things. Note that it is still in progress.

## Using The Script

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

Here is the expected syntax for the bash script:

    sh update.sh (option) (first parameter) (second parameter)

The option is what action the script will execute at first, this fied is not optional.

The first and seconds parameters are optional entries that will be executed in order (the first parameter will be executed after the option and the second parameter will be executed after the first parameter.)

## Syntax Examples

### 1.

    sh update.sh upgrade -reboot

This syntax will at first, upgrade my system, then, reboot it to apply upgrades.

### 2.

    sh update.sh autoremove -exit

This syntax will removed all unneeded packages that were originally installed as dependencies then it will exit the terminal window.

### 3.

    sh update.sh check -clean

The folowwing syntax will check for avaible updates and clean cashed data.
