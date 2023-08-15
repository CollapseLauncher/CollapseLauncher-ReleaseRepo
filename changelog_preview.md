![](https://raw.githubusercontent.com/neon-nyan/CollapseLauncher-Page/main/images/banner202304.webp)

# Collapse 1.71.6: Pending Name
Welcome to Collapse version 1.71.6 [Version Name TBD]! This is a PREVIEW BUILD. NOTES ARE NOT FINAL. Please report any issues [here](https://github.com/neon-nyan/Collapse/issues/new/choose)!
***

# What's New?

# 1.71.6
_This update contains some hotfix for InstallManagerBase component and Background Installation. Any detailed information about the update will be informed soon._

# 1.71.5
- [**Honkai Impact 3rd**] Fixed Cache Update to detect "asb.dat" file as an "unused file"
- [**Honkai Impact 3rd**] Fixed double slash while writing Verify.txt lines for Cache Update
- [**Honkai Impact 3rd**] Fixed Game Repair causing redownload on the CG files in-game
- [**Honkai Impact 3rd**] Fixed Game Repair not being able to detect CG file list
- [**Honkai Impact 3rd**] Fixed broken HI3 cache & game repair functionality
- [**Honkai Impact 3rd**] Adjust Honkai Cache changes to legacy property
- [**Core**] Removed unused ``CheckIntegrity`` code
- [**Core**] Enabling ReadyToRun compilation
- [**UI**] Fixed background disappeared after cancelling update

# 1.71.4
This preview release is pretty big, with the most noticeable change being the early implementation of parallel download support, as well as background download support.

Please report any issues through the usual channels, thanks!

- New strings for locales
- Upgrade WinAppSDK to 1.3.230724000
- Reducing overhead while fetching launcher's sprites by using local ``FallbackCDNUtil``'s HTTP Client method.
- Using direct JSON deserialization from ``FallbackCDNUtil``'s ``DownloadAsJSONType<T>()`` for fetching launcher's API
- Improving Color Palette generation by using the latest ``ColorThief`` changes.
- Moving unrelated methods from ``BackgroundManagement`` to ``RegionManagement``
- Revert to legacy download mechanism for downloading game packages, where merging the chunk files is required before verification and extraction.
- Removing overused ``GC.Collect()``
- Minor UI Changes, including:
    - Adding the ability to go back to the previous page
    - Making title icon clickable for "Back to Homepage" button (Issue: [#131](https://github.com/neon-nyan/Collapse/issues/131))
    - Adding the ability to disable acrylic effect (Issue: [#190](https://github.com/neon-nyan/Collapse/issues/190))
    - Adding failsafe if the user chooses invalid folders to be used as "App Folder" for the launcher during the first set-up.
- Replace ``Crc32.NET`` with ``System.IO.Hashing``
- Always try and catch while disposing session stream in ``Hi3Helper.Http`` routines
- Simplify value comparison by using Generics method of ``TypeExtensions.IsInstancePropertyEqual<T>()`` to compare property values between settings class for all Game Settings
- Removing unused legacy ``CheckIntegrity`` and ``SteamConversion`` function calls from ``Hi3Helper.Core`` library
- Make ``ApplyAccentColor()`` run asynchronously
- Migrate from HDiffPatch to SharpHDiffPatch
- Fixing broken HSR game repair and cache features
- Fixing a rare state bug, where the foreground image is shown outside of the home page.
- Making Game Conversion feature work again due to regression from ``InstallManagement`` rewrite.
- Avoid deletion of certain files while using Honkai Impact 3rd's Game Repair feature
- Fix ``GetVersion`` logic and package preload detection
- Fix preload slices being detected as unused assets
# 1.71.3
- Updated locales 
- Fixed small UI mode causing scaling issues for some elements
- Several bugfixes for installation management & update extraction functions
- Hot fix for `ApplyUpdate` since Bitbucket mirror no longer works
- Added Cloudflare R2 as a temporary alternative to Bitbucket mirror
- Temporarily removed Bitbucket as a repository mirror
# 1.71.2
- Fixed error where game would somehow continue installing in the background
- Fixed locale ID mismatches
- Fix community tool order
- Changed Discord Rich Presence to be able to show the game title instead of the launcher title
# 1.71.1
- Fixed some strings
- Fixed app crashing in certain circumstances when changing the Gamma slider value
- New community tools
- Code cleanup
## New Feature: Game Settings for Genshin Impact

# Major Changes
- New community tools
- Locale updates

``a842f79`` [**!**](https://github.com/neon-nyan/Collapse/pull/183) 