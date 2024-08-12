![image](https://github.com/CollapseLauncher/Collapse/assets/30566970/82f57c50-ea99-4ad0-817a-2889c253804f)

# Welcome to New Eridu!
As the title says, welcome to New Eridu! Collapse currently supports updating, installing and pre-loading game updates. Support for remaining repair features is pending Hoyoverse's API availability.

This release brings much-needed bugfixes to the new Sophon downloader function, mitigates a vulnerability in transient packages, adds Zenless Zone Zero settings, as well as performance improvements in various areas.

For details, read on!

![](https://raw.githubusercontent.com/CollapseLauncher/.github/main/profile/ReleaseHeader-Wide-2024v2.webp)

# What's New? - 1.80.18
- **[New]** ZZZ Pre-download Support, by @neon-nyan 
- **[New]** Bilibili Region Support for ZZZ, by @bagusnl & @neon-nyan
  However, this change is happening at the back-end and Bilibili region might not be available for stable at the moment as it needs some testing to be done on our end first. You can change your channel release to Preview in order to bring a support for ZZZ Bilibili client.
- **[Imp]** Bring back the old file download behavior to store chunk files as sequential ``.001`` files, by @neon-nyan
  This change however, is backward compatible if you still have the hash-based (``.xxxxx``) extension chunks.
- **[Fix]** Random "File is being used by another process" Errors when Downloading, by @neon-nyan

# What's New? - 1.80.17
- **[Fix]** Sophon update crashes, by @bagusnl & @neon-nyan 
  - Fixed crashes for users with =< 2 CPU threads by clamping the multithread number to 2-64.
  - Fixed crashes due to read-only file attribute.
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

# Collapse: What's New? - 1.80.16
> ### Note regarding Sophon / Genshin Preload saying `Download` after preload is completed
> A fix has been deployed in this release, _but_ you have **must** click the button once update the identifier file responsible for validating that the preload is completed. There will should be no download operation performerd, as it will just verify the downloaded chunks.
> After that, the button should update to `Verify Package Integrity`.
> While verifying it will still say "Downloading", this _is not_ true, as both download and verification happened during package download. Check network activity in the Task Manager if you are curious.

- **[New]** Zenless Zone Zero Game Settings Integration, by @bagusnl, @neon-nyan, @shatyuka
  - You can now change Graphics, Audio, and Language settings for your game before running it!
  - This was a fun one, over 4k lines of code in the single PR (mostly) for this feature.
  - Almost half of them was just the necessary code for Collapse to be able to read and write the settings to the necessary places. Thanks @shatyuka and @neon-nyan for all of the help that @bagusnl can't even comprehend with a cup of coffee, or three.
  - For more fun details, you can go view this [pull request](https://github.com/CollapseLauncher/Collapse/pull/532)
- **[Fix]** Various fixes for Sophon download method, by @neon-nyan
  - Adding an indicator if Sophon Mode is used on both Pre-load & new installations
  - Fix Sophon preload completion not being detectable. Now, a finished Sophon download should show `Verify Package Integrity` button instead of `Download`
  - Fix thread exhaustion caused by too many connections being made leading to premature download stop (stuck download)
  - Fix (hopefully) unknown thrown, causing the preload download to gets finished prematurely (surely)
- **[Fix]** Bump NuGets and dotNET SDK to mitigate vulnerability, by @bagusnl
  - While Collapse is not affected by this, we always try to be up to date with our packages, dotNET included, as we publish them with all the necessary runtime DLLs (notice how you've never had to update dotNET runtime for Collapse?)
  - This mitigates a vulnerability found in System.Text.Json built-in JSON parser for dotNET. See more [here](https://github.com/CollapseLauncher/Collapse/security/dependabot/2)
- **[Fix]** Clearing log files causing launcher to crash, by @neon-nyan
- **[Fix]** Console might get displayed for a brief moment on launch when it is disabled, by @neon-nyan
- **[Fix]** Allow system to sleep after Sophon download is completed, by @bagusnl
- **[Imp]** New slider style for certain elements in Game Settings (go find them!), by @neon-nyan
- **[Imp]** Use same GUID for Tray Icon on launch, by @bagusnl
  - This is to prevent Tray Icon preference (visibility, order, etc.) to change when the app path changed like after an update

# Collapse: What's New? - 1.80.15
- **[Fix]** Crashing/Not responding issue caused by `ConfigureAwait`, by @neon-nyan
- **[Fix]** Discord RPC weird behaviors, by @bagusnl & @neon-nyan
  - RPC wont update between idle/play status
  - RPC stuck between game changes
- **[Fix]** Game Settings "reset" between game changes, by @bagusnl
  - This is caused by recent rewrite did not take into account refreshing `RegistryRoot` which is used by all GameSettings backend to load values from registry.
  - Now `RegistryRoot` is always retrieve the latest value instead of caching it.
- **[Fix]** `MIT License` string in Settings page not localized, by @bagusnl
- **[Imp]** Allow user to Cancel when asked to either resume or redownload an ongoing download, by @neon-nyan
- **[Fix]** Zip extraction not using multithread, by @neon-nyan
- **[Imp]** Use Uncompressed Size when calculating disk space requirements, by @neon-nyan
- **[Fix]** "Stop Game" button always enabled even when game is not running, by @neon-nyan
- **[Fix]** Game selector ComboBox fixes, by @shatyuka
  - Fixed being unable to change game/region after a metadata update
  - Fixed ComboBox not using acrylic theme
- **[Fix]** Zenless Zone Zero uninstall error, by @NSPC911

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

**Full Changelog**: https://github.com/CollapseLauncher/Collapse/compare/CL-v1.80.13...CL-v1.80.14

# Collapse 1.80.13 Hotfix: New Eridu
Hi there,
We have recently received some issues back to our GitHub and Discord Server regarding the new release, especially with the pre-load mechanism for Honkai: Star Rail causing the wrong voice-over files to get downloaded, UI issues and performance regression.

This hotfix is a "Mandatory" update, means the launcher would perform a forced update in-case of this update.
We hope that by publishing this hotfix, we improves your experience on using Collapse Launcher and on in the future.

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

# Collapse 1.80.9: New Eridu
Greetings fellow HoYo-games enjoyers, here comes another release of Collapse! (*This time with more spice and flavor than ever!*)

We keep saying this with every release, but this release is somehow *even bigger* than the previous ones. Thank you guys for your tremendous support, without it, we wouldn't be where we are today.

Collapse started as a hobby, a passion project of some sorts for us, back in 2021, in the hopes that we could improve the player and user experience of the traditional launcher. Fast-forward almost 3 years, and we've managed to develop this application into something that hundreds (if not thousands) of people use on a daily basis to play their favorite games.

This launcher will continue to evolve and improve, and we're proud to be able to give you another version with plenty of new features, fixes and improvements over the existing HoYoverse launchers.

Thank you again for sticking with our project throughout the last couple of years!

For faster releases and more experimental features, consider switching to the Preview branch in the App Settings.

***
# What's New?
***

## Improvement: New UI Design Language
Well, let's not beat around the bush. We have a new logo, graciously designed & animated by @neon-nyan. Our design philosophy was "Moon" this time around, and we hope you guys like it!

With the introduction of the new logo, we've also improved the overall look and feel of the launcher by adding more transparency throughout our UI elements. You'll notice them most prominently in the following sections of the app: 

- **Notification and Navigation Panel**
- **Page Background Acrylic**
- **Auto-close After Clearing All Notifications**
- **Out-of-Box Experience**, when you set up Collapse for the first time
- Every time you start the launcher, unless you have "_Use Intro Animation Sequence_" disabled in the App Settings

## New Feature: Video Background Support
Well, the title says it all! By popular demand, and after many months of hard work, we have finally added support for video files as a background.

Currently supported formats are: MP4, MOV, MKV, WEBM, AVI and GIF

The feature works exactly the same as it would for still images, just with videos now!

Please note that **by-region background** support will come at a later date.

> [!IMPORTANT]  
> Due to the massive changes in the image handler, you may need to manually clear the image cache on Collapse.
> This can be done by going into Settings, and pressing the "Clear Image Files" button.

***
# Major Changes
***
> [!NOTE]  
> .NET update includes [CVE (Security Vulnerability CVE-2024-21409) fix](https://msrc.microsoft.com/update-guide/vulnerability/CVE-2024-21409)

### Core System Improvements
On top of all the bugfixes that come in this release (there are quite a lot), Collapse will now prevent your system from going to sleep when you are executing a core launcher task, such as:
- Game installation process (download, extract)
- Game update process (patching)
- Game repair processes (cache and file repair functionality)

Please note that your system will be able to go into Sleep (S0 or other) once the tasks are completed, automatically.

### Settings Improvements
Genshin Impact and Honkai: Star Rail are getting the addition of *Mobile Mode*! This forces the games that have it enabled to display their controls as if the device that is running them is a mobile device.

This is useful for those using a Windows-enabled tablet or using a local streaming software.

### Implementation of new HoYoPlay API
This will allow us to support existing and new HoYoverse titles when using the new API that was introduced with the release of HoYoverse's new launcher: HoYoPlay.

Currently supported games are:
- Honkai Impact 3rd: Mainland China
- Genshin Impact: All regions
- Honkai: Star Rail: All regions

### Introduction of Sophon Chunk Download System
This new system will allow us to, eventually, repair, update and install games in a much more efficient manner than is currently available.

Sophon would provide the following benefits:
- Reduce space requirements during game updates
- Faster game installation
- Lower update size

For now, this new implementation is largely limited in scope, as we are still trying to understand the entire API structure. The new downloader is only currently working for **new installations** of the following titles:
- Genshin Impact: CN & Global

We hope to be able to bring you support for more titles in the upcoming future. Please be advised that full support for some regions is still pending.

### Instant Region Change Feature
This feature allows for bypassing the confirmation dialog when switching regions and games, thus speeding up user access to their desired game(s)!

[Preview.mp4](https://github.com/CollapseLauncher/Collapse/assets/28079733/05ede866-d9e7-413e-81ae-f327ad35ccb8)

> [!NOTE]  
> To enable this feature, you can go to Settings then disable "Show Region Change Warning", a new toggle for "Instantly Change Region on Selection" should appear and will be enabled by default.

### Various Localization Updates
As always, we want to thank are awesome community for providing an amazing localization for our project. Collapse is now localizable in 17 languages and dialects! <3

***
# Minor changes
***
We would list all the minor changes here, but due to the amount of commits, we've decided against it for this release. 

Read the full changelog below!

**Full Changelog**: https://github.com/CollapseLauncher/Collapse/compare/CL-v1.73.8...CL-v1.80.9