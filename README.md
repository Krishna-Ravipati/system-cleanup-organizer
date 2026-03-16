# System Cleanup & File Organizer

A PowerShell script to **clean old files and organize your downloads folder** automatically by file type. Helps keep your system tidy and decluttered.

---

## Features

- **Organizes files** by type into subfolders:
  - Documents (`.pdf`, `.docx`, `.txt`, etc.)
  - Images (`.png`, `.jpg`, `.jpeg`, `.avif`, etc.)
  - Videos (`.mp4`, `.mov`, etc.)
  - Archives (`.zip`, `.rar`, `.7z`, etc.)
  - Programs (`.exe`, `.msi`)
  - Others (any uncategorized file types)

- **Deletes old files** based on a defined age threshold (e.g., older than 30 days).

- **Safe and customizable**:
  - Adjust which file types go where.
  - Change the number of days to retain files.

---

## Requirements

- Windows OS
- PowerShell 5.1 or higher
- Execution Policy set to allow scripts:

```powershell
Set-ExecutionPolicy -Scope CurrentUser -ExecutionPolicy RemoteSigned
