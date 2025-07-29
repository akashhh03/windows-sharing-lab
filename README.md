# windows-sharing-lab
# Windows Sharing Lab

## Lab Overview
This lab demonstrates how to create local user accounts on Windows clients, configure shared folders with specific permissions, and test access controls over a network share.

The goal is to:
- Create user accounts on two Windows machines (ProjectClient10 and ProjectClient25)
- Rename the machines appropriately
- Set up folder sharing on ProjectClient25 with tailored permissions
- Verify file access and deletion rights from ProjectClient10 using different user accounts

---

## Included Scripts

### 1. CreateUsers.ps1
- Creates three local user accounts: `Akash1`, `Akash2`, and `Akash3`
- Assigns the same secure password to all users
- Adds users to the local "Users" group

### 2. SetupShare.ps1
- Creates a folder named `SHARE` on the `C:\` drive of ProjectClient25
- Creates a test file `Akash1Test.txt` inside the SHARE folder
- Shares the folder using SMB with:
  - Full control for user `Akash3`
  - Read-only access for users `Akash1` and `Akash2`
- Configures NTFS permissions to match share permissions

---

## How to Run

1. Run `CreateUsers.ps1` on **both** ProjectClient10 and ProjectClient25 to create the user accounts.
2. Rename the computers to `ProjectClient10` and `ProjectClient25` as per lab instructions.
3. On ProjectClient25, run `SetupShare.ps1` to create the shared folder and set permissions.
4. From ProjectClient10, log in as each user and access the shared folder via UNC path:

