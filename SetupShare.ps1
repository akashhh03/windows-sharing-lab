# SetupShare.ps1
# Creates SHARE folder, a test file, and sets share + NTFS permissions

# Create SHARE folder in C:\
New-Item -Path "C:\SHARE" -ItemType Directory -Force

# Create a test file inside SHARE
New-Item -Path "C:\SHARE\Akash1Test.txt" -ItemType File -Force

# Share the folder named SHARE giving permissions:
New-SmbShare -Name "SHARE" -Path "C:\SHARE" -FullAccess "Akash3" -ReadAccess "Akash1","Akash2"

# Set NTFS permissions:
icacls "C:\SHARE" /grant Akash3:(OI)(CI)F
icacls "C:\SHARE" /grant Akash1:(OI)(CI)R
icacls "C:\SHARE" /grant Akash2:(OI)(CI)R
