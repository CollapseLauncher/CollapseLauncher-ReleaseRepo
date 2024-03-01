![](https://raw.githubusercontent.com/neon-nyan/CollapseLauncher-Page/main/images/banner202304.webp)

# Collapse 1.73.4: Penacony
While we had initially hoped to sit on this release for a little while, to finish polishing up and refactoring code, in light of the Honkai Impact 3rd v7.3.0 update, we felt the need to release this version on Stable in order to address several issues with the patching, repair, and settings features for the game.

This release is going to be a little rockier than the other ones, so expect multiple hotfixes to resolve the numerous issues that have been reported to us over the last couple of days and weeks.

For faster releases and more experimental features, consider switching to the Preview branch in the App Settings.
***
# What's New?
***
## Announcement: Build Signing (Thanks SignPath!, by @neon-nyan, @bagusnl, @CryoTechnic )
First off, before we announce anything, a massive thank you to SignPath Foundation for providing us with the necessary infrastructure to sign Collapse builds. This is a huge milestone for the team, and we've been working on bringing this for our users for a while.

Now, what does this mean for you, our users? Well, if you already have Collapse installed, nothing, really. It means that any build following 1.73.1 will now contain a valid Application Signature, which validates that we're the ones publishing Collapse. This, in turn, while not fully eliminating it, vastly reduces Windows SmartScreen prompts for our new users.

Please do note that you may still see Windows SmartScreen prompts until Microsoft begins trusting Collapse when running it for the first time.

#### Code Signing Policy
> Free code signing provided by [SignPath.io], certificate by [SignPath Foundation]
- This program will not transfer any information to other networked systems.
- Read our full [**Privacy Policy**](PRIVACY.md)
- Also read our [**Third Party Notices**](THIRD_PARTY_NOTICES.md) for license used by third party libraries that we use.

[SignPath Foundation]:https://signpath.org
[SignPath.io]:https://signpath.io

## Improvement: New Out-of-Box Experience (OOBE, by @neon-nyan )
When first launching Collapse, most users are prompted with a clean, simple and intuitive interface to prepare the launcher for use. However, as time went on, and more features got added, it became increasingly difficult for us to maintain that UI consistency and flow without breaking something further down the setup process. To address this, we've completely revamped the UI experience for this part of the launcher, and will continue to improve the launcher experience for our users.

Here's how the new setup experience will look for our new users!

![](https://private-user-images.githubusercontent.com/30566970/307405828-cec1ca79-f651-426e-8ce0-14eee80e2ffe.webm?jwt=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJnaXRodWIuY29tIiwiYXVkIjoicmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbSIsImtleSI6ImtleTUiLCJleHAiOjE3MDkyNjQzOTgsIm5iZiI6MTcwOTI2NDA5OCwicGF0aCI6Ii8zMDU2Njk3MC8zMDc0MDU4MjgtY2VjMWNhNzktZjY1MS00MjZlLThjZTAtMTRlZWU4MGUyZmZlLndlYm0_WC1BbXotQWxnb3JpdGhtPUFXUzQtSE1BQy1TSEEyNTYmWC1BbXotQ3JlZGVudGlhbD1BS0lBVkNPRFlMU0E1M1BRSzRaQSUyRjIwMjQwMzAxJTJGdXMtZWFzdC0xJTJGczMlMkZhd3M0X3JlcXVlc3QmWC1BbXotRGF0ZT0yMDI0MDMwMVQwMzM0NThaJlgtQW16LUV4cGlyZXM9MzAwJlgtQW16LVNpZ25hdHVyZT0xMGY4MTA3ZTI1MzEwMWY3ZTljYzBkMGExMzJkMmFiOTkyYzc2MjM5YzA4ZGI1MzA2ODU3ZGQwNzBjMjcwODZmJlgtQW16LVNpZ25lZEhlYWRlcnM9aG9zdCZhY3Rvcl9pZD0wJmtleV9pZD0wJnJlcG9faWQ9MCJ9.C0QnZN1TZGJyLY0vpVu4BCLP15uBvJcW4hTsqcR1a2k)

As part of the aforementioned design language changes, we've changed the loading elements in the launcher:
![](https://private-user-images.githubusercontent.com/30566970/305667505-0b4838bb-b78a-46a1-ac91-ae9c86100a5a.png?jwt=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJnaXRodWIuY29tIiwiYXVkIjoicmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbSIsImtleSI6ImtleTUiLCJleHAiOjE3MDkyNjQzOTgsIm5iZiI6MTcwOTI2NDA5OCwicGF0aCI6Ii8zMDU2Njk3MC8zMDU2Njc1MDUtMGI0ODM4YmItYjc4YS00NmExLWFjOTEtYWU5Yzg2MTAwYTVhLnBuZz9YLUFtei1BbGdvcml0aG09QVdTNC1ITUFDLVNIQTI1NiZYLUFtei1DcmVkZW50aWFsPUFLSUFWQ09EWUxTQTUzUFFLNFpBJTJGMjAyNDAzMDElMkZ1cy1lYXN0LTElMkZzMyUyRmF3czRfcmVxdWVzdCZYLUFtei1EYXRlPTIwMjQwMzAxVDAzMzQ1OFomWC1BbXotRXhwaXJlcz0zMDAmWC1BbXotU2lnbmF0dXJlPTUzOTE1YTNhODBjNDBjNzBlYzE2NjE1NTU2ZDY1MmZkODczOTg0NjVkOGJmMWU2YmMzN2Q2NjczNDQ0ODU0MTgmWC1BbXotU2lnbmVkSGVhZGVycz1ob3N0JmFjdG9yX2lkPTAma2V5X2lkPTAmcmVwb19pZD0wIn0.B-Xb2of5icyUDcta_K38sasuGbOYMduwJTBH3nSG2Ns)

Furthermore, we've made some upgrades in the code to replace the old `DataTable` tables in our Game Repair & Cache Repair pages, which now look cleaner and more in-line with our design language:

| Old | New |
|-----|--------|
|  ![image](https://github.com/CollapseLauncher/Collapse/assets/30566970/27620bb7-bd78-48fc-a9a6-63c86f03f7a8) |  ![image](https://github.com/CollapseLauncher/Collapse/assets/30566970/3faa33dd-b97d-4d0e-b8c3-77f71bd67180)  |

One more thing: when there are no news, the mascot is now game-specific!

| Genshin Impact | Honkai Impact 3rd |
|-----|-----|
| ![image](https://github.com/CollapseLauncher/Collapse/assets/30566970/f521b183-276f-4f8d-807c-6f76e2e2b879) | ![image](https://github.com/CollapseLauncher/Collapse/assets/30566970/aa7f07c4-168c-41f2-84cb-3a8cd305d3f7) |

| Honkai: Star Rail | Zenless Zone Zero |
|-----|-----|
| ![image](https://github.com/CollapseLauncher/Collapse/assets/30566970/0a1a2d38-52f3-47b9-af06-fa4ef6c91830) | ![image](https://github.com/CollapseLauncher/Collapse/assets/30566970/797c91ad-f44c-455c-b4d5-175bacf55cf3) |

## New Feature: Image Cropper for Custom Background Image
This is a long requested feature. We've finally added support for cropping images to only have what *you* want to see, be in the background of all your Collapse-supported games.

While we know that many users wanted per-region images and video support, we couldn't get them ready in time due to the complexity of the tasks and the changes required to our current image processing pipeline. While we make no promises, we hope to be able to ship something to you guys on that end in the not-too-distant future.

In the meantime, here's a showcase of how it currently works: ![](https://private-user-images.githubusercontent.com/30566970/305667166-48dbfc10-68aa-40b0-86c0-532107f6f141.webm?jwt=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJnaXRodWIuY29tIiwiYXVkIjoicmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbSIsImtleSI6ImtleTUiLCJleHAiOjE3MDkyNjQzOTgsIm5iZiI6MTcwOTI2NDA5OCwicGF0aCI6Ii8zMDU2Njk3MC8zMDU2NjcxNjYtNDhkYmZjMTAtNjhhYS00MGIwLTg2YzAtNTMyMTA3ZjZmMTQxLndlYm0_WC1BbXotQWxnb3JpdGhtPUFXUzQtSE1BQy1TSEEyNTYmWC1BbXotQ3JlZGVudGlhbD1BS0lBVkNPRFlMU0E1M1BRSzRaQSUyRjIwMjQwMzAxJTJGdXMtZWFzdC0xJTJGczMlMkZhd3M0X3JlcXVlc3QmWC1BbXotRGF0ZT0yMDI0MDMwMVQwMzM0NThaJlgtQW16LUV4cGlyZXM9MzAwJlgtQW16LVNpZ25hdHVyZT05MGM0ODQxNmI3NTI3ZDcxY2IxODdjODM3MDczODkxYzMzN2Q1ODkyODFmMDIwZjc3ZmMxZmM4NjE1YmQzYjhmJlgtQW16LVNpZ25lZEhlYWRlcnM9aG9zdCZhY3Rvcl9pZD0wJmtleV9pZD0wJnJlcG9faWQ9MCJ9.xq6VfGZMEOpGl9TrOflgPHsj_Q60Jt4nS5lzzciipMU)

## New Feature: URL Protocol Support (Thanks @gablm !)
This is a feature that is mostly useful to our tinkerers in the community and allows for launching Collapse using various arguments under the `collapse://[argument]` moniker.

For example, you might want to have Collapse open in tray, to which the command to do so would be `collapse://tray`. Note that you can replicate the same behavior to start Collapse in "open mode" (`collapse://open`).

Users updating from another version must **start the launcher at least once prior to using this feature**.

## New Feature: Command Arguments (Thanks @gablm !)
Expanding upon the previous feature, the command arguments functionality adds the ability to launch Collapse into a specified game and region. Users do not need to close Collapse if it is already running as it will simply redirect the output to the main process for execution.

Usage: `CollapseLauncher open [args]`
<br>Arguments:
- `-g`, `--game` (REQUIRED): Game number, or name. 0 for Honkai Impact 3rd, 1 for Genshin Impact and 2 for Honkai: Star Rail
- `r`, `--region`: Region number or name. For Genshin Impact, 0 would load the Global region for the game. The same thing applies for other games.
- `-p`, `--play`: Start the game after loading the game/region.
- `-?`, `-h`, `--help`: Shows help and usage information.

If the user has multi-instance enabled, the command will launch a new instance and execute the arguments provided above.

## New Feature: Add to Steam (Thanks @gablm !)
This has been a long requested feature, but you now have the ability to add the game to Steam, albeit with a few limitations. Because it is not *technically* the Steam version, you won't get access to achievements and your settings will not sync with Steam Cloud. You also won't be able to update the game with Steam, as it is not the native version.

Note that this also allows you to add a Desktop icon!

## New Feature: Resizeable Game Window (Thanks @neon-nyan !)
Another new feature coming in 1.73 is the ability to resize the game window to any resolution of your choosing after the game has launched. This feature will only work if the game is set to run in **Windowed** mode, and does not work in Borderless Windowed or Fullscreen modes.

Another thing to keep in mind is the fact that, upon every subsequent re-launch, the game will attempt to pick the nearest logical aspect ratioin order to prevent graphical issues, unless you have the "Custom Resolution" option enabled as well.

Here's a small demo:
![](https://private-user-images.githubusercontent.com/30566970/300172296-84a0d709-16f2-449f-9af2-52221b5a7f26.mp4?jwt=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJnaXRodWIuY29tIiwiYXVkIjoicmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbSIsImtleSI6ImtleTUiLCJleHAiOjE3MDkyNjM4NTIsIm5iZiI6MTcwOTI2MzU1MiwicGF0aCI6Ii8zMDU2Njk3MC8zMDAxNzIyOTYtODRhMGQ3MDktMTZmMi00NDlmLTlhZjItNTIyMjFiNWE3ZjI2Lm1wND9YLUFtei1BbGdvcml0aG09QVdTNC1ITUFDLVNIQTI1NiZYLUFtei1DcmVkZW50aWFsPUFLSUFWQ09EWUxTQTUzUFFLNFpBJTJGMjAyNDAzMDElMkZ1cy1lYXN0LTElMkZzMyUyRmF3czRfcmVxdWVzdCZYLUFtei1EYXRlPTIwMjQwMzAxVDAzMjU1MlomWC1BbXotRXhwaXJlcz0zMDAmWC1BbXotU2lnbmF0dXJlPTFmZTJhOWQyYjY5YWIxOGY0NGVhZGYxMjgzNWVmMTljMDgzMzliYTllMTQ0NTFlZDJkMGE2MTcwZDNkMDg3NzUmWC1BbXotU2lnbmVkSGVhZGVycz1ob3N0JmFjdG9yX2lkPTAma2V5X2lkPTAmcmVwb19pZD0wIn0.jYq5XrAOkBz8MuzK3NooD-dvXQYoSWzjLyv1Th81yQA)

***
# Major Changes
***
## Migrate to use `discord-rpc-sharp` for Discord RPC integration (thanks @shatyuka ! )
- This library is based on [Lachee's works](https://github.com/Lachee/discord-rpc-csharp) that is adapted to work better with Collapse
- With this, a new **new feature** has also been implemented to disable RPC during idle state 
- For Custom Discord Client users, the current arRPC client that is used to get the RPC information for clients such as Vesktop, ArmCord, etc. has a bug pertaining to the update rate of the status, which can in turn cause the Discord status to appear "stuck" and not update. Please wait for the fix to be merged to the main repository. For custom client developers, please refer to [this pull request.](https://github.com/OpenAsar/arrpc/pull/71)
## Re-Enablement of Move Game Feature
After being broken for many months, we've finally gotten around to fixing this. You can now move any game to a diffrent folder and Collapse will automagically adjust its settings so that you don't have to locate your game again.

This feature is available under Quick Settings > Game Installation.

## Delta Patch Support for Honkai: Star Rail
Starting in the last stable version of Collapse (1.72.18), we've introduced the ability for users to use the Delta Patch functionality for Honkai: Star Rail.

This feature also shipped in Collapse Preview 1.73.3.

We initially planned to release this earlier, but due to the complexity of the changes required, it took us a little longer to get it ready for our users. This works the same way as patching Honkai Impact 3rd using the Delta Patch feature.

## New Community Tools: Enka Networks
We've added Enka Networks as a tool for Honkai: Star Rail, following them adding support for it.

## New Localizations & Localization Updates
We'd like to give a shoutout to all our localizers and contributors that work tirelessly to make Collapse more accessible to users around the globe. Thanks! <3

***
# Minor changes
***
Normally we would list all the minor changes here, but due to the amount of commits, we've decided against it for this release. 

Read the full changelog below!

**Full Changelog**: https://github.com/neon-nyan/Collapse/compare/CL-v1.72.18...CL-v1.73.4