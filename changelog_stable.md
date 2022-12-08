# ATTENTION!
If you have previously installed **1.0.55.2** build and you're planning to update your Honkai Impact 3rd game using Delta-Patch feature, **PLEASE** update your launcher to this build first (**1.0.55.4**) since we have some bugs in previous build that may cause a failure while using Delta-Patch to update your Honkai Impact 3rd game.

![](https://raw.githubusercontent.com/neon-nyan/CollapseLauncher-Page/34d1913533b0a9b328fdee6be457f240915b5381/images/Banner_update_1.0.52.5.webp)

Welcome to another release of **Collapse!**
In this release, we are focusing to the stability and bug fixes from previous release (**1.0.52.8 - Codename: Elysia**). But of course, we are also bringing some major changes here.

Let's see what's being changed~

# What's New?

### **[Launcher]** Move the launcher to the center of the screen on launch ``a4b0700``[**!**](https://github.com/neon-nyan/CollapseLauncher/commit/a4b070011f6aa49a4cda3ef642743309d3454807)
> The launcher now will be positioned to the center of the screen automatically.

### **[Runtime]** Adding the description of each games on the first setup page ``14b7c22``[**!**](https://github.com/neon-nyan/CollapseLauncher/commit/14b7c2253dbe91eced60cf98762b716ff3765307)

[**Click here to see the preview**](https://user-images.githubusercontent.com/30566970/205476498-a6301de0-1a1c-43eb-b3a8-39ad6169c03c.mp4)

### **[Runtime]** Reducing build size by disabling [**ReadyToRun**](https://learn.microsoft.com/en-us/dotnet/core/deploying/ready-to-run) compilation

### Other new minor changes:
- **[Runtime]** Use IsCacheUpdateEnabled for cache update check support ``4fc948f``[**!**](https://github.com/neon-nyan/CollapseLauncher/commit/4fc948f55cfa1d8cd7a224e30405ca9c27077301)
- **[Runtime]** Use ``ThemeResource`` instead of ``StaticResource`` ``6842997``[**!**](https://github.com/neon-nyan/CollapseLauncher/commit/6842997f1f4b25aa1d5ede98cdc07fabca09cbb9)
- **[Runtime]** Reduce Memory overhead after generating ``ColorPalette`` by forcing Garbage Collection ``e0b75ab``[**!**](https://github.com/neon-nyan/CollapseLauncher/commit/e0b75ab215b1980d138d46f9421d81e7e2c1509d)
- **[Runtime]** Use IsCacheUpdateEnabled for cache update check support ``4fc948f``[**!**](https://github.com/neon-nyan/CollapseLauncher/commit/4fc948f55cfa1d8cd7a224e30405ca9c27077301)
- **[Runtime]** Use ``ConfigureAwait(false)`` on external hashing method ``467a534``[**!**](https://github.com/neon-nyan/CollapseLauncher/commit/467a53494b6347ba9c803c1f640fcfefc0ff9e50)
- **[Runtime]** Change to full drag area if exit from ``MainPage`` ``4a5b986``[**!**](https://github.com/neon-nyan/CollapseLauncher/commit/4a5b98676c41dfa6c6e3c4c42403ff50a1b1431c)
- **[Runtime]** Use the right enumeration for file listing ``366f95d``[**!**](https://github.com/neon-nyan/CollapseLauncher/commit/366f95d4e049c22377b7bb365a4b313551cfb769)
- **[Runtime]** Make sure to redownload empty/corrupted sprite files ``f34e5e8``[**!**](https://github.com/neon-nyan/CollapseLauncher/commit/f34e5e8c6108be230fbc291eadc6de20728757e4)
- **[Runtime]** Make sure to set the status of ``CustomBG`` while changing background ``f6a1f97``[**!**](https://github.com/neon-nyan/CollapseLauncher/commit/f6a1f97db2f798e53b6f94978940cece9d903ea8)
- **[Runtime]** Separate ``WebView2`` frame to its own page ``0370dfa``[**!**](https://github.com/neon-nyan/CollapseLauncher/commit/0370dfa1e8c68886dee07959a51a381c9189fd36)

# What's New? (since 1.0.53.0-pre)

### **[Launcher]** Applying Centered Title-Bar for Windows 10 ``8407165``[**!**](https://github.com/neon-nyan/CollapseLauncher/commit/84071656021b64c6243378d685afc19085704b28)
> As Microsoft had released WinUI 3 1.2 Stable and they have fixed full title-bar customization bug on Windows 10.
> Finally, we are now being able to put this new Centered Title-Bar style for Windows 10 users.

![image](https://user-images.githubusercontent.com/30566970/201518640-3b425693-3788-4d4b-810d-445912f4d305.png)

### **[Runtime]** Moving WinUI 3 Runtime to 1.2 Stable ``37d4739``[**!**](https://github.com/neon-nyan/CollapseLauncher/commit/37d4739c4b79881e6645c91c547979ec5803a95a)
### **[Runtime]** Adding an ability to read Honkai Impact 3rd's Cache List directly from game data
> As we are moving forward from depending on Hi3Mirror Project to provide reference data.
> Now, we are proud to say that this launcher is now fully capable to get all the reference data for Honkai Impact 3rd's Cache update, Repair mechanism and Cross-Version Conversion features **directly from the game data**.
>
> Yaaayyyy! 🎉 🎉 
### **[Honkai Impact 3rd]** Adding Cache Update feature for all Game Regions ``4fc948f``[**!**](https://github.com/neon-nyan/CollapseLauncher/commit/4fc948f55cfa1d8cd7a224e30405ca9c27077301)

### Other new minor changes:
- **[Runtime]** Use original ``Bitmap`` for Palette generation if size is less than resized one ``c85c155``[**!**](https://github.com/neon-nyan/CollapseLauncher/commit/c85c155696f927a7bde8fc85979864b7c47776e7)
- **[Runtime]** Remove refresh limit at some progress events ``b817f39``[**!**](https://github.com/neon-nyan/CollapseLauncher/commit/b817f39dd29d0978cdab2e8972360cd9d5355233)

# What's New? (since 1.0.55.2)
### **[i18n]** Localize Welcome and Preview Notification (Issue: [**#57**](https://github.com/neon-nyan/CollapseLauncher/issues/57))
> Thank you @Cryotechnic for your suggestion on this.

> As an example while using ``Bahasa Indonesia`` localization.
> 
> ![image](https://user-images.githubusercontent.com/30566970/206445660-1ccb36b2-f889-43c6-9aff-dcc8094229cc.png)

### Other new minor changes:
- **[Runtime]** Don't repeat ``GetFileName()`` in ``GetVoiceLanguageID()`` ``dc19def``[**!**](https://github.com/neon-nyan/CollapseLauncher/commit/dc19def9815729180a7d619fc13a8ec386c18398)
- **[Launcher]** Indicate a status if delta-patch pre-load format exists ``5f5dae7``[**!**](https://github.com/neon-nyan/CollapseLauncher/commit/5f5dae7d82978a6cd00ae8c1df9c5bc2b5062a52)
- **[Launcher]** Add an indicator for preview build ``0b57c8b``[**!**](https://github.com/neon-nyan/CollapseLauncher/commit/0b57c8b82eae7d88aa9d2861672b6c06c77c7f97)

![image](https://user-images.githubusercontent.com/30566970/206447704-46e89db2-9e6e-4882-b7ff-1f7767f0db2e.png)

- **[Runtime]** Use ``DeleteDownloadedFile()`` to reset download ``518fbf1``[**!**](https://github.com/neon-nyan/CollapseLauncher/commit/518fbf1ee3ee85ad0f0bc60b7e106a49b189f16b)
- **[Runtime]** Always check if ``game_install_path`` is not null ``51fa3f8``[**!**](https://github.com/neon-nyan/CollapseLauncher/commit/51fa3f89ba3058a1a5a267672c23554a83a9ac34)
- **[i18n - en-US]** Fixed typos and missing context in en locale (PR: [**#55**](https://github.com/neon-nyan/CollapseLauncher/pull/55) by @Cryotechnic)
- **[i18n - pt-PT]** Adding new translated strings (PR: [**#60**](https://github.com/neon-nyan/CollapseLauncher/pull/60) by @gablm)

***

# What's Fixed?

- **[Launcher]** Fix cut for text on Game Conversion page ``b7e2091``[**!**](https://github.com/neon-nyan/CollapseLauncher/commit/b7e20913c8b5d03e8ca33e9a4e6b30fbaeb7770a)
- **[Launcher]** Fix the timeout number didn't incremented on status ``daa73e9``[**!**](https://github.com/neon-nyan/CollapseLauncher/commit/daa73e9d82629993ba30d8c9b801662dc15d8b8e)
- **[Runtime]** Fix crash caused by wrong resource given on Game Settings page ``97e064b``[**!**](https://github.com/neon-nyan/CollapseLauncher/commit/97e064b304f98d985a17086dd398b2c63a96cbe4)
- **[Runtime]** Fix the inner Http Session doesn't get disposed properly (Issue: [**#53**](https://github.com/neon-nyan/CollapseLauncher/issues/53) by @tilsgee) ``f3300b7``[**!**](https://github.com/neon-nyan/CollapseLauncher/commit/f3300b789a71589277c3ad0fb5a798767c39a1e7) ``8317ba9``[**!**](https://github.com/neon-nyan/CollapseLauncher/commit/8317ba9f8c6b31c375004231ecf1ae0f1eb11be4) ``071627f``[**!**](https://github.com/neon-nyan/CollapseLauncher/commit/071627f420aa903cc5ce7bffc6e96b03ec392e0d)
- **[i18n - pt-PT]** Correction of syntax (by: @gablm) ``466a3a2``[**!**](https://github.com/neon-nyan/CollapseLauncher/commit/466a3a263061f96c02b04bebdd7f3e428ffeac04)

# What's Fixed? (Since 1.0.55.1)

- **[Launcher]** Fix resume button on pre-load gets disabled after pausing for the second time ``424b1a2``[**!**](https://github.com/neon-nyan/CollapseLauncher/commit/424b1a2cad4771f9bfac104f62dbde9fc4e06c60)
- **[Runtime]** Force to use fallback if exception happen in ``GetVoiceLanguageID()`` ``6bbedb5``[**!**](https://github.com/neon-nyan/CollapseLauncher/commit/6bbedb504e58f1a6931527daf77522f926a150e7)

# What's Fixed? (Since 1.0.55.2)

- **[Launcher]** Fix resume button on pre-load gets disabled after pausing for the second time ``424b1a2``[**!**](https://github.com/neon-nyan/CollapseLauncher/commit/424b1a2cad4771f9bfac104f62dbde9fc4e06c60)
- **[Runtime]** Force to use fallback if exception happen in ``GetVoiceLanguageID()`` ``6bbedb5``[**!**](https://github.com/neon-nyan/CollapseLauncher/commit/6bbedb504e58f1a6931527daf77522f926a150e7)
- **[i18n/Runtime]** Fix i18n doesn't use fallback value if it's not yet translated ``b16cfe5``[**!**](https://github.com/neon-nyan/CollapseLauncher/commit/b16cfe5d8e2f8a03aa06377875e2e2d6174aa2c7)
- **[Runtime/Genshin Impact]** Fix object doesn't get initialized properly in JSON Context (Issue: [**#59**](https://github.com/neon-nyan/CollapseLauncher/issues/59)) ``f767415``[**!**](https://github.com/neon-nyan/CollapseLauncher/commit/f76741578062aaf0a35df043a2a04b400898fcf6)
- **[Runtime]** Fix size overflow while retrying download ``0532ff6``[**!**](https://github.com/neon-nyan/CollapseLauncher/commit/0532ff6e5345c49863bc14d1c751f04fc3d6cc2d)
- **[Runtime/Honkai Impact 3rd]** Fix the delta-patch mechanism to potentially fail ``15e7b56``[**!**](https://github.com/neon-nyan/CollapseLauncher/commit/15e7b56affac3063211ad2ad87820c1223b5534e)
> This caused by a corrupted file that might need to be repaired. Instead of downloading an old version (let's say: 6.1.0) file, it downloads a new version (6.2.0) file causing difference in the ingredient.
> Thank you for peps on Honkai Impact Official Discord to report this issue.