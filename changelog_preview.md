# Welcome to 1.0.52.0 RC1 Update!

# Attention
This preview build is a Release Candidate for the next stable version. Some of the feature isn't yet final and need to be polished (for example: Translataion).
Yet, this build has the most changes so far and lots of fixes and changes being made.

Don't forget to thank you so much for all of your support to keep this project alive.

![](https://media.discordapp.net/stickers/972739423777210418.webp)

# What's New (since 1.0.36.3 Stable release)?
- ### **[Launcher]** New Centered Game Selector for Windows 11
> This style was supposed to be applicable for Windows 10 too since WinUI 3 1.2-pre1 has introduced [**``AppWindowTitleBar``**](https://learn.microsoft.com/en-us/windows/apps/windows-app-sdk/preview-channel#windowing) support for Windows 10 (1809 and later). But unfortunately, the drag-area doesn't work so we leave it as previous position.

![image](https://user-images.githubusercontent.com/30566970/196019611-66c8249e-2dbc-49af-bb9d-6203322e8b9e.png)

### - **[Launcher]** New Rounded Buttons and UI Minor Adjustment.
> You might notice that there are some minor changes on the UI, including the new cylindrical button and few adjustment on notification, acrylic style, etc.

![](https://user-images.githubusercontent.com/30566970/196022683-684eb88d-cc8d-4dec-bca4-d48c48476116.png)

### - **[Launcher/Runtime]** Per-category based game & region selection (based on PR: #24).

https://user-images.githubusercontent.com/30566970/196020303-6be4f862-7007-4da0-8bf3-2e5c4b18d231.mp4

### - **[Honkai Impact 3rd]** New 崩壊3rd (Japanese PC Client) Support.
> Yes, **you heard it right!**. This isn't something new though. The Official Launcher was actually available since 5.8 but you have to download it via Google Play Store for PC and you must have Japanese Google Account to get it. To make it reachable for everyone, this version is now coming to **Collapse Launcher!**
>
> ![](https://user-images.githubusercontent.com/30566970/196020535-282fb2d9-8a94-4740-9174-17f28d6f19c0.png)

- ### **[Launcher]** Markdown based Release Notes on self-update menu.

[**Click here for the preview video**](https://user-images.githubusercontent.com/30566970/196020812-c3fbedda-090d-4f5f-a762-d71dc7b4d2f8.mp4)

### - **[Launcher]** New Update Experience using the same In-Launcher Update Page.

![](https://user-images.githubusercontent.com/30566970/196021733-f3bf443a-3564-4707-8638-93ed81b47da4.png)

### - **[Launcher]** Instant Migration Mechanism
> The launcher will now using the existing game installation path instead of moving it to different location.

[**Click here for the preview video**](https://user-images.githubusercontent.com/30566970/196022966-1523b4c8-5cf7-422e-80ac-5cc9b95b9f66.mp4)

### - **[Launcher]** Conversion process will now asking you to download the Cookbook file manually.
> Since we are planning to make Repair and Conversion process to be independent from Hi3Mirror project, you'll now be asked to download the Cookbook file manually from the link provided in the launcher.

![](https://user-images.githubusercontent.com/30566970/196023124-9892ca44-8ac9-4616-886d-87bc44a96c65.png)

### - **[Launcher]** New First-Install Walkthrough 
> Now you can choose your game before getting into the launcher and install it. This hopefully could get rid of any confusion for new users and reduce any chance of accidentally download the wrong game client.

[**Click here for the preview video**](https://user-images.githubusercontent.com/30566970/196023170-7dc34793-480c-4700-9406-8adf8feeb64e.mp4)

### - **[Honkai Impact 3rd]** Rollback Mechanism on Delta Patch Update and Game Conversion Mechanism
> We are now implementing the rollback feature to prevent the user to redownload the game if delta patch update or game cconversion is failed or uncompleted. Not really big change but useful for most cases.

![](https://user-images.githubusercontent.com/30566970/196023329-1ee26d11-7b10-4409-b932-222f2307fd1e.png)
> Artwork by: [**TOMOGY**](https://www.pixiv.net/en/artworks/98253306)

### - **[Honkai Impact 3rd]** Add an Ability to Cancel Game Conversion (Also Rollback Mechanism if the Conversion has Failed)
> Not only rollback mechanism for Delta Patch Update, we also introduces the Cancel mechanism for Game Conversion.
> Also with the implementation of Rollback Mechanism for Game Conversion, now you don't need to worry about your game getting deleted because of failure while converting your game.

![](https://user-images.githubusercontent.com/30566970/189890872-6b1c6c4a-946f-4e67-b5e2-488296ec1e81.png)

- **[Runtime]** Switching from ``Newtonsoft.Json`` to **Source Generated** ``System.Text.Json`` for De/Serialization. [**``aeefab4``**](https://github.com/neon-nyan/CollapseLauncher/commit/aeefab4541a2b3dcbda5250156421bacde096c9c) [**``8d260a3``**](https://github.com/neon-nyan/CollapseLauncher/commit/8d260a3d220975b588f4f0b8d86c4239e3b72f04)
- **[Runtime]** Move Repo List for Repair, Conversion and Delta Patch mechanism from **Hi3Mirror** to **CollapseLauncher-Repo** Repository. [**``7668bf2``**](https://github.com/neon-nyan/CollapseLauncher/commit/7668bf2ac937ee0a6fcc8da95e73af2eb9e046e8) [**``e9c72a6``**](https://github.com/neon-nyan/CollapseLauncher/commit/e9c72a62e2922fa05211ebc500a05af435b526d7) [**``a477882``**](https://github.com/neon-nyan/CollapseLauncher/commit/a47788265c0b17c3af57aebe7861ae6318a3bedc) [**``cda0d13``**](https://github.com/neon-nyan/CollapseLauncher/commit/cda0d1377360eb5fd9fab6950d28d4cb58216e32)
- **[Runtime]** Reduce usage of async and delayed tasks. [**``9c7ea84``**](https://github.com/neon-nyan/CollapseLauncher/commit/9c7ea84d6513f67fd036b89e48abdcff841d6cbd)
- **[Runtime]** Execute routine if only all components are loaded. [**``4379081``**](https://github.com/neon-nyan/CollapseLauncher/commit/4379081657afab0a89863fc9967cfd3341ee15cc)
- **[Runtime]** Moving the runtime to **.NET Core 7-rc1** and **WinUI 3 1.2-preview 2**
- **[Runtime]** Separate ``Hi3HelperCore`` to each sub-part (like ``Hi3Helper.Http``, ``Hi3Helper.Core`` and ``Hi3Helper.EncTool``)
- **[Launcher]** Add Zone detail attributes. [**``37722f8``**](https://github.com/neon-nyan/CollapseLauncher/commit/37722f89795e24ae3af0a2ff846b33b8cfb3c706)
  This will be used in the future.
- **[Launcher]** Change default theme to dark and change default accent color. [**``a51a97b``**](https://github.com/neon-nyan/CollapseLauncher/commit/a51a97b761af45087fdf0e7754784e71071eec8d)
- **[Launcher]** Localize Unhandled Exception page. [**``2e071e1``**](https://github.com/neon-nyan/CollapseLauncher/commit/2e071e17f24fc04c8c9616b37987eaf1a63a9505)
- **[Launcher]** Move all ``ThemeDictionaries`` to App.xaml. [**``d55846d``**](https://github.com/neon-nyan/CollapseLauncher/commit/d55846d71a22cf1f8d4ad1796f17feccea3a5185)
- **[Launcher]** Add an ability to pause Image Carousel when hovered. [**``782f473``**](https://github.com/neon-nyan/CollapseLauncher/commit/782f473f86a0acaee093363d67fa290332e3e013)
- **[Launcher]** Add Rollback Check for Game Conversion. [**``000719d``**](https://github.com/neon-nyan/CollapseLauncher/commit/000719d47610a74558ba2d62438e557889a4f88f)
- **[Runtime/Code Quality]** Reduce usages of ``DispatcherQueue`` at some cases.
- **[Runtime/Code Quality]** Add nullable check for Game Installation and Logger. [**``328628d``**](https://github.com/neon-nyan/CollapseLauncher/commit/328628d45f96d317e7fbdf047abdbf0e2db7b13c)
- **[Submodule - ColorThief]** Move to local fork for [**ColorThief**](https://github.com/neon-nyan/ColorThief) submodule, including [**these changes**](https://github.com/KSemenenko/ColorThief/commit/ec9c045bdd9b85f56f998920803bf504f9660f18):
  - Removing unused alpha calculation.
  - Renaming ``ColorThiefDotNet.Color`` to ``ColorThiefDotNet.CTColor`` to avoid ambiguity with ``System.Drawing.Color``.
  - Using ``int`` casting instead of ``Convert.ToInt32()``.
  - Using ``byte[][]`` instead of ``IEnumerable<byte[]>`` at some parts
  - Adding ``GeneratePaletteList()`` method (returns ``List<QuantizedColor>``) and ``GetPaletteEnumeration()`` method (returns ``IEnumerable<QuantizedColor>``)
- **[Submodule - Hi3Helper.Http]** [**Refactor the whole Hi3Helper.Http codes:**](https://github.com/neon-nyan/Hi3Helper.Http/pull/2)
  - All download methods will be merged into one overloaded ``Download()`` method.
  - Async method ``DownloadAsync()`` will only be available for Multi-session mode with awaiters: ``WaitUntilAllSessionDownloaded()``, ``WaitUntilAllSessionReady()``
  - Method for merging Multi-session mode will be renamed to ``Merge()`` with Async name ``MergeAsync()`` with awaiters: ``WaitUntilAllMerged()``.
  - We added an ability to set the user-agent while initializing the class.
  - Using XOR'ed session file number to avoid conflict while switching to the new session number.
  - Disable compression by default.
- **[Runtime]** Logging ``NullReferenceException`` on install/update. [**``220d2b6``**](https://github.com/neon-nyan/CollapseLauncher/commit/220d2b62d661bc4071329f27aa53793b5aa7f356)
- **[Runtime]** Force show console outside of launcher scope. [**``565f237``**](https://github.com/neon-nyan/CollapseLauncher/commit/565f23714e21186f75b27c248cd23602c7857695)
- **[Runtime]** Update and Use New NuGet packages
    - **runtimepack.Microsoft.NETCore.App.Runtime.win-x64** (New/**7.0.0-rc.1.22426.10**)
    - **CommunityToolkit.WinUI.UI** (New/**7.1.2**)
    - **System.Text.Json** (New/**7.0.0-rc.2.22472.3**)
    - **Microsoft.Windows.CsWinRT** (New/**2.0.0**)
    - **Newtonsoft.Json** (**Removed**)
    - **Microsoft.NETCore.App** (6.0.7 -> **7.0.0-rc.1.22426.10**)
    - **Microsoft.Windows.SDK.BuildTools** (10.0.22621.1 -> **10.0.25211-preview**)
    - **Microsoft.WindowsAppSDK** (1.1.4 -> **1.2.220930.4-preview2**)
    - **System.Drawing.Common** (6.0.0 -> **7.0.0-rc.2.22472.3**)
    - **runtimepack.Microsoft.NETCore.App.Runtime.win-x64** (6.0.7 -> **7.0.0-rc.1.22426.10**)
    - **7-zip (7z.dll)** (21.06 -> **22.01**)

***

# What's Fixed (since 1.0.36.3 Stable release)?
### - **[Runtime]** Fix window title doesn't applied on stable release. [**``dc2e989``**](https://github.com/neon-nyan/CollapseLauncher/commit/dc2e989ba8bf9f1284d677918ec934a5c1bb3e8a)[**``b69fa84``**](https://github.com/neon-nyan/CollapseLauncher/commit/b69fa84bbe2ff83e6b9bc05881180e42c1ad9a41)[**``ef7a1fe``**](https://github.com/neon-nyan/CollapseLauncher/commit/ef7a1fe0b5e26dbf03f8394b4afbdef5ba5ab5c1)
> We just noticed that the Window Title and Window Icon is not applied by default. To fix this, we have to initialize the title and icon in-code instead from project file.

![](https://user-images.githubusercontent.com/30566970/196025319-b3641677-5573-49a5-b9fa-6ecbb9dda821.png)

- **[Launcher]** Fix the News Panel doesn't fade-out if toggle is set to off. [**``8c8987b``**](https://github.com/neon-nyan/CollapseLauncher/commit/8c8987b865054e93027f1d0a52078dc4c7411fbc)
- **[Runtime/Genshin Impact]** Fix the language setter to throw while ``regvalue`` isn't exist while migrating existing game. [**``9fe7601``**](https://github.com/neon-nyan/CollapseLauncher/commit/9fe7601df657a2ae5fb5595e9e7a1e541f58f1c9)
- **[Runtime]** Fix the launcher not running as administrator by default in 1.0.40.8 build.
- **[Runtime]** Fix the voice language setter not applied after selected from start-up. [**``8d19834``**](https://github.com/neon-nyan/CollapseLauncher/commit/8d1983419902f0a5be69709793a9cef219351374)
- **[Runtime]** Fix the cache update thrown an exception (Issue: #22 - Thank you @muscularcandy67 for reporting this issue). [**``acd1968``**](https://github.com/neon-nyan/CollapseLauncher/commit/acd19689c2b133a83f4b23e3a34c346dffcb4841)
- **[Runtime]** Fix potential crash if path isn't exist while checking game settings. [**``3c990e2``**](https://github.com/neon-nyan/CollapseLauncher/commit/3c990e2f63a4234f809dc4581c144cf972dbd6db)
- **[Runtime]** Fix crash while choosing image with initial bg gone missing. [**``a3882df``**](https://github.com/neon-nyan/CollapseLauncher/commit/a3882dff553cfc1d51979be0cc9903f6bf07d177)
- **[Launcher]** Fix the cache update to show the date even it hasn't been downloaded. [**``acd1968``**](https://github.com/neon-nyan/CollapseLauncher/commit/acd19689c2b133a83f4b23e3a34c346dffcb4841)
- **[Launcher]** Fix theme got transparent if Windows transparent effect is disabled. [**``61a8f5e``**](https://github.com/neon-nyan/CollapseLauncher/commit/61a8f5e69debb4c33bdb6d51237ba09faeca181a)
- **[Launcher]** Show prompt to locate directory if ``game_install_path`` is empty (Issue: #20 - Thank you @KorewaLidesu for reporting this issue) .[**``0c746bb``**](https://github.com/neon-nyan/CollapseLauncher/commit/0c746bb0caddb4812192716a6807ed1afdd529c3)
- **[Launcher]** Fix cache update, game download and game preload to crash (Thank you @bagusnl for reporting this issue on Discord). [**``71571e4``**]( https://github.com/neon-nyan/CollapseLauncher/commit/71571e4ff12a3df7ce5d2e6ef6a1b670ee43aa10)

### - **[Launcher/Runtime]** Fixed the WebView2 not Terminated while Unused.
> Previously, the WebView2 processes don't get terminated if the build-in browser closed and making additional memory consumption. In this version, the WebView2 processes are now terminated once the build-in browser is closed.

### [Old Version (Video)](https://user-images.githubusercontent.com/30566970/189893461-04ea1af8-0a7d-4998-ad02-a49599d0aca3.mp4)

### [New Version (Video)](https://user-images.githubusercontent.com/30566970/189894223-6b7af5d0-6615-4e37-a3cf-da36137c67e7.mp4)

### - **[Launcher]** [Fixed the "**Install Game**" button still visible behind the "**Update Game**" button](https://github.com/neon-nyan/CollapseLauncher/commit/49f9f815298d70db8eb6e72d6e7286d6415fc6ff)
> Well, it's a really small error but still... need to be fixed.

https://user-images.githubusercontent.com/30566970/190925046-5e787b5a-9b91-4268-a1b2-e1aaf4d08a35.mp4

- **[Launcher]** Fixed delta patch to break the game while failure occur by reverting previous data. [**``ddffa58``**](https://github.com/neon-nyan/CollapseLauncher/commit/ddffa58ea3b47116dc165a03144bceb5cfaa3375)
- **[Launcher]** Fixed bright overlay while transitioning to the next background. [**``d1d9a64``**](https://github.com/neon-nyan/CollapseLauncher/commit/d1d9a647fd32bb0c61d309a3e34b89fdd84b1eae)
- **[Launcher]** Fixed color oddness on dark and light theme. [**``82d24c7``**](https://github.com/neon-nyan/CollapseLauncher/commit/82d24c77709a052108385d2dfc7dcb4dd6105be7)
- **[Runtime]** Fixed the downloader getting invalid ``EndOffset`` while repairing. (Issue #17 - Thank you @DarkXonline for reporting the issue) [**``d867321``**](https://github.com/neon-nyan/CollapseLauncher/commit/d867321fa7183a7cf30efeb07e98c94492cbab6e)
- **[Runtime]** Fixed crash while checking non-existing folder for game conversion revert back mechanism. [**``fe45f79``**](https://github.com/neon-nyan/CollapseLauncher/commit/fe45f7934cfca62e7184022f8564d9db33e90fea)
- **[Runtime]** Fixed crash while cancelling selection on Game Conversion. [**``8e05154``**](https://github.com/neon-nyan/CollapseLauncher/commit/8e05154b9febcd437775e6fd6d19ba290155e9f1)
- **[Runtime]** Fixed rare crash while checking non-Genshin Server ID. [**``aa87157``**](https://github.com/neon-nyan/CollapseLauncher/commit/aa87157abfe988affa4b9edbbaef2e247b16f9ab)
- **[Runtime]** Fixed crash while disconnected and add "Show error message" button. [**``94fff1f``**](https://github.com/neon-nyan/CollapseLauncher/commit/94fff1f8b49220a411516d2fa28f539a101846b0)
- **[Runtime]** Fixed outdated Delta Patch still used in latest update. [**``eed9d83``**](https://github.com/neon-nyan/CollapseLauncher/commit/eed9d834bd173f9091e25fb12bec2b1ae9b89812)
- **[Submodule - Hi3Helper.Http]** [**Refactor the whole Hi3Helper.Http codes:**](https://github.com/neon-nyan/Hi3Helper.Http/pull/2)
  - Problems with disposing Input and Output ``Stream`` causing crash on the application.
  - Simplifying throw without using this own exceptions implementation.
  - Fixing thread lock while downloading with high speed internet (above 50 MB/s or more). (Issue #19 - Thank you @muscularcandy67 for reporting this issue)
  - Fixing incorrect downloaded size status by locking the ``SizeAttributes`` to avoid race condition.

***

## Big Thanks to Our Sponsors ❤️ ٩(◕‿◕｡)۶
- ![](https://avatars.githubusercontent.com/u/24401452?s=48&v=4) **@KorewaLidesu**