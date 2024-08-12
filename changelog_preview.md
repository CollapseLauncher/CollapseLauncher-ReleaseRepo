![](https://raw.githubusercontent.com/CollapseLauncher/.github/main/profile/ReleaseHeader-Wide-2024v2.webp)

# Welcome to Preview Branch of Collapse Launcher!
Here we do more experimental features and changes so expect more frequent updates than Stable branch. 

# What's New? - 1.81.1
- **[New]** App-Wide Proxy Support, by @neon-nyan 
  - You can now use Proxy on Collapse, it will detect system wide proxy by default and you can configure them manually from App Settings.
  - Supported proxy protocols: HTTP, HTTPS, and SOCKS5.
- **[New]** See Latest Changelog, by @bagusnl 
  - You can now read the latest changelog of the branch you are using by going to the App Settings and pressing the "See Latest Changelog" button on the right panel.
- **[New]** Ensuring Game Config Correctness, by @neon-nyan 
  - On Collapse launch (or after region changed), Collapse will now check and fix any game config mistakes and correct them with the set value.
  - Game configs are responsible for dealing with Payment APIs mostly, let us know if your payment option when buying in-game purchase is wrong.
- **[Fix]** Certain Files Flagged as Unused in Honkai: Star Rail, by @neon-nyan 
- **[Fix]** Cache Update Button Glyph Not Showing on Windows 10, by @neon-nyan 
- **[Fix]** Certain in-App Slider Style Errors when using Video Background, by @neon-nyan 
- **[Fix]** Shadow Sometime Gets Applied to Wrong UI Elements, by @neon-nyan 
- **[Fix]** Zenless Zone Zero Custom Resolution Not Getting Applied, by @bagusnl & @neon-nyan 
- **[Fix]** Flaky Game Running Detection, by @neon-nyan 
- **[Imp]** Improve Moving Files to Recycle Bin in File Cleanup Method, by @bagusnl 
  - Who would've know that running a command one time is faster than running it 1000 times in a loop? Not me obviously -bagusnl
  - You should be able to see the usual Windows' "Moving Files to Recycle Bin" dialog when deleting many files at once.
- **[Imp]** Parallel Download for Game Repair/Cache Update, by @neon-nyan 
- **[Loc]** Localization Sync from Transifex, by Localizers <3

# What's New? - 1.81.0 Preview
- **[Imp]** Massively fixed UI/UX for Sophon Predownload/Update mechanism, by @neon-nyan 
  - Separated download size and speed from overall game size and I/O speed.
  - Updated wordings of the download panel.
  - Added help button in Install modal.
- **[Fix]** Sophon update crashes, by @bagusnl & @neon-nyan 
  - Fixed crashes for users with =< 2 CPU threads by clamping the multithread number to 2-64.
  - Fixed crashes due to read-only file attribute.
- **[New]** Game Cleanup Feature, by @neon-nyan & @bagusnl
  - Clean your game installation from unused game files that is not referenced by the game.
  - Support all game and region (except for Bilibili).
  - Support `@IgnoredFiles` identifier.
  - User can choose between permanently deleting the files or move them to Recycle Bin.
- **[New]** Add a way to ignore files from deletion, by @bagusnl 
  - By adding a file called `@IgnoredFiles` in the game root directory, you can add any filename you want to be ignored by game repair Unused and File Cleanup methods.
  - Multiple files can be ignored by using line break. Only state the file name, not the path.
  - Support simple wildcard `*`.
- **[New]** Add more control for Sophon download method, by @bagusnl
  - In App Settings, you can control more stuff about Sophon, including Global enablement (default enable), Maximum HTTP Connections, and Thread Number.
  - By default, Download Thread number and Maximum HTTP Connections is 0. At default state, Download Thread number is calculated by square root of your CPU thread number and the HTTP Connection number is CPU thread number times 2.
  - Both values are clamped to prevent errors.
- **[Imp]** Various UI Improvements, by @neon-nyan 
  - Moving NavigationItem Font Icon from FontAwesome to Segoe Fluent Icons
  - Moving the Game Settings menu button to the bottom of the Navigation Bar
  - Fix Potential Crash during AttachedShadow assignment
  - Adding Shadow to All Icons in the Navigation Bar
  - Adding Outlined Logo asset
  - Scaling out Social Media Icons when hovered
  - Adjust some UI Brightness for Light Theme
- **[Loc]** Sync localization from Transifex, by localizers <3

# What's New? - 1.80.17
- **[Imp]** Updated Genshin's game settings template for 4.8.0, by @bagusnl 
- **[Fix]** Background scaling artifacts due to wrong image encoder setting, by @shatyuka 
  - To see the effects immediately, go to Settings then press `Clear Image Files`
- **[Fix]** Blocking exception caused by region translation unavailability, by @bagusnl 
- **[New]** Genshin Impact Google Play region support, by @bagusnl 
- **[Fix]** Uncaught exception due to late event subscription, by @neon-nyan 
- **[Imp]** Improved repair console/log output, by @Cryotechnic 
- **[New]** Option to hide Playtime view/button, by @bagusnl 
  - The setting is accessible under Quick Settings menu.
  - Disabling this will not affect play time calculation, just hides it.
- **[Imp]** Various UI/UX adjustments, by @neon-nyan 
- **[Imp]** Don't raise unhandled exception window when failed to download sprite images, by @neon-nyan 
- **[Fix]** Crashing when applying delta patch with duplicate files, by @neon-nyan 
- **[Fix]** Uninstall game does not work on Genshin Impact - Bilibili region, by @bagusnl 

**Full Changelog**: https://github.com/CollapseLauncher/Collapse/compare/CL-v1.80.16-pre...CL-v1.81.0-pre
	
#### Code Signing Policy
> Free code signing provided by [SignPath.io], certificate by [SignPath Foundation]
- This program will not transfer any information to other networked systems.
- Read our full [**Privacy Policy**](https://github.com/CollapseLauncher/Collapse/blob/main/PRIVACY.md)
- Also read our [**Third Party Notices**](https://github.com/CollapseLauncher/Collapse/blob/main/THIRD_PARTY_NOTICES.md) for license used by third party libraries that we use.

[SignPath Foundation]:https://signpath.org
[SignPath.io]:https://signpath.io
