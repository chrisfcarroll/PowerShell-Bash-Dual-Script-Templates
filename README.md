# PowerShell-Bash-Dual-Script-Templates

Hold both bash and PowerShell code in a single script file and/or make a PowerShell.ps1 script executable on windows, *nix, linux, macOs.

There are pros and cons to keeping bash and powershell versions of code. It is still code duplication. I have tended to do this:
 - For setting the environment, I use Bash-or-Powershell.ps1 or Bash-or-PowerShell-with-Param.ps1 and write the duplicated environment setup for the two shells. The same dot-source syntax, . scriptthatsetsenvironmentvariables.ps1 then works in both shells.
 - For executing commands, it's simpler to write-once in PowerShell and use the Powershell-executable-on-win-and-nix.ps1 template.
 - Write-once in bash is an option of course. But PowerShell is 30 years newer than bash. It shows.

* Don't forget that to make anything executable in bash, you must chmod —e.g. chmod a+x script.ps1—to set the executable flag.
* Bash-first seems simpler than powershell-first.
* See! It is possible to have PowerShell tab-completion for parameters working in a script file that also runs on bash.
* Tip: if your editor lets you switch syntax, then switch between PowerShell and Bash highlighting for editing each section. Sublime Text makes this easy with the syntax button in the bottom right corner of the window.
