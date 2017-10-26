` # \
# PowerShell Param statement : every line must end in #\ except the last line must with <#\
# And, you can't use backticks in this section                                           #\
param( [ValidateSet('A','B')]$tabCompletionWorksHere, #\
       [switch]$andHere #\
     ) <#\
#^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ `
#vvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvv
# Bash Start ------------------------------------------------------------

scriptdir="`dirname "${BASH_SOURCE[0]}"`";
echo BASH. Script is running from $scriptdir

# Bash End --------------------------------------------------------------
# ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
echo > /dev/null <<"out-null" ###
'@ | out-null
#vvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvv
# Powershell Start ----------------------------------------------------#>

$scriptdir=$PSScriptRoot
Write-host "Powershell. This script is running from $scriptdir."

# Powershell End -------------------------------------------------------
# ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
out-null
#vvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvv
# Both Bash and Powershell run the rest but with limited capabilities

echo "Some lines work in both bash and powershell."
echo "Powershell picked up the named parameter '$'tabCompletionWorksHere=$tabCompletionWorksHere '$'andHere=$andHere"
echo "Whilst bash got positional parameters \$1=$1 and \$2=$2"