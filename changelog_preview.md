![](https://raw.githubusercontent.com/neon-nyan/CollapseLauncher-Page/main/images/banner202304.webp)

# Collapse 1.72.7: [Codename TBD]
Welcome to Collapse version 1.72.7 - Codename: TBD! This is an early look at the next version of Collapse. This preview is shipped "AS-IS" and we encourage you to report any issues on Discord or by submitting an issue on [Github](https://github.com/neon-nyan/Collapse/issues/new/choose). This changelog is subject to change, with or without notice.
Do note that this 1.72.7 preview update is MASSIVE. There is a lot of [codebase changed since last preview](https://github.com/CollapseLauncher/Collapse/pull/312). Update size is about ~34MB, make sure you're not using metered connection to prevent unnecessary charge!
***

This update (actually) upgrades the project to .NET 8, which hit GA on the 14th of November. Furthermore, this fixes a lot of issues and further optimizes Collapse performance in preparation for 1.72 release imminently.

# [CVE Disclosure]
As part of our commitment to openness to our community, we are disclosing the following vulnerability which currently impacts **all** Collapse versions prior to 1.72.4. Due to the high severity score (7.5/10) that those have, an update is mandatory to protect our userbase. More information can be found below:

- .Net.Http (4.3.0 -> 4.3.4):
https://github.com/advisories/GHSA-7jgj-8wvc-jh57

- .Text.RegularExpression:
https://msrc.microsoft.com/update-guide/en-US/vulnerability/CVE-2019-0820

If you are on a previous preview release, we urge you to update to the latest version.

# What's New? - 1.72.7
- Upgrade to .NET 8.0, which hit General Availability on November 14th 2023
- Remove unused define in `Hi3Helper.Core`
- Begin applying Mica to window
- Adjust workflow and publish to use net 8
- Update `Drawing.Common` package to use net8
- Update Windows SDK to version 22621
- Add RuntimeIdentifier
- Update Json nuget to 8.0.0
- Adjust Trimmer
- Remove unused Style Setter
- Change Mica to DesktopAcrylic
- Dump graphicsData and globalPerfData separately
- Add "never show again" to HI3 MediaPack check
- Adjust EncTool submodule changes
- Make JSONSerializerHelper trimming friendly
- Adjust SharpHDiffPatch submodule changes
- Remove all `ILTrim` enforcer for dependencies
- Rebase `FileDialogNative`
- Dispose `_logStream` while disposing `LoggerBase`
- Use Dialog for Unhandled Exception/Error
- Load Genshin graphics settings from `globalPerfData` (thanks @shatyuka !)
- Promote and update .NET dependencies
- Run callbacks on Dispose for DiscordRPC
- Improvements on Game Repair and Install detection
  - Adding early Delta Patch implementation for Honkai: Star Rail
  - Fixed Delta Patch doesn't always get detected
  - Adding Generic Game Files repair for Honkai: Star Rail
- Use `JsonStringEnumConverter<T>` for enum <-> string convert
- Use .NET 8 COM Wrappers for `FileDialogNative`
- Use .NET 8 COM Wrappers for `SevenZipExtractor`
- Rearrange `MainPage.cs`
- Partially update to .NET8 CommunityToolkit
  - DataGrid & its primitives are not updated
  - ImageEx & LinkClickedEventArgs are not updated
- Change CsWinRT provider
- Force Color to use Windows.UI refs
- Fix duplicate MaxItemsWrapGrid
- Remove unused XAML ref
- Apply VS Code Analysis 
- Update GeneralData Props for 4.2.0
- Add Constant to Bypass GSP Game Running Check
- Fix random crash while navigating back to HomePage
- Fix Carousel restarting on LoPrio after Hover
- Replace ImageEx package from WinUI.UI.Control 
- Fix exception on published package 
- Fix PropertyPath went missing on Popup type 
- Submodule migration and Coderef cleanup 
- Shrink `ArrayPool` size to 1 MB and use `MemoryStream` from 0
- Use buffering on cover enumeration if size is allowed
- Fix Compile Error on `InstallManagerBase`
- Use `VarInt` as direct methods rather than extension
- Fix DiscordRPC persistence issue when switching games
- Move `GenshinHDREnforcer` before process starts
- Add setting to control app behavior on game launch
- Disable `QuickJit` Compilation 
- Move reference of `SevenZipExtractor` from Core to App
- Initial implementation for "game patch through launcher" detection
- Cache HomePage and SettingsPage navigation
- Fix transparent background while back to:
  - AppSettings
  - HomePage
- Fix crash while navigating through cached HomePage
- Fix HSR Delta-patching not working on moving files
- Rearrange LauncherConfig.cs
- Bring source generated `CoCreateInstance` into App project
- Remove redundant methods in `FileDialogNative`
- Change `Task<T>` to `ValueTask<T>` on `FileDialogNative`
- Remove unnecessary `SystemBackdrop` define
- Make `TrayIcon` methods usable publicly
- Add "Minimize to Tray" option
- Add action details to `TrayIcon` popup
- Allow minimizing Collapse window from Taskbar (thanks @shatyuka)
- Always update `TrayIcon`'s context menu (thanks @shatyuka)
- Synced translations from Transifex
- Disable trimming on `PInvoke` class
(wysi)

# What's New? - 1.72.6
- Hotfixes for HSR submodule changes


# What's New? - 1.72.5
- i18n sync
- Settings Page Improvements:
  - Auto hide Shortcut Buttons when disabled
  - Changes `Debug` section name to `Additional Settings`
  - Add button to localization page
  - Adjust `LowerCollapsePrioOnGameLaunch` toggle name
  - Add tooltip to `LowerCollapsePrioOnGameLaunch` toggle
- Disable trimming for `WinUI.UI.Controls.Markdown`, thus fixing the markdown changelog not rendering properly
- Cleanup duplicate build properties
- Lock writer while writing JSON on serializer
- Make `JsonSerializers` `ILTrim`-friendly via `JsonSerializerHelper`
- Fix popping crash on SR Cache update
- Fix `msbuild` command
- Fix wrong formatting in `.csproj` file

# What's New? - 1.72.4
- Add optimization for `DevDrive/ReFS` for development 
  - Use transitive copy for MSBuild to speed up build when using CoW file system like ReFS
- Add git commit description on console
- `ArgumentParser` fixes
  - Fix unexpected early end bracket
  - Cleanup unnecessary string statements
  - Fix some arguments migrations misses
- Update nuget lock file
- [VULN] Update Http and Regex NuGet
- Early implementation for Taskbar
  - Make Taskbar toggle text change on condition
  - Add argument to start Collapse in tray
  - Add console hiding method (thanks @muscularcandy67)
  - Add function to show Collapse windows to foreground
  - Add double click function to toggle both visibility
  - Handle toggle string with StartonTray AppMode
  - Eliminate Flipflop Situation for ToggleAllVisibility
  - Also hide console when `StartOnTray`
  - Fix main window not being brought up when it is minimized
  - Make `consoleWindowHandle` not static
  - On `ToggleConsoleVisibility`, always check for `EnableConsole` before method is run
  - NICE workaround for console not showing up to foreground
  - Remove unused directive & typo fixes
  - Added `VersionIndicator` to Tray
- Update Package References
- Delete unused `CsWinRT`
- Include packages to `TrimmableAssembly`
- Update packages lock file
- Disable single file publishing
- Added commit information to Settings page
- Fixed version string not being correct in debug
- Updated copyright holders
- Fix indentation in CollapseLauncher.csproj
- Add Bilibili (Mainland China) region support for GI & HSR
  - Add SDK Resource Key handling
  - Fix SDK resource handling exception
  - Initialize default INI for Bilibili
  - Add adjustments for Bilibili client
  - Update SharpHDiffPatch submodule
  - Handle the Bilibili SDK download
  - Adding support for repairing mechanism on Bilibili clients
  - Show SDK loading progress while buffering to memory
- Metered network detection
  - Improve notMetered clause in StartCheckUpdate
  - State both Unrestricted and Unknown as notMetered
  - Skip the entire check sequence entirely instead of partially
  - Prevent NullReferenceException by providing fallback value
  - Flip Metered boolean state
  - Implement `SimpleDialog` for Force Updating in Metered Connection state
- Keyboard shortcuts support


# What's New? - 1.72.3
- Adding HDR Settings for Genshin
> This feature requires an HDR-Capable display. Otherwise, the feature will be unavailable.

- Fixed Game Repair mechanism for Genshin
  - Fixed the condition where the game will re-verify the entire game files after Game Repair has been performed from Collapse.
  - Fixed the issue where some files still gone missing (especially patch file) after being downloaded.
- Fixed some COMException being thrown randomly due to issues with CsWinRT library that come with WindowsAppSDK.
- Fixed background activity doesn't get raised for game update
- Update SharpHDiffPatch library to 1.4.3

# What's New? - 1.72.2
- Fixed a crash while downloading Genshin Impact v4.0.0 to v4.0.1 minor patch.
- Update SharpHDiffPatch submodule to v1.4.2
- Return null when Steam path is not found on Honkai Impact 3rd Global Installation.

# What's New? - 1.72.1
- Rollback WindowsAppSDK to 1.3.230724000
- Fixed a developer toolset issue where compilation would fail when switching development branches
- Fixed an issue with the notification panel caused by commit regression which would cause the app to crash unexpectedly
- Fixed many issues related to Game Repair for Honkai Impact 3rd including:
  - Increasing BSDiff buffer to 32k
    - Moving ``EnsureCreationOfDirectory()`` to ``ProgressBase`` class
    - Reviving output block from the dead (it tried to hide from us)
- Switch to new ``JsonSerializerHelper`` class for parsing Game Settings
- Remove ``netstandard2.0`` from compilation targets
- Deprecate usage 32-bit build of ``SevenZipExtractor`` in Collapse
- Use ``SevenZipExtractor`` as an independent assembly

# What's New? - 1.72.0
- Fixed automatic updating running twice
- Fixed `Primary` assets not getting recognized
- Change `ProgressBase`'s Progress and Status to `class`
- Lock changes in `ProgressBase'`, `_progress` and `_status`
- Check before emptying `AssetEntry`
- Fixed Manifest reading for v6.9 (nice) update  (Related to Audio File's Game Repair issue)
- Avoid crash while dispose called twice in `RegistryMonitor`
- Fixed a rare bug where preload progress does not resume pause
- Apply partial changes from main branch, which includes some minor bugfixes
- Only load `GeneralData` when `GameSettings` is loaded
- Use `UnsafeRelaxedJsonEscaping` in HSR's registry handler
- Make XAML exception show outside of debug
- Attach XAML Parser Fail Events
- Refine home page link & bg (thanks @shatyuka)
- `DataGrid` Style Adjustment
- New Dialog Style using `ContentDialogCollapse`
- `FlipView` Style Adjustment
- Notification Toggle Button Adjustment
- Fixed Honkai: Star Rail background activity showing a wrong icon (oops)
- Making Background Image loading fully asynchronous
- Caching BG Image palette generation
- Fixed stock image not reloaded after performing "Clear All Images"
- Switch primary palette color when using dark mode
- Make XAML exception show outside of debug
- Fixed improper window size scale
- New Localization: Thai (thanks to @kinodev and @armzyaec1234) & various localization updates
- Increase `FallbackCDNUtil` timeout to 1 minute
- Bring metadata update log to release
- Change metadata update delay to 2 seconds
- Clean up some logic related to DEBUG build detection
- Stops auto update on metadata update 
- Added Japanese localization for README
- Check before emptying `AssetEntry`
- Use `InvariantGlobalization` instead of separate Resource Language
- Adding HTTPS to HTTP override on Game Repair
- Add links to social media popup panel (thanks @shatyuka)
- Disable the change game button when we make no changes (thanks @shatyuka)
- Fix shadow and animation of social button
- Fix deserialization error which occured while preparing game region conversion
- Added HDR settings to Genshin Game Settings panel (thanks @MapleHinata)
***

## Major Changes

***

## Minor changes

**Full Changelog**: TBD
