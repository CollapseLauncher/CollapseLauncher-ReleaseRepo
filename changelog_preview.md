![](https://raw.githubusercontent.com/neon-nyan/CollapseLauncher-Page/main/images/banner202304.webp)

# Collapse 1.72.4: [Codename TBD]
Welcome to Collapse version 1.72.4 - Codename: TBD! This is an early look at the next version of Collapse. This preview is shipped "AS-IS" and we encourage you to report any issues on Discord or by submitting an issue on [Github](https://github.com/neon-nyan/Collapse/issues/new/choose). This changelog is subject to change, with or without notice.
***

This update brings some fixes but more importantly trimmable CommandLine NuGet packages, including NativeAOT compilation. Due to the removal of `SetHandler`, it has major changes in the codebase.

# [CVE Disclosure]
As part of our commitment to openness to our community, we are disclosing the following vulnerability which currently impacts **all** Collapse versions prior to 1.72.4. Due to the high severity score (7.5/10) that those have, an update is mandatory to protect our userbase. More information can be found below:

- .Net.Http (4.3.0 -> 4.3.4):
https://github.com/advisories/GHSA-7jgj-8wvc-jh57

- .Text.RegularExpression:
https://msrc.microsoft.com/update-guide/en-US/vulnerability/CVE-2019-0820

If you are on a previous preview release, we urge you to update to the latest version.

# What's New? - 1.72.4
- Add optimization for `DevDrive` 
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
- Initialize locales properly
- Add function to show Collapse windows to foreground
- Add double click function to toggle both visibility
- Handle toggle string with StartonTray AppMode
- Use locales for TrayIcon
- Update Package References
- Delete unused `CsWinRT`
- Include packages to `TrimmableAssembly`
- Eliminate Flipflop Situation for ToggleAllVisibility
- `TrayIcon.xaml.cs` Cleanup
- Add code documentation
- Remove unused `lastConsoleStatus`
- Adjust locales statics
- Also hide console when `StartOnTray`
- Fix main window not being brought up when it is minimized
- Make `consoleWindowHandle` not static
- On `ToggleConsoleVisibility`, always check for `EnableConsole` before method is run
- Adjust console output
- Update packages lock file
- Disable single file publishing
- Move text handler outside if bracket
- NICE workaround for console not showing up to foreground
- Remove unused directive & typo fixes
- Added `VersionIndicator` to Tray
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
