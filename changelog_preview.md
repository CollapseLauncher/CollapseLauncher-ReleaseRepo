# Welcome to 1.0.51.2 Update!

# Attention
This release is based on ``RegionSelectorRefactor`` branch for [**PR: #24 Game Selector Refactor and Adding 崩壊3rd (Japanese PC Client) Support**](https://github.com/neon-nyan/CollapseLauncher/pull/24) Pull Request. The changes might be still in-progress.

The launcher is now moving to .NET 7-rc1 too. Please consider to update the launcher by reinstalling instead from built-in updater feature to avoid big size update.

# What's New?
### - **[Launcher/Runtime]** [Per-category based game & region selection (based on PR: #24).](https://user-images.githubusercontent.com/30566970/192162496-1c686b0a-df5c-4003-bbf0-8953edaef8af.mp4)

### - **[Honkai Impact 3rd]** New 崩壊3rd (Japanese PC Client) Support.
> Yes, **you heard it right!**. This isn't something new though. The Official Launcher was actually available since 5.8 but you have to download it via Google Play Store for PC and you must have Japanese Google Account to get it. To make it reachable for everyone, this version is now coming to **Collapse Launcher!**
>
> ![image](https://user-images.githubusercontent.com/30566970/192162535-78d5ccda-3bfe-4fdb-a419-5eb74417f961.png)

### - **[Launcher]** Update translation of Simplified Chinese (based on PR: #21 - Big thanks @misaka10843 for your continuous contribution ❤️).
- **[Runtime]** [Reduce usage of async and delayed tasks](https://github.com/neon-nyan/CollapseLauncher/commit/9c7ea84d6513f67fd036b89e48abdcff841d6cbd)
- **[Runtime]** [Execute routine if only all components are loaded](https://github.com/neon-nyan/CollapseLauncher/commit/4379081657afab0a89863fc9967cfd3341ee15cc)
- **[Runtime]** Moving the runtime to **.NET Core 7-rc1** and **WinUI 3 1.1.5**
- **[Runtime]** Update NuGet packages.
    - **Microsoft.NETCore.App** (6.0.7 -> **7.0.0-rc.1.22426.10**)
    - **Microsoft.Windows.SDK.BuildTools** (10.0.22621.1 -> **10.0.25206-preview**)
    - **Microsoft.WindowsAppSDK** (1.1.4 -> **1.1.5**)
    - **System.Drawing.Common** (6.0.0 -> **7.0.0-rc.1.22426.10**)
    - **runtimepack.Microsoft.NETCore.App.Runtime.win-x64** (6.0.7 -> **7.0.0-rc.1.22426.10**)

***

# What's Fixed?
- **[Runtime]** Fix the launcher not running as administrator by default in 1.0.40.8 build.
- **[Runtime]** [Fix the language not applied after selected from start-up](https://github.com/neon-nyan/CollapseLauncher/commit/8d1983419902f0a5be69709793a9cef219351374)
- **[Runtime]** [Fix the cache update thrown an exception](https://github.com/neon-nyan/CollapseLauncher/commit/acd19689c2b133a83f4b23e3a34c346dffcb4841) (Issue: #22 - Thank you @muscularcandy67 for reporting this issue).
- **[Runtime]** [Fix potential crash if path isn't exist while checking game settings](https://github.com/neon-nyan/CollapseLauncher/commit/3c990e2f63a4234f809dc4581c144cf972dbd6db)
- **[Runtime]** [Fix crash while choosing image with initial bg gone missing](https://github.com/neon-nyan/CollapseLauncher/commit/a3882dff553cfc1d51979be0cc9903f6bf07d177)
- **[Launcher]** [Fix the cache update to show the date even it hasn't been downloaded.](https://github.com/neon-nyan/CollapseLauncher/commit/acd19689c2b133a83f4b23e3a34c346dffcb4841)
- **[Launcher]** [Fix theme got transparent if Windows transparent effect is disabled.](https://github.com/neon-nyan/CollapseLauncher/commit/61a8f5e69debb4c33bdb6d51237ba09faeca181a)
- **[Launcher]** [Show prompt to locate directory if ``game_install_path`` is empty](https://github.com/neon-nyan/CollapseLauncher/commit/0c746bb0caddb4812192716a6807ed1afdd529c3) (Issue: #20 - Thank you for @KorewaLidesu for reporting this issue)
- **[Launcher]** [Fix cache update, game download and game preload to crash](https://github.com/neon-nyan/CollapseLauncher/commit/71571e4ff12a3df7ce5d2e6ef6a1b670ee43aa10) (Thank you @bagusnl for reporting this issue on Discord)

***

## Big Thanks to Sponsors ❤️ ٩(◕‿◕｡)۶
### - @KorewaLidesu