![](https://raw.githubusercontent.com/neon-nyan/CollapseLauncher-Page/main/images/banner202304.webp)

# Collapse 1.71.9: Focalors
Welcome to Collapse version 1.71.9 - Codename: Focalors! This update does not contain as many new flagship features as some of our previous releases, but it contains a lot of behind-the-scenes changes for our codebase so that we can keep delivering more quality updates for you guys in the future! Thanks for using Collapse! Welcome to Fontaine, Traveler!

***
# What's New? - 1.71.9
- Fixed an issue where the version indicator on the top-left of the launcher would not display the correct information when using the Stable release branch
- Fixed an issue where debug statements would show in a production build
- Fixed an issue where uninstalling the game would not actually delete the game files from disk
- Fixed multiple issues where opening Genshin Impact's Game Settings page would crash the app
- Improved accuracy for playtime tracking

# What's New? - 1.71.8
## New Feature: Background Resource Installation
This has been a feature that was requested multiple times, the first occurence of this being in October of last year. After almost a year of hard work, we are pleased to finally be able to ship this feature to Collapse. You are now able to install games across multiple regions at the same time! Keep in mind that there may be some quirks with the feature so we encourage you to come tell us if you have any issues either on our Discord or via GitHub Issues!

https://github.com/neon-nyan/CollapseLauncher-ReleaseRepo/assets/28079733/b5af15da-0ae9-46c4-a4d9-05070be2ae66

You can track the progress of installations via the new Notification panel introduced in our last major version release.

``0c40f32`` [**!**](https://github.com/neon-nyan/Collapse/commit/0c40f322d88d1d9434ca4f0aec66074c93dedd6e) 

## New Addition: Interface Update
Shipping with Collapse 1.71.8 is a somewhat updated menu navigation system. The launcher logo has now been converted to a button, which will bring you to the home page of your currently selected game. The icons for Game Repair, Cache Repair (where applicable), Game Settings & App Settings are not permanently displayed as a vertical Navigation bar, with the ability to toggle the full-width menu by clicking on the hamburger icon. Furthermore, we've added the ability to go back to your previous page. Finally, there have been design tweaks here and there (notably in the "App Settings") to make the UI look and run better!

https://github.com/neon-nyan/CollapseLauncher-ReleaseRepo/assets/9833218/442daf57-b1f1-43ba-86b9-e83159e94db8

We introduced this change as part of the feedback we've gotten from you guys. Please keep sharing your thoughts regarding this and future features, as it helps us improve the experience for all Collapse users!

## New Addition: Genshin Impact Settings (Thanks @Myp3a, @neon-nyan, @CryoTechnic, @bagusnl, @muscularcandy67 !)
Genshin Impact finally gets Game Settings! Change graphics settings while outside the game and get it applied immediately as soon as you open the game!
Also with this, we added option to run **ALL GAMES** in borderless windowed mode!

https://github.com/neon-nyan/CollapseLauncher-ReleaseRepo/assets/28079733/d14fa053-2f31-4270-ad9b-76702bf0f485

``3fb04b`` [**!**](https://github.com/neon-nyan/Collapse/commit/3fb04bedc1a600b75495ac9bd05e89c87eddbf5b)

***

## Major Changes
### Rewrite ``GameUninstall`` function
Rewriting this part of Collapse allows us to more easily manage how games get uninstalled and prevent the deletion of certain directories (e.g. Screenshots). The code used before was inefficient and would often need patching every other version, so we rewrote it for ease of maintainability and reliability. While at it, we also made it faster!

``5755681`` [**!**](https://github.com/neon-nyan/Collapse/pull/222/commits/57556811a05c109977c669aba48e71f3bb420fa0)

## New Version Number Indicator
Previously, the version number was only listed in the Console, which you needed to enable and made troubleshooting and helping resolve issues much harder for us. From this version onwards, the "PRE" tag has been replaced by the full version descriptor, alongside the "PRE" indicator if the build is a Preview build. Furthermore, for those who like to compile Collapse, we've appended the character "d" to the version number, as well as "PRE" to indicate that this build is a Debug build, while also being in preview testing. 

To summarize:
- Stable: [Version Number] (e.g. 1.71.8)
- Preview: [Version Number]-PRE (e.g. 1.71.8-PRE)
- Debug: [Version Number]d-PRE (e.g. 1.71.8d-PRE)

This allows us to easier help troubleshoot issues with our launcher depending on the version that the user is using.

``e36d39e`` [**!**](https://github.com/neon-nyan/Collapse/pull/220/commits/e36d39ed3dae2876733462e69810458cfa5a20e9)

- Fixing broken HSR game repair and cache features
- Migrate from HDiffPatch to SharpHDiffPatch
- Upgrade WinAppSDK to 1.3.230724000
- When "Merge Package Chunk" is enabled, revert to legacy download mechanism for game package downloads
- New Locale: German! Thank you to all our contributors on Crowdin! A reminder that, if possible, please make sure to test your changes in the launcher BEFORE making the official contributions on Crowdin, as this saves us time when a string is too long/too short. Thanks again!
- New official community tool: Battle Chronicles! Should you want to add a community tool, please make sure to submit a PR!

***

## Minor changes
- Fixed Cache Update to detect "asb.dat" file as an "unused file"
- Fixed double slash while writing Verify.txt lines for Cache Update
- Fixed Game Repair causing redownload on the CG files in-game
- Fixed Game Repair not being able to detect CG file list
- Fixed broken HI3 cache & game repair functionality
- Adjust Honkai Cache changes to legacy property
- Removed unused ``CheckIntegrity`` code
- Enabling ReadyToRun compilation
- Reducing overhead while fetching launcher's sprites by using local ``FallbackCDNUtil``'s HTTP Client method.
- Using direct JSON deserialization from ``FallbackCDNUtil``'s ``DownloadAsJSONType<T>()`` for fetching launcher's API
- Improving Color Palette generation by using the latest ``ColorThief`` changes.
- Moving unrelated methods from ``BackgroundManagement`` to ``RegionManagement``
- Removing overused ``GC.Collect()``
- Replace ``Crc32.NET`` with ``System.IO.Hashing``
- Always try and catch while disposing session stream in ``Hi3Helper.Http`` routines
- Simplify value comparison by using Generics method of ``TypeExtensions.IsInstancePropertyEqual<T>()`` to compare property values between settings class for all Game Settings
- Removing unused legacy ``CheckIntegrity`` and ``SteamConversion`` function calls from ``Hi3Helper.Core`` library
- Make ``ApplyAccentColor()`` run asynchronously
- Fixing a rare state bug, where the foreground image is shown outside of the home page.
- Making Game Conversion feature work again due to regression from ``InstallManagement`` rewrite.
- Avoid deletion of certain files while using Honkai Impact 3rd's Game Repair feature
- Fix ``GetVersion`` logic and package preload detection
- Fix preload slices being detected as unused assets

**Full Changelog**: https://github.com/neon-nyan/Collapse/compare/CL-v1.70.15...CL-v1.71.8
