![UpdateIsAvailable-Campaign](https://github.com/user-attachments/assets/5c5df62c-8570-4018-b6e7-66d5decf8278)

### Hi there, neon-nyan here~

It's been almost 3 weeks since the last preview update. To commemorate Genshin Impact 6.0 (aka: Luna I) update, we have decided to use a new codename for this release: "**Luna**"

With this release, we are bringing a long-awaited feature, the Plugin System. This will catapult the development of Collapse to become not only an exclusively third-party launcher for HoYoverse/miHoYo titles, but also others in the future.

Without further ado, let's get into details of this update!

# Information about 1.83.10 Hotfix
This hotfix includes some bug fixes related with Sophon Update mechanism and some code compilation changes.

# What's New?
## [Plugin System for Other Non-miHoYo Titles Support](https://github.com/CollapseLauncher/Collapse/pull/752), by @neon-nyan
3 Months, 9000+ of lines changes later, we have finally finished the first iteration of Plugin System implementation. For now, only basic functionalities are implemented into this system, per the [v0.1-update1 API Standard](https://github.com/CollapseLauncher/Hi3Helper.Plugin.Core/tree/98ac5f08e48661f50f34b6d2bb2571fb9bd26730), including:
- Game Installation
- Game Update/Preload

> Note: Other features like Game Repair, Game Caches and Game Settings are going to be implemented in the future.

We are planning to make our own in-house plugins which will bring support to two games and are expected to be finished once the Luna release makes it to Stable:
- **Heaven Burns Red**
  Developed and Maintained by: Collapse Project Team (@neon-nyan)
  Status: Completed
- **Wuthering Waves**
  Developed and Maintained by: Collapse Project Team (@Cryotechnic)
  Status: Final Validation Phase

This implementation took more time due to a NativeAOT redesign of the system. We are trying to make the plugin to not only work inside our own codebase, but also usable for any code/launchers implementation out there (if they want to).

We are making the compiled plugin footprint as small as possible by removing any dependencies, with .NET Reflections, stripping out .NET Runtime and implementing COM-Like interfaces to bridge the communication with plugins and the launcher, making the plugin compiled as a native library instead of a .NET standard library. With this, we are achieving 6-7 MB for the plugin library.

The plugin can be managed by using the Plugin Manager menu under the App Settings. Here's how it works:

[2025-09-14 21-51-48.webm](https://github.com/user-attachments/assets/0e972c82-c6d1-41ac-a2a4-b705b703d234)

> **PS:** Plugin download for Heaven Burns Red will be available soon. Join our official Discord to get your hands on that first!~ 👀

## Bring Back NativeAOT Build
The latest .NET 9 Runtime comes with a fix and the UI hang issue has been fixed in most scenarios, which allows us to ship NativeAOT builds again!

Publishing a NativeAOT Build brings some benefits, including faster cold start-up time, slight improvements on overall code performance (which relies on frequent inline calls) and smaller compiled code.

This demo shows an improvement to the cold start-up time while the launcher is launched. We took Stable v1.82.31 as a baseline to the comparison and as a result, old `ILCompile` build start-up finished in 916 milliseconds while `NativeAOT` build start-up finished in just 466 milliseconds.

[ComparisonAOTvsNonAOT.webm](https://github.com/user-attachments/assets/5b659198-76c9-4f42-9836-6901e231da31)

This also results in a much smaller build as most of the .NET runtime code are stripped. Here's the comparison of the build size between two builds (with debug symbols removed):

<img width="731" height="515" alt="image" src="https://github.com/user-attachments/assets/5fb87181-7a00-4169-8903-874111024267" />

## [Revamp Post-Download Behavior Settings](https://github.com/CollapseLauncher/Collapse/pull/777), by @gablm 
We have added few options on how the launcher will behave after a game installation/update. You can also set the Download Speed Limit while performing game installation or update.

<img width="802" height="454" alt="image" src="https://github.com/user-attachments/assets/2df669e5-c44a-4d51-b3e7-a98f203f951d" />

## Cached API Response for Application-wide Functions, by @neon-nyan
Tired of waiting for the launcher to load up each of the regions? Now, you can make it faster. With the new HTTP Cache method, you can make game region loading much faster (almost immediate). Previously, this feature was only available for few features internally, including Game Repair and Cache Updates, but was not controllable. Now, every API calls from the launcher can be cached so the launcher loads everything much-much faster.

[2025-09-14 22-10-08.webm](https://github.com/user-attachments/assets/012d13cb-5bb9-4bf9-8fcf-d7ef43ddb8fa)

# Other Changes - 1.83.10 - Hotfix
- **[Fix]** Sophon Update Issues, by @neon-nyan 
  - Fix invalid FileAccess and FileShare on Patch Download
  - Fix Sophon's IsSkipHashCheckOnWrite logic
  - Increase Sophon Patch download buffer to 64 KB max
- **[Fix]** Bring back detailed exception messages for better diagnostic, by @neon-nyan 

# Other Changes - 1.83.9
- **[Removed]** Remove CODING from CDN Mirror list
- **[Imp]** Recompile Static Libraries with MSVC for NativeAOT builds, by @neon-nyan
- **[Imp]** Update .NET components NuGet to 9.0.9, by @bagusnl @neon-nyan 
- **[Imp]** Update WindowsAppSDK to 1.8-stable, by @neon-nyan 
- **[Imp]** [Improve DBHandler reliability and error handling](https://github.com/CollapseLauncher/Collapse/pull/791), by @bagusnl 
  - Implements a retry mechanism with exponential backoff for database operations
  - Adds detailed logging for debugging and troubleshooting
  - Uses internal methods for querying and storing data to streamline error handling
  - Integrates with Sentry for exception reporting
  - Improves stream expiration handling
- **[Imp]** Decouple Hashing Extensions from Collapse Launcher's Main Code, by @neon-nyan
- **[Imp]** [Improve app-wide logger extensions](https://github.com/CollapseLauncher/Collapse/commit/6acea347768b277a438bc8bd99d3a34314c307ef#commitcomment-164583504), by @neon-nyan
  - Remove memory allocation entirely by writing string directly to Win32 handles
  - Add asynchronous variant for the overloads
  - Add ``DefaultInterpolatedStringHandler`` overload for passing interpolated string.
- **[Imp]** [Improve Sentry Logging](https://github.com/CollapseLauncher/Collapse/pull/795), by @bagusnl
  - Now the telemetry will upload only the last 100 lines from the log instead of sending everything to Sentry. This will reduce time and guarantee the log is successfully sent for analysis.
  - If multiple errors occur, the exceptions will be queued and sent one-by-one. This avoid issues with other reports being sent at the same time.
- **[Imp]** Improve I/O Performance on Sophon submodule, by @neon-nyan
  - Use OS-level file caching
  - Limit `FileStream` handle's access and share parameter
  - Automatically increase `FileStream`'s buffer to now depend on target file size
  - Move ``ChunkStream.CopyToAsync`` into `Task.Factory` and run it synchronously in the background
  - Increase maximum buffer size budget on patch mode from 4 MiB to 32 MiB
  - Allocate only a certain amount of buffer based on target data size (this to avoid buffer overprovision, causing memory and CPU usage spikes)
- **[Fix/Imp]** Ignore assets that marked as "unused/deleted" on ZZZ Game Installation/Update and Game Repair, by @neon-nyan
- **[Fix]** ``NotSupportedException`` error while performing Game Repair on Honkai Impact 3rd and Honkai: Star Rail, by @neon-nyan 
- **[Fix]** Legacy Sophon won't recognize already existed files while installing games from scratch, by @neon-nyan 
- **[Locale]** Update Localizations for vn_VN, es_ES/419, ja_JP, id_ID, zh_CN, by Localizers ❤

# What's changed - 1.83.8? 
- **[Imp]** Update `System.Commandline` to `2.0.0beta6`, by @bagusnl, @shatyuka & @gablm 
- **[Imp]** Migrate `BridgedNetworkStream` & `CopyToStream` functions to `EncTool` submodule, by @neon-nyan 
- **[New]** Add caching for CDN responses, which will hopefully reduce the amount of network calls Collapse makes, by @neon-nyan 
    - This is used as a cache utility for `HttpResponseMessage` saving responses locally based on the cache method used. Two cache methods are currently supported, including:
         - Time-based cache (based on Expire headers)
         - Hash-based cache (based on ETag or Content-MD5 headers) 
- **[Fix]** Restore deleted Sentry `csproj` entries for AOT builds, by @neon-nyan 
- **[Loc]** Add Thai localization to README (thanks!), by @armzyaec 
- **[Imp]** Improve Settings page based on changes made to CDN caching, by @neon-nyan:
    - Allow Cache Garbage Collection if the cache file age is more than allowed maximum time.
    - Allow time-based cache to be clamped if the CDN expire time is larger than allowed maximum time.
    - Adding Aggressive Caching mode.
      > This mode allow the response to be always cached based on how long the allowed maximum time.
    - Add new method: `SetCacheDirSkipGC`
    > This method is used to set the cache directory and skipping the garbage collection.
    - Ensure to always set `Length` as 0 if source stream's `.Length` isn't supported on `CopyToStream`
- **[Imp]** Add new async methods for `DnsQuery` & fix marshalling issues in `Hi3Helper.Win32`, by @neon-nyan  
- **[Imp]** `HttpClientBuilder` improvements, by @neon-nyan:
    - Make DNS resolve from Client -> OS fully asynchronous
    - Use shared DNS Nameservers instead of per-`HttpClient`
    > This way, the users can change the DNS settings without restarting the app.
    - Remove `HttpClientBuilder<THandler>` and instead explicitly use `SocketsHttpHandler` via `HttpClientBuilder`
- **[Fix]** Fix incorrect i18n string used for Anisotropic Filtering in ZZZ, by @shatyuka
- **[Imp]** Update `SRAM` version & parsing to account for new HSR asset type in version 3.5.0.
- **[Imp]** Update .NET components NuGet to 9.0.7, by @bagusnl 
- **[Loc]** Update localizations, by our Localizers. Thanks for all your hard work ❤️ 

# What's changed - 1.83.8? 
- **[Imp]** Update `System.Commandline` to `2.0.0beta6`, by @bagusnl, @shatyuka & @gablm 
- **[Imp]** Migrate `BridgedNetworkStream` & `CopyToStream` functions to `EncTool` submodule, by @neon-nyan 
- **[New]** Add caching for CDN responses, which will hopefully reduce the amount of network calls Collapse makes, by @neon-nyan 
    - This is used as a cache utility for `HttpResponseMessage` saving responses locally based on the cache method used. Two cache methods are currently supported, including:
         - Time-based cache (based on Expire headers)
         - Hash-based cache (based on ETag or Content-MD5 headers) 
- **[Fix]** Restore deleted Sentry `csproj` entries for AOT builds, by @neon-nyan 
- **[Loc]** Add Thai localization to README (thanks!), by @armzyaec 
- **[Imp]** Improve Settings page based on changes made to CDN caching, by @neon-nyan:
    - Allow Cache Garbage Collection if the cache file age is more than allowed maximum time.
    - Allow time-based cache to be clamped if the CDN expire time is larger than allowed maximum time.
    - Adding Aggressive Caching mode.
      > This mode allow the response to be always cached based on how long the allowed maximum time.
    - Add new method: `SetCacheDirSkipGC`
    > This method is used to set the cache directory and skipping the garbage collection.
    - Ensure to always set `Length` as 0 if source stream's `.Length` isn't supported on `CopyToStream`
- **[Imp]** Add new async methods for `DnsQuery` & fix marshalling issues in `Hi3Helper.Win32`, by @neon-nyan  
- **[Imp]** `HttpClientBuilder` improvements, by @neon-nyan:
    - Make DNS resolve from Client -> OS fully asynchronous
    - Use shared DNS Nameservers instead of per-`HttpClient`
    > This way, the users can change the DNS settings without restarting the app.
    - Remove `HttpClientBuilder<THandler>` and instead explicitly use `SocketsHttpHandler` via `HttpClientBuilder`
- **[Fix]** Fix incorrect i18n string used for Anisotropic Filtering in ZZZ, by @shatyuka
- **[Imp]** Update `SRAM` version & parsing to account for new HSR asset type in version 3.5.0.
- **[Imp]** Update .NET components NuGet to 9.0.7, by @bagusnl 
- **[Loc]** Update localizations, by our Localizers. Thanks for all your hard work ❤️ 

# What's changed - 1.83.7? 
- **[Fix]** [Sophon] Avoid Patch mode accidentally deleting files with no patch reference, by @neon-nyan 
- **[New]** [Sophon] Support / Adding compatibility to Read/Download Pre-loads From/To HoYoPlay's "Ldiff" folder, by @neon-nyan 
  > Collapse will now automatically use "Ldiff" folder as its default destination for reading/downloading pre-load, making Collapse able to use patch that already been downloaded by HoYoPlay and use it for patch, or vice versa (Download the pre-load on Collapse, apply on HoYoPlay later)
- **[Imp]** [Sophon] Reducing I/O overhead and improve read performances for Patch/Asset checking, by @neon-nyan 
- **[Imp]** Update NuGet, by @bagusnl 
  - Microsoft.Web.WebView2: 1.0.3344-prerelease -> 1.0.3415-prerelease
  - Microsoft.WindowsAppSDK: 1.8.250515001-experimental2 -> 1.8.250702007-experimental4

# What's changed - 1.83.6? 
- **[Fix]** Deprecating CODING CDN and Replace it with CNB CDN (Cloud Native Build by Tencent Cloud Computing (Beijing) Co., Ltd) for Mainland China users, by @shatyuka
  [**Click here**](https://docs.cnb.cool/en/saas/privacy.html) to see details about its Privacy Policy (in Simplified Chinese).
- **[Fix]** Fix FileNotFoundException while changing HDR Settings on Genshin Impact GSP, by @shatyuka 
- **[Imp]** Accept the use of Symbolic Links on Zip package installation mode, by @bagusnl 
- **[Fix]** Fix game priority booster returning error on success operations, by @bagusnl 
- **[Imp]** Update NuGet Packages, by @bagusnl 
  - Microsoft.Extensions.DependencyInjection.Abstractions: 9.0.5 -> 9.0.6
  - Microsoft.Extensions.Logging.Abstractions: 9.0.5 -> 9.0.6
  - Markdig.Signed: 0.41.2 -> 0.41.3
  - System.Security.Cryptography.ProtectedData: 9.0.5 -> 9.0.6
  - System.Text.Encoding.CodePages: 9.0.5 -> 9.0.6
  - System.Text.Json: 9.0.5 -> 9.0.6
- **[New]** Adds debug dialog spawning UI in settings, by @Cryotechnic
  - Though, this feature isn't enabled on release builds.
- **[Fix]** Unmatched download size + ZZZ Sophon issue, by @neon-nyan,
- **[Fix]** @DisableSophon and Disabling Sophon on Settings won't work, by @neon-nyan,
- **[Loc]** Update Localizations for zh_CN, es_es/419, ja_JP, by Localizers

# What's changed - 1.83.5? 
- **[Fix]** File sharing error on background image file, by @shatyuka 
- **[Fix]** Crashing during startup in certain system caused by race condition in EnableWindowNonClientArea method, by @bagusnl 
- **[Fix]** Incorrect per-file size if patch file has already been downloaded, by @neon-nyan 
- **[Fix]** NRE spam on DB initializer when DB URL/Token is empty, by @bagusnl 
- **[Fix]** ObjectDisposed exception rare occassion when calling DispatcherQueue.HasThreadAccess, by @bagusnl 
- **[Imp]** Sophon improvements, by @neon-nyan 
  - Reduce memory overhead
  - Reduce timed-out occurrence when downloading objects
  - Adding check to include additional packages if they were installed
  - Only trigger full download (with additional packages) on initial installation
    - No dialog involved. If you need to the dialog in order to download the base file, add a blank file with name: @AskAdditionalSophonPackage in your game directory

# What's changed - 1.83.4?
- **[Fix]** Re-introduce shared webp libraries on non-AOT builds, by @neon-nyan 
- **[Fix]** Avoid using long directory paths for ZZZ assets, by @neon-nyan 
- **[Fix]** Resolve taskbar progress being shown incorrectly during ZZZ game repair, by @neon-nyan 
- **[Imp]** Re-align subproject commits for main project (and update package-lock.json), by @bagusnl 
- **[New]** Prevent Windows from shutting down if a critical operation within Collapse is underway (update, install, repair), by @bagusnl, @neon-nyan 
- **[Fix]** Resolve an issue where a race condition could occur when loading a background, by @neon-nyan 
- **[Imp]** Introduce a delay if database communication fails for some reason, by @bagusnl 

# What's changed? - 1.83.3
- **[Fix]** Update .NET to 9.0.5 to address [CVE-2025-26646](https://github.com/advisories/GHSA-h4j7-5rxr-p4wc), by @bagusnl 
- **[Imp]** Update project dependencies, by @bagusnl
  - Microsoft.Windows.SDK.BuildTools (10.0.26100.3916 -> 10.0.26100.4188)
  - Velopack (0.0.1053 -> 0.0.1297)
  - Sentry (5.6.0 -> 5.10.0)
  - Protobuf (3.30.0 -> 3.31.1)
  - WindowsAppSDK (1.8.250410001-experimental1 -> 1.8.250515001-experimental2)
  - Webview (1.0.3240.44 -> 1.0.3296-prerelease)
  - Markdig.Signed (0.41.1 -> 0.41.2)
- **[Fix]** Avoid initializing `config.ini` on initialization, by @neon-nyan 
- **[Fix]** Make Collapse aware of alternate game executable names, by @neon-nyan 
- **[Fix]** Remove unused string on delta patch repair mechanism, by @neon-nyan 
- **[Fix]** Fix wrong indicator if the game has both Sophon and Delta-patch file during update, by @neon-nyan 
- **[Fix]** Resolve an issue where the app would crash when the user creates a Steam shortcut for the game, by @neon-nyan 
- **[Imp]** Prevent repair from nuking the install for Genshin Impact, by @bagusnl 
- **[Imp]** Add image loading retry function, by @bagusnl 
- **[Fix]** Remove Velopack update error in console window due to the app not being installed (e.g., when ran as a nightly build or in Debug mode), by @bagusnl 
- **[Fix]**: Ignore 404 error when repairing files. The repair function will now simply skip the file and log the file that returns the 404 in the console window instead of interrupting the process altogether, by @bagusnl 
- **[Fix]**: Fix Sophon running while fallback ZIP mode is enabled, by @neon-nyan 
- **[New]**: Support game patching following ZZZ 2.0 update, by @neon-nyan 
- **[New]**: Adding "Ambient Noise Volume" on ZZZ Game Settings page, by @neon-nyan 

# What's changed? - 1.83.2
- **[Fix]** SharingViolation errors while installing/updating games with Sophon mode (eg. Genshin Impact and Zenless Zone Zero), by @neon-nyan
- **[Imp]** Streamline submodule branches to main for Hi3Helper.EncTool, Hi3Helper.Http and Hi3Helper.Sophon for easier maintainability, by @neon-nyan
- **[Imp+Fix]** Rewriting the whole Genshin Impact's Game Repair pipelines to match game in-game download behavior, by @neon-nyan.
  This fixes most bugs, including some NotFound error, misplaced files and duplicate files due to the code still runs in how Genshin's in-game download behaves prior < 5.x
- **[Fix]** Binding issues causing lags on SettingsPage's initial load, by @neon-nyan 
- **[Fix]** ``FileMigrationProcess`` pipelines, by @neon-nyan 
  - Fix where the migration might remove unwanted non-game files.
  - Fix where some old empty folders aren't getting removed.
  - Fix [#727](https://github.com/CollapseLauncher/Collapse/issues/727) where user can't move the game files into a subfolder inside of the current folder.
- **[Imp]** Borrow some functions from ``GenshinRepair`` instance on File Clean-up on Genshin Impact, by @neon-nyan 
- **[Fix]** Some race condition due to ``Lock`` misuses, by @neon-nyan 

# What's changed? - 1.83.1
- **[Fix - Genshin Impact]** Infinite Loop/Getting Stuck while Updating Game to 5.6.0, by @neon-nyan 
- **[Fix - Genshin Impact]** Crash on File Cleanup feature due to missing Zip's pkg_version ScatteredFiles reference, by @neon-nyan 
- **[Fix - Genshin Impact]** Crash on Game Repair feature due to missing Zip's pkg_version ScatteredFiles reference, by @neon-nyan 
- **[Fix]** Possible crash when user defines ``version`` field in ``config.ini`` with 2-numbers or less format, by @neon-nyan 
- **[Fix]** [**#736**](https://github.com/CollapseLauncher/Collapse/issues/736) GameIniVersion ignores mismatched value, by @neon-nyan 
- **[Fix]** [**#737**](https://github.com/CollapseLauncher/Collapse/issues/737) Multi-instance doesn't work, by @neon-nyan 

**Full Changelog**: https://github.com/CollapseLauncher/Collapse/compare/CL-v1.83.0-pre...CL-v1.83.1-pre

# What's New? - 1.83.0
## External DNS Support, by @neon-nyan 
Ability to set the DNS request to specific server just for the launcher. Supports plain DNS (UDP/53), DNS over HTTPS (DoH), and DNS over TLS (DoT). Includes 3 predefined DNS providers, Cloudflare (`$cloudflare`), Google (`$google`), and quad9 (`$quad9`). User can customize to use other DNS provider(s) and use multiple all at once as a fallback. 

![image](https://github.com/user-attachments/assets/b40f065f-2220-4ccf-9a3d-fbd534f7be33)

## Search on App Settings, by @bagusnl & @neon-nyan 
Tired of scrolling all of our launcher MASSIVE tunable options? Us too! That's why we have implemented a way to search all the available settings by just typing it, then you can navigate by using arrows to get to the settings you want. Works in all of our supported locales!

![image](https://github.com/user-attachments/assets/f9d9f357-e9bf-4cfd-a733-9571c4b58348)

## Sophon Patch for Game Update Implementation, by @neon-nyan 
HoYo recently released what we called "Sophon Patch Mode" for game update. This method is different than the older "Sophon Chunk" as the patch method compares the entire file instead of replacing part of the file like in chunk method. This leads to Pre-download size reduction on Genshin Impact (EN+JP VO) from 15.97 GB with Sophon Chunk to 5.92 GB (almost a third of the size). Pretty good work on HoYo side, but we observed only a few of HoYoplay users have them. 

With our implementation, everyone can use them! (As long as it's provided in the game's update data from HoYo). You can also disable them the same way as you disable the Sophon Chunk method.

![image](https://github.com/user-attachments/assets/72c646ed-4a61-46f1-83ea-c4240a5dff87)

# Other changes:
- **[New]** Kill other instance that doesn't have window, by @bagusnl 
- **[Imp]** Improved WebView panel backend, by @bagusnl 
  - Immediately dispose and release all related resources on panel close.
  - Ensures WebView instance is available before the UI is displayed and interactable.
- **[Imp]** Move our release CI to GitHub action, by @bagusnl 
  - Everyone can now monitor all of our release easily by opening the [Action tab](https://github.com/CollapseLauncher/Collapse/actions/workflows/release-signed.yml). You can also verify all the binaries were coming from the build as we upload both the unsigned and the signed build in the artifacts of the run.
  - The move from AppVeyor to GitHub is due to annoying fact that AppVeyor has a very long initialization time before the CI is even run, and also with separate config that we can only test when putting up a release meaning everytime the CI breaks especially on an emergency release, it is quite a feat to fix in terms of how much time it takes for both waiting and fixing it, also the sanity of the CI maintainer due to [how annoying the CI config looks](https://github.com/CollapseLauncher/Collapse/blob/1.83.x-staging/Backup/unused-app-veyor.yml)/
  - By moving to GitHub Actions, we can monitor the CI availability as its the same commands that gets run every time we push a commit. So, when it breaks, we know before any release and can fix it easily.
- **[Fix]** Increase DiscordRPC connection issue wait time to 5s, by @bagusnl 
  - Decrease the spam when RPC can't connect with the server, usually when Discord is not yet loaded.
- **[Fix]** Implemented the new hashing and repair method for Hi3 v8.2, by @neon-nyan 
  - The hash have been changed from MD5 to MMH64B and it should now be fully implemented in Collapse.
  - Let us know if you have any issue with it!
- **[Fix]** Zip to Sophon force fallback - Annotated from [**#733**](https://github.com/CollapseLauncher/Collapse/pull/733)
  - As per Genshin Impact 5.6.0 preload today, miHoYo just removed Zip packages on HoYoPlay API. This caused our launcher unable to detect or determine update state due to the main dependencies to Zip packages only.
  - This release fixes the issue by checking if Zip is unavailable, then tell the GameVersionManager to fallback by forcefully redirect the install/update/preload methods to Sophon mode. This releases also fixes the same issue if HoYo might remove the Zip packages to other games in the future.

**Full Changelog**: https://github.com/CollapseLauncher/Collapse/compare/CL-v1.83.2-pre...CL-v1.83.3-pre
	
# Code Signing Policy
> Free code signing provided by [SignPath.io], certificate by [SignPath Foundation]
- This program will not transfer any information to other networked systems.
- Read our full [**Privacy Policy**](https://github.com/CollapseLauncher/Collapse/blob/main/PRIVACY.md)
- Also read our [**Third Party Notices**](https://github.com/CollapseLauncher/Collapse/blob/main/THIRD_PARTY_NOTICES.md) for license used by third party libraries that we use.

[SignPath Foundation]:https://signpath.org
[SignPath.io]:https://signpath.io
