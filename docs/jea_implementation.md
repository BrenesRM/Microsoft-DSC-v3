# Implementing Just-Enough-Administration (JEA) for DSC v3

Just-Enough-Administration (JEA) is a security technology that enables restricted administration for anything managed by PowerShell. With JEA, you can specify:

1.  **Who** can perform tasks (Role Definitions).
2.  **What** tasks they can perform (Role Capabilities).
3.  **How** they perform them (Remote PowerShell Session).

## Step 1: Create Role Capability (.psrc)
Define what commands are allowed. In our case, we allow `dsc.exe`.
- See: [jea/DSCv3.psrc](file:///d:/TrabajoBCCR/Microsoft%20DSC%20v3/jea/DSCv3.psrc)

## Step 2: Create Session Configuration (.pssc)
Define the session properties, such as running as a virtual administrator.
- See: [jea/DSCv3Session.pssc](file:///d:/TrabajoBCCR/Microsoft%20DSC%20v3/jea/DSCv3Session.pssc)

## Step 3: Deployment Procedure

### 1. Create Folder Structure
Ensure the module and role capability files are in the correct location:
```powershell
$modulePath = "$env:ProgramFiles\WindowsPowerShell\Modules\JEA_DSCv3"
New-Item -ItemType Directory -Path "$modulePath\RoleCapabilities" -Force
Copy-Item ".\jea\DSCv3.psrc" -Destination "$modulePath\RoleCapabilities\DSCv3.psrc"
```

### 2. Register JEA Configuration
Run the following in an elevated PowerShell session:
```powershell
Register-PSSessionConfiguration -Name 'DSCv3Support' -Path '.\jea\DSCv3Session.pssc' -Force
```

### 3. Using the Endpoint
Non-admin users can now connect to this endpoint to run DSC:
```powershell
Enter-PSSession -ComputerName 'localhost' -ConfigurationName 'DSCv3Support'
# Once connected:
dsc config get --file C:\temp\osinfo.dsc.yaml
```

## Security Benefits
- **Least Privilege**: Users never get full admin rights.
- **Auditing**: Every command is logged in `C:\Transcripts\JEA_DSC`.
- **Sandboxing**: Users are restricted to the commands defined in the Role Capability.
