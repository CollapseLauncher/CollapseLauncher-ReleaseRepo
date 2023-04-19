![](https://raw.githubusercontent.com/neon-nyan/CollapseLauncher-Page/main/images/banner202304.webp)

# 1.69.11: Version Kiana
We can't believe it's been over 2 years since this project was first launched. A big thank you to all our developers and users for continuing to work and use this application. We hope you're having as much fun using it as we did making it! 

It's been a while since the last major release of Collapse (almost 4 months ago ^.^). We wanted to make sure we get this release right, as its name coincides with one in a game we (hopefully) all hold dear in our hearts. Honkai Impact 3rd was a turning point for a lot of us from the Collapse development team, and so we wanted to take the time to make this version extra special to commemorate its launch. That being said, please take note that we are all volunteers working on this project. This means that Collapse can receive slower, maintenance updates for an extended period of time should we have more pressing matters to attend to in the real world.

This release changelog is going to be structured a bit differently than the other ones (someone else is writing it, *teehee*). Without further ado, buckle up, because this is biiiiiiiig update \o/

# What's New?

## Change in Versioning Scheme (again)
Starting with ***Codename: Version Kiana***, Collapse is officially switching from a **4 number denomination** to **3 number denomination**. This is a ***breaking change*** for the end user, but ensures that we adhere to the [*Semantic Versioning 2.0.0*](https://semver.org/) (SemVer for short) versioning scheme, so we felt it was in our best interest to transition to this version scheme. To boil it down, this means the following:
- Instead of having a version number of, for example, `1.0.64.0`, the new version format will now be `1.64.0`. Previous versions are not subject to the versioning scheme. The explanation below will use the aformentioned example.
    - **1** is the MAJOR version number. Unless otherwise stated, this number should never change (unless we make a drastic overhaul to the launcher, such as a full application rewrite)
    - **64** is the MINOR version number. This is the number that gets incremented whenever we release new features
    - **0** is the PATCH version number. This is incremented whenever we make bug fixes on the current release lifecycle.

It's important to note that you will **no longer be able to downgrade to a version prior 1.69.0** once you apply this update due to a backend code update to accommodate for this change. While we will do our best to offer help should you encounter any issues to versions prior to 1.69.0, **support is not guaranteed**, so if you choose to stay on the old version, proceed at **your own risk**.

This change will allow us to more easily determine version numbers when we release them to you. Thanks for understanding! ❤️
***
## New Feature: Improved New User Experience
Shipping with Collapse 1.69.0 is a new setup experience that streamlines the setup process, while also introducing some new features!

And here's more UI tweaks!
[**Click here to see the preview**](https://user-images.githubusercontent.com/9833218/229684558-e1ae7149-b4a2-40f1-8a64-0493ff5f3713.mp4)

Here's the new setup process for Collapse!
[**Click here to see the preview**](https://user-images.githubusercontent.com/9833218/229684678-1a5bef9a-73d4-4c58-9472-b836faa3a44f.mp4)

``719c21e`` [**!**](https://github.com/neon-nyan/Collapse/commit/719c21e2f810d0acf1a8cad23e2a147f94337a16), ``3249ce1`` [**!**](https://github.com/neon-nyan/Collapse/commit/3249ce1c16e73a8254165c846570756ffd1f9cdc), ``b4f0d2d`` [**!**](https://github.com/neon-nyan/Collapse/commit/b4f0d2d996b6e19bee44485bf9a38cdbb106f9f2), ``0ed5304`` [**!**](https://github.com/neon-nyan/Collapse/commit/0ed5304feff51fc192789896d463fc9b09db590e), ``94a787a`` [**!**](https://github.com/neon-nyan/Collapse/commit/94a787adbf03de5116a56f5ee6fd7de71a77b246)
***
## New Feature: Window Resizing
Yet another requested feature that is now available in Collapse 1.69.0. This allows the user to make the launcher window smaller, which means that Collapse now also supports 4:3 monitors! Yay!

![image](https://user-images.githubusercontent.com/9833218/229685165-59750e51-9dea-4bdf-bf35-ff35ee02c84e.png)

``e2db756`` [**!**](https://github.com/neon-nyan/Collapse/commit/e2db7564a90ac443c36d4625ceb0435e54e3c8d3), ``10257f2`` [**!**](https://github.com/neon-nyan/Collapse/commit/10257f28d07807e8d6401e469e8a43d8acddcb6b)
***
## New Feature: Release Channel Switching
![image](https://user-images.githubusercontent.com/9833218/229682323-59d04b9d-b069-45a3-b9a2-7af5eb4d9bb1.png)
As the title says, this enables the user to directly switch from the Stable, battle-tested version of Collapse to a more experimental branch of Collapse, which is updated more frequently but can contain more breaking changes.

Should you consider switching to the experimental branch ("Dev"), please make sure to report any bugs that you may encounter by creating an issue over on GitHub ([https://github.com/neon-nyan/Collapse/issues](https://github.com/neon-nyan/Collapse/issues)). Thanks for helping us make Collapse a better launcher!

``ca524ed`` [**!**](https://github.com/neon-nyan/Collapse/commit/ca524ede127e667fcf4443fdf7ed3d3d0e046011)
***
## New Feature: Admin Restart Prompt
Starting with Collapse 1.69.0 (originally introduced in Collapse `1.0.64.0-preview`), the launcher will prompt you for privilege escalation if you are running it as an unauthorized (without administrator permissions) user. To make it clear: **Collapse has always asked you for these privileges and will continue to do so** for the foreseeable, because of some Win32 API calls we've made, as well as to read data from the registry, installing games and customising the launcher experience.

The prompt looks like so:


[**Click here to see the preview**](https://user-images.githubusercontent.com/9833218/229683996-25a9b6b1-07b0-46f2-9138-9ba9aa962453.mp4)


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



[**Click here to see the preview**](https://user-images.githubusercontent.com/9833218/229684247-57d94660-8ae9-4a2e-90df-86d95df7f404.mp4)



Previously, users were not able to run multiple Collapse processes without running into issues. This has now been resolved! This is a feature that was necessary to implement while we work on implementing background installation for new games and/or updating existing ones. While we understand that the aformentioned feature is highly requested, the implementation for it has proven to be quite a challenge and will require more time to fine-tune before it is made available for the general public. We appreciate your patience and can't wait to show you it in action once it's ready!

To allow Collapse to spawn multiple instances, you must first enable that option in the launcher settings.
``c328d8e`` [**!**](https://github.com/neon-nyan/Collapse/commit/c328d8e468bbff90d522c7ca17beaaf3e8f58882), ``d10bd2d`` [**!**](https://github.com/neon-nyan/Collapse/commit/d10bd2dd89647543c473117ca186e8f7f805d978), ``eedf0cf`` [**!**](https://github.com/neon-nyan/Collapse/commit/eedf0cf9cb3e26dd932769deed84ac12bf214fd8)
***
## QoL Improvement: Smaller Installation Size
Yup, you heard it right! Collapse is shrinking in size soon, and this updates serves as an intermediary step to achieve that goal. The first part of this update will focus on the update mechanism that powers Collapse. While it was good and served us well, it was quite bandwidth hungry and had no way of only downloading the patched files. This changes with our new updater, which uses [*Squirrel*](https://github.com/Squirrel/Squirrel.Windows), an extensive framework for managing and distributing our application in the best possible manner, while keeping the update size minimal. 

The current update process works by querying a repository and fetching all the files contained therein. Squirrel solves that by generating delta files that are read when checking for updates and applies only the difference between the current file and the updated file, thus saving ~80% of the bandwidth required by the older updater. This also has the added benefit of saving us a lot of development time due to its easy-to-use tools to generate those files. 

On a more serious note though, due to how it is designed, Squirrel cannot generate patches for older versions of Collapse. In order to ensure the smoothest possible upgrade experience, please make sure that Collapse is running on version `1.0.55.6 Stable`. Should you be running an experimental release ("Dev"), we recommend downgrading to the last stable release and upgrading from there, as Squirrel may not behave as intended. Furthermore, due to our migration to this new updater framework, versions prior to the last 2 stable releases may not work as intended. 

Please keep in mind that should things break, we encourage you make a clean install of Collapse. This is a big change for all of us involved, and we're doing our best to sort everything out before we ship it to you, but some things may slip through the cracks. Your patience is therefore much appreciated.
***
## Major Changes:
- You can now repair Genshin Impact directly from the launcher! This works in the same way that Honkai Impact 3rd's interface does! ``a78f77d`` [**!**](https://github.com/neon-nyan/Collapse/commit/a78f77d50c3dfc6de27aa35f1e701b1448e1d282), ``a5e6be7`` [**!**](https://github.com/neon-nyan/Collapse/commit/a5e6be781b8b47cd494b37eae5f71f73a7d67907), ``4cd8675`` [**!**](https://github.com/neon-nyan/Collapse/commit/4cd867598f07fc9cb57b6b83822669f47b50928d), ``366c2df`` [**!**](https://github.com/neon-nyan/Collapse/commit/366c2dfeeac62761c2d993a857e5f4205640b0b7), ``e7e991c`` [**!**](https://github.com/neon-nyan/Collapse/commit/e7e991c32f0576b682d60af75080ec100fb45580), ``f0edf3f`` [**!**](https://github.com/neon-nyan/Collapse/commit/f0edf3fe97051b93ba8dd023044191c8cfc84867), ``353b74b`` [**!**](https://github.com/neon-nyan/Collapse/commit/353b74b875d28f0fbabb2f50cf801b7a083f4a2f), ``5f9f6ff`` [**!**](https://github.com/neon-nyan/Collapse/commit/5f9f6ffe3e5f203aa5a36b2f269aca370a42c6f6)
- Game settings data is now read directly from registry instead of relying on `.ini` files. This paves the way for other game settings customization ``4deb985`` [**!**](https://github.com/neon-nyan/Collapse/commit/4deb9854235c540ba2841a9548f8214f715eb65f)
- Added the ability to import and export Registry keys for local machine. This allows the user to back up game settings and restore them should something go wrong ``2a13a68`` [**!**](https://github.com/neon-nyan/Collapse/commit/2a13a6822548821475b2d1f3b99af3af7b7025ba) 
- New UI animations and layout for region loading ``e79251d`` [**!**](https://github.com/neon-nyan/Collapse/commit/e79251dedbbda0f14f980af2a8930db4c7fe0ef9)
- Added the ability for the "Game Repair" feature to support Audio files and enabled parallelization (multi-threading) during asset checking ``4802010`` [**!**](https://github.com/neon-nyan/Collapse/commit/48020106a8f667b261057d64b08f269252099d3e), ``5404c85`` [**!**](https://github.com/neon-nyan/Collapse/commit/5404c854cabe872269749ce99133557921b4020a), ``c08345f`` [**!**](https://github.com/neon-nyan/Collapse/commit/c08345f20ca430883cc7cfde6e821f4d38c9d7e2)
- New Locales: Vietnamese & Korean! As with other languages, these new locales will be available both during the first time setup and in Collapse's Settings ``261654b`` [**!**](https://github.com/neon-nyan/Collapse/commit/261654ba4e56ab63596ce75ba91b94d84bf60b23), ``cbf9c4e`` [**!**](https://github.com/neon-nyan/Collapse/commit/cbf9c4e39187c9dad0b5aa72df39e9db2f9e8185)
- Metadata updates will now run automagically if a new version is detected. No more button presses! This is the power of A U T O M A T I O N. ``7e51666` [**!**](https://github.com/neon-nyan/Collapse/commit/7e51666c890698ac47792ff0acd932602de85abb)
- Collapse now supports downloading Cutscenes (CG) for Honkai Impact 3rd before launching the game. Yay for reduced download sizes in-game! ``0e33017`` [**!**](https://github.com/neon-nyan/Collapse/commit/0e33017a236a5fc4a5aab47fce1c02476837cbd1)
- You now have the option between running a "Quick Check" or a "Full Check" for the "Game Repair" and "Caches Update" function. Quick Check will only check the required files, while Full Check will check all the installation files for any signs of corruption or to update them ``6c61359`` [**!**](https://github.com/neon-nyan/Collapse/commit/6c61359c072c96e6ebd1c9931d079e140c07c0a6)
***

## Minor changes:
- **[Launcher - HTTP]** Added `DownloadFromSessionStream()` function ``5673410``[**!**](https://github.com/neon-nyan/Hi3Helper.Http/commit/5673410cd19208dfe14666c5db7200449ae1e2ef)
- **[Launcher - Backend]** Updated usage for Hi3Helper.Http & cancellable method ``f235f55``[**!**](https://github.com/neon-nyan/Collapse/commit/f235f551cedee75b5865ed38df38dc9e8ecbe68a)
- **[Launcher - Backend]** Removed unused `JsonSourceGenerationOptions` in ``7f6885d``[**!**](https://github.com/neon-nyan/Collapse/commit/7f6885dd13e0e9352bf464ea6d7ea679e1d9f30c)
- **[Launcher - Backend]** Code cleanup ``46aa429``[**!**](https://github.com/neon-nyan/Collapse/commit/46aa42904f7cb6ab6588a9cdf3029166b3a0d9a9) , ``9048b9b``[**!**](https://github.com/neon-nyan/Collapse/commit/9048b9b8b193c7996008602a0928009c60f3b863) , ``481a46e`` [**!**](https://github.com/neon-nyan/Collapse/commit/5b1f0e9d8a018d52a4fbacff84b0ef8c753c51ce) , ``81fb3d1`` [**!**](https://github.com/neon-nyan/Collapse/commit/81fb3d1e93bc62532bce7a9f014c0fd0ce0f85bd) , ``db3014f`` [**!**](https://github.com/neon-nyan/Collapse/commit/db3014fd8005f7b5c2692d722e07be9591fa9e93), ``ebe54f2`` [**!**](https://github.com/neon-nyan/Collapse/commit/ebe54f2a5f14f04c741e996cf1fd662d8dadf812) , ``9e7ed0f`` [**!**](https://github.com/neon-nyan/Collapse/commit/9e7ed0f02853669694ab52af3830629ce9145d93) , ``5009def`` [**!**](https://github.com/neon-nyan/Collapse/commit/5009def07601c3418307ec2ff7ddd3a399d4e695), ``329abda`` [**!**](https://github.com/neon-nyan/Collapse/commit/329abda6d91e02c909b857910c820584fdda9270), ``cc25ce6`` [**!**](https://github.com/neon-nyan/Collapse/commit/cc25ce650651fee728a1abb6be5f1b22b7aa1d68), ``06700e0`` [**!**](https://github.com/neon-nyan/Collapse/commit/06700e0d4cc274eaea9314735f73807d234553da), ``cfa92f4`` [**!**](https://github.com/neon-nyan/Collapse/commit/cfa92f4cc52b5d9aefe95954280ad280faa54894), ``891bd0a`` [**!**](https://github.com/neon-nyan/Collapse/commit/891bd0ad669810eb8dac5bff2a48678a72296805), ``30a97f2`` [**!**](https://github.com/neon-nyan/Collapse/commit/30a97f2ff90b1c16ac39bdad0845fcc39ae39fda), ``464f932`` [**!**](https://github.com/neon-nyan/Collapse/commit/464f93207b3aa7f46a838360adf5b14bc9d0f6e5), ``4525b2e`` [**!**](https://github.com/neon-nyan/Collapse/commit/4525b2eac14e106ca44a4ff5d27d1dda45eba365), ``12e89f1`` [**!**](https://github.com/neon-nyan/Collapse/commit/12e89f1dd8783704fac95a8e56496caf74f10f2c), ``e5e3ff9`` [**!**](https://github.com/neon-nyan/Collapse/commit/e5e3ff94244e7ff43f4d1b65c0d3a967c52397d3), ``2df6c24`` [**!**](https://github.com/neon-nyan/Collapse/commit/2df6c241b016b73de43afee5f60d685312346160), ``65bf8bc`` [**!**](https://github.com/neon-nyan/Collapse/commit/65bf8bcfbedd736e4b405269ace4833850ee760d), ``486a9c7`` [**!**](https://github.com/neon-nyan/Collapse/commit/486a9c797303afb739d79b27504c667a78752b88), ``b8c8f10`` [**!**](https://github.com/neon-nyan/Collapse/commit/b8c8f10e0baceab1202a155b1b075b9efe69f0bf), ``b19a23a`` [**!**](https://github.com/neon-nyan/Collapse/commit/b19a23a793566955ead9597fc1f1a2ac7ece5259), ``9e19599`` [**!**](https://github.com/neon-nyan/Collapse/commit/9e1959908886b787c75f1401c4726497f7d661d0), ``0fb214d`` [**!**](https://github.com/neon-nyan/Collapse/commit/0fb214dad4cb67967e08f513f635d15eecfc4e70), ``c4bb06a`` [**!**](https://github.com/neon-nyan/Collapse/commit/c4bb06a0176a5bfe84c1e6861eb370754e9df06b), ``6ef34dd`` [**!**](https://github.com/neon-nyan/Collapse/commit/6ef34ddb54a9cca43438e8704f28f02e601f099b), ``2a7afd8`` [**!**](https://github.com/neon-nyan/Collapse/commit/2a7afd88f24a1a917dc4b364c4908c0d957ef748), ``c2c4f69`` [**!**](https://github.com/neon-nyan/Collapse/commit/c2c4f698cce59d73e11e48acd68de31a80fc440f), ```d1ef987``` [**!**](https://github.com/neon-nyan/Collapse/commit/d1ef98764070c163209b0a60ce89f8d558932416), ```7e6322a``` [**!**](https://github.com/neon-nyan/Collapse/commit/7e6322abfe2beb510863f98762a44229db0d0779), ```af22e0e``` [**!**](https://github.com/neon-nyan/Collapse/commit/af22e0e8c6a7342fc9816b04a8bdb348e9b9a316)
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
- **[Launcher - UI]** Styling tweaks ``a41c121`` [**!**](https://github.com/neon-nyan/Collapse/commit/a41c12124be6a1497a2b48f254f8986df35210e9), ``7e1dc96`` [**!**](https://github.com/neon-nyan/Collapse/commit/7e1dc96170b013af25c5328f22c30316cb2a5117), ``b27cfae`` [**!**](https://github.com/neon-nyan/Collapse/commit/b27cfae9f5de3c224f00c5abf353527bea9ec153), ``9f8d589`` [**!**](https://github.com/neon-nyan/Collapse/commit/9f8d589812a4a315fea709dac4961bd1d171a562), ``c151c89`` [**!**](https://github.com/neon-nyan/Collapse/commit/c151c8974120cbdd0e53af3f24306dd20f02dd58)
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
- **[Launcher - Backend]** Use shared event handler methods, better progress indicators, properly subscribe & unsubscribe, simplify variable getters and add ability to get persistent audio file list while repairing games ``8715cd2`` [**!**](https://github.com/neon-nyan/Collapse/commit/8715cd26d0bdc16a41cc453d66400fc6b9894342)
- **[Launcher - Backend]** Hard-code administrator requirements in the app manifest ``278a48c`` [**!**](https://github.com/neon-nyan/Collapse/commit/278a48cf5898326dd64526fb069ffabdeb2a3d49)
- **[Launcher - UI]** Renamed "Game Settings" to "Quick Settings" ``28c3920`` [**!**](https://github.com/neon-nyan/Collapse/commit/28c39208091700f9ebd2df78e703d33b3aad3b74)
- **[Launcher - UI]** Add the ability to hide the social media (right sidebar) panel ``a990673`` [**!**](https://github.com/neon-nyan/Collapse/commit/a990673a98a6e44d252ab1283e6b2f6a51ede7d9)
- **[Launcher - Backend]** Send user to Exception page if error occurs in "Game Repair" & "Cache Update" pages ``e432639`` [**!**](https://github.com/neon-nyan/Collapse/commit/e4326391369bccd9118f39bc2d489aff5b149257)
- **[Launcher - Backend]** Move `config.ini` to the same path as the app folder  ``b642599`` [**!**](https://github.com/neon-nyan/Collapse/commit/b64259952fffb634586256568d4409000d7a11ad)
- **[Launcher - Backend]** Use old behaviour on config for non-portable builds ``d0b8649`` [**!**](https://github.com/neon-nyan/Collapse/commit/d0b8649b3df69bd401fb75a15d11493ff1a2decf)
- **[Launcher - Backend]** Exclude config folder from reindexing operation ``db05da5`` [**!**](https://github.com/neon-nyan/Collapse/commit/db05da5fba2ccabfd46d2b3b8b4825c964e0ad6c)
- **[Launcher - Backend]** Standardize process of reading `app.info` as `GameVendorProp` in ``1efb808`` [**!**](https://github.com/neon-nyan/Collapse/commit/1efb8083af2de6e2d591601ccffed3840841271f)
- **[Launcher - Backend]** Use `GameVendorProp` to check game availability ``a59fb54`` [**!**](https://github.com/neon-nyan/Collapse/commit/a59fb54473dae90ab1a1694e0ae53d2477de8be8)
- **[Launcher - Backend]** Use dynamic `GameDirAppDataPath` for Game App Data folder, with fallback to vendor type ``7b7687b`` [**!**](https://github.com/neon-nyan/Collapse/commit/7b7687bdb42401a0d6cda8604247362c9fa6a620)
- **[Launcher - Honkai Impact 3rd]** Refactored `HonkaiRepair` to be more efficient and added the ability to delta patch block files, ability to check for main assets only, make patching process cancellable, using smaller asset index format, use separate processes for reading asset index & XMF asset types, exclude video asset from being counted in total asset count, fix repair missing certain block files, use seconday block as XMF base, use "Total Current Read / Total Current To Read" status ``aa90d8c`` [**!**](https://github.com/neon-nyan/Collapse/commit/aa90d8c701816f86ba76d55927b6be8ff22a5403), ``ad6bf03`` [**!**](https://github.com/neon-nyan/Collapse/commit/ad6bf03465a9a3d1c560c612c02a714251d5089c), ``503bf81`` [**!**](https://github.com/neon-nyan/Collapse/commit/503bf81eeef3f3c7de723c1dc3e890e2717284a1)
- **[Launcher - EncTool]** KianaAudioManifest & XMFParser improvements ``b6f8e69`` [**!**](https://github.com/neon-nyan/Collapse/commit/b6f8e69ce8b59dcb2bb7b9c961ed04895c5bf5d3)
- **[Launcher - Backend]** General launcher improvements ``8305445`` [**!**](https://github.com/neon-nyan/Collapse/commit/8305445567b8ef3db8884f55b440cb55201369ea), ``070a953`` [**!**](https://github.com/neon-nyan/Collapse/commit/070a95316be961de2589a9abc7233e56ef92fe26), ``c1379ed`` [**!**](https://github.com/neon-nyan/Collapse/commit/c1379ed1030982c2ca79acf5770a2572b76093c4)
- **[Launcher - UI]** Notification improvements ``e8ac6d2`` [**!**](https://github.com/neon-nyan/Collapse/commit/e8ac6d29c94fe30fa203c401f826c1b70523f440)
- **[Launcher - Backend]** Use unified `CheckHash` on `ProgressBase` in ``8bb9695`` [**!**](https://github.com/neon-nyan/Collapse/commit/8bb9695ae571ec3442d43703427f737c34a6386e)
- **[Launcher - Backend]** Retain installed region when reselection game category ``be81d24`` [**!**](https://github.com/neon-nyan/Collapse/commit/be81d24a5483def402cf44c57dcae434723c3647)
- **[Launcher - Backend]** Initialize Collapse Console window using `UTF-8` encoding ``d9b9071`` [**!**](https://github.com/neon-nyan/Collapse/commit/d9b9071991e23ee6df0c35fca33f0b926a11fc12)
- **[Launcher - EncTool]** Handle `xmf.OpenRead()` with `using` in ``d746eee`` [**!**](https://github.com/neon-nyan/Collapse/commit/d746eeeb7adfb5442072634575b8b501e59b93f8)
- **[Launcher - Backend]** Unify Patching Task using `RunPatchTask()` in ``5bd7090`` [**!**](https://github.com/neon-nyan/Collapse/commit/5bd7090ea8aca463c0827e45cbac0861423d62c0)
- **[Launcher - Backend]** Rewrite region loading task ``6786516`` [**!**](https://github.com/neon-nyan/Collapse/commit/6786516bda7218ff0903c8952a5879f81423994b)
- **[Launcher - HTTP]** Implement `DownloadFromSessionStreamAsync()` in ``b6a895d`` [**!**](https://github.com/neon-nyan/Collapse/commit/b6a895d8f788a39a178577f297c0c3a299631721)
- **[Launcher - Console]** Add runtime information on start-up ```8fad537``` [**!**](https://github.com/neon-nyan/Collapse/commit/8fad5374b8e1f9168dc483183b81e026b4cb6a31)
- **[Launcher - UI]** Update ColorThief submodule and adjust BackgroundManagement task  ```b64915c``` [**!**](https://github.com/neon-nyan/Collapse/commit/b64915cf13c2a44a062d7c77d0a89a3c860e7aca), ```46c2264``` [**!**](https://github.com/neon-nyan/Collapse/commit/46c2264c88f1a21864157222613f3999a3b8c7da)
- **[Launcher - UI]** Update Page - Use localized countdown text and show legacy ``Update now`` and ``Remind me later`` button```d46d296``` [**!**](https://github.com/neon-nyan/Collapse/commit/d46d2966c03b3689631ebba2176922f475c8fc37)
- **[Launcher - Backend]** Revert to standalone process for `UpdateWindow` ```868bb20``` [**!**](https://github.com/neon-nyan/Collapse/commit/868bb207140b05bb49e39935c3d740454d4237fe)
- **[Launcher - Build]** Use R2R build and remove .NET8 testing profiles ```94051b1``` [**!**](https://github.com/neon-nyan/Collapse/commit/94051b1b01704399746adb0fff97a97a1129805f)
- **[Launcher - Backend]** Update `CsWinRT` NuGet package to 2.0.2 ```5ed2674``` [**!**](https://github.com/neon-nyan/Collapse/commit/5ed2674e1af39dcc99522bc9ab80c1938be6f1e1)
- **[Launcher - Backend]** Use `FileStream` and implement bigger buffer size for game repair check process ```24c6bec``` [**!**](https://github.com/neon-nyan/Collapse/commit/24c6bec0d29a023517bd9835c36c8ae85177a675)
- **[Launcher - Presence]** Initial implementation for Discord Rich Presence ```cd990d3``` [**!**](https://github.com/neon-nyan/Collapse/commit/cd990d34eae2ba2cea562e07b679d037ab2d3a43)
- **[Launcher - Build]** Remove portable build ```5a15007``` [**!**](https://github.com/neon-nyan/Collapse/commit/5a15007a9f0e4293a4839c0a2dfa081c41d46758)
- **[Launcher - Backend]** Use `XMFParser` instead of `BlockData` for block clean-up ```e1bb9ea``` [**!**](https://github.com/neon-nyan/Collapse/commit/e1bb9eafa77bd12e9d5c3fe8f1d923ba5072d8ef)
- **[Launcher - i18n]** Update English locale and fix typos. Also fix positioning on `Post Processing` setting for HI3 ```4265774``` [**!**](https://github.com/neon-nyan/Collapse/commit/42657741a7f53f9207146cbe68a1a34eeffb8ced), ```714e709``` [**!**](https://github.com/neon-nyan/Collapse/commit/714e7092f91d5d0fcfc039108a3684e25ecc7bd5)
- **[Launcher - Backend]** Rewrite `InstallManagement` in ```d544fcb``` [**!**](https://github.com/neon-nyan/Collapse/commit/d544fcb00687fd1ccf5fe93b202cf8e7083dd93c), ```cf7940f``` [**!**](https://github.com/neon-nyan/Collapse/commit/cf7940f1d63f1e7bd2ce3c8ad94f622212f8fea9), ```fc9cad4``` [**!**](fc9cad449200897a953a75563e359690ea2b2ab7), ```f328e2b``` [**!**](https://github.com/neon-nyan/Collapse/commit/f328e2bf6061e7f3b298ddf59ffb6c06ac51ab57), ```99cad5c``` [**!**](https://github.com/neon-nyan/Collapse/commit/99cad5c291bf9d4ac307040b4aca1bc20f7ee06f), ```e5edbbc``` [**!**](https://github.com/neon-nyan/Collapse/commit/e5edbbc94cb45bb64429fa4523e9abf627937311), ```7792427``` [**!**](https://github.com/neon-nyan/Collapse/commit/779242752fe7b71ce378ddbdc1802bfdc3f761be), ```da119a3``` [**!**](https://github.com/neon-nyan/Collapse/commit/da119a39dc993132eafe4c8b88ada2b6f6e164b6)
- **[i18n - zh-CN]** Updated Chinese locales ```2a58383``` [**!**](https://github.com/neon-nyan/Collapse/commit/2a58383d792753840374ce653bddda58764d14f0)
- **[i18n - pt-PT]** Updated Portuguese locales ```e98e371``` [**!**](https://github.com/neon-nyan/Collapse/commit/e98e371a9346d0083228cb2ef4a042f1c5127684)
- **[Launcher - UI]** Set width of button to scale automatically based on text ```3831050``` [**!**](https://github.com/neon-nyan/Collapse/commit/38310504b7c09179cf9984510a870ecb175525f5), ```0439a7d``` [**!**](https://github.com/neon-nyan/Collapse/commit/0439a7dd7d55ef7d3aeb919a122743762e97a39e)
- **[Launcher - Backend]** Move to WindowsAppSDK 1.3 (WinUI 3.2) ```edd6ca3``` [**!**](https://github.com/neon-nyan/Collapse/commit/edd6ca3882d2435060897d2058ff69e66ee03b7b)


[comment]: <> (#################################################################)
[comment]: <> (#################################################################)
[comment]: <> (#################################################################)
***

# What's Fixed? (Since 1.69.10)
- **[Genshin Impact]** Fixed installation to fail if the launcher is looking for audio package list file ``audio_lang_14`` ``bd682ca``[**!**](https://github.com/neon-nyan/Collapse/commit/bd682ca546f9e89bbc22040afdb55a93ef4059c1)

# What's Fixed? (Since 1.69.7)
- **[Genshin Impact]** Fixed issues downloading unnecessary persistent files while running Repair feature prior Genshin 3.6 update (Issue: #101) ``c90d58c``[**!**](https://github.com/neon-nyan/Collapse/commit/c90d58cfadeceb527307251f9b7b5f96a79cc836)
- **[Genshin Impact]** Ensure audio package and video files in ``Persistent`` folder are moved to ``StreamingAssets`` folder ``ffb2042``[**!**](https://github.com/neon-nyan/Collapse/commit/ffb204239c0a8f84a5549285dcda1a1d7c62cfd1)
- **[Honkai Impact 3rd]** Fixed LOD Grade on Honkai Game Settings gives a wrong value on Low ``16ad4c2``[**!**](https://github.com/neon-nyan/Collapse/commit/16ad4c2695ac50d044462445f895fdce7eadae22) ``46be999``[**!**](https://github.com/neon-nyan/Collapse/commit/46be9999ca26759bc494ca6db7e70907b0217db7)
- **[Honkai Impact 3rd]** Fixed the delta-patch update deletes previous/secondary files ``6f3273b``[**!**](https://github.com/neon-nyan/Collapse/commit/6f3273bc8bba7dda4a999ae05b40603c4ec1adfd)
- **[Honkai Impact 3rd]** Fixed "fetching index" not showing progress while updating delta patch ``75c2772``[**!**](https://github.com/neon-nyan/Collapse/commit/75c27721046afe5b5d2d90002b5f22c2438ae3f7)
- **[Launcher - Backend]** Fixed updater page didn't show build time ``3ce7806``[**!**](https://github.com/neon-nyan/Collapse/commit/3ce7806c7a8fdf06fa3de37c36f8675a0e891ecb)
- **[Launcher - Backend]** Fixed inconsistent delay for checking update ``8c79855``[**!**](https://github.com/neon-nyan/Collapse/commit/8c79855d5a24c025a3e50d615100463a4f9cb740)
- **[Launcher - Backend]** Fixed fail safe check while initializing locale (Issue: #103)
 ``5e312e9``[**!**](https://github.com/neon-nyan/Collapse/commit/5e312e9c20fd67e3bd36dfe137e4f15934b50784)
- **[Launcher - Backend]** Fixed version still showing 4-numbers format in ``UpdaterWindow``
 ``c1fbbe7``[**!**](https://github.com/neon-nyan/Collapse/commit/c1fbbe7e9d5186c18b9da85ea3693a01f3cd151d)
- **[Launcher - Backend]** Fixed Updater page won't quit to ``ExceptionPage`` if the update fails
 ``0ba90a7``[**!**](https://github.com/neon-nyan/Collapse/commit/0ba90a7c0a666291bfd3dfb8a0293061cb9ca15f)

# What's Fixed?
- **[Launcher - Backend]** Force GC in Launcher to avoid potential memory leaks ``a40ae49``[**!**](https://github.com/neon-nyan/Collapse/commit/a40ae4909488cf0961e5a73c3771d402f2a5d1e3)
- **[Honkai Impact 3rd]** Fixed wrong Volumetric Lighting value obtention from the game ``b857f8e``[**!**](https://github.com/neon-nyan/Collapse/commit/b857f8e36d9024e3c5231495d23bac9b0ae54013)
- **[Launcher - Backend]** Fixed incorrect initialization of main app runtime ``3e7a802`` [**!**](https://github.com/neon-nyan/Collapse/commit/3e7a802ecb439c00edd9abb206ab9c3996159ce2)
- **[Launcher - Backend]** Force game config loading to happen at the same time ``481a46e``[**!**](https://github.com/neon-nyan/Collapse/commit/481a46ee8336c636c13c827e2e8f1814faa218ed)
- **[Launcher - Backend]** Pre-initialize values while checking for game diff ``c578dc9``[**!**](https://github.com/neon-nyan/Collapse/commit/c578dc93dc2c8ab414686ec6184abe484fb43f52)
- **[Launcher - Backend]** Use `HexToBytesUnsafe()` for some hex to byte[] conversion ``01916ba``[**!**](https://github.com/neon-nyan/Collapse/commit/01916ba31638226abb54195baee7821a7cb7e288)
- **[Launcher - Backend]** Added missing Async methods on `ChunkStream` and disposing fixes ``aed2cef`` [**!**](https://github.com/neon-nyan/Collapse/commit/aed2cef4861050da0bb49fb21f9a088be2893ae4)
- **[i18n - en-US]** Yet more localization fixes (by @neon-nyan & @CryoTechnic) ``592e0c7`` [**!**](https://github.com/neon-nyan/Collapse/commit/592e0c70d50dca70579938faa1edec31cba2e5e8), ``5ed3815`` [**!**](https://github.com/neon-nyan/Collapse/commit/5ed3815a5ce3f8f0aa6db38e9166e3783c6918bb), ``8078468`` [**!**](https://github.com/neon-nyan/Collapse/commit/8078468697ab819d6c1cfa4a8d09e26c1436e236), ``d66e387`` [**!**](https://github.com/neon-nyan/Collapse/commit/d66e38775a4438d76c93ff9a5edf13fa540fe041), ``69838b9`` [**!**](https://github.com/neon-nyan/Collapse/commit/69838b907b4444634e755066b9fbbeb6f92c0a84), ``a00d08d`` [**!**](https://github.com/neon-nyan/Collapse/commit/a00d08dee077ac5c580746cdce3bdafb6c910a54), ``2002d07`` [**!**](https://github.com/neon-nyan/Collapse/commit/2002d078885e67fdf367767be341f2ab253d4067)
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
- **[Launcher - Backend]** Fixed an issue where percentage values would be displayed incorrectly due to infinity being passed as a parameter ``0a8ac5a`` [**!**](https://github.com/neon-nyan/Collapse/commit/0a8ac5ae8e15ea4cd9289310a384721f5e702f53), ``df65109`` [**!**](https://github.com/neon-nyan/Collapse/commit/df65109fab76f3b3f77b60e74a578bef80618105)
- **[Launcher - Backend]** Fix token race condition, where sometimes no token would be returned if running tasks in parallel ``9b5cbb8`` [**!**](https://github.com/neon-nyan/Collapse/commit/9b5cbb884bb4d119e1bfcdbe8d5bd6ed504caa82)
- **[Launcher - Backend]** Fixed Repair and Cache routines getting anonymously cancelled ``39d55d5`` [**!**](https://github.com/neon-nyan/Collapse/commit/39d55d54c1a5a6cd48ac35d2932cabaab13f5f8d)
- **[Launcher - Backend]** Force the usage of `GetAppConfigValue` to get current thread ``a1b6133`` [**!**](https://github.com/neon-nyan/Collapse/commit/a1b61330463a340666ceaf1f5e89edfbb820b43a)
- **[Launcher - Backend]** Fixed Gateway being assigned incorrectly, which resulted in it being `null` in some cases ``50d9f3f`` [**!**](https://github.com/neon-nyan/Collapse/commit/50d9f3f7c6da30fbd8073f31b37d476fb672b4d0)
- **[Launcher - Honkai Impact 3rd]** Fixed Collapse crash upon entering Honkai bridge ``5e74967`` [**!**](https://github.com/neon-nyan/Collapse/commit/5e74967026477e50fcccb0ab742459c211aa6158)
- **[Launcher - Backend]** Fixed Collapse using full ZIP instead of Diff ZIP on game preload ``540e8de`` [**!**](https://github.com/neon-nyan/Collapse/commit/540e8de519e26b4c391720a614fe510240e30e58)
- **[Launcher - Backend]** Force usage of `GameType` for asset verification ``c79dd09`` [**!**](https://github.com/neon-nyan/Collapse/commit/c79dd09c1d67700dca4c9c17eaa5ee3c044b7a81)
- **[Launcher - Backend]** Fixed download event not getting subscribed properly ``d81430f`` [**!**](https://github.com/neon-nyan/Collapse/commit/d81430fef9931cef3e911ff0edcfaee83ed09185)
- **[Launcher - Genshin Impact]** Fixed extra VO packs being downloaded after Genshin Impact update ``e51b11b`` [**!**](https://github.com/neon-nyan/Collapse/commit/e51b11b21e40a8dbd57ce699bd519e9a0d0aaa94)
- **[Launcher - Backend]** Use asynchronous method while running with multi-session parameter being enabled ``59bfa77`` [**!**](https://github.com/neon-nyan/Collapse/commit/59bfa7703f2fe8417af34e0087f16177a1addc07)
- **[Launcher - Backend]** Clear list of repair asset index after repair is done ``d426282`` [**!**](https://github.com/neon-nyan/Collapse/commit/d42628254abe2016f1d4f8598e1afdf4f74a7c3a)
- **[Launcher - Backend]** Fixed JSON Serializer throwing exceptions due to invalid object types being passed to it ``10dcf08`` [**!**](https://github.com/neon-nyan/Collapse/commit/10dcf088e55d51923bd6aaf44a1f4ddc77edd803)
- **[Launcher - UI]** Fixed an issue where Collapse would not save the selected window size ``9d5f419`` [**!**](https://github.com/neon-nyan/Collapse/commit/9d5f41954ef87e40c112ae5d90de8cb06d8be9e7)
- **[Launcher - UI]** Fixed an issue where Social Media icons on the right sidebar would differ in sorting order between games ``566a7b6`` [**!**](https://github.com/neon-nyan/Collapse/commit/566a7b69ed01f190bd94b64c04d59af9b41d5b56)
- **[Launcher - UI]** Fixed incorrect width on Post Processing checkbox in Game Settings ``9a9ec94`` [**!**](https://github.com/neon-nyan/Collapse/commit/9a9ec94ae0b3fbb533f79fc3b6610548be5e2be9)
- **[Launcher - Backend]** Force reinitialization after game config application/update ``81651ca`` [**!**](https://github.com/neon-nyan/Collapse/commit/81651ca14ec54824e126730a1e384eddad3a4cd1)
- **[Launcher - Backend]** Force reinitialization of `_GameVersion` after uninstalling a game ``9965d96`` [**!**](https://github.com/neon-nyan/Collapse/commit/9965d96a220af9963f4739689c9f1777019db58b)
- **[Launcher - UI]** Fix malformed tooltip button in App Settings ``f14d8ea`` [**!**](https://github.com/neon-nyan/Collapse/commit/f14d8eab172b75f1261fe21dbb008b6d6cb43f0f)
- **[Launcher - UI]** Fix inconsistent tooltips rendering, fixed XMF not getting downloaded correctly, fixed incorrect Honkai Impact 3rd Game Settings Enums, fixed game registry exporting not working as intended ``35b64ab`` [**!**](https://github.com/neon-nyan/Collapse/commit/35b64ab3e1503b804d7607f672aa4ef628e8681c)
- **[Launcher - UI]** Fix total current size status not updating properly while patching a game ``19bdb48`` [**!**](https://github.com/neon-nyan/Collapse/commit/19bdb48fc29a10bb81b86db1a526ea517002c3da)
- **[Launcher - Backend]** Fix Collapse failing to detect new patches to download in some cases ``fb4ca1d`` [**!**](https://github.com/neon-nyan/Collapse/commit/fb4ca1d307e68601acfc5e461850cdefc023f3fe)
- **[Launcher - Genshin Impact]** Fix invalid URL while fetching metadata for Genshin Impact repair process ``0b65236`` [**!**](https://github.com/neon-nyan/Collapse/commit/0b6523672e1aa3cd5039a6a8aa515d397941ba7b)
- **[Launcher - UI]** Fixed issue where eliminating the push list would cause the launcher to raise an Exception ``51ede6d`` [**!**](https://github.com/neon-nyan/Collapse/commit/51ede6de9b4e3ab3d043495d1003d931e6b315f0)
- **[Launcher - UI]** Fix ignored notifications not being removed from UI ``bc9f84b`` [**!**](https://github.com/neon-nyan/Collapse/commit/bc9f84b91b343f27c215f6b5e45b1e807cb57824)
- **[Launcher - Backend]** Fixed wrong URL format being used for checking audio files ``0be2be1`` [**!**](https://github.com/neon-nyan/Collapse/commit/0be2be127752d25a5d19185795afa8ff002f717a)
- **[Launcher - UI]** Force Collapse to retain button selection ``2fb6504`` [**!**](https://github.com/neon-nyan/Collapse/commit/2fb6504415847fb2be94161336f0c9c84a0d39cd)
- **[Launcher - Backend]** Fix disposing issue while using `OpenRead()` in ``6e5ea2d`` [**!**](https://github.com/neon-nyan/Collapse/commit/6e5ea2d0e79fc935551b44885dea759d62e4b1af)
- **[Launcher - Backend]** Adjusted region querying timeout delay to 15 seconds, from 1 second ``8d61b49`` [**!**](https://github.com/neon-nyan/Collapse/commit/8d61b49f38703e7f274d488d0a04605dea544b25)
- **[Launcher - UI]** Fix `ApplyText` overlapping other UI components in `GameSettings` page ``5721a17`` [**!**](https://github.com/neon-nyan/Collapse/commit/5721a177ff34e4efcfbc43b600cb434392591514)
- **[Launcher - Backend]** Fix missing dependencies and initialization conflicts ``c246a72`` [**!**](https://github.com/neon-nyan/Collapse/commit/c246a7253dfe1e4fa48ca1b26445fe604bfc283d), ``b1364e9`` [**!**](https://github.com/neon-nyan/Collapse/commit/b1364e9921343a3c6bab9bb704bddde40c48a38a)
- **[Launcher - Honkai Impact 3rd]** Fixed Honkai Impact 3rd "Cache Updater" mode causing Collapse to crash ``501ea1d`` [**!**](https://github.com/neon-nyan/Collapse/commit/501ea1d10e8f3b8da999e2ed27372e340f8f0860)
- **[Launcher - UI]** Fix Updater progress window not updating percentage ```11dae5e``` [**!**](https://github.com/neon-nyan/Collapse/commit/11dae5e57b277b59c32f35ef286303bc83ebfbfc)
- **[Launcher - Honkai Impact 3rd]** Fix Genshin Impact Post-Verification mistakenly launcher when installing HI3 ``564ed33`` [**!**](https://github.com/neon-nyan/Collapse/commit/564ed33eeb8eab9b88fe738c461babdb6a459737)
- **[Launcher - Honkai Impact 3rd]** Fix delta patch file being treated as unused file when repairing ``c6c55a0`` [**!**](https://github.com/neon-nyan/Collapse/commit/c6c55a08b7f856ae364b5081ed3affdc8c6b5f47)
- **[Launcher - Honkai Impact 3rd]** Fix video files not included in repair index catalog ``c3389da`` [**!**](https://github.com/neon-nyan/Collapse/commit/c3389da3bf19d105ace0c7410ba1460f80263aad)
- **[Launcher - Backend]** Fixed an issue where Collapse would crash when exiting because the window title would be null ```46893d6``` [**!**](https://github.com/neon-nyan/Collapse/commit/46893d6c966d824d938356b4eaf203511ab10313)
- [**Launcher - Build]** Set main project profile to default to "CollapseLauncher" instead of "Update" ```b0d7fb3``` [**!**](https://github.com/neon-nyan/Collapse/commit/b0d7fb3742cd0bb1b3d85bd477a8c34de4c095d1)
- [**Launcher - Build]**  Make versioning automatic in the installer script ```6c01a69``` [**!**](https://github.com/neon-nyan/Collapse/commit/6c01a69f6b204f1c4baf6d392fd1b555befd304b)



Aaaand that's a wrap (for now). If you read the entire thing, congratulations, you've made it to the bottom! Stay tuned for even more updates from the Collapse team, crazier and cooler than ever before!

Thank you again to all the captains around the world for using Collapse. Fight for all that is beautiful in this world ❤️!
