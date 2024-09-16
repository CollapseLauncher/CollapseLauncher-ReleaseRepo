![](https://raw.githubusercontent.com/CollapseLauncher/.github/main/profile/ReleaseHeader-Wide-2024v2.webp)

# Welcome to Preview Branch of Collapse Launcher!
Here we do more experimental features and changes so expect more frequent updates than Stable branch. 

# What's new? 1.81.6
> We did a force update this one due to download corruption issue caused by the Http submodule.
- **[Fix]** Image cropper causing crash due to .NET trimming error, by @neon-nyan 
- **[Imp]** Move the logic for changing user cursor to use `UnsafeAccessor` instead of reflection setter, by @neon-nyan 
- **[Imp]** Reduce the amount of buffer allocation adjustment by sharing the amount across methods, by @neon-nyan 
- **[Imp]** Change user cursor to hand on Social Media buttons, by @neon-nyan 
- **[Fix]** Crashing when clicking Social Media buttons that has no assigned links, by @neon-nyan 
- **[Imp]** Set .NET's `IlcOptimizationPreference` to `Speed` to hopefully less crashes caused by missing types due to trimming, by @neon-nyan 
- **[Fix]** HTTP Submodule fixes, by @neon-nyan 
  - Fixed file overwrite argument being ignored.
  - Fixed fetching URI that has no content-length (eg. chunked encoding or malformed HTTP response).
  - Bypass disk write cache to reduce chance of data corruption.
  - Use `Parallel.ForEachAsync()` for delegates on .NET > 6.
- **[Imp]** Adjusted event panel size and event button position also updated the ImageCropper overlay, by @shatyuka
- **[Fix]** ScrollBar rounded corner radius error in collaspe state, by @shatyuka
- **[Fix]** Window border having 1px outline, by @shatyuka
- **[Imp]** Reduced delay in Genshin Impact's HDR adjustment settings, by @shatyuka
- **[Fix]** Updated and fixed missing glyphs for FontAwesome in certain build of Windows, by @neon-nyan & @shatyuka
- **[Imp]** Updated NuGet packages, by @neon-nyan 
  - CommunityToolkit 8.3.0 -> 8.3.1
  - CsWinRT 2.1.1 -> 2.1.3
- **[Fix]** Clamp HTTP Client Builder's Max HTTP Connections to be at least 2, by @neon-nyan 
- **[Imp]** Use `HTTPS` by default when fetching Honkai Impact 3rd's CG metadata, by @bagusnl & @neon-nyan 
- **[Fix]** Game log for Zenless is not read to console, by @bagusnl 
  - Zenless now has a different logging system than other games, it doesn't use Unity style logs anymore. Do not ask how long this took me to realize.

# What's New? - 1.81.5 Preview
### **[New]** Adding Acrylic Effect support for Video Background, by @neon-nyan
Previously, the acrylic effect while using Video Background is disabled due to a bug under WindowsAppSDK's Direct3D component which causes the entire UI to have solid dark color. After few releases later, we finally figured out a method to possibly blend the UI's Acrylic effect with the Video Background frame under it by passing video frames as a ``CanvasDevice`` and project it into ``Image.Source``. This feature, however is single-threaded and might get choppy when switching between pages.

![image](https://github.com/user-attachments/assets/c14e7181-5aa6-46a1-8fab-f803c9321b37)

This feature, however is disabled by default. In order to enable this, go to the ``App Settings`` and check the ``Use Acrylic Effect while using Video Background`` toggle under ``Video Background Settings`` setting.

![image](https://github.com/user-attachments/assets/4f3ed7d6-19a0-4aad-8573-6cf23339e49d)

### **[New]** Notification Toast Support for Background Activities, by @bagusnl & @neon-nyan 
This feature will help users to get notified when a background activity is completed. The notification toast includes support for Game Installation, Game Update, Pre-load Download, Game Repair and Cache Update features.

As per current implementation, the notification only supports text-based content.

https://github.com/user-attachments/assets/4f15d484-d7e2-4015-9331-25b0afc2c56a

### **[New]** Rewritten Http/Downloader submodule, by @neon-nyan 
As this brings many things, and pains (in terms of code time), we finally decided to rewrite our downloader submodule: [``Hi3Helper.Http``](https://github.com/CollapseLauncher/Hi3Helper.Http). The code has been running since the very beginning of this project was created and had been the most cluttered codebase that we have ever managed. Hundreds of bugs have been squashed from this submodule alone and it was very inefficient.

In this refactor, we managed to pulled out many features into this codebase, including one of the **MOST REQUESTED** feature in this project: **Bandwidth/Speed Limiter**.

https://github.com/user-attachments/assets/952cf15d-7d0d-4099-9669-a267349b0c8f

Thanks to this rewrite, the download now does not require the launcher to split the downloaded file into separated chunks and all the chunk data will be written and pre-allocated directly into a single file.

Furthermore, here's list of what's been changed:
  - **[New]** Bandwidth/Speed Limited
    - With this new feature, the user can now set the download speed limit.
    -  Limit your download speed so your parents won't bash you for taking all the bandwidth to download anime game (tm).
  - **[New]** Download File Size Pre-allocation.
    - Thanks to this feature, the download file would not need to have merged before the file can be used.
  - **[Imp]** Reduce unnecessary ``async`` thread overhead.
    - Performance stonks.
  - **[Imp]** Use delegates in replacement for event-based ``DownloadEvent`` to notify the download progress.
    - This has benefits if you're performing download multiple files within a single Downloader instance for other purposes. By using delegates, you can subscribe the download progress to a specific file you wanted to track.
  - **[Imp]** Adding zero-bytes data redundancy check
    - This feature is being added to (hopefully) fix a common issue where some area in the data might get zero-ed out while a write routine is not completely flushed properly due to hot-disposal or cancellation trigger. This feature utilizes **AVX2** and/or **SSE2** (if available) to check a much bigger portion of data (for 256-bit and 128-bit chunk of data respectively).

### **[Imp]** Update Playtime when Game has been opened before the Launcher, by @neon-nyan 
Previously, the playtime will not get updated when the game was launched before you open Collapse. Thanks to this change, the launcher will now be able to resume and save the last playtime when the game was launched first before the launcher and it also affect the timestamp on Discord RPC to get resumed as well.

https://github.com/user-attachments/assets/7202d6cc-f743-402c-9f65-cdc958c5fab6

# Minor Changes
- **[Fix]** Keyboard shortcut for stopping game, by @gablm 
- **[Fix]** Prevent app to hard crash when logger module sent an exception, by @bagusnl 
  - Also automatically clear log files if disk space for log folder is full (please don't ever do that).
- **[Fix]** Disposal issues under ``BackgroundMediaUtility`` static class.
- **[Imp]** Update GI GSP reference for 5.0, by @bagusnl 
- **[New]** Tray Notifications, by @bagusnl & @neon-nyan 
  - Collapse now will show a Windows notification when certain function has finished (eg. Cache Update, Repair, Predownload, Install, etc)
- **[Imp]** Update many NuGet packages, by @bagusnl & @neon-nyan 
  - This also includes WindowsAppSDK update to [**1.6.240829007**](https://learn.microsoft.com/en-gb/windows/apps/windows-app-sdk/stable-channel#version-16). Please let us know if there is something wrong with our launcher with this update.
- **[Imp]** Region aware ``
- **[New]** Prevent user from installing/moving their game to the root of a drive, by @bagusnl 
  - Please.... No more....
- **[Loc]** Localization Sync from Transifex, by Localizers <3

## New Contributors
* @Cactism made their first contribution in https://github.com/CollapseLauncher/Collapse/pull/570

**Full Changelog**: https://github.com/CollapseLauncher/Collapse/compare/CL-v1.81.4-pre...CL-v1.81.5-pre

# What's New? - 1.81.4 Preview
- **[Fix]** Inability to download preload for Genshin Impact due to wrong variable assignment, by @Cryotechnic 
- **[New]** Regional Custom Background, by @Cryotechnic, @neon-nyan, & @bagusnl 
  - You can now set a custom background of your choice per game region. You can access the settings in the Home Page -> Quick Settings (bottom right) -> Custom Background for Region.
  - This feature does not require you to enable the global custom background settings. Background priority as follows: Regional Custom BG -> Global App Custom BG -> API provided BG -> Paimon deadge fallback.
  - Yes, support video background as well.
- **[Fix]** Events button stacked with API provided background, by @bagusnl 
  - Literally just need to kick the event button 10px down...
- **[Imp]** Game Launch Commands code improvements, by @bagusnl 
  - Made PostGLC as static method so for those who runs an app that keeps running wayyyy after the game exited, this won't cause any issues anymore when this method gets invoked again.
  - Unsubscribe from the command events after they exited to free resources.
- **[Fix]** Errors when doing Game Files Cleanup due to multi-thread download, by @neon-nyan 
- **[Fix]** Game Settings backend code adjustments, by @bagusnl 
  - Don't force save settings that is not yet loaded to prevent crashes.
  - **[StarRail]** Don't save Graphics settings if A/B settings flag is found.
- **[Fix]** Inability to switch custom background from video to image without launcher restart, by @neon-nyan 
  - Caused by the opacity for still image background handler to be set to 0 when loading video background, but never get sets back to 1 when loading still image afterwards.
  - Cumulative man hours wasted: 6+ hours.
- **[Fix]** Prevent ACE (Anti-Cheat Expert) binaries to get removed from File Game Cleanup, by @Cryotechnic 
- **[Fix]** Event panel is not shown when "Event" news tag is empty, by @neon-nyan 

# What's New? - 1.81.3 Preview
- **[New]** ZZZ Pre-download Support, by @neon-nyan
- **[New]** Bilibili Region Support for ZZZ, by @bagusnl & @neon-nyan
- **[New]** Burst Download Mode, by @neon-nyan
  - This will make download process of multiple files faster by downloading them in parallel.
  - NOT recommended for those with slower internet, thus disabled by default.
  - As its a very experimental settings, if you want to try, edit the Collapse config file:
    `%AppData%\..\CollapseLauncher\config.ini`, add/modify `IsBurstDownloadModeEnabled` key to "True".
- **[Fix]** Use the Custom Resolution Enforcer for ALL Games, by @bagusnl
  - Practically when you use Custom Res, forces all game to obey the resolution by changing its Window property.
- **[Fix]** Black Bar on top of Image Carousel, by @shatyuka
- **[Fix]** Reimplement Migrate from Steam Feature for Hi3, by @neon-nyan
- **[Fix]** Random "File is being used by another process" Errors when Downloading, by @neon-nyan
- **[Imp]** Bring back the old file download behavior to store chunk files as sequential ``.001`` files, by @neon-nyan
  This change however, is backward compatible if you still have the hash-based (``.xxxxx``) extension chunks.
- **[Fix]** Potentially skipping HDiff patching and old files removal routine while applying ZZZ Update, by @neon-nyan
- **[Fix]** ``Hi3Helper.Http`` submodule causing size miscalculation while downloading files, by @neon-nyan
- **[Loc]** Localization Sync from Transifex, by Localizers <3

# What's New? - 1.81.1 Preview
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
