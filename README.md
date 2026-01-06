PowerShell-Bash-Dual-Script-Templates
=====================================

Three template files to hold both bash and PowerShell code in a single script
file. And for fish and PowerShell.


Why Would You Do That!?
-----------------------


*Hey, you came to this repo, why are you asking me?*

I have mostly used these templates for environment setup — files that will be
dot-sourced — so that I can have the nearly-same commandline environment
across machines and across bash/zsh/PowerShell.

It is helpful that the same `. source` syntax works in most shells, so these
scripts can dot-source each other.



Alternatives
------------

There are pros and cons to keeping bash and powershell versions of code. The
alternative, of course, is to choose one shell and deploy it to all your target
machines.

-   Write-once in powershell for all platforms is surely simpler. These
    templates are for when ensuring a common shell on all your target machines
    is less simple than maintaining dual-language scripts.

-   To run powershell scripts on a nix/linux/macOs environment, put  
    `#! /usr/bin/env pwsh` as the first line of each of your scripts, and
    `chmod` them as executable. Remember the language you write scripts in
    doesn’t have to be the shell that you personally use.

-   Some very limited scripts can work identically on both platforms without
    duplication. See `Onescriptforall.ps1` . Make this magic work by putting a
    shebang header for bash in the file, but giving it a .ps1 extension.


### Miscellaneous Comments

-   Yes, 2-languages-in-1 still results in 'duplicate' code. But I found that
    duplicate code in 1 file was surprisingly easier to reliably keep in synch
    than code in 2 files. Human nature.

-   Tip: if your editor lets you switch syntax, then switch between PowerShell
    and Bash highlighting for editing each section. Sublime Text makes this easy
    with the syntax button in the bottom right corner of the window.

-   Don't forget that to make anything executable in bash, you must chmod —e.g.
    `chmod a+x script.ps1`—to set the executable flag.

-   PowerShell is 30 years newer than bash. It shows.

-   Bash-first seems simpler than powershell-first.

-   See! It is possible to have PowerShell tab-completion for parameters working
    in a script file that also runs on bash.

-   Testing your cross-platform scripts on Windows? Windows Subsystem for Linux
    is ooooh very impressive. I used `sudo ln -s`\``which
    powershell.exe`\``/usr/bin/pwsh` for testing
    powershell-from-bash-on-linux-on-windows.
