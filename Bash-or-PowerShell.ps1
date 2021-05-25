# The top half of this script runs in Bash and the bottom half in Powershell
# Some lines at the end or the beginning can run in both shells, but syntax
# common to both is limited.
# --------------------------------------------------------------------------
echo @'
' > /dev/null
#vvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvv
# Bash Start -----------------------------------------------------------

scriptdir="`dirname "${BASH_SOURCE[0]}"`";
echo BASH. Script is running from $scriptdir

# Above this line is Bash Script -------------------------------------------
# ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
echo > /dev/null <<"out-null" ###
'@ | out-null
#vvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvv
# Below this line is Powershell Script -------------------------------------

$scriptdir=$PSScriptRoot
"powershell. Script is running from $scriptdir"

# Powershell End -----------------------------------------------------------
# ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
out-null
#---------------------------------------------------------------------------

echo "Some simple lines work in both bash and powershell. 
      Script directory $scriptdir was calculated differently in each shell."
