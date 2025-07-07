# Android IMG Editor

A simple editor tool for Android `system.img` and `vendor.img` ROM files. 💿

[<img src="https://github.com/user-attachments/assets/7720f0a2-2489-42d8-acc7-a862b021eec5">](https://discord.gg/3zbfaTNN7V)

## 📥 Installation

Android IMG Editor is a portable application—you don’t need a formal installer. Just grab the latest build from our **[Releases](https://github.com/NoahDomingues/Android-IMG-Editor/releases)** section:

- **Windows**: Download the `.exe` and double-click the downloaded file to launch.
- **Linux**: Install [WINE](https://linuxconfig.org/installing-wine), download the `.exe`, then run the following command via terminal: `wine AndroidIMGEditor`.

Once downloaded, launch the executable from your terminal or file explorer. There are both console and GUI versions of Android IMG Editor, their functionality is identical so choose whichever option suits you best.

## 🛠️ Features

- Unpack **`system.img`** and **`vendor.img`**
- Repack edited directories back into valid Android images
- Support both sparse and raw ext4 formats
- Browse and modify image contents without needing an emulator

## 💡 Usage

### 🖱 GUI version

![Screenshot of Android IMG Editor - GUI version](https://github.com/user-attachments/assets/41a4232e-833c-47aa-9e15-7c4198556dec)

Launch the tool, then use the buttons to select the desired functions. 

- The main buttons allow for unpacking and repacking `system.img`, `vendor.img`, or both simultaneously.
- The folder button next to the "Unpack All" button allows you to manually choose an input `.img` file and output directory using File Explorer popups. Note that when using this function, output directory paths *must not* contain spaces, otherwise the tool will simply unpack the `.img` to the path excluding anything after the space.
- The Cancel button to interrupt the currently-ongoing operation (note that there will be a 7-second delay before you can start a new operation).
- The progress bar displays the progress of an ongoing operation, and the log box displays textual updates, warnings, and error messages.
- The folder button in the top right corner allows you to clear (delete) unpacked ROM files in the current working directory (note that this action is irreversible).
- The "i" button in the top left corner displays some basic information and links about the program. 

### ⌨ Console version

![Screenshot of Android IMG Editor - console version](https://github.com/user-attachments/assets/933f9798-cdf1-4d61-9285-95f031d466e7)

Launch the tool, then follow the on-screen instructions to use it. Each command, such as unpacking or repacking, will have an associated number printed before it. Enter the number of the command you would like to use, followed by Enter.

## 📦 Supported Image Formats

- Android images (`*.img`)
- Android sparse images (`*.img`)
- Both system and vendor images

## 🧪 Origin & Use Case

Android IMG Editor was developed as a simple, fast tool for ROM modders and developers needing to tweak Android images. From injecting custom apps to modifying vendor blobs, it’s the perfect companion for low-level Android system tweaks without requiring a full Linux setup.

## 🤝 Support

If you run into issues or want to contribute, check out our **[Discord server](https://discord.gg/3zbfaTNN7V)** or open a GitHub issue! Contributions, feature suggestions, and pull requests are always welcome.

[<img src="https://github.com/user-attachments/assets/f61046f5-1dc5-4b0c-87f8-4a94d6cbac96">](https://discord.gg/3zbfaTNN7V)

## 👥 Contributors

[![Contributors][contributors-image]][contributors-link]

[contributors-image]: https://contrib.rocks/image?repo=NoahDomingues/Android-IMG-Editor
[contributors-link]: https://github.com/NoahDomingues/Android-IMG-Editor/graphs/contributors

**⭐ If this tool was of any use to you, please consider giving it a Star - it would make my day! ⭐**

Thanks to **[JordanEJ](https://github.com/JordanEJ)** for building the [initial project](https://github.com/JordanEJ/IMG-Editor-Tool) from which this was forked.

[<img src="https://img.shields.io/badge/Discord-%235865F2.svg?style=for-the-badge&logo=discord&logoColor=white">](https://discord.gg/3zbfaTNN7V)

<div align="center">
  <img src="https://capsule-render.vercel.app/api?type=waving&color=gradient&height=100&section=footer" />
</div>
