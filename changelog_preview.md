![](https://raw.githubusercontent.com/neon-nyan/CollapseLauncher-Page/34d1913533b0a9b328fdee6be457f240915b5381/images/Banner_update_1.0.52.5.webp)

# What's New?
### **[Launcher]** Show a dialog to force the app to run as administrator ``501b748``[**!**](https://github.com/neon-nyan/Collapse/commit/501b748570740050b27bd838f413852284c74ccb) ``5ed3815``[**!**](https://github.com/neon-nyan/Collapse/commit/5ed3815a5ce3f8f0aa6db38e9166e3783c6918bb)
> This is the next approach to implement the "run as administrator" enforcement to the app in this PR: #68 by @Cryotechnic (Thanks for the first attempt on implementing this).

![image](https://user-images.githubusercontent.com/30566970/216830317-45ee0f52-e56d-4ea9-9a40-690c12acceb2.png)

### **[Performance/Honkai Impact 3rd]** Faster checking time on Game Repair mechanism
> Thanks to the integration of ``IRepair`` Interface and some code refactoring, We are now able to achieve multi-thread performance while checking through game data (especially game blocks).

### Before Changes (v1.0.55.6 - Stable)
![image](https://user-images.githubusercontent.com/30566970/216834072-dfcc1e80-a70e-4d34-98ae-904e7c0b803d.png)

### After Changes (v1.0.64.0 - Preview)
![image](https://user-images.githubusercontent.com/30566970/216834033-6889684b-1b07-4ffd-822d-c5e6dfe72f83.png)

### **[Performance/Honkai Impact 3rd]** Faster checking time on Cache Update mechanism
> The same way as above, the Cache Update cache also have some improvement in performance while checking the game repair. The speed for checking the game is now nearly instant as it's processing the hash for each cache assets in parallel.

### Speed Comparison
[**Click here to see the preview**](https://user-images.githubusercontent.com/30566970/216835654-85894948-a247-423a-9bec-8fe0003abf60.mp4)

### Minor changes
- **[Launcher]** Adding ability to Import/Export the Registry Keys in the Game Settings ``2a13a68``[**!**](https://github.com/neon-nyan/Collapse/commit/2a13a6822548821475b2d1f3b99af3af7b7025ba)

![image](https://user-images.githubusercontent.com/30566970/216833177-91e373c1-2d37-4a5c-af26-29d93b40296f.png)

- **[Runtime]** Use ``AppCurrentDownloadThread`` to set Download thread ``f56eb07``[**!**](https://github.com/neon-nyan/Collapse/commit/f56eb072d7f9b6507d07d215168826d461863bf9)
- **[Performance/Runtime]** Implementing Interfaces standard for easier game customization.
  - Implementing ``IRepair`` Interface and Multi-thread support on Game Repair for Honkai Impact 3rd ``a78f77d``[**!**](https://github.com/neon-nyan/Collapse/commit/a78f77d50c3dfc6de27aa35f1e701b1448e1d282) ``a5e6be7``[**!**](https://github.com/neon-nyan/Collapse/commit/a5e6be781b8b47cd494b37eae5f71f73a7d67907) ``c82116b``[**!**](https://github.com/neon-nyan/Collapse/commit/c82116be99c3f2661f5ec02454653058da5b4d07) ``cc25ce6``[**!**](https://github.com/neon-nyan/Collapse/commit/cc25ce650651fee728a1abb6be5f1b22b7aa1d68)
    - Add an ability to clean up unused assets in ``HonkaiRepair`` ``46546e5``[**!**](https://github.com/neon-nyan/Collapse/commit/46546e5597cd34e1405377de0b8b81bca68f0aaa)
    - Set ``_GameRepair`` as ``null`` for Genshin ``366c2df``[**!**](https://github.com/neon-nyan/Collapse/commit/366c2dfeeac62761c2d993a857e5f4205640b0b7)
      > For now, the integration of ``IRepair`` for Genshin is not implemented yet and the game repair mechanism is still in its own implementation class. The integration for Genshin will be coming soon.
  - Implementing ``IGameSettings``, ``IGameSettingsUniversal`` and ``IGameSettingsValue`` for making game settings adjustment support easier ``4deb985``[**!**](https://github.com/neon-nyan/Collapse/commit/4deb9854235c540ba2841a9548f8214f715eb65f)
  - Implementing ``IGameVersionCheck`` and Tidy up ``IGameSettings`` components ``4deb985``[**!**](https://github.com/neon-nyan/Collapse/commit/9bc77191d456c19c356c74a80e4c8dfa5fc0804c) ``4cd8675``[**!**](https://github.com/neon-nyan/Collapse/commit/4cd867598f07fc9cb57b6b83822669f47b50928d)
  - Implementing ``ICache`` for game cache update mechanism ``a23afd0``[**!**](https://github.com/neon-nyan/Collapse/commit/a23afd0607b59072c8f25a22003ffe62f4ca3887)
- **[Launcher]** Shrink size for notification bar ``11c4846``[**!**](https://github.com/neon-nyan/Collapse/commit/11c4846cab2ff20f3e49e620e716e744b8dcb2fc) 
- **[Honkai Impact 3rd]** Update new Honkai's Audio Settings value range ``019f175``[**!**](https://github.com/neon-nyan/Collapse/commit/019f175b0be10257a52f44942405dab37b8496cf)
- **[Genshin Impact]** Always clean-up old HDiff list files before updating (Fix Issue #74) ``019f175``[**!**](https://github.com/neon-nyan/Collapse/commit/019f175b0be10257a52f44942405dab37b8496cf)
- **[Debugging]** Display decompressed path and ZIP path while debugging ``e67344d``[**!**](https://github.com/neon-nyan/Collapse/commit/e67344d99c38c09a77a4bcd2476e47a189b94f13)
- **[Performance]** Use in-code ``Crc32.NET`` and use unsafe Bytes to Hex method ``bafdcd2``[**!**](https://github.com/neon-nyan/Collapse/commit/bafdcd29e5ff6e32a2803fe5f7860793ae39cd4c)
  - Use ``HexToBytesUnsafe()`` for some hex -> ``byte[]`` conversion ``01916ba``[**!**](https://github.com/neon-nyan/Collapse/commit/01916ba31638226abb54195baee7821a7cb7e288)
  - Move to ``ByteArrayToHexViaLookup32Unsafe()`` ``3460281``[**!**](https://github.com/neon-nyan/Collapse/commit/34602812761527dbe8590c1b8bb662537da5ec13)
  - Use precalculated lookup for Byte-to-Hex convert ``41db192``[**!**](https://github.com/neon-nyan/Collapse/commit/41db1923432f4104ee87281c9bf8cede986663c4)
  - Move to ``BytesToHexUnsafe()`` ``ebe54f2``[**!**](https://github.com/neon-nyan/Collapse/commit/ebe54f2a5f14f04c741e996cf1fd662d8dadf812)
- **[Runtime]** Move ``Hi3Helper.EncTool`` as a submodule to [**its own repository**](https://github.com/neon-nyan/Hi3Helper.EncTool)
- **[Runtime/Honkai Impact 3rd]** Refactor ``XMFParser`` and add ``ChunkStream`` ``65051c5``[**!**](https://github.com/neon-nyan/Collapse/commit/65051c544c419f71b2eddeec29014b34aa02c474)
  - Add ``CheckIfXMFVersionMatches()`` for version check through XMF ``baeecdd``[**!**](https://github.com/neon-nyan/Collapse/commit/baeecdd9ab50140cff6c1e3afc472a4db3e5d526)
  - Add Async methods on ChunkStream and disposing fixes ``aed2cef``[**!**](https://github.com/neon-nyan/Collapse/commit/aed2cef4861050da0bb49fb21f9a088be2893ae4)
- **[Runtime]** Some code clean-ups and small refactors
  - Tidy up some code (pt. 2) ``06700e0``[**!**](https://github.com/neon-nyan/Collapse/commit/06700e0d4cc274eaea9314735f73807d234553da)
  - Clean-up on ``ConverterTool`` ``329abda``[**!**](https://github.com/neon-nyan/Collapse/commit/329abda6d91e02c909b857910c820584fdda9270)
  - Add ``FilePropertiesRemote[]`` Deserialize Context ``116cf89``[**!**](https://github.com/neon-nyan/Collapse/commit/116cf89f903304aa344763ae851d6f2c4a35edca)
  - Some changes and code removal on ``ConverterTool`` ``db3014f``[**!**](https://github.com/neon-nyan/Collapse/commit/db3014fd8005f7b5c2692d722e07be9591fa9e93)
  - Remove unused ``JsonSourceGenerationOptions`` ``7f6885d``[**!**](https://github.com/neon-nyan/Collapse/commit/7f6885dd13e0e9352bf464ea6d7ea679e1d9f30c) 
  - Remove unused variables ``46aa429``[**!**](https://github.com/neon-nyan/Collapse/commit/46aa42904f7cb6ab6588a9cdf3029166b3a0d9a9)
  - Refactor locale file reading process ``1f0add2``[**!**](https://github.com/neon-nyan/Collapse/commit/1f0add28102646154137910777e9827f778bafa1)
  - Properly initialize main ``App()`` instance ``3e7a802``[**!**](https://github.com/neon-nyan/Collapse/commit/3e7a802ecb439c00edd9abb206ab9c3996159ce2)
  - Disable Honkai Block file chunks log on debug ``9048b9b``[**!**](https://github.com/neon-nyan/Collapse/commit/9048b9b8b193c7996008602a0928009c60f3b863)
  - Synchronize methods to load game config ``481a46e``[**!**](https://github.com/neon-nyan/Collapse/commit/481a46ee8336c636c13c827e2e8f1814faa218ed)
  - Remove unused codes for handling legacy title bar ``5b1f0e9``[**!**](https://github.com/neon-nyan/Collapse/commit/5b1f0e9d8a018d52a4fbacff84b0ef8c753c51ce)
  - Remove some unused interop methods ``81fb3d1``[**!**](https://github.com/neon-nyan/Collapse/commit/81fb3d1e93bc62532bce7a9f014c0fd0ce0f85bd)
- **[Runtime]** Adding ``SpanStream`` for future uses ``104b5a2``[**!**](https://github.com/neon-nyan/Collapse/commit/104b5a22b7da7d02d8bb56be71ec8e08580ee1db)
- **[Submodule - Hi3Helper.Http]** Update usage for ``Hi3Helper.Http`` and cancellable method. ``f235f55``[**!**](https://github.com/neon-nyan/Collapse/commit/f235f551cedee75b5865ed38df38dc9e8ecbe68a)
  - Adding ``DownloadFromSessionStream()`` ``5673410``[**!**](https://github.com/neon-nyan/Hi3Helper.Http/commit/5673410cd19208dfe14666c5db7200449ae1e2ef)
  - Use ``DownloadFromSessionStreamAsync()`` for ``NETCOREAPP`` only  ``184e7ee``[**!**](https://github.com/neon-nyan/Hi3Helper.Http/commit/184e7eef91ba9587bf71c5055b136fcb198788c6)
  - **[EXPERIMENTAL]** Use ``stackalloc`` for buffer alloc in ``NETCOREAPP``  ``7d88b06``[**!**](https://github.com/neon-nyan/Hi3Helper.Http/commit/7d88b062de35511418f637dce399ebac9a891c93)
  - Add an argument to ignore out ``Stream`` length  ``c4415d8``[**!**](https://github.com/neon-nyan/Hi3Helper.Http/commit/c4415d8033b91ef84156fed0839f9cfba01044cd)
  - Use ``(EndOffset - _Start) + 1`` to check length instead ``9c673e6``[**!**](https://github.com/neon-nyan/Hi3Helper.Http/commit/9c673e6b792f15ead8d3c5d2fcdcfcc0cf182475)
- **[Runtime]** Update NuGet packages
  - **Microsoft.WindowsAppSDK** (1.2.221116.1 -> **1.2.230118.102**)
  - **System.Text.Json** (7.0.0 -> **7.0.1**)
  - **runtimepack.Microsoft.Windows.SDK.NET.Ref** (10.0.19041.27 -> **10.0.19041.28**)

***

# What's Fixed?
### Minor changes
- **[Launcher]** Fix Paimon logo position while indicationg "No news" on News panel and some minor UI changes ``24a44a5``[**!**](https://github.com/neon-nyan/Collapse/commit/24a44a564dcf730da3fcdd6cf2af631a76fb9e44)
- **[i18n - en-US]** Fix typo on en locale ``592e0c7``[**!**](https://github.com/neon-nyan/Collapse/commit/592e0c70d50dca70579938faa1edec31cba2e5e8)
- **[Submodule - Hi3Helper.Http]** Fix some submodule related issues
  - Fix throw while some sessions are finished ``483090a``[**!**](https://github.com/neon-nyan/Hi3Helper.Http/commit/483090a660bfc6a795c0495757be2e2a165fc475)
  - Fix incorrect offset while some sessions are completed ``60aae49``[**!**](https://github.com/neon-nyan/Hi3Helper.Http/commit/60aae49caf543b3e2a3225e8b5bb350f0706f00e)