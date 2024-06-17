![](https://raw.githubusercontent.com/CollapseLauncher/.github/main/profile/ReleaseHeader-Wide-2024v2.webp)

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
We've improved the overall look and feel of the launcher by adding more transparency throughout our UI elements. You'll notice them most prominently in the following sections of the app: 

**Notification and Navigation Panel**
Image

**Page Background Acrylic**
Image

**Auto-close After Clearing All Notifications**
Image

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

### Introduction of Sophon Chunk Download System
This new system will allow us to, eventually, repair, update and install games in a much more efficient manner than is currently available.

Sophon would provide the following benefits:
- Reduce space requirements during game updates
- Faster game installation
- Lower update size

For now, this new implementation is largely limited in scope, as we are still trying to understand the entire API structure. The new downloader is only currently working for **new installations** of the following titles:
- Genshin Impact: CN & Global
- Honkai: Star Rail

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

**Full Changelog**: https://github.com/neon-nyan/Collapse/compare/CL-v1.72.18...CL-v1.73.4