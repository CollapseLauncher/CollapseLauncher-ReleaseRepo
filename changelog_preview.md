![](https://raw.githubusercontent.com/neon-nyan/CollapseLauncher-Page/main/images/banner202304.webp)

# Collapse 1.72.2: [Codename TBD]
Welcome to Collapse version 1.72.2 - Codename: TBD! This is a (*very*) early look at the next version of Collapse. This preview is shipped "AS-IS" and we encourage you to report any issues on Discord or by submitting an issue on [Github](https://github.com/neon-nyan/Collapse/issues/new/choose). This changelog is subject to change, with or without notice.

This version supersedes 1.72.0 and 1.72.1. We recommend you update to this version, which addresses the fixes listed below.
***

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
