# Welcome to 1.0.52.3 RC2 Update!

# Attention
This preview build is a Release Candidate for the next stable version. Some of the features aren't yet final and need to be polished.

# What's New (since 1.0.52.1 RC1 release)?

### - [Launcher] Simplifying Versioning Scheme.
Previously, the 3rd number was marked as "**major changes**" number and 4th number to mark "**minor changes**" number. Start from this version, the 2nd number will be used to mark "**major changes**", the 3rd number for "**minor changes**" number and the 4th for "**revision changes**" (like bug fixes, release candidate, etc.) number.

### - [Launcher] Right-aligned Notification (Windows 11 only) and Fix gap after closing notifications.

> If you're running this launcher on Windows 10, the style will remain unchanged but the gap issue after closing notifications is applicable for both Windows 10 and Windows 11.

[**Click here for the preview video**](https://user-images.githubusercontent.com/30566970/197380332-08193931-08d4-469d-9666-92afb9796e00.mp4)

### - [Honkai Impact 3rd/Launcher] Change the "**Volumetric Lighting**"  from Toggle to Multiple Selection.

> In previous version, you can only enable and disable the Volumetric Lighting setting.
> Since 5.9 update, the setting now have multiple selection, including Low, Medium and High and by this current build, the launcher will now have Multiple Selection for the setting too.

![image](https://user-images.githubusercontent.com/30566970/197382040-bb5cf6fb-8737-4b74-a425-59e111eb459f.png)

### - [Honkai Impact 3rd/Launcher] Use MVVM-like properties to bind Game Settings.

> These changes also include a fix for "**Level of Detail**" setting where it will fallback to "**High**" by default.
> Thank you @bagusnl for reporting this issue on Discord.


### - [Launcher] Fix 1px border gap below the carousel

> Even though it's a minor regression from previous Title Bar design changes. Still, it's kind of distracting.

![image](https://user-images.githubusercontent.com/30566970/197393782-c53b3d44-3740-44ca-a4ed-dfae64f544de.png)

### - [Launcher] Retain Previous Region while Selecting other Game if exist (Request: [**#39**](https://github.com/neon-nyan/CollapseLauncher/issues/39))

> The region will be retained if the the game has the same region as previous one.

[**Click here for the preview video**](https://user-images.githubusercontent.com/30566970/197394651-2941975a-6505-4301-8fce-c3ffe408f054.mp4)

### - [Launcher] Fix flashing while changing different region background image ``029f706``[**!**](https://github.com/neon-nyan/CollapseLauncher/commit/029f706850092f42688fcb9bec24a819614440a3)

[**Click here for the preview video**](https://user-images.githubusercontent.com/30566970/197395709-dea15d15-7d2e-4681-8dda-4dfaa2bbd4d7.mp4)

### - [Genshin Impact/Launcher] Implement Custom Launch Argument support for Genshin (Request: [**#35**](https://github.com/neon-nyan/CollapseLauncher/issues/35)) ``091b8ed``[**!**](https://github.com/neon-nyan/CollapseLauncher/commit/091b8ede4746c999b55f689d67e96dc3f03a40dd)

![image](https://user-images.githubusercontent.com/30566970/197396576-3177a8be-0f67-4dd6-ba23-6dc6abfd05ca.png)

- **[Launcher]** Few UI Adjustment and Fixes.
- **[Launcher]** Use Lazy Loading on Carousel and Social Media Icons ``9e123a5``[**!**](https://github.com/neon-nyan/CollapseLauncher/commit/9e123a5af17226af38ae8c3baa75210a8041308a)
- **[Launcher]** Add an ability to download other installed voice package on Genshin ``091b8ed``[**!**](https://github.com/neon-nyan/CollapseLauncher/commit/091b8ede4746c999b55f689d67e96dc3f03a40dd)
> Thanks @bagusnl for letting me know how to detect other voice package on Genshin.

- **[i18N - Simplified Chinese]** Translation update for zh-CN (Simplified Chinese) by @misaka10843.
- **[Launcher/Runtime]** Moving to CollapseLauncher-Repo's ``repair_index`` as Data Index for Repair and Game Conversion feature ``5f2914e``[**!**](https://github.com/neon-nyan/CollapseLauncher/commit/5f2914e313dd4aa6eae41c53839463acea307aec)

***

# What's Fixed (since 1.0.52.3 RC2 release)?
- **[Launcher]** Fixed the release note won't get loaded because of local path for debugging. ``151b754``[**!**](https://github.com/neon-nyan/CollapseLauncher/commit/151b75462e6aeaed8ab5c8d99768369477bbec89)


# What's Fixed (since 1.0.52.2 RC2 release)?
- **[Launcher]** Fixed preload check to fail in 1.0.52 RC 1 and RC 2 build. ``323b674``[**!**](https://github.com/neon-nyan/CollapseLauncher/commit/323b67468b179ed2d01211153d4858594ba6455c) ``0044ce2``[**!**](https://github.com/neon-nyan/CollapseLauncher/commit/0044ce2a88c58c22903b14317664676d9933876e)
- **[Runtime]** Fixed log writing conflict if the method called more than once at the same time. ``3091675``[**!**](https://github.com/neon-nyan/CollapseLauncher/commit/309167532c09baac632fd4e1bd140c7e4e1cee3c)


# What's Fixed (since 1.0.52.1 RC1 release)?

### - **[Launcher]** Fix gap on QR Code Description if additional description doesn't exist ``12a868d``[**!**](https://github.com/neon-nyan/CollapseLauncher/commit/12a868d7eae65051db37bd850ad6dec093fdae78)

![image](https://user-images.githubusercontent.com/30566970/197396078-17f95739-f8de-4314-8f9a-f73bb36706d9.png)

- **[Launcher]** Fix the existing package doesn't counted while calculating existing downloaded size ``074ac21``[**!**](https://github.com/neon-nyan/CollapseLauncher/commit/074ac21687e1a14336d507ba5c2e1243dd0a9778)

- **[Submodule - Hi3Helper.Http**] Fix performance regression since last code refactor.
  - Use synchronize inner method if ``NETCOREAPP`` constants are used ``fcaa3fe``[**!**](https://github.com/neon-nyan/Hi3Helper.Http/commit/fcaa3fed2c077e541a8f243fa3122744e7beb1a3) ``5820999``[**!**](https://github.com/neon-nyan/Hi3Helper.Http/commit/5820999d0f5e752f095b1f752bcbc574ef987b2c)
  - Avoid Reinitialization ``3ed706f``[**!**](https://github.com/neon-nyan/Hi3Helper.Http/commit/3ed706fae0dd5c55e38184e037272315b7042e23)
  - Remove unused properties ``3ed706f``[**!**](https://github.com/neon-nyan/Hi3Helper.Http/commit/fe5e2c4931d3903b525ef5ca9e9da9acd71d52e8) ``e21b19c``[**!**](https://github.com/neon-nyan/Hi3Helper.Http/commit/e21b19cfbda5446239bf95bbb1a4773f92e4b03c)
  - Fix corrupted file caused by shared buffer ``5eef03a``[**!**](https://github.com/neon-nyan/Hi3Helper.Http/commit/5eef03ac3e0dd81e6c4c8fbd239125e89ef58587)

