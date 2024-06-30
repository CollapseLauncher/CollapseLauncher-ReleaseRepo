![image](https://github.com/CollapseLauncher/Collapse/assets/30566970/82f57c50-ea99-4ad0-817a-2889c253804f)

# Welcome to New Eridu!
To celebrate the release of Zenless Zone Zero, we are finally bringing a support for this HoYo's new title to Collapse Launcher. The launcher will be supporting the initial preloading on **July 2nd, 2024** and the installation process on release date (**July 4th, 2024**).

Also, as a commitment to continuously improving the quality of the app and in suppose to bring more better experience, we are also bringing bug fixes and some minor performance improvement in this release.

Some metadata changes might need to be pushed during the initial preload if necessary.

With our excitement and hopefully so are you, we hope that you're enjoying to play this new title!

### See you soon in New Eridu, Proxies!

![](https://raw.githubusercontent.com/CollapseLauncher/.github/main/profile/ReleaseHeader-Wide-2024v2.webp)

# Collapse What's New? - 1.80.14
- **[New]** Zenless Zone Zero Support.
- **[Imp]** Ignore the use of sophon download if delta patch is detected.
- **[Imp]** Enable nullable on ``RegionClasses``
- **[Imp]** Move some ``GameSettings`` properties to ``SettingsBase``.
- **[Imp]** Bring ``InitializeSettings()`` into ``IGameSettings`` Interface.
- **[Imp]** Update Game Logo and Icon.
- **[Imp]** Bring copyright and other properties to executable's info, by @bagusnl 
- **[Imp]** Code QA
- **[Fix]** Potential ``NullReferenceException`` throw if some ``GamePreset`` and ``GameSettings`` values are null.
- **[Fix]** Launcher unaware of HoYoPlay's Game Info API status.
- **[Fix]** Duplicated SDK entry in the Install routine's ``List<T>``.
- **[Fix]** Sophon Download not removing redundant ``DXSetup`` folder.
- **[Fix]** Hard crash when the game region failed to load.
- **[Fix]** Existing Games installed with HoYoPlay were unable to be detected for migration.
- **[New]** Moving Community Tools informations to Metadata.
- **[New]** Steam Shortcut support for ZZZ, by @gablm 
- **[New]** Showing "Sophon mode" label under Installation Progress indicator if detected.

![image](https://github.com/CollapseLauncher/Collapse/assets/30566970/317c9662-fa72-48b1-bbc2-946359812a3b)

- **[Fix]** CPU and Memory Usage overhead due to unnecessary loops on "Running Game Check" routine.

![image](https://github.com/CollapseLauncher/Collapse/assets/30566970/7ad97eaf-b170-4212-aeee-b5303f6d9d4d)

- **[Loc]** Update localizations, by localizers <3

**Full Changelog**: https://github.com/CollapseLauncher/Collapse/compare/CL-v1.80.13-pre...CL-v1.80.14-pre

# What's New? - 1.80.13

- **[Fix]** Game's preset config not always reinitialized in certain conditions.
- **[Fix]** Potential Error Code: 4302-x on Genshin Impact after performing Game Repair.
- **[Fix]** Emptied VO audio list file on Genshin Impact and Honkai: Star Rail after Plugin/SDK updates.
- **[Fix]** Carousel auto-scroll routine called twice after going back from the game.
- **[Fix]** COM Threading error on spawning "Extract Anyway" dialog.
- **[Fix]** Exception on extracting corrupted zip files on installation.
- **[New]** Adding full SDK files update required for Bilibili client.
- **[New]** Adding ``GameVersion``'s ``Equals()`` extension.
- **[Imp]** Move activator to App's OnLaunched() override.
- **[Imp]** Move notification trigger from base class to the caller.
- **[Imp]** Switch ``StringComparer``s to ``OrdinalIgnoreCase``.
- **[Imp]** Return if the TryDeleteReadOnlyFile argument is not exist.
- **[Imp]** Always reinitialize game ``config.ini`` file on reloading.
- **[Loc]** Update localizations, by localizers <3

# What's New? - 1.80.12

- **[Fix]** Threading exception on certain UI components, causing the launcher to crash, by @shatyuka 
- **[Fix]** Sophon Installer crashed due to invalid type of Language String to Locale Code converter, by @neon-nyan 
- **[Fix]** Honkai: Star Rail Game Repair and Cache Update issues, by @bagusnl and @neon-nyan 
    - Adding fallback method to lookup values in Honkai: Star Rail gateway API if the metadata KVP is not updated/unmatched
    - Updating metadata's Key-Value pairs.
    - Adding debug information for the Gateway API parser under ``Debug`` build
    - Check for End-Of-File on the buffer
    - Fix the location of certain patch-marked files under Persistent Folder
    - Fix FileNotFound error on certain file marked under Persistent but found under StreamingAssets by hardlinking the file
- **[Imp]** Add new game settings for Honkai: Star Rail, by @bagusnl 
    - `Character Shadow in Map Exploration`: self explanatory
    - `Half Resolution Transparency`: Controls resolution of objects behind transparent plane (window, etc.)
- **[Loc]** Update localizations, by localizers <3

# What's New? - 1.80.11
- **[Fix]** Crashing on launch on certain system due to value casting failure on shadow, by @neon-nyan 
  - Thanks Microsoft.
- **[Imp]** Sign ZstdNet and Sophon library for public releases, by @bagusnl 

# What's New? - 1.80.10

- **[Fix]** Wrong Voice-Over pre-load files getting downloaded for Honkai: Star Rail, by @neon-nyan
- **[Fix]** ``NullReferenceException`` in some occasions, by @neon-nyan 
- **[Fix]** Background activity notification (such as Game Installation) does not get detached properly, by @neon-nyan
- **[Fix]** UI Related Issues, by @neon-nyan
    - Update Countdown Cancel button went missing
    - Install progress ring layout gets misplaced
    - Executable still uses the old logo for its icon
    - Loading "action" button cannot receive click events
    - Buttons with ``TransparentDefaultButtonStyle`` have intermitten focus
    - App window will not restore if video background is being used
- **[Fix]** Performance degradation due to VRAM leak when Collapse runs with Intro Sequence enabled, by @neon-nyan @bagusnl 
![image](https://github.com/CollapseLauncher/Collapse/assets/30566970/19b47baf-73f7-449c-9394-e31744b232be)
- **[Imp]** Unify some installation APIs on Genshin Impact and Honkai: Star Rail, by @neon-nyan 
- **[Imp]** Adding more options on ``DisconnectedPage``, by @neon-nyan
- **[Doc]** Update list of used modules and third party libraries, by @neon-nyan 
- **[Loc]** Update localizations, by localizers <3

# What's New? - 1.80.9

- **[Fix]**: Skip pustaka file if not present, by @neon-nyan
- **[Imp]**: Add new GI 4.7 field, by @bagusnl
- **[Fix]**: Used file being called twice, for Hi3, by @neon-nyan
- **[Fix]**: Stop Windows from opening files sometimes for no reason, by @neon-nyan
  - "File is being used by another process" should be resolved, by @neon-nyan
- **[Fix]**: Windows 10 client size should be normal now, by @shatyuka
- **[Fix]**: Remove 1px border offset on Windows 10, by @shatyuka
- **[Imp]**: Add missing attribute, `SetLastError` to interop calls, by @shatyuka
- **[New]**: Move `Hi3Helper.Sophon.Test` to its own solution, by @neon-nyan
- **[Fix]**: Sometimes the console would just crash when in legacy, by @shatyuka
- **[New]** Add Sophon-based download and preload capabilities for games that support it, by @neon-nyan

# What's New ? - 1.80.8
- **[Fix]** Black top border on Windows 10, by @shatyuka
- **[Fix]** Delta patch for Hi3 not applying due to Blocks.xmf added into the assets list, by @bagusnl
- **[Fix]** Blocks and BlocksMeta keep reappearing in Hi3 Repair, by @neon-nyan
- **[Imp]** Disable "Region Change Warning" for new users, by @bagusnl
  - This also auto-enables "Instant Region Change" as well

# What's new? - 1.80.7
> This is a Hotfix Release addressing some of the issues from 1.80.6. 
- **[Fix]** Crashing while downloading Hi3 Preload, by @neon-nyan
- **[Fix]** Crashing when opening social media buttons on HYP API, by @neon-nyan

# What's new? - 1.80.6
### Notes:
> We have updated our [Privacy Policy](https://github.com/CollapseLauncher/Collapse/blob/main/PRIVACY.md) and [Third Party Notices](https://github.com/CollapseLauncher/Collapse/blob/main/THIRD_PARTY_NOTICES.md).
> Please review the updated policies regarding our software.
> Notable changes are addition of CODING CDN policy and removal of BitBucket CDN policy.

- **[Fix]** Crash/No background image when using certain languages, by @bagusnl 
- **[Fix]** Blurry scaling on news panel, by @shatyuka 
- **[Fix]** Updated overlay for custom background image cropper, by @shatyuka 
- **[Fix]** Game migration might nuke installation on certain occasion, by @neon-nyan 
  - Added a check to prevent migration to the same folder from happening.
  - Fixed wrong move method used when moving files to the same partition.
  - Fixed UI text overlapping.
  - Force overwrite if same file is found.
- **[Fix]** Global Illumination combo box for Genshin Impact settings not aligned, by @bagusnl 
- **[Fix]** Parsing issues for preload response on HoYoPlay API, by @neon-nyan 
- **[Fix]** Further fix on disk free space determination calculation, by @gablm 
- **[Fix]** Prevent applying uncompleted sophon chunk when target file is downloaded completely, by @neon-nyan 
- **[Fix]** Intermittent errors when restoring Collapse from taskbar when video BG is used, by @neon-nyan 
- **[Fix]** Sophon method related fixes, by @neon-nyan 
  - Fixed garbage collection disposing methods early causing cascading errors.
  - Remove read-only attribute on game files when using sophon methods.
  - Plugin update now wont require full game verification.
  - Reduce download threads on Sophon method to prevent connection from throwing.
  - **Note**: You may see some errors/warnings in the console log when downloading using sophon method. This is caused by slow internet connection. Collapse will keep retrying to download the chunk until completion regardless of how many errors (except when the network is completely down, Collapse will retry to reestablish connection 10x then pauses the download completely).
- **[Imp]** Adjusted Audio VO install selection UI, by @neon-nyan 
- **[Imp]** Reduced delay to enlarge news panel, by @neon-nyan 
- **[Imp]** Reduce Collapse installation size, by @neon-nyan 
  - This is done by disabling ReadyToRun compilation on Collapse.
  - This meant that the first time user launch it after an install/update it will take longer, though shouldn't be too noticeable for modern systems.
- **[Imp]** Reduced resource overhead in launcher loop logic, by @neon-nyan 
  - Improved the loop logic for checking if the game is running.
  - Reduced launcher default loop logic refresh rate from 10Hz to 5Hz, when on tray/minimized Collapse logic refresh rate stays at 1Hz to save resources.
- **[Imp]** Make the log label spacing uniform for easier reading, by @bagusnl 
- **[Doc]** Updated Privacy Policy and Third Party Software notices, by @shatyuka & @bagusnl 
  - Added CODING CDN policies.
  - Removed BitBucket policies.
- **[Doc]** Update list of used modules and third party libraries, by @neon-nyan & @bagusnl 
- **[Loc]** Update localizations, by localizers <3

# What's New? - 1.80.5
- **[New]** Use Sophon chunk download system when available, by @neon-nyan
    - Add the new [``Hi3Helper.Sophon``](https://github.com/CollapseLauncher/Hi3Helper.Sophon) library for Sophon chunk download system.
> This library is also [**Available on NuGet**](https://www.nuget.org/packages/Hi3Helper.Sophon) in-case any third-party launcher developer need to use it.
    - Adjustments on the API code to be compatible with the old launcher and HoYoPlay API responses.
- **[New]** Move to HoYoPlay API where its available via metadata update, by @neon-nyan
    - Using the new ILauncherApi to unify the integration with other types of API (like: HoYoPlay)
    - Adding conversion from HoYoPlay API response to our own format.
- **[New]** Prevent sleep on certain occasion, by @bagusnl and @neon-nyan 
   - Prevent system from sleeping when doing some core task.
   - Currently implemented on downloading, extracting, patching, and while repair/cache update.
- **[New]** Mobile layout mode for Genshin Impact and Honkai: Star Rail, by @bagusnl 
   - Use mobile control layout for GI and HSR by enabling it in game settings page.
   - Useful for those using Windows tablet or using local streaming software like Steam Link or Sunshine/Moonlight.
- **[Imp]** Use transparent sidebar, by @shatyuka
   - Sidebar now should blend nicely with the background until its hovered in which it will use the opaque sidebar.
-  **[Imp]** Backend improvements, by @neon-nyan and @bagusnl 
   - Use async JSON serializer.
   - Use proper nullable for game package return list.
   - CodeQA on InnoSetup helper.
   - Update NuGet dependencies.
- **[Imp]** Adjusted CDN selector radio button style, by @neon-nyan 
- **[Imp]** Add option to delay game launch when using pre-launch command, by @bagusnl 
- **[Imp]** Update Honkai: Star Rail 120 FPS warning message, by @Cryotechnic 
- **[Imp]** Revamped launcher main menu, by @neon-nyan
   - Moved play time counter to the right side.
   - Adjusted buttons size.
   - News panel now zooms when user hovers over it.
   - Revamped preload box UI.
- **[Fix]** Background error after reloading main page, by @neon-nyan
- **[Fix]** Region selector not responding after reloading main page, by @neon-nyan 
- **[Fix]** Certain values not represented correctly in Star Rail game settings page, by @shatyuka 
- **[Fix]** Region initializer is not localized, by @shatyuka 
- **[Fix]** Launcher crashing when launching game on RDP/Virtual monitor setup, by @shatyuka 
- **[Fix]** Throw error when repairing HI3 with broken metadata, by @bagusnl 
   - This prevents user from nuking their installation when our metadata is invalid/broken.
   - If you see the message, please report the issue on our GitHub or Discord server.
- **[Fix]** Avoid crashes when news API is empty, by @neon-nyan
- **[Fix]** Incorrect package size preventing user to resume download, by @Cryotechnic 
- **[Imp/Fix]** Refactor API Loaders and Runtime stuffs
    - Fix some typo and avoid unnecessary buffer alloc on ``ServeV3Data``
    - Fix crash while changing launcher release channel
    - Fix background throw due to null preload property
    - Move constant JSON class into inner extension class
    - Fix escaped JSON characters don't get parsed correctly
    - Use ``Enum.GetValues<T>()`` instead of ``Enum.GetValues(typeof(T))``
    - Use the new ``TaskExtensions`` extension tasks for managing task retrying routine.
- **[Loc]** Updated localization from Transifex, by localizers <3

# What's new? - 1.80.4
- **[Fix]** Properly fix TimeSpan overflow, by @neon-nyan 
- **[Fix]** Corruption on Game Migration with >8 CPU threads, by @neon-nyan 
- **[Fix]** Region loading related crashes, by @gablm 
  - Fixes crash when cancelling
  - Fixes Instant Region Change not working if the the first region load is cancelled
- **[New]** Coding CDN for Mainland China users, by @shatyuka 
- **[Fix]** Exception on high download thread count, by @neon-nyan 
- **[Doc]** Deprecate Bitbucket mirror, by @bagusnl
  - This due to the not so good GC implementation on Bitbucket causing CDN downtime whenever repo size touches 4GB
  - All users currently using this CDN is advised to change to other CDN option. For Mainland China users you can try Coding or Cloudflare mirror.
- **[Loc]** Localization sync from Transifex, by localizers <3

# What's new? - 1.80.3
- **[Fix]** [WORKAROUND] Use legacy parser for SR repair/cache update, by @bagusnl 
  - This due to emergency fix that caused by protobuf incorrectly parsing the data when using static parser.
  - This also fixes SR repair/cache function for v2.2.0
- **[New]** Add way to skip Star Rail audio patch, by @bagusnl 
  - _**NOT RECOMMENDED, ONLY USE FOR DEBUG OR WHEN INSTRUCTED**_
  - Add empty file named `@NoAudioPatch` in the game data to skip Collapse adding, download, and patching audio patch during update.
- **[Fix]** Crashes when Repair/Cache update went too fast, by @bagusnl 
  - Clamp TimeSpan in ProgressBase to not get out of bound
- **[Fix]** Fixed text alignment on "Check Update" button in Settings, by @neon-nyan 
- **[Imp]** Adjusted Windows button style, by @neon-nyan 
- **[Imp]** Extend maximum download thread to 16, by @neon-nyan 
- **[Fix]** Fixed multithreading issue(s) with Install, Repair, and Cache mechanisms, by @neon-nyan 
- **[Imp]** Updated NuGet dependencies, by @bagusnl 
- **[Imp]** Localize Discord RPC details, by @bagusnl 
- **[Fix]** Delta patch for Honkai: Star Rail crashing, by @bagusnl 

# What's new? - 1.80.2
- **[Fix]** Crash on launch when using certain language, by @bagusnl & @shatyuka 
  - This due to HoYo does not have response in their API for `es-419` and `pt-br` locales. For background and news area, fallback `es-419` to `es-es` and `pt-br` to `pt-pt`.
- **[Imp]** Adjusted Update page tittle padding, by @shatyuka 
- **[Loc]** Sync localization from Transifex, by localizers <3

# What's New - 1.80.1
- **[Fix]** Fixed Honkai Impact 3rd Repair and Cache issues, by @neon-nyan
- **[Fix]** Fixed double region load when using Keyboard Shortcut, by @gablm
- **[Fix]** Refactored API responses to fix inconsistency with data parsing, by @neon-nyan
- **[Imp]** Updated Settings references for Genshin Impact 4.6, by @bagusnl
- **[Imp]** Use new SharpCompress for zip decompression, by @neon-nyan
- **[Imp]** Improved App Settings page, by @neon-nyan
- **[New]** Add warning for Video BG on OOBE, by @neon-nyan
- **[Loc]** Sync localization from Transifex, by localizers <3
- **[Doc]** Add contributors to the list, by @bagusnl


> [!NOTE]
> ### Releasing Collapse v1.80.0 - Codename: TBA  
> We have decided to skip a few major version number due to the number of changes that happened since the last update being released.
> If you have the time, please send us a feedback on how you feel about the new UI look (and/or new features or improvements) in [this GitHub Discussion thread](https://github.com/orgs/CollapseLauncher/discussions/451#discussion-6492348) or in [#issues-and-suggestion Discord channel](https://discord.gg/vJd2exaS7j)


# What's New - 1.80.0
- **[Imp]** UI Adjustments and Use `UIElementExtension` to create UI elements in-code, by @neon-nyan @shatyuka @gablm
  - This improves the code readability and ease of maintenance.
  - Fixes some buttons not responding to user input.
  - Fixes incorrect theme and button style on OOBE.
  - It also contains various UI fixes and improvements that might not be included in the changelog, for those the curious can check the [Full Pull Request here](https://github.com/CollapseLauncher/Collapse/pull/434). *spoiler alert: it contains 100+ commits and 9k+ lines of code changes*

  ### UI Changes Preview
  **Main Page**
  ![02  Adjustment to Acrylic Opacity and Titlebar - Main Page](https://github.com/CollapseLauncher/Collapse/assets/30566970/fafe8db9-a050-4be8-b70e-3414824017bd)

  **Notification and Navigation Panel**
  ![02  Adjustment to Acrylic Opacity and Titlebar - Notif and Navigation Panel](https://github.com/CollapseLauncher/Collapse/assets/30566970/652385b4-7757-44d5-b316-793af347280a)

  **Page Background Acrylic**
  ![02  Adjustment to Acrylic Opacity and Titlebar - Page Background Acrylic](https://github.com/CollapseLauncher/Collapse/assets/30566970/f580a8f7-25f1-4688-9ec0-f0776742c336)

  **Auto-close After Clearing All Notifications**

  [01. Auto-close Clear All Notification.webm](https://github.com/CollapseLauncher/Collapse/assets/30566970/eecd0ff0-dad8-4d26-805d-8015fe1625d3)

  
- **[New]** Video Background support, by @neon-nyan
  - Added support to use videos as background. Currently supported formats are `.mp4, .mov, .mkv, .webm, .avi, .gif`
  - This feature relies on Microsoft Media Foundation engine, if you can't use certain videos, you can try to install the dependencies [manually here](https://www.majorgeeks.com/files/details/media_foundation_codecs.html).
  
  ### Video Background Feature Preview
  [03. Video Background Support.webm](https://github.com/CollapseLauncher/Collapse/assets/30566970/a175ee4f-4a41-4f23-8f54-60f03d9a7ba8)
  
- **[Imp]** Improved background image loader and caching mechanism, by @shatyuka & @neon-nyan
  - Fixed cache miss errors when loading background images.
  - Fixed crash when ColorPallette cache is missing/not generated. 
  - Also adjust Collapse window to always use 16:9 ratio.
  
> [!IMPORTANT]  
> Due to the massive changes in the image handler, you will need to manually clear the image cache on Collapse.
> This can be done by going into Settings, then press "Clear Image Files" button.

- **[New]** Instantly Change Region on Selection, by @bagusnl & @neon-nyan
  - You can now instantly change game/region by selecting them, removing the need to press "Change" button.
  
  ### Instant Region Change Feature Preview
  [Preview.mp4](https://github.com/CollapseLauncher/Collapse/assets/28079733/05ede866-d9e7-413e-81ae-f327ad35ccb8)

> [!NOTE]  
> To enable this feature, you can go to Settings then disable "Show Region Change Warning", a new toggle for "Instantly Change Region on Selection" should appear and it will be enabled by default.

- **[Fix]** Crashes when using URL protocol, by @gablm
  - Fix crash when using URL protocol to load a region for the first time.
  - Fix crash when changing region too fast related to BG dim/undim.
  
- **[New]** Migrate Collapse metadata using MetadataV3 format, by @neon-nyan
  - Removing the need to update Collapse entirely on Honkai: Star Rail updates.
  - Metadata can be updated on-the-fly (does not require Collapse restart).
  - Separate all game region metadata so it can be updated individually.

- **[Fix]** Hide Window Border for Windows 10 users, by @shatyuka
- **[Fix]** Instance count not showing the correct number, by @bagusnl @shatyuka @cry0 @neon-nyan

- **[Imp]** Update .NET to 8.0.4, by @bagusnl

> [!NOTE]  
> .NET update includes [CVE (Security Vulnerability CVE-2024-21409) fix](https://msrc.microsoft.com/update-guide/vulnerability/CVE-2024-21409)
  
- **[New]** Allow Collapse maintainers to ship a forced update, by @neon-nyan
  - This is needed for us to ship an important update whether because of a breaking change(s), or a vulnerability fixes.

- **[Doc]** Added contributors to the list on README.md, by @bagusnl
  - You can see all contributors that has helped Collapse [in here](https://github.com/CollapseLauncher/Collapse#contributors)

	
#### Code Signing Policy
> Free code signing provided by [SignPath.io], certificate by [SignPath Foundation]
- This program will not transfer any information to other networked systems.
- Read our full [**Privacy Policy**](https://github.com/CollapseLauncher/Collapse/blob/main/PRIVACY.md)
- Also read our [**Third Party Notices**](https://github.com/CollapseLauncher/Collapse/blob/main/THIRD_PARTY_NOTICES.md) for license used by third party libraries that we use.

[SignPath Foundation]:https://signpath.org
[SignPath.io]:https://signpath.io