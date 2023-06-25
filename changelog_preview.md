
![](https://raw.githubusercontent.com/neon-nyan/CollapseLauncher-Page/main/images/banner202304.webp)

# Collapse 1.70.10: Trailblazer
Welcome to Collapse version 1.70.10 - Codename: Trailblazer! We packed a ton of new features that we thought you guys might enjoy, while also fixing lots of bugs and improving the overall launcher experience. We hope you enjoy using the launcher as much as we did making it!

### <b>Note: Due to the overwhelming amount of commits that are done to this repository (almost 400 since the last major patch), it is no longer possible for us to individually tag each commit to explain what they do. Should you feel inclined, feel free to peruse our [commit history](https://github.com/neon-nyan/Collapse/commits/main). Thank you for supporting Collapse!</b>

***

# What's New?
## New Feature: Game Settings for Honkai: Star Rail
As with Honkai Impact 3rd, you can now adjust some game settings within Collapse, including Graphics Settings, setting a custom FPS (up to 120 FPS) value, and tweaking various audio settings. Keep in mind that this feature is still experimental and it might break the Game Settings menu in-game.

![image](https://github.com/neon-nyan/Collapse/assets/30566970/32cbaed2-3c6e-454d-875c-0f1b7c23daf1)

``0c40f32`` [**!**](https://github.com/neon-nyan/Collapse/commit/0c40f322d88d1d9434ca4f0aec66074c93dedd6e) 

## New Feature: Community Tools
After many requests from our community as well as interally, we are finally pleased to announce the implementation of a dedicated button for Community Tools. This allows the user to directly interact with those tools without having to leave Collapse, through the `WebView2` library, courtesy of Microsoft. While we currently do not support user modification of those tools, should there be enough demand for it, we may choose to implement it in the future. Let us know by providing feedback through the official Collapse support channels.

https://github.com/neon-nyan/Collapse/assets/9833218/cd266ac7-1a2a-43cb-bf0b-07e555faa464

``cc2744e`` [**!**](https://github.com/neon-nyan/Collapse/pull/139)

## New Feature: Playtime Tracking (Thanks @gablm !)
Another requested feature is the ability to track playtime. While Collapse will not be able to track the amount of time played prior to this update, rest assured that you can modify the time you have played in the game. Currently, the time played does not display in your Discord status.

https://github.com/neon-nyan/Collapse/assets/9833218/6d914df6-a94e-4f5c-bc4d-61d7e8ab0b89

``a26ff8c`` [**!**](https://github.com/neon-nyan/Collapse/pull/132)


## New Feature: Discord RPC Integration
If you've somehow been stalking us, you may have seen Collapse show up as a supported game on Discord. We've been experimenting with the Discord SDK for quite a while now, but didn't want to add yet another feature to the 1.69.X release lifecycle, so we moved it to 1.70.0! You may have also noticed this feature being prominently displayed in the App Settings page, but it didn't work because we haven't enabled the feature yet, so here it is, in all its glory!

![image](https://user-images.githubusercontent.com/30566970/235456949-da26feda-27e2-40fa-a0a2-7906aac6d3cc.png)

This feature comes toggled "Off" by default, but can be enabled by going into the App Settings and toggling "Show Discord Presence". An app restart is not required, but you may need to go back to the Launcher page for Discord to register Collapse properly.

![image](https://user-images.githubusercontent.com/30566970/235457011-0e06f35c-41ae-4f17-88b6-787b0b4a7745.png)

``0b49966`` [**!**](https://github.com/neon-nyan/Collapse/commit/0b49966f8cb0c27880189a9d2dafa69d91bc4751) 

## Announcement: Official Collapse Launcher Discord Server
![Discord-Banner-1-1500x680](https://github.com/neon-nyan/Collapse/assets/9833218/c284a953-bf37-4ff7-83de-c88d6d2eeeaf)

We are pleased to finally announce, after many months of deliberation, that the Collapse Launcher Discord server is now open to the public! Everyone is welcome to join and hang out! This server will serve as the go-to place if you have any questions, ideas, or if you just want to chat about anything regarding the launcher, any currently published miHoYo games or, you know, how your day went! 

Here's the invite link: https://discord.gg/vJd2exaS7j

We hope to see you there!

## New Feature: Notification panel
Collapse will now show you all your notifications in a dedicated panel to de-clutter the interface. This also has the added benefit that we can push more notifications at a given time if needed.

https://user-images.githubusercontent.com/30566970/235456676-99a9a105-25bb-45d5-847f-10bfbec2a93d.mp4

***

## Major Changes
### Faster background image loading by optimizing ``ColorThief`` submodule (Thanks @Scighost !)
We are optimizing the way ``ColorThief`` generates the color palettes for Collapse. Please keep in mind that this changes may causes some issues if you're trying to load an image the supported bit-depth (24bppRGB, 32bppRGB, 32bppRGBA).

``05ad2db`` [**!**](https://github.com/neon-nyan/ColorThief/commit/05ad2db0f2982dbb8a3a7d0ef83a3b9def16f653) +

- Ability to disable warnings while changing game region ``2a13a68`` [**!**](https://github.com/neon-nyan/Collapse/commit/2a13a6822548821475b2d1f3b99af3af7b7025ba) 

![image](https://user-images.githubusercontent.com/30566970/235457764-74862e30-26ed-4fd6-ac8a-4dd3eaa1de4e.png)

- New Locales: Japanese, Deutsch, Thaiwanese, Traditional Chinese. Thank you to all our contributors on Crowdin! A reminder that, if possible, please make sure to test your changes in the launcher BEFORE making the official contributions on Crowdin, as this saves us time when a string is too long/too short. Thanks again!

- Numerous fixes for new Honkai Impact 3rd 6.7 Dispatcher Key format: This will allow us to continue to support Honkai Impact 3rd on Collapse!

- Internal adjustments to support new Genshin Impact download format: Previously, Genshin Impact would download bigger archives and we would take care of splitting the files into smaller chunks for easier merging and tracking. In preparation for version 4.0, it seems that the developer is splitting the game distribution into smaller archive bundles. This is now taken into account when downloading & updating Genshin Impact. 

- Fixing Genshin Impact & Honkai: Star Rail dispatcher code to support developer changes.
***

## Minor changes
- **[Launcher - Backend]** Add Tiered Compilation Parameters ``e4ce8f7`` [**!**](https://github.com/neon-nyan/Collapse/commit/e4ce8f71636a2378dc0d8f7a853a4b16149aa801)
- **[Launcher - Backend / Honkai Impact 3rd]** Fixed the Game Repair crashes while reading CGMetadata ``453aa12``[**!**](https://github.com/neon-nyan/Collapse/commit/453aa123b89bfada82026d933f5716d7d2745fa2)
- **[Launcher - Backend / Honkai Impact 3rd / Honkai: Star Rail]** Fixes some installation issues due to new code rewrite.
- **[Launcher - UI]** Fixed update window still showing 4-ver sematic format ``868bcbb``[**!**](https://github.com/neon-nyan/Collapse/commit/868bcbbc77f8a30c796dffa45b5a512100eb353d)
- **[Launcher - Backend]** Fixed the launcher failed to detect delta-patch on pre-load ``0ae3add``[**!**](https://github.com/neon-nyan/Collapse/commit/0ae3add55a179421f675dd44de93b0412cf3f94e)
- **[Launcher - Backend / Honkai: Star Rail]** Fixed Video Metadata got incorrect URL ``8e264cf`` [**!**](https://github.com/neon-nyan/Collapse/commit/8e264cfef7ee4b7fdaa449442c71158326935c13)
- **[Launcher - Backend]** Fixed the launcher to crash during pre-load verification ``62d6aa4``[**!**](https://github.com/neon-nyan/Collapse/commit/62d6aa4eca1079b8f2ffe2594cd9211e17d94df1)
- **[Launcher - Backend]** Fixed the game not outputting any logs while "Show Console" is disabled ``30dbac1`` [**!**](https://github.com/neon-nyan/Collapse/commit/30dbac199d1d72a0939f8ebc45ab59985d53a562)
