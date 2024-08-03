<p align="center">
  <img src="https://raw.githubusercontent.com/CollapseLauncher/.github/main/profile/ReleaseHeader-Wide-2024v2.webp" height="200px"/>
</p>

Welcome to the 1.81 branch of Collapse, we decided to skip the 1.80.17 and goes straight to preview so you don't get a double update!
Here are changelog for both 1.80.17 and 1.81.0:

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
