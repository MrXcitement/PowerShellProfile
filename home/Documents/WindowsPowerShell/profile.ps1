# profile.ps1 --- Default power shell config
#
# Mike Barker <mike@thebarkers.com>
# June 26th, 2015

# Notes:
# There are many different profile files used by powershell at
# startup. There are files for the system and for the user. The system
# profiles are placed in C:\Programs Files\WindowsPowerShell and the
# users profiles are located in the WindowsPowerShell folder under the
# users Documents folder. The profile files that can exist in both of
# these locations have a specific nameing convention.

# Default profile, loaded by both cmd and ISE powershell
# profile.ps1

# Default cmd powershell profile.
# Microsoft.PowerShell_profile.ps1

# Default ISE powershell profile.
# Microsoft.PowerShellISE_profile.ps1

echo "Loading profile.ps1..."
$scripts = Get-ChildItem "$env:userprofile\Documents\WindowsPowerShell\profile.d\*.ps1"
foreach ($script in $scripts) {
    echo "Loading $script..."
    . $script
}
