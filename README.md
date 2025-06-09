# 🛠️ Developer Toolkit Scripts Collection

A curated set of PowerShell and BAT scripts to help developers keep their Windows systems clean, organized, and productive — **without touching your dev tools or environments.**

---

## 📁 Folder Structure

```
Developer-Toolkit-Scripts/
│
├── safe-cleanup/
│   ├── safe_cleanup.ps1
│   ├── safe_cleanup.bat
│   └── large_file_finder.ps1
│
├── productivity/
│   ├── open_dev_apps.bat
│   └── auto_organize_desktop.ps1
│
└── git-helpers/
    └── clean_git_branches.bat
│
└── dev-utils/
    └── port_killer.bat
    └── projdct_cleaber.bat  
│
└── LICEDNSE/
    └── port_killer.bat
    └── projdct_cleaber.bat         
```

---

## 📦 safe-cleanup/

### 🔹 `safe_cleanup.ps1`

**Description:**
Cleans system temp folder, user temp folder, Windows update cache, empties Recycle Bin, and lists large files in the Downloads folder — all while keeping your dev tools untouched.

**How to Run:**

1. Open PowerShell as **Administrator**.
2. Run the following command once to allow script execution (if blocked):

   ```powershell
   Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
   ```
3. Then run:

   ```powershell
   .\safe_cleanup.ps1
   ```

---

### 🔹 `safe_cleanup.bat`

**Description:**
Runs the `safe_cleanup.ps1` script using a double-clickable `.bat` file.

**How to Run:**

* Just double-click the file, or run from CMD:

  ```cmd
  safe_cleanup.bat
  ```

---

### 🔹 `large_file_finder.ps1`

**Description:**
Scans the Downloads folder and lists files larger than **1GB** in a file named `gb_files.txt` on your Desktop.

**How to Run:**

```powershell
.\large_file_finder.ps1
```

---

## ⚙️ productivity/

### 🔹 `open_dev_apps.bat`

**Description:**
Opens frequently used developer tools like VS Code, Git Bash, and your browser in one click.

**How to Run:**

* Double-click the file or run:

  ```cmd
  open_dev_apps.bat
  ```

> ⚠️ Make sure paths are correct for your system.

---

### 🔹 `auto_organize_desktop.ps1`

**Description:**
Automatically organizes your Desktop by moving files into folders like `Images`, `Docs`, and `Zips`.

**How to Run:**

```powershell
.\auto_organize_desktop.ps1
```

---

## 🔁 git-helpers/

### 🔹 `clean_git_branches.bat`

**Description:**
Deletes local Git branches that have already been merged into `main` or `master`, except the main branches.

**How to Run:**

1. Open Git Bash in your repository folder.
2. Run:

   ```bash
   ./clean_git_branches.bat
   ```

---

## 🧠 Tips

* Always **review script logic** before running.
* These scripts are safe for developers but always make a backup before large cleanups.

---

## 📦 ব্যবহার কিভাবে করবে:

### ✅ BAT (.bat) স্ক্রিপ্টগুলোর জন্য:

* Notepad খুলো
* কোডটা কপি করে পেস্ট করো
* Save as → file name (e.g., `CleanDevSpace.bat`)
* Right-click → Run as Administrator

### ✅ PowerShell (.ps1) স্ক্রিপ্টগুলোর জন্য:

**চালানোর নিয়ম:**

1. Notepad (বা VS Code) খুলে কোডটা পেস্ট করো

2. Save as → filename.ps1

3. PowerShell as Administrator ওপেন করো

4. নিচের কমান্ড চালাও:

   ```powershell
   Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
   ```

5. এরপর স্ক্রিপ্ট চালাও:

   ```powershell
   .\filename.ps1
   ```

> ⚠️ Execution policy error এড়াতে Step 4 খুব জরুরি।

---

## 📌 License

MIT License

---

Made with ❤️ by Kamrul
