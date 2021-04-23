<#
Connects to Office 365 Exchange Online and Azure AD Powershell.
Adding in Teams
Sharepoint and Lync / S4B are still seperate logins.
#>

$host.ui.RawUI.WindowTitle = “UBERADMIN”

Write-Host "Connecting to Office 365........." -foregroundcolor red -BackgroundColor Black


Set-ExecutionPolicy RemoteSigned
Write-Host "Please Enter Login Credentials" -foregroundcolor red -BackgroundColor Black

pause 

$credential = Get-Credential

Install-Module -Name AzureAD
Install-Module -Name MSOnline
Install-Module -Name MicrosoftTeams

Import-Module MSOnline -Force
Import-Module AzureAD -Force
Import-Module MicrosoftTeams -Force

Connect-MsolService -Credential $credential
Connect-AzureAD -Credential $credenital
Connect-MicrosoftTeams -Credential $credential
Connect-MsolService -Credential $credential

Write-Host "Config is initializing" -foregroundcolor red -BackgroundColor Black

Write-Host "Proceed with care.." -foregroundcolor red -BackgroundColor Black