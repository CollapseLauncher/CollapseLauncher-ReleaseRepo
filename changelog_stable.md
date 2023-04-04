![](https://raw.githubusercontent.com/neon-nyan/CollapseLauncher-Page/34d1913533b0a9b328fdee6be457f240915b5381/images/Banner_update_1.0.52.5.webp)

# 1.69.0: Version Kiana
It's been a while since the last major release of Collapse (almost 4 months ago ^.^). We wanted to make sure we get this release right, as its name coincides with one in a game we (hopefully) all hold dear in our hearts. Honkai Impact 3rd was a turning point for a lot of us from the Collapse development team, and so we wanted to take the time to make this version extra special to commemorate its launch.

We can't believe it's been over 2 years since this project was first launched. A big thank you to all our developers and users for continuing to work and use this application. We hope you're having as much fun using it as we did making it! 

This release changelog is going to be structured a bit differently than the other ones (someone else is writing it, *teehee*). Without further ado, buckle up, because this is biiiiiiiig update \o/

# What's New?

## Change in Versioning Scheme (again)
Starting with ***Codename: Version Kiana***, Collapse is officially switching from a **4 number denomination** to **3 number denomination**. This does not mean anything for the end user, but ensures that we adhere to the [*Semantic Versioning 2.0.0*](https://semver.org/) versioning scheme. To boil it down, this means the following:
- Instead of having a version number of, for example, `1.0.64.0`, the new version format will now be `1.64.0`. Previous versions are not subject to the versioning scheme. The explanation below will use the aformentioned example.
    - **1** is the MAJOR version number. Unless otherwise stated, this number should never change (unless we make a drastic overhaul to the launcher, such as a full application rewrite)
    - **64** is the MINOR version number. This is the number that gets incremented whenever we release new features
    - **0** is the PATCH version number. This is incremented whenever we make bug fixes on the current release lifecycle.

This change will allow us to more easily determine version numbers when we release them to you. Thanks for understanding! ❤️
***
## New Feature: Admin Restart Prompt
Starting with Collapse 1.69.0 (originally introduced in Collapse `1.0.64.0-preview`), the launcher will prompt you for privilege escalation if you are running it as an unauthorized (without administrator permissions) user. To make it clear: **Collapse has always asked you for these privileges and will continue to do so** for the foreseeable, because of some Win32 API calls we've made, as well as to read data from the registry, installing games and customising the launcher experience.

The prompt looks like so:
## [PLACEHOLDER FOR VIDEO]
Should you choose to ignore this, Collapse will terminate itself and require you to run it as an administrator. By integrating it into the launcher itself, we hope to make it more user friendly for people that just want to use this as a better alternative to the default launcher.

Special thanks to @CryoTechnic for the initial proposal & implementation!
``ad73dfc``[**!**](https://github.com/neon-nyan/Collapse/commit/ad73dfc5151b29a544d9de839e6c8ce30a9a9882), ``591b384`` [**!**](https://github.com/neon-nyan/Collapse/commit/591b384303e8a0f87a2e14577df19b354da6b128)
***
## New Game &ndash; Honkai: Star Rail, coming April 26th!
![](https://pbs.twimg.com/media/Fr-QXL9XsAExF1H?format=jpg&name=large)

This game needs no introduction, but we all knew it was coming. Honkai: Star Rail is officially launching on **April 26th 2023**. We're super excited to play it, and hopefully, so are you! Collapse will support the preloading (on **April 23rd 2023**) and installation of Honkai: Star Rail, assuming everything works as expected. As stated before, you will not be able to access Honkai: Star Rail in Collapse before April 23rd due to a backend configuration update that we will manually push out once we complete our preparations for supporting the game. The launcher will automatically apply the latest configuration update once it is pushed out, so you don't need to do anything on your end! 

See you aboard the Astral Express, Trailblazer!

``9692060``[**!**](https://github.com/neon-nyan/Collapse/commit/9692060f1f87c43fbaf472b747ce6261a59e42bd), ``ebd8d9b``[**!**](https://github.com/neon-nyan/Collapse/commit/ebd8d9b71f330d93147d8088d95c74926b353981)
***
## New Feature: Running Multiple Instances of Collapse
## [PLACEHOLDER FOR IMG]
Previously, users were not able to run multiple Collapse processes without running into issues. This has now been resolved! This is a feature that was necessary to implement while we work on implementing background installation for new games and/or updating existing ones. While we understand that the aformentioned feature is highly requested, the implementation for it has proven to be quite a challenge and will require more time to fine-tune before it is made available for the general public. We appreciate your patience and can't wait to show you it in action once it's ready!

To allow Collapse to spawn multiple instances, you must first enable that option in the launcher settings.
``c328d8e`` [**!**](https://github.com/neon-nyan/Collapse/commit/c328d8e468bbff90d522c7ca17beaaf3e8f58882), ``d10bd2d`` [**!**](https://github.com/neon-nyan/Collapse/commit/d10bd2dd89647543c473117ca186e8f7f805d978), ``eedf0cf`` [**!**](https://github.com/neon-nyan/Collapse/commit/eedf0cf9cb3e26dd932769deed84ac12bf214fd8)
***
## Major Changes:
- You can now repair Genshin Impact directly from the launcher! This works in the same way that Honkai Impact 3rd's interface does! ``a78f77d`` [**!**](https://github.com/neon-nyan/Collapse/commit/a78f77d50c3dfc6de27aa35f1e701b1448e1d282), ``a5e6be7`` [**!**](https://github.com/neon-nyan/Collapse/commit/a5e6be781b8b47cd494b37eae5f71f73a7d67907), ``4cd8675`` [**!**](https://github.com/neon-nyan/Collapse/commit/4cd867598f07fc9cb57b6b83822669f47b50928d), ``366c2df`` [**!**](https://github.com/neon-nyan/Collapse/commit/366c2dfeeac62761c2d993a857e5f4205640b0b7), ``e7e991c`` [**!**](https://github.com/neon-nyan/Collapse/commit/e7e991c32f0576b682d60af75080ec100fb45580), ``f0edf3f`` [**!**](https://github.com/neon-nyan/Collapse/commit/f0edf3fe97051b93ba8dd023044191c8cfc84867)
- Game settings data is now read directly from registry instead of relying on `.ini` files. This paves the way for other game settings customization ``4deb985`` [**!**](https://github.com/neon-nyan/Collapse/commit/4deb9854235c540ba2841a9548f8214f715eb65f)
- Added the ability to import and export Registry keys for local machine. This allows the user to back up game settings and restore them should something go wrong ``2a13a68`` [**!**](https://github.com/neon-nyan/Collapse/commit/2a13a6822548821475b2d1f3b99af3af7b7025ba) 
- New UI animations and layout for region loading ``e79251d`` [**!**](https://github.com/neon-nyan/Collapse/commit/e79251dedbbda0f14f980af2a8930db4c7fe0ef9)
- Added the ability for the "Game Repair" feature to support Audio files and enabled parallelization (multi-threading) during asset checking ``4802010`` [**!**](https://github.com/neon-nyan/Collapse/commit/48020106a8f667b261057d64b08f269252099d3e), ``5404c85`` [**!**](https://github.com/neon-nyan/Collapse/commit/5404c854cabe872269749ce99133557921b4020a), ``c08345f`` [**!**](https://github.com/neon-nyan/Collapse/commit/c08345f20ca430883cc7cfde6e821f4d38c9d7e2)
- New Locale: Vietnamese! As with other languages, this new locale will be available both during the first time setup and in Collapse's Settings ``261654b`` [**!**](https://github.com/neon-nyan/Collapse/commit/261654ba4e56ab63596ce75ba91b94d84bf60b23)
***
## Minor changes:
- **[Launcher - HTTP]** Added `DownloadFromSessionStream()` function ``5673410``[**!**](https://github.com/neon-nyan/Hi3Helper.Http/commit/5673410cd19208dfe14666c5db7200449ae1e2ef)
- **[Launcher - Backend]** Updated usage for Hi3Helper.Http & cancellable method ``f235f55``[**!**](https://github.com/neon-nyan/Collapse/commit/f235f551cedee75b5865ed38df38dc9e8ecbe68a)
- **[Launcher - Backend]** Removed unused `JsonSourceGenerationOptions` in ``7f6885d``[**!**](https://github.com/neon-nyan/Collapse/commit/7f6885dd13e0e9352bf464ea6d7ea679e1d9f30c)


- **[Launcher - Backend]** Code cleanup ``46aa429``[**!**](https://github.com/neon-nyan/Collapse/commit/46aa42904f7cb6ab6588a9cdf3029166b3a0d9a9) , ``9048b9b``[**!**](https://github.com/neon-nyan/Collapse/commit/9048b9b8b193c7996008602a0928009c60f3b863) , ``481a46e`` [**!**](https://github.com/neon-nyan/Collapse/commit/5b1f0e9d8a018d52a4fbacff84b0ef8c753c51ce) , ``81fb3d1`` [**!**](https://github.com/neon-nyan/Collapse/commit/81fb3d1e93bc62532bce7a9f014c0fd0ce0f85bd) , ``db3014f`` [**!**](https://github.com/neon-nyan/Collapse/commit/db3014fd8005f7b5c2692d722e07be9591fa9e93), ``ebe54f2`` [**!**](https://github.com/neon-nyan/Collapse/commit/ebe54f2a5f14f04c741e996cf1fd662d8dadf812) , ``9e7ed0f`` [**!**](https://github.com/neon-nyan/Collapse/commit/9e7ed0f02853669694ab52af3830629ce9145d93) , ``5009def`` [**!**](https://github.com/neon-nyan/Collapse/commit/5009def07601c3418307ec2ff7ddd3a399d4e695), ``329abda`` [**!**](https://github.com/neon-nyan/Collapse/commit/329abda6d91e02c909b857910c820584fdda9270), ``cc25ce6`` [**!**](https://github.com/neon-nyan/Collapse/commit/cc25ce650651fee728a1abb6be5f1b22b7aa1d68), ``06700e0`` [**!**](https://github.com/neon-nyan/Collapse/commit/06700e0d4cc274eaea9314735f73807d234553da), ``cfa92f4`` [**!**](https://github.com/neon-nyan/Collapse/commit/cfa92f4cc52b5d9aefe95954280ad280faa54894), ``891bd0a`` [**!**](https://github.com/neon-nyan/Collapse/commit/891bd0ad669810eb8dac5bff2a48678a72296805), ``30a97f2`` [**!**](https://github.com/neon-nyan/Collapse/commit/30a97f2ff90b1c16ac39bdad0845fcc39ae39fda), ``464f932`` [**!**](https://github.com/neon-nyan/Collapse/commit/464f93207b3aa7f46a838360adf5b14bc9d0f6e5), ``4525b2e`` [**!**](https://github.com/neon-nyan/Collapse/commit/4525b2eac14e106ca44a4ff5d27d1dda45eba365), ``12e89f1`` [**!**](https://github.com/neon-nyan/Collapse/commit/12e89f1dd8783704fac95a8e56496caf74f10f2c), ``e5e3ff9`` [**!**](https://github.com/neon-nyan/Collapse/commit/e5e3ff94244e7ff43f4d1b65c0d3a967c52397d3)



- **[Launcher - i18n]** Refactor locale file parsing ``1f0add2``[**!**](https://github.com/neon-nyan/Collapse/commit/1f0add28102646154137910777e9827f778bafa1)
- **[Launcher - Backend]** Addition of `SpanStream` implementation ``104b5a2``[**!**](https://github.com/neon-nyan/Collapse/commit/104b5a22b7da7d02d8bb56be71ec8e08580ee1db)
- **[Launcher - UI]** Shrink size for notification bar ``11c4846``[**!**](https://github.com/neon-nyan/Collapse/commit/11c4846cab2ff20f3e49e620e716e744b8dcb2fc)
- **[Launcher - Backend]** Move to `ByteArrayToHexViaLookup32Unsafe()` from `ByteToHex()` in ``3460281``[**!**](https://github.com/neon-nyan/Collapse/commit/34602812761527dbe8590c1b8bb662537da5ec13)
- **[Launcher Backend]** Use Precalculated lookup for Byte-to-Hex convert ``41db192``[!](https://github.com/neon-nyan/Collapse/commit/41db1923432f4104ee87281c9bf8cede986663c4)
- **[Launcher - Backend]** Removed CRC32.NET and moved to UABT ``71be21f`` [**!**](https://github.com/neon-nyan/Collapse/commit/71be21f5a64c70cce42cdaf0c0724c0ca22dc866)
- **[Launcher - Backend]** Refactor `XMFParser` and add `ChunkStream` in ``65051c5`` [**!**](https://github.com/neon-nyan/Collapse/commit/65051c544c419f71b2eddeec29014b34aa02c474)
- **[Launcher - UI]** Display compressed path and ZIP path while debugging ``e67344d``[**!**](https://github.com/neon-nyan/Collapse/commit/e67344d99c38c09a77a4bcd2476e47a189b94f13)
- **[Launcher - Backend]** Add `CheckIfXMFVersionMatches()` for version checks through XMF ``baeecdd`` [**!**](https://github.com/neon-nyan/Collapse/commit/baeecdd9ab50140cff6c1e3afc472a4db3e5d526)
- **[Launcher - Backend]** Add `FilePropertiesRemote[]` Deserialize Context ``116cf89``[**!**](https://github.com/neon-nyan/Collapse/commit/116cf89f903304aa344763ae851d6f2c4a35edca)
- **[Launcher - Backend]** Introduce `IGameVersionCheck()` for game version check ``9bc7719`` [**!**](https://github.com/neon-nyan/Collapse/commit/9bc77191d456c19c356c74a80e4c8dfa5fc0804c)
- **[Launcher - Backend]** Add the ability to clean up unused assets in `HonkaiRepair` in ``46546e5`` [**!**](https://github.com/neon-nyan/Collapse/commit/46546e5597cd34e1405377de0b8b81bca68f0aaa)
- **[Launcher - EncTool]** Transfered UABT logic to its own submodule ``6012a34`` [**!**](https://github.com/neon-nyan/Collapse/commit/6012a34c4793b87d1e6010dc36927ac401603287)
- **[Honkai Impact 3rd]** Exclude `Blocks_x_x.xmf`, `BlockMeta.xmf`, `Version.txt` and screenshots folder from repair management ``ec3ac25`` [**!**](https://github.com/neon-nyan/Collapse/commit/ec3ac25fe0823da5a3601bd6ea461b2abb91d264), ``79afa42`` [**!**](https://github.com/neon-nyan/Collapse/commit/79afa421e21b34e23be2fd1935d2d2197412407b), ``901c9df`` [**!**](https://github.com/neon-nyan/Collapse/commit/901c9df6eb1dac58ab59ad248ad7edb1ae68b404)
- **[Launcher - Backend]** Added ability to change Game Directory on the fly ``cc615de`` [**!**](https://github.com/neon-nyan/Collapse/commit/cc615de1a7c0146f92aa40de19b71f668a5fc236)
- **[Launcher - Backend]** Move game version config to `CheckExistingGame()` ``71ef437`` [**!**](https://github.com/neon-nyan/Collapse/commit/71ef437fa896d00f104c1bfbcf5c437c55918067)
- **[Launcher - EncTool]** Add exception handling for `CheckIfXMFVersionMatches()` in ``0ee3972`` [**!**](https://github.com/neon-nyan/Collapse/commit/0ee39728619b6b4ecce1605ba2f9d189ec1d702c)
- **[Launcher - Backend]** Added `ICache` interface & transition to it for cache update logic ``79f8eda`` [**!**](https://github.com/neon-nyan/Collapse/commit/79f8edad39d956375a06cf0220feb155470bc91a), ``a23afd0`` [**!**](https://github.com/neon-nyan/Collapse/commit/a23afd0607b59072c8f25a22003ffe62f4ca3887)
- **[Launcher - Backend]** Reformat Console Logger & output format ``e29d540`` [**!**](https://github.com/neon-nyan/Collapse/commit/e29d540fe2f622956a64a24ac8a7434d0aafa363)
- **[Launcher - UI]** Added a new warning for games that are still in testing on Collapse ``6d43cd5`` [**!**](https://github.com/neon-nyan/Collapse/commit/6d43cd5537ee8c7611c9ce2ed5e8011d7f3b9110), ``55f80cb`` [**!**](https://github.com/neon-nyan/Collapse/commit/55f80cb6a181724fff69b8a898374f56541160d4)
- **[Launcher - EncTool]** Moved Protos to EncTool ``7232958`` [**!**](https://github.com/neon-nyan/Collapse/commit/72329580b8f46880e8369d43e130c9bf130f51da)
- **[Launcher - UI]** Force Collapse to use Large Title Bar option & minor styling adjustments ``9f3142b`` [**!**](https://github.com/neon-nyan/Collapse/commit/9f3142bad54147056a473aa2b19594872d4387d0), ``2446b3e`` [**!**](https://github.com/neon-nyan/Collapse/commit/2446b3e6eb09827ff6f8a77e019658f0c780456a)
- **[Launcher - HTTP]** Add URL when an exception occurs for better troubleshooting ``efa9887`` [**!**](https://github.com/neon-nyan/Collapse/commit/efa988795005ec866ab8a8bf33d9dde32f0aa5ec)
- **[Launcher - UI]** Styling tweaks ``a41c121`` [**!**](https://github.com/neon-nyan/Collapse/commit/a41c12124be6a1497a2b48f254f8986df35210e9)
- **[Launcher - Backend]** Use Dispatcher to get base game repo URL for "Cache Update" feature  ``0449dd0`` [**!**](https://github.com/neon-nyan/Collapse/commit/0449dd09e84f5f80fa12f1c33f7419a5effb04fd)
- **[Launcher - Backend]** Migrate to `GZipStream` for compression stream in `BSDiff` in ``a2f5c63`` [**!**](https://github.com/neon-nyan/Collapse/commit/a2f5c6301596a67e72ca1bebf6af83b18e0ec318)
- **[Launcher - Backend]** Get & remove skippable assets from asset index ``462791f`` [**!**](https://github.com/neon-nyan/Collapse/commit/462791f89bba678513915f30fe88f6a24ac06aa8)
- **[Launcher - UI]** Add gradient background while loading game region ``44bb633`` [**!**](https://github.com/neon-nyan/Collapse/commit/44bb63322ffa9e9d2463423954542ae20bcc7ce7)
- **[Launcher - Backend]** Strip unwanted tabs and newlines in `RegionSocMedProp` in ``de70685`` [**!**](https://github.com/neon-nyan/Collapse/commit/de70685610b65f0d19907f5d7299e3ffd9d6cbcc)
- **[Launcher - UI]** Add remaining time estimation when using the "Game Repair" function ``83f9d90`` [**!**](https://github.com/neon-nyan/Collapse/commit/83f9d90b3a7fdea10bd461fb1520a8d12b52e517), ``5122359`` [**!**](https://github.com/neon-nyan/Collapse/commit/51223595b18982790fc7c27e84f12017527113f4)
- **[Launcher - Backend]** Added `AudioUpdate` enum for Audio patch files ``0b5e1ca`` [**!**](https://github.com/neon-nyan/Collapse/commit/0b5e1cac8a57864dac413b89affcd249ec949de2)
- **[Launcher - Backend]** Eval 0 in `AppCurrentThread` as `Environment.ProcessorCount` ``616a38c`` [**!**](https://github.com/neon-nyan/Collapse/commit/616a38c5be9112a77464e8aaa859a8f67b864a5b)
- **[Launcher - HTTP]** Increase buffer size to 64K ``3d866cd`` [**!**](https://github.com/neon-nyan/Collapse/commit/3d866cdff7c31fb01bd4cc7369ef897d5dec83c5)
- **[Launcher - EncTool]** Add `CGMetadata` parser, explicitly require `CacheStream` from input stream and use in-class renderer for string, boolean and number variables ``c5a8f78`` [**!**](https://github.com/neon-nyan/Collapse/commit/c5a8f7855e6c4596f7ce713b873c0cce64d8158a)
***

# What's Fixed?
- **[Launcher - Backend]** Force GC in Launcher to avoid potential memory leaks ``a40ae49``[**!**](https://github.com/neon-nyan/Collapse/commit/a40ae4909488cf0961e5a73c3771d402f2a5d1e3)
- **[Honkai Impact 3rd]** Fixed wrong Volumetric Lighting value obtention from the game ``b857f8e``[**!**](https://github.com/neon-nyan/Collapse/commit/b857f8e36d9024e3c5231495d23bac9b0ae54013)
- **[Launcher - Backend]** Fixed incorrect initialization of main app runtime ``3e7a802`` [**!**](https://github.com/neon-nyan/Collapse/commit/3e7a802ecb439c00edd9abb206ab9c3996159ce2)
- **[Launcher - Backend]** Force game config loading to happen at the same time ``481a46e``[**!**](https://github.com/neon-nyan/Collapse/commit/481a46ee8336c636c13c827e2e8f1814faa218ed)
- **[Launcher - Backend]** Pre-initialize values while checking for game diff ``c578dc9``[**!**](https://github.com/neon-nyan/Collapse/commit/c578dc93dc2c8ab414686ec6184abe484fb43f52)
- **[Launcher - Backend]** Use `HexToBytesUnsafe()` for some hex to byte[] conversion ``01916ba``[**!**](https://github.com/neon-nyan/Collapse/commit/01916ba31638226abb54195baee7821a7cb7e288)
- **[Launcher - Backend]** Added missing Async methods on `ChunkStream` and disposing fixes ``aed2cef`` [**!**](https://github.com/neon-nyan/Collapse/commit/aed2cef4861050da0bb49fb21f9a088be2893ae4)
- **[i18n - en-US]** Yet more localization fixes (by @neon-nyan & @CryoTechnic) ``592e0c7`` [**!**](https://github.com/neon-nyan/Collapse/commit/592e0c70d50dca70579938faa1edec31cba2e5e8), ``5ed3815`` [**!**](https://github.com/neon-nyan/Collapse/commit/5ed3815a5ce3f8f0aa6db38e9166e3783c6918bb)


- [**Honkai Impact 3rd]** Update Audio Settings value range ``019f175`` [**!**](https://github.com/neon-nyan/Collapse/commit/019f175b0be10257a52f44942405dab37b8496cf)
- [**Launcher - Backend]** Always clean up old HDiff list files before updating to new game version ``019f175`` [**!**](https://github.com/neon-nyan/Collapse/commit/019f175b0be10257a52f44942405dab37b8496cf)
- [**Launcher - HTTP**] Use new logic to check for session length ``9c673e6`` [**!**](https://github.com/neon-nyan/Hi3Helper.Http/commit/9c673e6b792f15ead8d3c5d2fcdcfcc0cf182475)
- [**Launcher - Backend**] Thread-checking logic in repair function calls ``c82116b`` [**!**](https://github.com/neon-nyan/Collapse/commit/c82116be99c3f2661f5ec02454653058da5b4d07)
- **[Launcher - UI]** Minor styling tweaks and Paimon logo position update ``24a44a5`` [**!**](https://github.com/neon-nyan/Collapse/commit/24a44a564dcf730da3fcdd6cf2af631a76fb9e44)
- **[Launcher - Backend]** Fixed the game not getting recognized afted being installed ``d75fa12`` [**!**](https://github.com/neon-nyan/Collapse/commit/d75fa1297454ab5c4deb35b6b797b86d705b3c58)
- **[Launcher - Backend]** Fixed `FindGameInstallationPath()` having incorrect return value ``c426864`` [**!**](https://github.com/neon-nyan/Collapse/commit/c4268642400a0c06b979a932d99e27eccfd49c47)
- **[Launcher - Backend]** Fixed loading screen showing incorrect region name ``f6c90ea`` [**!**](https://github.com/neon-nyan/Collapse/commit/f6c90ea54dd44d0969e2bcf8585f35a79d9f59d4)
- **[Launcher - Backend]** Fixed invalid URL while trying to download XMF file on check process ``c6aa824`` [**!**](https://github.com/neon-nyan/Collapse/commit/c6aa8247af9781e2fe8ffb513e45f586ba30cc51)
- **[Launcher - Backend]** Added an extra condition to allow for possibly valid path while checking for delta-patch ``a872a20`` [**!**](https://github.com/neon-nyan/Collapse/commit/a872a20d011fab236b65f6f61f5d63bdf6f23337)
- **[Launcher - Backend]** Use proper data types while trying to determine asset types ``77d7c52`` [**!**](https://github.com/neon-nyan/Collapse/commit/77d7c52c0d49ca8b602545a8ddf6655e08b639e2)
- **[Launcher - Backend]** Avoid checking twice for version matching during `IsGameHasPreload()` in ``6ce3af4`` [**!**](https://github.com/neon-nyan/Collapse/commit/6ce3af4c33d6521ae28db0bb8e9e1ffdaae7ff44)
- **[Launcher - Backend]** Fixed incorrect function calls for setting the amount of Download threads allowed ``f56eb07`` [**!**](https://github.com/neon-nyan/Collapse/commit/f56eb072d7f9b6507d07d215168826d461863bf9)
- **[Launcher - Backend]** Fixed invalid enum value for VolumetricLight parameter ``f3b1737`` [**!**](https://github.com/neon-nyan/Collapse/commit/f3b1737b3b03dbb514d1cb297b7499157f95488f)
- **[Launcher - Backend]** Fixed `CheckAndSetDefaultConfigValue()` failing to check for empty string condition ``3db9013`` [**!**](https://github.com/neon-nyan/Collapse/commit/3db901343ef1c8931acc19d5619bd6e99aeac8e5)
- **[Launcher - Backend]** Fixed Honkai & Genshin Impact game settings file being saved in incorrect locations ``7329a3e`` [**!**](https://github.com/neon-nyan/Collapse/commit/7329a3e4c0c5255083eb007d071aee928cb3c59f)
- **[Launcher - Honkai: Star Rail]** Fixed an issue where game would not launch due to incorrect handling from Collapse ``75fc0e9`` [**!**](https://github.com/neon-nyan/Collapse/commit/75fc0e92edb8de22a4ebcd38a247b1a11437ef82)
- **[Launcher - Backend]** Reinitialize setup process if game install directory is missing ``fbd30a0`` [**!**](https://github.com/neon-nyan/Collapse/commit/fbd30a03e9b7b3ed2b3356aa5b28ed2680119d1e)
- **[Launcher - Backend]** Return to default config directory if drive does not exist/is missing ``6a23b31`` [**!**](https://github.com/neon-nyan/Collapse/commit/6a23b318a6296224c11bb7770a88d625a3a9ea95)
- **[Launcher - Backend]** Fixed an issue where using the "Cache Update" feature would cause Collapse to crash, due to a trailing slash in the URL field ``36fb392`` [**!**](https://github.com/neon-nyan/Collapse/commit/36fb392c43c16d488b936a6f256e2ffb5b4f60ba)
- **[Launcher - Backend]** Fixed an issue where using the "Cache Update" feature would not display the errors to the user if they occur ``9d87f4e`` [**!**](https://github.com/neon-nyan/Collapse/commit/9d87f4efba3425a368d4133ffdf0b3bd64fba5de)
- **[Launcher - Backend]** Use dynamic Registry paths for defining elements in `PresetConfig` in ``b29791b`` [**!**](https://github.com/neon-nyan/Collapse/commit/b29791bf9f31c7dbdd992b24f8f963a99caa404e)
- **[Launcher - Backend]** Replaced string in exception by dynamic configuration paths ``cac877e`` [**!**](https://github.com/neon-nyan/Collapse/commit/cac877e8bfff6b3f3c5b7babcd5f0532e9948b40)
- **[Launcher - EncTool]** Fixed errors caused by the manifest file being improperly received from the server ``a4ec127`` [**!**](https://github.com/neon-nyan/Collapse/commit/a4ec127a85ddb4c1c6cd0ba00457a05cfc6bacfa)
- **[Launcher - Backend]** Fixed unwanted behaviour if `imageCarouselPanel` returned `null` in ``0bc12d3`` [**!**](https://github.com/neon-nyan/Collapse/commit/0bc12d3d0c01fd6d396550242f03869f94f0bc1b)
- **[Launcher - UI]** Fixed locked region swap button if start-up loading was forcibly cancelled ``e7b89b2`` [**!**](https://github.com/neon-nyan/Collapse/commit/e7b89b2496da06fa4ce596fba9bf0abe28db9fb9)
- **[Launcher - Backend]** Fixed abort subroutines still running when being cancelled ``17f5352`` [**!**](https://github.com/neon-nyan/Collapse/commit/17f535216dcfe66a349abb04c55d3cf5007efd66)
- **[Launcher - Backend]** Fixed an issue where Collapse would crash if the cache folder was missing when using the "Cache Update" feature  ``a76b2c3`` [**!**](https://github.com/neon-nyan/Collapse/commit/a76b2c363a47706cde7b144cf16ac4dc2102ba4f)
- **[Launcher - Backend]** Force cancellation token reinitialization while checking for cache update ``137d5ca`` [**!**](https://github.com/neon-nyan/Collapse/commit/137d5caf523baa54d8e20be016aa9dcfb49bc6e9)
- **[Launcher - Backend]** Force disposal of all Page Statics before they are reassigned ``29dfd4d`` [**!**](https://github.com/neon-nyan/Collapse/commit/29dfd4d54d4201bc3f99e74d016f40070b56f3fc)
- **[Launcher - Backend]** Fixed invalid time estimation and drive speed display while updating cache ``127b56c`` [**!**](https://github.com/neon-nyan/Collapse/commit/127b56c9324ccf749bb89437a76dc94ebd3ee887)
- **[Launcher - Backend]** Fixed an issue where the stopwatch would not reset in specific conditions when using Update or Repair Routine ``5e17e22`` [**!**](https://github.com/neon-nyan/Collapse/commit/5e17e22b80ef093378578892e4bc80ca576c25e5)
- **[Launcher - Backend]** Force Audio Versioning file to be generated after fetching ``557806e`` [**!**](https://github.com/neon-nyan/Collapse/commit/557806e012ece37a6983cac73575b6e3e4a2c90b)
- **[Launcher - Backend]** Fixed an issue where percentage values would be displayed incorrectly due to infinity being passed as a parameter ``0a8ac5a`` [**!**](https://github.com/neon-nyan/Collapse/commit/0a8ac5ae8e15ea4cd9289310a384721f5e702f53)
- **[Launcher - Backend]** Fix token race condition, where sometimes no token would be returned if running tasks in parallel ``9b5cbb8`` [**!**](https://github.com/neon-nyan/Collapse/commit/9b5cbb884bb4d119e1bfcdbe8d5bd6ed504caa82)
- **[Launcher - Backend]** Fixed Repair and Cache routines getting anonymously cancelled ``39d55d5`` [**!**](https://github.com/neon-nyan/Collapse/commit/39d55d54c1a5a6cd48ac35d2932cabaab13f5f8d)
- **[Launcher - Backend]** Force the usage of `GetAppConfigValue` to get current thread ``a1b6133`` [**!**](https://github.com/neon-nyan/Collapse/commit/a1b61330463a340666ceaf1f5e89edfbb820b43a)
- **[Launcher - Backend]** Fixed Gateway being assigned incorrectly, which resulted in it being `null` in some cases ``50d9f3f`` [**!**](https://github.com/neon-nyan/Collapse/commit/50d9f3f7c6da30fbd8073f31b37d476fb672b4d0)
- **[Launcher - Honkai Impact 3rd]** Fixed Collapse crash upon entering Honkai bridge ``5e74967`` [**!**](https://github.com/neon-nyan/Collapse/commit/5e74967026477e50fcccb0ab742459c211aa6158)
- **[Launcher - Backend]** Fixed Collapse using full ZIP instead of Diff ZIP on game preload ``540e8de`` [**!**](https://github.com/neon-nyan/Collapse/commit/540e8de519e26b4c391720a614fe510240e30e58)
- **[Launcher - Backend]** Force usage of `GameType` for asset verification ``c79dd09`` [**!**](https://github.com/neon-nyan/Collapse/commit/c79dd09c1d67700dca4c9c17eaa5ee3c044b7a81)
- **[Launcher - Backend]** Fixed download event not getting subscribed properly ``d81430f`` [**!**](https://github.com/neon-nyan/Collapse/commit/d81430fef9931cef3e911ff0edcfaee83ed09185)



- **[Launcher - Backend]** ```` [**!**]()
- **[Honkai Impact 3rd]** ```` [**!**]()
- **[i18n]** ```` [**!**]()