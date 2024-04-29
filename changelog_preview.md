# Collapse Preview Update Changelog
Welcome to Collapse Preview Release Branch! This is an early look at the next version of Collapse. This preview is shipped "AS-IS" and we encourage you to report any issues on Discord or by submitting an issue on [Github](https://github.com/neon-nyan/Collapse/issues/new/choose). This changelog is subject to change, with or without notice.

# What's new? - 1.80.2
- **[Fix]** Crash on launch when using certain language, by @bagusnl & @shatyuka 
  - This due to HoYo does not have response in their API for `es-419` and `pt-br` locales. For background and news area, fallback `es-419` to `es-es` and `pt-br` to `pt-pt`.
- **[Imp]** Adjusted Update page tittle padding, by @shatyuka 
- **[Loc]** Sync localization from Transifex, by localizers <3

# What's New - 1.80.1
- **[Fix]** Fixed Honkai Impact 3rd Repair and Cache issues, by @neon-nyan
- **[Fix]** Fixed double region load when using Keyboard Shortcut, by @gablm
- **[Fix]** Refactored API responses to fix inconsistency with data parsing, by @neon-nyan
- **[Imp]** Updated Settings references for Genshin Impact 4.6, by @bagusnl
- **[Imp]** Use new SharpCompress for zip decompression, by @neon-nyan
- **[Imp]** Improved App Settings page, by @neon-nyan
- **[New]** Add warning for Video BG on OOBE, by @neon-nyan
- **[Loc]** Sync localization from Transifex, by localizers <3
- **[Doc]** Add contributors to the list, by @bagusnl


> [!NOTE]
> ### Releasing Collapse v1.80.0 - Codename: TBA  
> We have decided to skip a few major version number due to the number of changes that happened since the last update being released.
> If you have the time, please send us a feedback on how you feel about the new UI look (and/or new features or improvements) in [this GitHub Discussion thread](https://github.com/orgs/CollapseLauncher/discussions/451#discussion-6492348) or in [#issues-and-suggestion Discord channel](https://discord.gg/vJd2exaS7j)


# What's New - 1.80.0
- **[Imp]** UI Adjustments and Use `UIElementExtension` to create UI elements in-code, by @neon-nyan @shatyuka @gablm
  - This improves the code readability and ease of maintenance.
  - Fixes some buttons not responding to user input.
  - Fixes incorrect theme and button style on OOBE.
  - It also contains various UI fixes and improvements that might not be included in the changelog, for those the curious can check the [Full Pull Request here](https://github.com/CollapseLauncher/Collapse/pull/434). *spoiler alert: it contains 100+ commits and 9k+ lines of code changes*

  ### UI Changes Preview
  **Main Page**
  ![02  Adjustment to Acrylic Opacity and Titlebar - Main Page](https://github.com/CollapseLauncher/Collapse/assets/30566970/fafe8db9-a050-4be8-b70e-3414824017bd)

  **Notification and Navigation Panel**
  ![02  Adjustment to Acrylic Opacity and Titlebar - Notif and Navigation Panel](https://github.com/CollapseLauncher/Collapse/assets/30566970/652385b4-7757-44d5-b316-793af347280a)

  **Page Background Acrylic**
  ![02  Adjustment to Acrylic Opacity and Titlebar - Page Background Acrylic](https://github.com/CollapseLauncher/Collapse/assets/30566970/f580a8f7-25f1-4688-9ec0-f0776742c336)

  **Auto-close After Clearing All Notifications**

  [01. Auto-close Clear All Notification.webm](https://github.com/CollapseLauncher/Collapse/assets/30566970/eecd0ff0-dad8-4d26-805d-8015fe1625d3)

  
- **[New]** Video Background support, by @neon-nyan
  - Added support to use videos as background. Currently supported formats are `.mp4, .mov, .mkv, .webm, .avi, .gif`
  - This feature relies on Microsoft Media Foundation engine, if you can't use certain videos, you can try to install the dependencies [manually here](https://www.majorgeeks.com/files/details/media_foundation_codecs.html).
  
  ### Video Background Feature Preview
  [03. Video Background Support.webm](https://github.com/CollapseLauncher/Collapse/assets/30566970/a175ee4f-4a41-4f23-8f54-60f03d9a7ba8)
  
- **[Imp]** Improved background image loader and caching mechanism, by @shatyuka & @neon-nyan
  - Fixed cache miss errors when loading background images.
  - Fixed crash when ColorPallette cache is missing/not generated. 
  - Also adjust Collapse window to always use 16:9 ratio.
  
> [!IMPORTANT]  
> Due to the massive changes in the image handler, you will need to manually clear the image cache on Collapse.
> This can be done by going into Settings, then press "Clear Image Files" button.

- **[New]** Instantly Change Region on Selection, by @bagusnl & @neon-nyan
  - You can now instantly change game/region by selecting them, removing the need to press "Change" button.
  
  ### Instant Region Change Feature Preview
  [Preview.mp4](https://github.com/CollapseLauncher/Collapse/assets/28079733/05ede866-d9e7-413e-81ae-f327ad35ccb8)

> [!NOTE]  
> To enable this feature, you can go to Settings then disable "Show Region Change Warning", a new toggle for "Instantly Change Region on Selection" should appear and it will be enabled by default.

- **[Fix]** Crashes when using URL protocol, by @gablm
  - Fix crash when using URL protocol to load a region for the first time.
  - Fix crash when changing region too fast related to BG dim/undim.
  
- **[New]** Migrate Collapse metadata using MetadataV3 format, by @neon-nyan
  - Removing the need to update Collapse entirely on Honkai: Star Rail updates.
  - Metadata can be updated on-the-fly (does not require Collapse restart).
  - Separate all game region metadata so it can be updated individually.

- **[Fix]** Hide Window Border for Windows 10 users, by @shatyuka
- **[Fix]** Instance count not showing the correct number, by @bagusnl @shatyuka @cry0 @neon-nyan

- **[Imp]** Update .NET to 8.0.4, by @bagusnl

> [!NOTE]  
> .NET update includes [CVE (Security Vulnerability CVE-2024-21409) fix](https://msrc.microsoft.com/update-guide/vulnerability/CVE-2024-21409)
  
- **[New]** Allow Collapse maintainers to ship a forced update, by @neon-nyan
  - This is needed for us to ship an important update whether because of a breaking change(s), or a vulnerability fixes.

- **[Doc]** Added contributors to the list on README.md, by @bagusnl
  - You can see all contributors that has helped Collapse [in here](https://github.com/CollapseLauncher/Collapse#contributors)

	
#### Code Signing Policy
> Free code signing provided by [SignPath.io], certificate by [SignPath Foundation]
- This program will not transfer any information to other networked systems.
- Read our full [**Privacy Policy**](https://github.com/CollapseLauncher/Collapse/blob/main/PRIVACY.md)
- Also read our [**Third Party Notices**](https://github.com/CollapseLauncher/Collapse/blob/main/THIRD_PARTY_NOTICES.md) for license used by third party libraries that we use.

[SignPath Foundation]:https://signpath.org
[SignPath.io]:https://signpath.io