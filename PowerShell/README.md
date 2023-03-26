# Replace the content of the file ` Microsoft.PowerShell_profile.ps1 ` within the Documents Folter with this file.

## Lets install PSReadLine

1. head over to the [about PSReadLine](https://learn.microsoft.com/en-us/powershell/module/psreadline/about/about_psreadline?view=powershell-7.3) at Microsft documentation
2. Using powershell run the Install script. It may very with newer versions that might have come out.
   ` Install-Module -Name PSReadLine -AllowClobber -Force`
3. after that we need to enable Predictive IntelliSense
   1. We can do that by using the following script. Again it may very according the version
   `Set-PSReadLineOption -PredictionSource History`
