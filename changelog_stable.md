

![](https://raw.githubusercontent.com/CollapseLauncher/.github/main/profile/ReleaseHeader-Wide-2024v2.webp)
# Collapse 1.82.0: Natlan

Long time no see! Welcome back to another (quarterly) release of Collapse. This time around, we're bringing many performance
& interface improvements to the launcher; this (hopefully) means that you should see a lot less crashes and a much more
stable launcher experience (get it? Stable version, stable experience...No? No one? Ok :( )

Releases have been a bit slower recently since most of our core maintainers have had a lot less time to contribute. Nonetheless,
this release is packed with a bunch of changes that we hope you'll find useful.

Read on for the complete list of changes!

For (*surely*) faster releases and more experimental features, consider switching to the Preview branch in the App Settings.

***
# What's New?
***

## New Feature: Bandwidth Limiter
This is by far the biggest change in this release. We've been using the same downloader code since Collapse first released in 2021. While
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

**Full Changelog**: https://github.com/CollapseLauncher/Collapse/compare/CL-v1.80.19...CL-v1.82.0