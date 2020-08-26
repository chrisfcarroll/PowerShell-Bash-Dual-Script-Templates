PowerShell-Bash-Dual-Script-Templates
=====================================

Three template files to hold both bash and PowerShell code in a single script
file.


Why Would You Do That!?
-----------------------

Hey you came to this repo, why ask me?

I have mostly used these templates for environment setup – files that will be
dot-sourced – , so that I can have the nearly-same commandline environment
across machines and across bash/zsh/PowerShell.

It is helpful that the same `. source` syntax works on both shells, so these
scripts can dot-source each other.
 

Alternatives
------------

There are pros and cons to keeping bash and powershell versions of code. The
alternative, of course, is to choose one shell and deploy it to all your target
machines.

-   Write-once in either bash or powershell is surely simpler. These templates
    are for when ensuring a common shell on all your target machines is less
    simple than maintaining dual-language scripts.

-   To run powershell scripts on a nix/linux/macOs environment, put  
    `#! /usr/bin/env pwsh` as the first line of each of your scripts, and `chmod`
    them as executable.

-   Some very limited scripts can work identically on both platforms without
    duplication. See `Onescriptforall.ps1` . Make this magic work by putting a
    shebang header for bash in the file, and giving it a .ps1 extension.
 

### Miscellaneous Comments

-   Using these scripts will still usually result in code duplication. The
    templates allow for some code to be run in either platform but how much of
    your code are you expecting to be compatible with both shells?

-   Don't forget that to make anything executable in bash, you must chmod —e.g.
    `chmod a+x script.ps1`—to set the executable flag.

-   PowerShell is 30 years newer than bash. It shows.

-   Bash-first seems simpler than powershell-first.

-   See! It is possible to have PowerShell tab-completion for parameters working
    in a script file that also runs on bash.

-   Tip: if your editor lets you switch syntax, then switch between PowerShell
    and Bash highlighting for editing each section. Sublime Text makes this easy
    with the syntax button in the bottom right corner of the window.

-   Testing your cross-platform scripts on Windows? Windows Subsystem for Linux
    is ooooh very impressive. I used `` sudo ln -s ``\```which powershell.exe``\```
    /usr/bin/pwsh `` for testing powershell-from-bash-on-linux-on-windows.
