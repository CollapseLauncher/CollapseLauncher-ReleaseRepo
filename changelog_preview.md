![](https://raw.githubusercontent.com/neon-nyan/CollapseLauncher-Page/34d1913533b0a9b328fdee6be457f240915b5381/images/Banner_update_1.0.52.5.webp)

# What's New?

### **[Launcher]** Move the launcher to the center of the screen on launch ``a4b0700``[**!**](https://github.com/neon-nyan/CollapseLauncher/commit/a4b070011f6aa49a4cda3ef642743309d3454807)
> The launcher now will be positioned to the center of the screen automatically.

### **[Runtime]** Adding the description of each games on the first setup page ``14b7c22``[**!**](https://github.com/neon-nyan/CollapseLauncher/commit/14b7c2253dbe91eced60cf98762b716ff3765307)

[**Click here to see the preview**](https://user-images.githubusercontent.com/30566970/205476498-a6301de0-1a1c-43eb-b3a8-39ad6169c03c.mp4)

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

***

# What's Fixed?

- **[Launcher]** Fix cut for text on Game Conversion page ``b7e2091``[**!**](https://github.com/neon-nyan/CollapseLauncher/commit/b7e20913c8b5d03e8ca33e9a4e6b30fbaeb7770a)
- **[Launcher]** Fix the timeout number didn't incremented on status ``daa73e9``[**!**](https://github.com/neon-nyan/CollapseLauncher/commit/daa73e9d82629993ba30d8c9b801662dc15d8b8e)
- **[Runtime]** Fix crash caused by wrong resource given on Game Settings page ``97e064b``[**!**](https://github.com/neon-nyan/CollapseLauncher/commit/97e064b304f98d985a17086dd398b2c63a96cbe4)
- **[Runtime]** Fix the inner Http Session doesn't get disposed properly (Issue: [**#53**](https://github.com/neon-nyan/CollapseLauncher/issues/53) by @tilsgee) ``f3300b7``[**!**](https://github.com/neon-nyan/CollapseLauncher/commit/f3300b789a71589277c3ad0fb5a798767c39a1e7) ``8317ba9``[**!**](https://github.com/neon-nyan/CollapseLauncher/commit/8317ba9f8c6b31c375004231ecf1ae0f1eb11be4) ``071627f``[**!**](https://github.com/neon-nyan/CollapseLauncher/commit/071627f420aa903cc5ce7bffc6e96b03ec392e0d)
- **[i18n - pt-PT]** Correction of syntax (by: @gablm) ``466a3a2``[**!**](https://github.com/neon-nyan/CollapseLauncher/commit/466a3a263061f96c02b04bebdd7f3e428ffeac04)