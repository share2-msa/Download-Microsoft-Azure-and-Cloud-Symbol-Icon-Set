# Download-Microsoft-Azure-and-Cloud-Symbol-Icon-Set

The Microsoft Azure, Cloud and Enterprise Symbol / Icon Set package is available as a free download from Microsoft and includes icons for almost all Azure services and Microsoft cloud related technologies currently available.

To automate the download and installation process of this useful package, I wrote a PowerShell script which does all of the following:

Download the Microsoft_Cloud_AI_Azure_Service_Icon_Set_2019_09_11.zip file. 
Extract the ZIP file to the My Shapes folder (depending on the Visio version the My Shapes folder is the default-working folder for Visio and it is created during the installation of Visio. If not, you can always create it manually). 
Delete the ZIP file after extraction.
Close the Windows Terminal (or Windows PowerShell) window.

Things to keep in mind:

The script will exit if the My Shapes folder does not exist, the advice I would give is to install Microsoft Visio first before using the Symbol /Icon package.
The script will exit if the Symbols package v2019.9.11 (2019_09_11) already exists in the My Shapes folder.
The symbol package itself is supported on the following Operating Systems (OS): Windows 7, Windows 8, Windows 8.1 and Windows 10
The symbol set supports a variety of applications, including Microsoft Visio, Word and PowerPoint. 
You should remove any previous versions of the symbol set so you can avoid duplicate and deprecated symbols.
The latest download comes with mostly .svg files, along with some .png and Visio stencils (.vss).

You can find more information about this script on my site: https://wmatthyssen.com/2019/08/28/download-the-microsoft-azure-cloud-and-enterprise-symbol-icon-set-with-powershell/

