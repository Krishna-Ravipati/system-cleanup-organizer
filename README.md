# System Cleanup & File Organizer

A **PowerShell script** to automatically **delete old files and organize your Downloads folder** (or any folder you specify) by file type. Keep your system tidy and clutter-free.

---

## Features

- Deletes files older than a specified number of days.
- Organizes files into subfolders by type:
  - Documents
  - Images
  - Videos
  - Archives
  - Programs
  - Others
- Configurable file extensions and folders.
- Supports automation via Windows Task Scheduler.



## Requirements

- Windows OS
- PowerShell 5.1 or higher
- Execution Policy set to allow scripts:

```powershell
Set-ExecutionPolicy -Scope CurrentUser -ExecutionPolicy RemoteSigned
