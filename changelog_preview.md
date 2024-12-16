![](https://raw.githubusercontent.com/CollapseLauncher/.github/main/profile/ReleaseHeader-Wide-2024v2.webp)

# What's new? - 1.82.7 Hotfix
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

# What's new? - 1.82.6
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

# What's new? - 1.82.5
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

# What's changed ? - 1.82.4
- **[Fix]** (GI/SR/ZZZ Repair) Fixed Quick Repair does not check for file size matching, by @neon-nyan & @bagusnl
- **[Fix]** Tray icon not appearing in any builds before Windows 11 21H2 (inc W10), by @shatyuka & @bagusnl
- **[Imp]** Sentry enhancements, by @bagusnl
  - Disable error collection in debug builds
  - Add current loaded game location and CDN preference to breadcrumbs
  - Add a way to enable debug logging via console by adding "DEBUG_SENTRY" env var and setting it to true
- **[Imp]** Update dependencies, by @bagusnl
- **[Imp]** Save last known working CDN to config, by @bagusnl
- **[Fix]** ArgumentNull crash on StartCarouselAutoScroll, by @bagusnl

# What's changed ? - 1.82.3
> **IMPORTANT**
> If you are running installed version of Collapse and having issues with updates (either failing to update or Crashing after), please reinstall Collapse.
> You won't lose any of your data and configs.
> Also, do note that after installation, the installer won't be able to run Collapse due to not having admin access, fix is in the works by Velopack team.

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

# What's changed? - 1.82.2
> **IMPORTANT**
> Due to changes in our data collection mechanism, our Privacy Policy has changed!
> Please [read them here](https://github.com/CollapseLauncher/Collapse/blob/main/PRIVACY.md)
> For those who does not want error reporting enabled, please set system environment variable "DISABLE_SENTRY" to "true" before updating to this version.

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

# What's New? - 1.82.1
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


# Collapse 1.82.0: Natlan

Long time no see! Welcome back to another (quarterly) release of Collapse. This time around, we're bringing many performance
& interface improvements to the launcher; this (hopefully) means that you should see a lot less crashes and a much more
stable launcher experience (get it? Stable version, stable experience...No? No one? Ok :( )

Releases have been a bit slower recently since most of our core maintainers have had a lot less time to contribute. Nonetheless,
this release is packed with a bunch of changes that we hope you'll find useful.

Read on for the complete list of changes!

For (*surely*) faster releases and more experimental features, consider switching to the Preview branch in the App Settings.

# What's New?

## Update to .NET 9 and Switching to NativeAOT Releases
This ***is*** the biggest changes so far for Collapse, requiring about 14K+ lines of codes brought to the repository due to dependencies that is not updated to follow the new standards required for NativeAOT release. You should feel Collapse being more snappy especially when launching from cold.

### So, what is this "NativeAOT" mumbo jumbo?
Usually, a .NET application is executed in ***Just-In-Time*** manner and compiled into [**Intermediate Language (IL)**](https://learn.microsoft.com/en-us/dotnet/standard/managed-code) instead of straight into native code. This however, requires a runtime to be installed into the machine or included within the app.

[**NativeAOT (Ahead-of-Time) compilation**](https://learn.microsoft.com/en-us/dotnet/core/deploying/native-aot) in other hand, will compile your app straight into native machine code executable. Due to its nature, the program can run independently without a runtime since the app was compiled straight into native code, resulting much faster start-up time, smaller memory footprint, smaller executable size and slightly better in performance.

While the app should benefit from using NativeAOT compilation, the developer should follow bunch of [**strict rules and requirements**](https://learn.microsoft.com/en-us/dotnet/core/deploying/native-aot/?tabs=net7%2Cwindows#limitations-of-native-aot-deployment) in order to make their program to work properly. Some of them are the limitation on accessing certain reflection-based methods and dynamic-based types since those requires invocations to happen at runtime.

To get rid all of those obstacles, we refactored bunch of codes with source-generated, COM Interface and Marshal-based/PInvoke ones, which one of them even require a call into [**Win32 API**](https://en.wikipedia.org/wiki/Windows_API) in order to make it work.

While NativeAOT is still a new norm in .NET app development and a very experimental feature, we finally managed to pull it off and make Collapse Launcher to run and compiled straight into **native code executable**.

## New Feature: Bandwidth Limiter
This is by far the (second) biggest change in this release. We've been using the same downloader code since Collapse first released in 2021. While
it worked well enough for its time, it quickly became apparent that, as we wanted to add more features, it became increasingly challenging
to do so in a timely manner because of the amount of time we'd need to spend fixing the HTTP module of Collapse.

Well, no more! We've rewritten the entire module so that it is not only more efficient in terms of downloading, but also uses far less memory!

Due to this rewrite, we've been able to finally implement a bandwidth limiter for Collapse.

Here's what it can do:

- The user can now set the download speed limit
- Download file pre-allocation: The file no longer needs to be merged before the file can be used
- Increased performance by removing *a lot* of asynchronous function calls
- Improved redundancy checks

[https://github.com/user-attachments/assets/7202d6cc-f743-402c-9f65-cdc958c5fab6](https://github.com/user-attachments/assets/952cf15d-7d0d-4099-9669-a267349b0c8f)

See for yourself in your App Settings!

## New Feature: By-region Custom Background Support
One of our most requested features since we've first allowed users to change backgrounds was the ability to change backgrounds based
not only by game but also by region.

What if we told you that now you can do that? And use videos too? Amazing, right?

Here's how you do it: Home Page -> Quick Settings (bottom right) -> Custom Background for Region.

This feature does not require you to enable the Global Custom Background setting.

Background priority as follows: Regional Custom BG -> Global App Custom BG -> API provided BG -> Paimon deadge fallback image.

## New Feature: Notification Toast Support for Background Activities
This feature will help users get notified when a background activity is completed. The notification toast includes support for Game Installation, Game Update, Pre-load Download, Game Repair and Cache Update features.

In its current implementation, the notification only supports text-based content.

https://github.com/user-attachments/assets/4f15d484-d7e2-4015-9331-25b0afc2c56a

## New Feature: Playtime Synchronization across devices
Collapse now supports tracking playtime across multiple devices through an online SQLite database.

While we've been using https://turso.tech and have tested for that platform, any provider that provides SQLite online database instances
through a URL and a token will work.

> [!CAUTION]
> Changing User ID (UID) without taking note of your current User ID will cause the data to be left dangling in the database and not be used anymore.
> While you can edit the database yourself, it's a bit tedious, so please do NOT lose your User ID.
> <br><br> **Collapse staff cannot help you if you misplace your User ID**!

Playtime synced to the online database in a many ways:
1. At first region load
> When the region is first loaded, playtime stats are first loaded from your local machine, then the system fetches from the online database and compares when playtime was last updated.
> If the local data is out of date then the database value will be used and saved locally.
> If the database is out of date, then the local value will be used and saved to the online database.

2. When you first launch your game
3. Every 5 minutes when the game is running
4. When you close your game

## New Feature: Game Cleanup & File Ignore
This feature does pretty much what it says: it allows you to delete any unused files that are no longer referenced by the game,
but that are still shipped with it as part of an update for some reason.

Complementing that feature is the file ignore functionality, which works as follows:
- Create a file called `@IgnoredFiles` that you can put in the game's root directory
- You can then edit the file to include any files that you would like Collapse to ignore when you run the Game Cleanup functionality
  - You must have 1 file per line
  - You can use the simple wildcard `*` in your filename

The Game Cleanup feature is accessible in Quick Settings -> "Files Clean-up".

When deleting, you can also chose between moving them to your Recycle Bin or deleting them permanently from your drive.

https://github.com/user-attachments/assets/eff71a6e-746d-48d1-ae15-ec17c5443a73

## New Feature: Proxy Support
Collapse now supports using a proxy server for the entire app. By default, it will use whatever proxy settings you have configured in Windows.

We currently support the following protocols: HTTP, HTTPS & SOCKS5.

You can find this feature in your App Settings.

### New Game Region Support: Genshin Impact - Google Play
Nothing much to say here, we're now able to offer our users the ability to install the Google Play version of Genshin Impact,
which allows you to sign in with Google Play, among other things.

### New Game Region Support: Zenless Zone Zero - Bilibili
This falls in line with other newer HoYoverse titles. We're happy to be able to support the installation and updating for this region!

***
# Major Changes
***
> [!NOTE]  
> System.Text.Json update fixes [CVE (Security Vulnerability CVE-2024-43485)](https://msrc.microsoft.com/update-guide/vulnerability/CVE-2024-43485)

### Core System Improvements
Aside from all the bugfixes in this release (which you can view in the full changelog), this version improves the following:
- Collapse no longer raises an Exception window when sprites fail to load
- Improved overall log output to console during repair operations
- Migrate icons library from FontAwesome to Segoe Fluent Icons
- The "Game Settings" button has been moved to the bottom of the taskbar, where it now lives with the "App Settings" button
- Added drop shadow to all icons in the navigation menu
- Add social media icon scaling (popout) where necessary
- Adjust UI brightness for light theme users :)
- Parallelize repair I/O & download operations (game & cache)
- Improve file cleanup logic post-update and when uninstalling game
- Add a button to view latest changes (changelog) in App Settings if you want to re-read them
- Collapse will now ensure game configuration correctness to prevent errors when running the game
- Collapse will now notify you when an action has completed (Repair, Preload, Install, etc.)
- Fix issues with acrylic effects not being applied when using a video background
  ![image](https://github.com/user-attachments/assets/c14e7181-5aa6-46a1-8fab-f803c9321b37)
  - To enable, go to App Settings and toggle "Use Acrylic Effect while using Video Background"
    - This feature is single-threaded, so you may experience lag when switching between pages.

    ![image](https://github.com/user-attachments/assets/4f3ed7d6-19a0-4aad-8573-6cf23339e49d)
- Update playtime when game was opened before the launcher

https://github.com/user-attachments/assets/7202d6cc-f743-402c-9f65-cdc958c5fab6

### Updater Improvements
We've (once again) switched updaters for Collapse! As the Squirrel project is in a semi-deprecated state, its users are
encouraged to switch over to Velopack. And that's what we did!

Velopack is a drop-in replacement for Squirrel. As a user, you won't even see the difference, though it does offer some notable benefits:
- Smaller delta sizes for apps
- Background updates, though we don't support this yet
- All the other improvements from Squirrel, but better

Your Collapse install will automatically migrate over to Velopack with this release, no action is required on your part.

### Sophon Downloader Improvements
- Separate package size and speed from game size and I/O speed

https://github.com/user-attachments/assets/e00a0648-4904-45ea-bf30-3201f4fc3896
- Update wording for download panel to help users understand what each element does
- Added help button for the installer modal
- Add ability to specify number of Download Threads
  - By default, this is set to 0, which means that we automatically determine the number based on your system resources.
- Add ability to specify number of Maximum HTTP Connections
  - By default, this is set to 0, which means that we automatically determine the number based on your system resources.

### Package Download Improvements
- Add a new "Burst Downloader Mode", which downloads files in parallel, thus making the process faster
  - Not recommended for people with slower Internet speeds

### Playtime Statistics Improvements
- Add the ability to hide the button through Quick Settings -> "Show Game Playtime"
- You can now hover over the button element to see:
  - Daily/Weekly/Monthly playtime
  - Last played session

https://github.com/user-attachments/assets/224e1048-947a-4bef-9809-8acc05f70945

### Various Localization Updates
As always, we want to thank are awesome community for providing an amazing localization for our project. Collapse is now localizable in 17 languages and dialects! <3

***
# Minor changes
***
We would list all the minor changes here, but due to the amount of commits, we've decided against it for this release.

Read the full changelog below!

**Full Changelog**: https://github.com/CollapseLauncher/Collapse/compare/CL-v1.81.6-pre...CL-v1.82.0-pre
	
# Code Signing Policy
> Free code signing provided by [SignPath.io], certificate by [SignPath Foundation]
- This program will not transfer any information to other networked systems.
- Read our full [**Privacy Policy**](https://github.com/CollapseLauncher/Collapse/blob/main/PRIVACY.md)
- Also read our [**Third Party Notices**](https://github.com/CollapseLauncher/Collapse/blob/main/THIRD_PARTY_NOTICES.md) for license used by third party libraries that we use.

[SignPath Foundation]:https://signpath.org
[SignPath.io]:https://signpath.io
