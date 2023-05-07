![](https://raw.githubusercontent.com/neon-nyan/CollapseLauncher-Page/main/images/banner202304.webp)

# 1.70.1-preview
We're starting to roll out the preview build of the next release, 1.70.x for you to try. Please keep in mind that the new features introduced in this build are mostly in an early development stage and bugs are to be expected. Changelog descriptions may vary for the final version of this release.

Please report your findings by [**opening an issue**](https://github.com/neon-nyan/Collapse/issues). Thank!

***

# What's New?
## New Feature: Game Repair and Cache Update mechanism for Honkai: Star Rail
Similarly to what we already have in Honkai Impact 3rd, we are now bringing Game Repair and Cache Update functionality to Honkai: Star Rail.

![image](https://user-images.githubusercontent.com/30566970/235456288-01dd96e3-272a-45af-a074-fcf3b8751988.png)

``7422728`` [**!**](https://github.com/neon-nyan/Collapse/commit/74227284d4e7fba2025f3015f35ab83b1744c892) ``2336cd4`` [**!**](https://github.com/neon-nyan/Collapse/commit/2336cd4da3d399e5bcfe56dc95f459a96ee02f99)  ``b16758c`` [**!**](https://github.com/neon-nyan/Collapse/commit/b16758c0cf8ae0bd70c38287dde8f0bb5e216265) 

***

## New Feature: Notification panel

https://user-images.githubusercontent.com/30566970/235456676-99a9a105-25bb-45d5-847f-10bfbec2a93d.mp4

## New Feature: Discord RPC Integration
If you've somehow been stalking us, you may have seen Collapse show up as a supported game on Discord. We've been experimenting with the Discord SDK for quite a while now, but didn't want to add yet another feature to the 1.69.X release lifecycle, so we moved it to 1.70.0! You may have also noticed this feature being prominently displayed in the App Settings page, but it didn't work because we haven't enabled the feature yet, so here it is, in all its glory!

![image](https://user-images.githubusercontent.com/30566970/235456949-da26feda-27e2-40fa-a0a2-7906aac6d3cc.png)

This feature comes toggled "Off" by default, but can be enabled by going into the App Settings and toggling "Show Discord Presence". An app restart is not required, but you may need to go back to the Launcher page for Discord to register Collapse properly.

![image](https://user-images.githubusercontent.com/30566970/235457011-0e06f35c-41ae-4f17-88b6-787b0b4a7745.png)

``0b49966`` [**!**](https://github.com/neon-nyan/Collapse/commit/0b49966f8cb0c27880189a9d2dafa69d91bc4751) 

***

## Major Changes
- Ability to disable warnings while changing game region ``2a13a68`` [**!**](https://github.com/neon-nyan/Collapse/commit/2a13a6822548821475b2d1f3b99af3af7b7025ba) 

![image](https://user-images.githubusercontent.com/30566970/235457764-74862e30-26ed-4fd6-ac8a-4dd3eaa1de4e.png)

- New Locale: Japanese (by: @Vermilion-Sinsha) ``045fb68`` [**!**](https://github.com/neon-nyan/Collapse/issues/113) 

## Minor changes
- **[Launcher - Backend]** Use ``GameType`` instead of ``VendorTypeProp.VendorType`` to determine log name ``71e6d82`` [**!**](https://github.com/neon-nyan/Collapse/commit/71e6d82a7f1f0407fe0d36694dc021ce8ed73eb8) 
- **[Launcher - UI]** Minor UI changes and fixes ``04adb10`` [**!**](https://github.com/neon-nyan/Collapse/commit/04adb10a238cc8f956ef377fafe9c134f5507091) ``43f42cf`` [**!**](https://github.com/neon-nyan/Collapse/commit/43f42cf067fccd171c3ad5df363674490235b600)
- **[i18n - zh-CN]** Simplified Chinese Localization Update by @misaka10843 ``6b371b4``[**!**](https://github.com/neon-nyan/Collapse/pull/119)
- **[Launcher - Backend]** Code cleanup ``8f07a7c`` [**!**](https://github.com/neon-nyan/Collapse/commit/8f07a7c7d140b3cadad2e4940c6b5d57dd202a66)
- **[Launcher - Backend]** Get StartCheckUpdate executed first ``8af523e`` [**!**](https://github.com/neon-nyan/Collapse/commit/8af523e22df8a3236362e68f0ddcc5457d5993f0)
- **[Launcher - Backend]** Improve image loading by caching the resized one ``052ec8a`` [**!**](https://github.com/neon-nyan/Collapse/commit/052ec8a6e66ce21fe9bd5623a30af7937e3e69ff)
- **[Launcher - Backend]** Use ``PngEncoderId`` if it has ``BitmapAlphaMode.Straight`` only ``c286749`` [**!**](https://github.com/neon-nyan/Collapse/commit/c286749b9bdead4aec340e00e79b82a93b235642)
- **[Launcher - UI]** Small UI Tweaks ``e83be85`` [**!**](https://github.com/neon-nyan/Collapse/commit/13a7a3ce237bd92370b3d3c396997ed1bbd3aebf), ``d9e17e0`` [**!**](https://github.com/neon-nyan/Collapse/commit/d9e17e071c280ff0cca9a4087a4d6e07aac3fcb9)
- **[Launcher - Backend]** Update ``TargetFramework`` to net7.0-windows10.0.22000.0 ``4b08f5b`` [**!**](https://github.com/neon-nyan/Collapse/commit/4b08f5b188cad42d03b8a261ff3191c6f2e8b8f9)

***

# What's Fixed?
- **[Launcher - Backend]** Fixed ``RegistryRoot`` not using a correct path ``35df8cb`` [**!**](https://github.com/neon-nyan/Collapse/commit/35df8cbd27b6e92a3c0948789dcd852e41a0be1f)
- **[Launcher - Backend]** Fixed the ``InstallManager`` fail to determine remained existing size and space ``879f28b`` [**!**](https://github.com/neon-nyan/Collapse/commit/879f28b4f02dbbd6d099eed749f0020c13db512c)
- **[Launcher - Backend]** Fixed log file sometimes not be able to be read for some games ``eb129fb`` [**!**](https://github.com/neon-nyan/Collapse/commit/eb129fb01384e53c26f8fe7c69cb7b7586e84ea9)
- **[Launcher - Backend]** Fixed the process watcher accidentally cancelled caused by shared token ``45f80ef`` [**!**](https://github.com/neon-nyan/Collapse/commit/45f80ef67abb71009382b81a7e465ca572390429)
- **[Launcher - EncTool]** Fix SRDispatcherInfo not disposed while SRMetadata is disposed ``0f94d68`` [**!**](https://github.com/neon-nyan/Hi3Helper.EncTool/commit/0f94d68881434672e72f5169d12e7bf23f24b66c)
- **[Launcher - Backend]** Don't use TransitionCollection for ``LauncherFrame`` in ``7a25cab`` [**!**](https://github.com/neon-nyan/Collapse/commit/7a25cabb4cf6cfa03bf29d32c943c7439fd1d07b)
- **[Launcher - Backend]** Force GC after loading background image ``13a7a3c`` [**!**](https://github.com/neon-nyan/Collapse/commit/13a7a3ce237bd92370b3d3c396997ed1bbd3aebf)
- **[Launcher - Backend]** Fix new update version notif still showing 4-num sematic version ``4dc96d7`` [**!**](https://github.com/neon-nyan/Collapse/commit/4dc96d70cab6bde515f04b0c71ad3f65b78d585e)
- **[Launcher - UI]** Fix got a wrong location for HSR ScreenShots folder ``954c75b`` [**!**](https://github.com/neon-nyan/Collapse/commit/954c75beee8beba6725c304f7d39e0f1a01df77e)
