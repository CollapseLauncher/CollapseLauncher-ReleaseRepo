![](https://raw.githubusercontent.com/CollapseLauncher/.github/main/profile/ReleaseHeader-Wide-2024v2.webp)

> We've recently released a new launcher status tracker! Head on over to https://status.collapselauncher.com to see it!

# A New Version is Approaching!
We began to roll-out new releases by bringing new upcoming features and improvements to the launcher in-front of your door. As a preparation, you might receives new builds while the release is still in development, so the new features you can try out sooner.

### Welcome to the 1.83 Release!

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
