![](https://raw.githubusercontent.com/neon-nyan/CollapseLauncher-Page/34d1913533b0a9b328fdee6be457f240915b5381/images/Banner_update_1.0.52.5.webp)

# 1.69.0: Version Kiana
It's been a while since the last major release of Collapse (almost 4 months ago ^.^). We wanted to make sure we get this release right, as its name coincides with one in a game we (hopefully) all hold dear in our hearts. Honkai Impact 3rd was a turning point for a lot of us from the Collapse development team, and so we wanted to take the time to make this version extra special to commemorate its launch.

This release changelog is going to be structured a bit differently than the other ones (someone else is writing it, *teehee*). Without further ado, buckle up, because this is biiiiiiiig update \o/

# What's New?

## Major Changes:
- You can now repair Genshin Impact directly from the launcher! This works in the same way that Honkai Impact 3rd's interface does, courtesy of ``a78f77d`` [**!**](https://github.com/neon-nyan/Collapse/commit/a78f77d50c3dfc6de27aa35f1e701b1448e1d282), ``a5e6be7`` [**!**](https://github.com/neon-nyan/Collapse/commit/a5e6be781b8b47cd494b37eae5f71f73a7d67907), ``4cd8675`` [**!**](https://github.com/neon-nyan/Collapse/commit/4cd867598f07fc9cb57b6b83822669f47b50928d), ``366c2df`` [**!**](https://github.com/neon-nyan/Collapse/commit/366c2dfeeac62761c2d993a857e5f4205640b0b7)
- Game settings data is now read directly from registry instead of relying on `.ini` files. This paves the way for other game settings customization ``4deb985`` [**!**](https://github.com/neon-nyan/Collapse/commit/4deb9854235c540ba2841a9548f8214f715eb65f)
- Added the ability to import and export Registry keys for local machine. This allows the user to back up game settings and restore them should something go wrong. ``2a13a68`` [**!**](https://github.com/neon-nyan/Collapse/commit/2a13a6822548821475b2d1f3b99af3af7b7025ba)
***
## New Feature: Admin Restart Prompt
Starting with Collapse 1.69.0, the launcher will prompt you for privilege escalation if you are running it as an unauthorized (without administrator permissions) user. To make it clear: **Collapse has always asked you for these privileges and will continue to do so** for the foreseeable, because of some Win32 API calls we've made, as well as to read data from the registry, installing games and customising the launcher experience.

The prompt looks like so:
[Image]
Should you choose to ignore this, Collapse will terminate itself and require you to run it as an administrator. By integrating it into the launcher itself, we hope to make it more user friendly for people that just want to use this as a better alternative to the default launcher.

Special thanks to @CryoTechnic for proposing and the initial implementation!
``ad73dfc``[**!**](https://github.com/neon-nyan/Collapse/commit/ad73dfc5151b29a544d9de839e6c8ce30a9a9882)
***

## Minor changes:
- **[Launcher - Backend]** Added `DownloadFromSessionStream()` function ``5673410``[**!**](https://github.com/neon-nyan/Hi3Helper.Http/commit/5673410cd19208dfe14666c5db7200449ae1e2ef)
- **[Launcher - Backend]** Updated usage for Hi3Helper.Http & cancellable method ``f235f55``[**!**](https://github.com/neon-nyan/Collapse/commit/f235f551cedee75b5865ed38df38dc9e8ecbe68a)
- **[Launcher - Backend]** Removed unused `JsonSourceGenerationOptions` in ``7f6885d``[**!**](https://github.com/neon-nyan/Collapse/commit/7f6885dd13e0e9352bf464ea6d7ea679e1d9f30c)


- **[Launcher - Backend]** Code cleanup ``46aa429``[**!**](https://github.com/neon-nyan/Collapse/commit/46aa42904f7cb6ab6588a9cdf3029166b3a0d9a9) , ``9048b9b``[**!**](https://github.com/neon-nyan/Collapse/commit/9048b9b8b193c7996008602a0928009c60f3b863) , ``481a46e`` [**!**](https://github.com/neon-nyan/Collapse/commit/5b1f0e9d8a018d52a4fbacff84b0ef8c753c51ce) , ``81fb3d1`` [**!**](https://github.com/neon-nyan/Collapse/commit/81fb3d1e93bc62532bce7a9f014c0fd0ce0f85bd) , ``db3014f`` [**!**](https://github.com/neon-nyan/Collapse/commit/db3014fd8005f7b5c2692d722e07be9591fa9e93), ``ebe54f2`` [**!**](https://github.com/neon-nyan/Collapse/commit/ebe54f2a5f14f04c741e996cf1fd662d8dadf812) , ``9e7ed0f`` [**!**](https://github.com/neon-nyan/Collapse/commit/9e7ed0f02853669694ab52af3830629ce9145d93) , ``5009def`` [**!**](https://github.com/neon-nyan/Collapse/commit/5009def07601c3418307ec2ff7ddd3a399d4e695), ``329abda`` [**!**](https://github.com/neon-nyan/Collapse/commit/329abda6d91e02c909b857910c820584fdda9270), ``cc25ce6`` [**!**](https://github.com/neon-nyan/Collapse/commit/cc25ce650651fee728a1abb6be5f1b22b7aa1d68), ``06700e0`` [**!**](https://github.com/neon-nyan/Collapse/commit/06700e0d4cc274eaea9314735f73807d234553da)



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
- **[Launcher - Backend]** Transfered UABT logic to its own submodule ``6012a34`` [**!**](https://github.com/neon-nyan/Collapse/commit/6012a34c4793b87d1e6010dc36927ac401603287)
***

# What's Fixed?
- **[Launcher - Backend]** Force GC in Launcher to avoid potential memory leaks ``a40ae49``[**!**](https://github.com/neon-nyan/Collapse/commit/a40ae4909488cf0961e5a73c3771d402f2a5d1e3)
- **[Honkai Impact 3rd]** Fixed wrong Volumetric Lighting value obtention from the game ``b857f8e``[**!**](https://github.com/neon-nyan/Collapse/commit/b857f8e36d9024e3c5231495d23bac9b0ae54013)
- **[Launcher - Backend]** Fixed incorrect initialization of main app runtime ``3e7a802`` [**!**](https://github.com/neon-nyan/Collapse/commit/3e7a802ecb439c00edd9abb206ab9c3996159ce2)
- **[Launcher - Backend]** Force game config loading to happen at the same time ``481a46e``[**!**](https://github.com/neon-nyan/Collapse/commit/481a46ee8336c636c13c827e2e8f1814faa218ed)
- **[Launcher - Backend]** Pre-initialize values while checking for game diff ``c578dc9``[**!**](https://github.com/neon-nyan/Collapse/commit/c578dc93dc2c8ab414686ec6184abe484fb43f52)
- **[Launcher - Backend]** Use `HexToBytesUnsafe()` for some hex to byte[] conversion ``01916ba``[**!**](https://github.com/neon-nyan/Collapse/commit/01916ba31638226abb54195baee7821a7cb7e288)
- **[Launcher - Backend]** Add missing Async methods on `ChunkStream` and disposing fixes ``aed2cef`` [**!**](https://github.com/neon-nyan/Collapse/commit/aed2cef4861050da0bb49fb21f9a088be2893ae4)
- **[i18n - en-US]** Yet more localization fixes (by @neon-nyan & @CryoTechnic) ``592e0c7`` [**!**](https://github.com/neon-nyan/Collapse/commit/592e0c70d50dca70579938faa1edec31cba2e5e8), ``5ed3815`` [**!**](https://github.com/neon-nyan/Collapse/commit/5ed3815a5ce3f8f0aa6db38e9166e3783c6918bb)


- [**Honkai Impact 3rd]** Update Audio Settings value range ``019f175`` [**!**](https://github.com/neon-nyan/Collapse/commit/019f175b0be10257a52f44942405dab37b8496cf)
- [**Launcher - Backend]** Always clean up old HDiff list files before updating to new game version ``019f175`` [**!**](https://github.com/neon-nyan/Collapse/commit/019f175b0be10257a52f44942405dab37b8496cf)
- [**Launcher - Backend**] Use new logic to check for session length ``9c673e6`` [**!**](https://github.com/neon-nyan/Hi3Helper.Http/commit/9c673e6b792f15ead8d3c5d2fcdcfcc0cf182475)
- [**Launcher - Backend**] Thread-checking logic in repair function calls ``c82116b`` [**!**](https://github.com/neon-nyan/Collapse/commit/c82116be99c3f2661f5ec02454653058da5b4d07)
- **[Launcher - UI]** Minor styling tweaks and Paimon logo position update ``24a44a5`` [**!**](https://github.com/neon-nyan/Collapse/commit/24a44a564dcf730da3fcdd6cf2af631a76fb9e44)