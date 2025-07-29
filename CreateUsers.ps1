# CreateUsers.ps1
$newUsers = @("Akash1", "Akash2", "Akash3")
$password = ConvertTo-SecureString "P@ssw0rd" -AsPlainText -Force

foreach ($user in $newUsers) {
    New-LocalUser -Name $user -Password $password -FullName $user -Description "New local user account"
    Add-LocalGroupMember -Group "Users" -Member $user
    Write-Host "Created new user and added to group: $user"
}
