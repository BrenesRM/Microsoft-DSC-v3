# Installation Guide: Microsoft DSC v3

Follow these steps to install the `dsc` executable on your Windows system.

## Method 1: Using the PSDSC PowerShell Module (Recommended)

1.  Open a PowerShell terminal (PowerShell 7+ is recommended).
2.  Install the `PSDSC` module from the PowerShell Gallery:
    ```powershell
    Install-PSResource -Name PSDSC -Repository PSGallery
    ```
3.  Install the `dsc` executable:
    ```powershell
    Install-DscExe
    ```
    *Note: This command automatically adds `dsc` to your PATH.*

## Method 2: Manual Installation from GitHub

1.  Visit the [DSC GitHub Releases](https://github.com/PowerShell/DSC/releases/) page.
2.  Download the latest release for your architecture (e.g., `dsc-3.0.0-preview.8-win-x64.zip`).
3.  Extract the ZIP file to a local folder (e.g., `$HOME\Documents\dsc`).
4.  Add the folder path to your system's PATH environment variable.

## Verifying Installation

Open a new terminal window and run:
```bash
dsc --version
```
If installed correctly, you should see the version information.
