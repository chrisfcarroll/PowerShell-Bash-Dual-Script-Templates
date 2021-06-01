#! /usr/bin/env bash
` # \
# PowerShell Param statement : every line must end in #\ except the last line must with <#\
# And, you can't use backticks in this section        #\
param( [ValidateSet('A','B')]$tabCompletionWorksHere, #\
       [switch]$andHere                               #\
     )                                               <#\
#^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ `
# The top half of this script runs in Bash and the bottom half in Powershell
# Some lines at the end can run in both shells, but syntax common to both is
# limited.
#vvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvv
# Bash Start ----------------------------------------------------------------

scriptdir="`dirname "${BASH_SOURCE[0]}"`";

# Above this line is Bash Script -------------------------------------------
# ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
echo > /dev/null <<"out-null" ###
'@ | out-null
#vvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvv
# Below this line is Powershell Script -----------------------------------#>

$scriptdir=$PSScriptRoot

# Powershell End---- -------------------------------------------------------
# ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
out-null
#vvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvv
# Both Bash and Powershell run the rest but syntax common to both is limited

echo "Some simple lines work in both bash and powershell. 
      Script directory $scriptdir was calculated differently in each shell."

echo "Powershell picked up the named parameter '$'tabCompletionWorksHere=$tabCompletionWorksHere '$'andHere=$andHere
      Whilst bash got positional parameters \$1=$1 and \$2=$2"