![](https://raw.githubusercontent.com/CollapseLauncher/.github/main/profile/ReleaseHeader-Wide-2024v2.webp)

> We have just published our new landing page, which you can view at https://collapselauncher.com !

# What's new? - 1.82.13 [Hotfix]
- **[Loc]** Localization Sync from Transifex, by Localizers <3
- **[Fix]** **[Regression]** False "Obsolete Version" detection on Sophon method while the update is actually available, by @neon-nyan
- **[Fix]** Crash due to ``NullReferenceException`` while ``ToastCOM``'s ``NotificationService`` is failing to initialize, by @neon-nyan
- **[Imp + Fix]** UI Improvements, by @shatyuka
  - Update overlay mask on Image Cropping dialog
  - Hide all invisible system buttons
  - Implement Taskbar State/Progress API (will be used in the future)
  - Fix repair status flicker
- **[Fix]** **[Regression]** Crash while checking Cache files on Honkai Impact 3rd, by @neon-nyan
- **[Fix]** Fix more Issues on Sophon, by @neon-nyan
  - 0 total size on display while falling back from Update to Install mode on Sophon
  - Double logging while falling back from Update to Install mode on Sophon
- **[Fix]** **[ZZZ GSP]** Wrong index assigned to the resolution list and width rounding issue, by @neon-nyan
  - If the default resolution exist on the fullscreen resolution list, the index of that resolution will be shifted to the first index. Previously in Collapse, it was manually added to the top while it actually not deleted to the fullscreen list, making it duplicated. Now, it should matches the behaviour
  - Some resolution which have rounding digits might have displayed incorrectly.
  ![Untitled-4](https://github.com/user-attachments/assets/c54c4a4d-5983-4833-8478-a727e41b28a6)

# What's new? - 1.82.12 [Hotfix]
- **[Fix]** Failure when installing sophon, by @neon-nyan 
  - neon forgor to put the variable into the right line
- **[Fix]** Disk space recognition when resuming game install with sophon, by @neon-nyan
  - neon forgor to return the right value
- **[Fix]** Game update with sophon failing if its updating from a version that is too old, by @neon-nyan
- neon too eepy and forgor to check if the manifest exist for those older game version
- if the game is too old then fallback to use install method and replace any assets that is not matching with the target version.
- **[Fix]** `EnumFailedVersion` errors when installing games and (super rarely) in early launch, by @bagusnl
- **[Imp]** Use Attachment instead of breadcrumbs for LoadedModules reporting in Sentry, by @bagusnl

# What's new? - 1.82.11 [Hotfix]
- **[New]** Toggle "Playing" Discord RPC status per-region, by @bagusnl 
  - You can disable "Playing" status per-region now by going to Quick Settings (bottom right on Homepage) and toggling it off.
  - This is enabled by default (as it always is)
- **[Fix]** Bloated Sophon pre-download/update size due to duplicate entries, by @neon-nyan 
- **[Imp]** Match API requests headers, by @neon-nyan 
- **[Fix]** Cannot copy error message caused by ``HGlobal`` buffer misallocation for some users, by @neon-nyan 
- **[Fix]** IOSharingViolation due to file/directory handling in some methods, by @neon-nyan 
- **[Fix]** Repair causing application crashes due to value overflow, by @bagusnl 
- **[Fix]** Game installation error due to invalid VO language selection, by @neon-nyan 
- **[Imp]** Sentry improvements, by @bagusnl 
  - Filter exceptions to be sent
    + Exceptions caused by users' internet situation are filtered
  - Add loaded modules info to breadcrumb
  - Detach inner exception handler method
- **[Imp]** Sophon Download Improvements, by @neon-nyan 
  - Adding disk-space check on Game Installation/Update and Pre-load Download.
  - Ignore if VO's LanguageString is not valid on non-debug build
  - Separate Sophon methods to its own code files
- **[Imp]** UI/UX Improvements, by @shatyuka @neon-nyan and @bagusnl 
  - New fallback background when the background sprite is not yet downloaded
  > The official HoYoPlay's default background is used for the fallback background
  - Disable some tab focus within the PostPanel
  - Resize Pivot header in PostPanel
  - Make ScrollViewer receive focus as a whole
  - Enable navigation via arrow keys in ScrollViewer
  - Adjust Audio-related setting's Grid layout on Genshin Game Settings Page
- **[Fix]** DB sync buttons on App Settings page doesn't get disabled when the toggle is off
- **[Loc]** Localization Sync from Transifex, by Localizers <3

# What's new? - 1.82.10 [Hotfix]
- **[Fix]** ``NullReferenceException`` crash caused by null ``voice_packs`` property, by @neon-nyan
- **[Fix]** Some migration dialog still provides install choices, by @neon-nyan
- **[Fix]** TimeSpan overflow + Number to Percentage and TimeSpan converter refactor, by @neon-nyan and @bagusnl
- **[Fix]** Minor Audio Selection UI bug, by @neon-nyan
- **[Fix]** More ``SharingViolation`` exceptions on ``InstallManagerBase``, by @neon-nyan
- **[Fix]** ``DirectoryNotFoundException`` on HSR's Game Repair -> ``RemoveHashMarkFile()`` method, by @neon-nyan
- **[Fix]** Relative URL for the Velopack packages getting cut-off, by @neon-nyan

# What's new? - 1.82.9 [Hotfix]
- **[Fix]** Sophon failing to install games, by @bagusnl & @neon-nyan 
  - Errors such as `EnumFailedVersion` or `InvalidOperationException`
  - Caused by Sophon data got modified mid-flight before the finalization
- **[Fix]** App crashing when minimized to tray on certain system, by @bagusnl 
  - This is caused by missing Windows feature causing the method to be missing, please contact your custom ISOs creator if other errors happened caused by similar 'Incorrect function' error
- **[Fix]** Error when trying to uninstall games that do not have AppData entry, by @neon-nyan 
- **[Fix]** Installation starts before audio package is selected, by @neon-nyan & @bagusnl 
- **[Imp]** Improved Sophon performance by increasing minimum thread pool available for processing files, by @neon-nyan 

# 1.82.8 - Welcome to Natlan!
After many long months of waiting, we're proud to present our stable users with a new version of Collapse.

This release brings so many from preview, that at this point, this changelog might be the longest one we've ever written.
Some changes include a new built-in, app-wide proxy, full support for Zenless Zone Zero, parallelized file downloads (new downloader), new custom background selector (per region and video support), toast notification support, new downloader logic, new playtime tracking UI and logic, bandwidth limiter, playtime synchronization, game file cleanup, automatic error collection.
Among those, are also a bunch of dependency updates that are bundled with Collapse that will ship with this update, notably 7z, among other things.

Thank you for being patient with us while we work on bringing you the best version of Collapse possible. For details, read on!

Because of the particularity of this update, instead of listing it off in topics and subtopics, we're simply going to list off all the changes since the last version sync.

> Due to changes in our data collection mechanism, our Privacy Policy has changed!
> Please [read them here](https://github.com/CollapseLauncher/Collapse/blob/main/PRIVACY.md)
> For those who does not want error reporting enabled, please set system environment variable "DISABLE_SENTRY" to "true" before updating to this version.

> Collapse now has its own website, hosted on a brand new domain! Visit [https://collapselauncher.com/](https://collapselauncher.com/) for an in-depth documentation of Collapse's features!

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

### **[Imp]** Update Playtime when Game has been opened before the Launcher, by @neon-nyan
Previously, the playtime will not get updated when the game was launched before you open Collapse. Thanks to this change, the launcher will now be able to resume and save the last playtime when the game was launched first before the launcher and it also affect the timestamp on Discord RPC to get resumed as well.


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
- **[New]** Burst Download Mode, by @neon-nyan
  - This will make download process of multiple files faster by downloading them in parallel.
  - NOT recommended for those with slower internet, thus disabled by default.
  - As its a very experimental settings, if you want to try, edit the Collapse config file:
    `%AppData%\..\CollapseLauncher\config.ini`, add/modify `IsBurstDownloadModeEnabled` key to "True".
- **[Fix]** Use the Custom Resolution Enforcer for ALL Games, by @bagusnl
  - Practically when you use Custom Res, forces all game to obey the resolution by changing its Window property.
- **[Fix]** Black Bar on top of Image Carousel, by @shatyuka
- **[Fix]** Reimplement Migrate from Steam Feature for Hi3, by @neon-nyan
- **[Fix]** Potentially skipping HDiff patching and old files removal routine while applying ZZZ Update, by @neon-nyan
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
- **[Fix]** ScrollBar rounded corner radius error in Collapse state, by @shatyuka
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
- **[Fix]** Revert NativeAOT publishing and use regular trimmed builds instead, by @bagusnl
  - This due to several reports about freezing and memory leaks. We will try to evaluate this kind of builds more in the future once .NET 9 is fully released.
- **[Imp]** Add new settings for Zenless Zone Zero, by @bagusnl
  - The setting in English is called "High-Precision Character Animation" but in Indonesian its roughly translated as "Dynamic Character Resolution". I honestly don't know what they are doing LMAO
- **[Fix]** Adjusted Star Rail game repair mechanism, by @neon-nyan
- **[Fix]** Sophon pre-download showing the wrong size, by @neon-nyan
- **[Fix]** Plugin update launch errors, by @bagusnl
- **[Fix]** NullReferenceException when checking for launcher update when it's on the latest, by @bagusnl
- **[Imp]** Use async when opening folders from buttons, by @bagusnl
  - Reduces time that the launcher UI freezes when Windows Explorer is taking its time to open
- **[Imp]** Add "Updating" status for Discord RPC that is raised when installing/updating game, by @bagusnl
- **[Fix]** Disable page caching for Repair, Cache Update, and Game Settings Pages, by @neon-nyan
  - This fixes behaviour where those pages are stuck in certain state and F5 does not work.
- **[Fix]** Remove the use of Stub for launching Collapse, by @bagusnl
  - As we moved to Velopack, the use of stub is no longer needed as the latest version will always be in the "current" folder.
- **[New]** Automatic Error Data Collection, by @bagusnl & @Cryotechnic
  - Every time either a crash or error happened, upload the error data alongside with the latest log to Sentry server for further analysis by developers.
  - Thanks Sentry for giving us free access to their Business plan <3
- **[New]** Rewrite Icon generator code to be trim/NativeAOT friendly, by @neon-nyan
- **[Imp]** Updated .NET to GA (Release) version, by @bagusnl
- **[Imp]** Decouples PInvoke code from Hi3Helper.Core to its own Hi3Helper.Win32 submodule, by @neon-nyan
- **[Fix]** Fixed DllNotFoundException when trying to turn on Database Sync feature, by @bagusnl
  - This is caused by missing Microsoft Visual C/C++ Redistributable required for the database handler.
  - Currently, user will be notified about the missing redist and told to download and install them.
- **[Fix]** SharingViolation Exception and other issues on Sophon submodule, by @neon-nyan
  - Fix wrong URL path for manifestToProtoTaskCallback.
  - Fix non-existence files not getting renamed on update.
  - Fix SharedViolation exception by unassigning ReadOnly attribute.
- **[Imp]** Improvement on Sophon submodule, by @neon-nyan
  - Reduce overhead on async I/O by removing unnecessary bridging ``Stream``.
  - Directly invoking ``.GetAsync()`` on getting ``HttpResponseMessage``.
  - Move to .NET 9's ``Convert.ToHexStringLower()`` to convert ``byte[]`` or ``ReadOnlySpan<byte>`` to Hex string.
  - Always check for file availability on enumerating updates. This to avoid unused files from old version to be written into new version.
  - Reuse code to deserializing Protobuf response and its callbacks.
- **[Fix]** Fixed IODenied error in Genshin repair, by @bagusnl
  - This is caused by an asset wrongly marked as Persistent while actually being in StreamingAssets
- **[Imp]** Use local placeholder background while waiting for dispatch background to download, by @bagusnl
  - Also include fixes for IOSharingViolation errors for both background and carousel event images
- **[Imp]** Let user know that Database sync is processing after manual sync, by @bagusnl & @neon-nyan
- **[Fix]** Type casting mistakes on Zenless Zone Zero game settings methods, by @neon-nyan
- **[Imp]** Exception data improvements, by @bagusnl
  - Add CPU and GPU details to make it easier for us to debug
  - Use AssemblyVersion for Release tag so it's handled in the dashboard nicely
  - Detach Enable/Disable setter so it won't freeze the UI when toggling
- **[Fix]** Fixed launcher update logic, by @neon-nyan
  - Fixed errors when/after updating via Velopack
  - Users are advised to freshly installed Collapse (will not affect settings) in this update
- **[Imp]** Updated submodules, by @bagusnl
  - Synced both H.NotifyIcon and DiscordRPC submodules from its main repository
- **[Imp]** Refactor file asset checking mechanism by matching in-game repair behavior for Genshin Impact, by @neon-nyan
  - Hopefully this would fix unwanted behavior which causes the game repair to fail for some reason.
  - Preferring XXH64 hash to be used for file integrity (if available)
- **[Imp]** Improved Full Check Speed on HDD, by @bagusnl & @neon-nyan
  - Limit thread number for checking to 1 if the mechanism detects HDD. Any errors in the mechanism will fallback to detect as HDD and use multithreaded check.
  - Currently only implemented in Genshin Impact repair.
- **[Fix]** More IOSharingViolation fixes for multithreaded ForeachAsync, by @bagusnl
- **[Fix]** AccessDenied error in GameBoost mechanism, by @bagusnl
  - This is probably due to the game not being fully launched yet. The default delay for the mechanism is 10s, slower systems might take longer to load the game.
  - Now game boost mechanism have a retry system that will retry for at least 3 times in the background
- **[Fix]** Retry mechanism in Database operation `StoreKeyValue` not correctly defined, by @bagusnl
- **[Fix]** App crash when logger fails to get console width, by @bagusnl
- **[Fix]** FileNotFound errors on Hi3 repair mechanisms, by @neon-nyan
- **[Fix]** (GI/SR/ZZZ Repair) Fixed Quick Repair does not check for file size matching, by @neon-nyan & @bagusnl
- **[Fix]** Tray icon not appearing in any builds before Windows 11 21H2 (inc W10), by @shatyuka & @bagusnl
- **[Imp]** Sentry enhancements, by @bagusnl
  - Disable error collection in debug builds
  - Add current loaded game location and CDN preference to breadcrumbs
  - Add a way to enable debug logging via console by adding "DEBUG_SENTRY" env var and setting it to true
- **[Imp]** Update dependencies, by @bagusnl
- **[Imp]** Save last known working CDN to config, by @bagusnl
- **[Fix]** ArgumentNull crash on StartCarouselAutoScroll, by @bagusnl
- **[Fix]** Various weird errors that might be caused by Optimization preference, by @neon-nyan & @bagusnl
  - We are noticing quite odd behaviors with some functions, critically Sophon and Http downloader and also SevenZipExtractor modules
  - This error does not seem to be reproducible in Debug environment, but recent development by @neon-nyan found that setting the optimization profile to `Speed` may cause compiler over optimization in certain areas.
  - This fix set the project's compiler optimization to `Size` instead (which is the default .NET behaviour).
  - If this fixes those errors that were problematic then good, if not then we have to rethink about those problematic modules...
- **[Fix]** Exceptions in Carousel methods, by @bagusnl
  - Third time the charm 🤞
- **[Fix]** DirectoryNotFound exception in HTTP module, by @bagusnl
- **[Imp]** Only recreate shortcut once, by @bagusnl
  - Please, no more re-pinning my shortcut...
- **[Fix]** App crash when finalizing update, by @bagusnl
- **[Fix]** Prevent image load fails when waifu2x failes to load / nulled, by @shatyuka
- **[Fix]** (Attempt to) Fix corruption when extracting packages via SevenZipExtractor, by @neon-nyan
- **[Fix]** Download corruption due to download chunk size being too small, by @neon-nyan
- **[Fix]** Double taskbar entry if console is enabled, by @bagusnl
- **[Fix]** Repair function for GI/SR/HI3 detected updated plugin as corrupted, by @bagusnl
- **[Imp]** Update 7z dll to 24.09, by @neon-nyan
- **[Imp]** Http downloader module improvements, by @neon-nyan
  - Bypass drive write cache
  - Use multi threaded file writer
- **[Imp]** ``IniFile`` parser improvements, by @neon-nyan
  + Improving implicit casting on IniValue to numbers
    This to allow maintainers to directly assign the IniValue to variable types.
  + Reduce memory allocation on loading and saving IniFile
  + Improving saving performance to file or a stream.
  + More safety bound check to IniSection
  + Reduce overhead on checking Section Keys and Value Keys
  + Add more checks on loading values
  + Splitting class and structs into their own files
- **[Fix]** Fix redundant Ini save-load mechanism and FileNotFoundException upon loading, by @neon-nyan
  This caused the launcher to throw ``FileNotFoundException`` error in the background and causing the region fail to load.
- **[Imp]** Improvement on ``IniValue``, by @neon-nyan
  - Always cache ``IsEmpty`` property and update it only if the ``Value`` property is being set.
  - Add missing casting for ``Size`` struct
  - Add ``Create()`` static method
  - Add ``ToGuid()`` method and cast support
  - Add support for creating ``IniValue`` from ``Enum``
- **[Fix]** Avoid double desktop shortcut by using user's Desktop path, by @neon-nyan
- **[Fix]** Fix wrong casting on implicit IniValue operator for Int32, by @neon-nyan

### Various Localization Updates
As always, we want to thank are awesome community for providing an amazing localization for our project. Collapse is now localizable in 17 languages and dialects! <3

***
# Minor changes
***
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

Read the full changelog below!

**Full Changelog**: https://github.com/CollapseLauncher/Collapse/compare/CL-v1.73.8...CL-v1.80.9