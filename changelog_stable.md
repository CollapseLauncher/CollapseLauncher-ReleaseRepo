![UpdateIsAvailable-Campaign-Columbina](https://github.com/user-attachments/assets/e7043018-4d49-48f2-adf1-3c846fd3c3e4)
# Stable 1.84.4 (Codename: Columbina)

### Hewwo, it's neon-nyan here~

It's beeeeeen a while since the last 1.83.x update. For now, this release is focusing on more quality improvements, bug fixes and internal code reworks rather than new features as we are preparing on reworking Collapse for new codebase. 

That being said, this 1.84 update will be the marked as the last V1 release after roughly 4 years since the start of this project as we are going to move into V2 codebase starting this year (at Q3 or Q4 2026). Thank you so much for your continous support and interest in this project💖

Without further ado, let's dig into what's new in this release so far.

# What's new?
## Reworked Background System
Since months, HoYoverse has updated HoYoPlay to support multiple background display, including static image and dynamic background ones. This has been our backlog since this release as due to "spaghetti-code" nature of our entire codebase, this made us harder to adapt the changes and thus making Collapse still only support one static background image.

Thanks to [this massive rework](https://github.com/CollapseLauncher/Collapse/pull/862), we are now able to pull-off this feature by splitting the parts of the code into its own element, making it more easier and more manageable for the change and for incoming improvements.

We are also moving to [**FFmpeg**](https://www.ffmpeg.org/) as our secondary library for background video decoder if no built-in codec is present. You will be prompted to install the FFmpeg library if none of the required built-in Windows Media Foundation codec for VP9 or any codec is present.

> [**FFmpeg**](https://www.ffmpeg.org/legal.html) is licensed and distributed under [GNU Lesser General Public License, version 2.1 **(LGPLv2.1)**](https://www.gnu.org/licenses/old-licenses/lgpl-2.1.html). All rights reserved.

[2026-06-21 18-35-13.webm](https://github.com/user-attachments/assets/47311425-b36a-4ae0-816e-821db9d21a3f)

## Reworked Localization System #861 
This is more like development-experience improvement rather than user focused ones. Previously in order to implement the localization for new elements, we have to manually map each class properties to represented JSON entries. Thanks to newly source-generated class mapper, every JSON entries will be mapped automatically. Each class properties can now be bind into UI element directly, making the UI able to update the visual itself rather than being told manually, one-by-one (which is expensive).

## Reworked Download Speed Limiter #859 
The feature has been long broken since last 1.83.x release due to inconsistency and changes to other download-related libraries. Even though if you're enabling this feature, you might experience that the download speed "isn't actually being limited" and noticing that your bandwidth is still being fully utilized. This feature should now be fully fixed by decentralizing the code of the feature into its own library and making it easier to maintain.

This feature could also be applied for any game plugins whose have v1-update4 API standard fully implemented.

[2026-06-21 19-33-07.webm](https://github.com/user-attachments/assets/be51f149-03a5-4e89-96c3-19ea0615c481)

## Aggressive Cache Mode is Now Enabled by Default for HTTP-related Calls
This feature has been introduced since 1.83. Although, the aggressive cache mode isn't enabled by default. This release bring the feature enabled by default if you haven't change the related settings from the settings. It enables the launcher to re-use API call response which have been written and cached from the disk for certain amount of duration, thus making the HTTP-related calls duration shorter.

If you happened to changed the related settings before, you might need to re-enable it by simply going to the App Settings page -> Search for "**HTTP Cache Settings**" and make sure to enable both "**Cache Mode**" and "**Aggressive Cache Mode**".

<img width="400" height="Auto" alt="image" src="https://github.com/user-attachments/assets/8ada93ef-dd9e-426d-9346-32ad94e0ef7a" />

## Minor UI Adjustments
Not so noticeable UI changes at all. But it's worth to mention here.
### 1. News Carousel Design
<img width="640" height="Auto" alt="image" src="https://github.com/user-attachments/assets/3f3df571-63b5-42d5-9d54-6b6e005a8b83" />

### 2. About Card
<img width="640" height="Auto" alt="image" src="https://github.com/user-attachments/assets/66b826b0-219d-4733-ba49-8a600705ede1" />

### 3. New Options for "Advanced Graphics Settings" for Zenless Zone Zero.
In this v3.0 update, ZZZ Team has introduced "Frame Generation" and "Super Scaling" technology for both **DLSS** and **FSR**, adding "Ultra" quality option for the **Ray Tracing** feature and also giving two new option: "Ultra Performance" and "DLAA" for **Super Scaling Priority**. And so in this release, we are also adding those necessary feature to the Game Settings.

[Screen Recording 2026-06-21 201212.webm](https://github.com/user-attachments/assets/c9c6ae7f-5216-4ed2-87c1-cb07c3d431ff)

## Other New Changes
- **[New]** Adding Files Clean-up Button to the Menu Bar, by @bagusnl 
<img width="334" height="139" alt="image" src="https://github.com/user-attachments/assets/50869299-c0dc-4888-9a5b-1819f05bed99" />

- **[Imp]** Switching Static Libraries Compiler from MSVC 19 to Clang 20.1, by @neon-nyan
- **[Imp]** Caching Page Loading, by @neon-nyan 
- **[Imp]** Detach SDK Loading (for Sentry, Libsql.Client), by @neon-nyan 
- **[Imp]** Add Plugin Details (Breadcrumbs) to Sentry Reports, by @bagusnl 
- **[Imp]** Update overlay mask according to UI changes, by @shatyuka 
- **[New]** Implement async preload download with per-file progress callbacks #865, by @Cryotechnic 
- **[Fix]** Remove ZZZ Game Settings Resolution Limit, by @shatyuka 
- **[Fix]** Invalid Encoding while saving ZZZ Game Settings Profile (GENERAL_DATA.bin), by @shatyuka 
- **[Fix]** Deleted assets still getting downloaded while updating Honkai: Star Rail and Zenless Zone Zero, by @neon-nyan
  This caused by the filtering of the asset is still being redirected to FilterSophonPatchAssetList, which is unused rather than to FilterAssetList. This causes the supposedly deleted assets to get included, causing files to be redownloaded if not exist.
- **[Fix]** Fix Honkai Impact 3rd cutscene detection on Game Repair, by @neon-nyan 
- **[Fix]** [ImageCropper crash for small image](https://github.com/CollapseLauncher/Collapse/commit/d35a4fcaf2358acdb2bc1f6b00c6f95e253ec614), by @shatyuka 
- **[Imp]** [Update tooling version requirements](https://github.com/CollapseLauncher/Collapse/commit/fdc8215d6e34ca194cd907a9678725450c618b07), by @Cryotechnic 
- **[Imp+Fix]** [Background image system improvements](https://github.com/CollapseLauncher/Collapse/commit/9e6905c8bbd95ff26492c085ab580b74b19300e1), by @neon-nyan 
  - Applies fading transition while pausing background to static image
  - Reduce UI thread overhead while transitioning between backgrounds
  - [Fix seeking on pause causing background position to reset](https://github.com/CollapseLauncher/Collapse/commit/dd6f624dfc8e057116b671b35bb9910c41fc64fc)
  - [Fix 0x8001010E Exception on ImageBackgroundManager.CanOpenCropOverlay](https://github.com/CollapseLauncher/Collapse/commit/beed30bbe280b1ac9b32fe96c56b332475f24a4b)
- **[Fix]** XAML Binding warnings, by @neon-nyan 
  - [Fix binding on FFmpeg decoding mode settings](https://github.com/CollapseLauncher/Collapse/commit/af44646de28673ae33e835c5e20757b0eac260d6)
  - [Fix binding on Image Event icon](https://github.com/CollapseLauncher/Collapse/commit/b8a59155b8a0f2d2bcb086e64173a85ab0270c80)
  - [Fix bind conversion warning on SettingsPage](https://github.com/CollapseLauncher/Collapse/commit/f997f32ac216aa88f9addf2b27e161d1e2bf8519)
- **[Fix]** [Manual Game Switching doesn't reload the page](https://github.com/CollapseLauncher/Collapse/commit/a04d41f9ad7311bbffe125b7c7e1b58abddc24b7), by @neon-nyan 
- **[Fix]** [Disable system media transport controls](https://github.com/CollapseLauncher/Collapse/commit/1b3f5dcd71a16b91f9a6ae6ba5b0c5cc8979d809), by @shatyuka 
- **[Fix]** [Crash due to missing Contrast brushes on Contrast-enabled theme](https://github.com/CollapseLauncher/Collapse/commit/41479dcaeee13b177302c0eb72920cbfe05db260), by @Cryotechnic 
- **[HSR][Fix]** Crash due to Missing URLs on Audio and Video files while performing Game Repair, by @neon-nyan 
- **[Plugin][Fix]** File URL formatting and ensure successful HTTP response in plugin, by @Cryotechnic  
- **[Sophon][Fix]** Excessive File Package Size on Preload, by @Cryotechnic  
- **[Sophon][Fix]** Incorrect state display based on preload status, by @Cryotechnic  
- **[Imp]** Update WindowsAppSDK from v1.8 to v2.0 build
- **[Imp]** [Deprecating x86-64-v2 compile target](https://github.com/CollapseLauncher/Collapse/commit/9a60396b65a45972e904e2a65a19bec0b25699f9), by @neon-nyan 
  As per this release, we are going to set target build to x86-64-v4 or native. This means, the ILC could possibly support latest intrinsics like AVX2 and AVX512, allowing some code to run better due to wide vectorization.
  Some static libraries which utilizes BMI and AVX intrinsics (like ZStandard library) might not run properly on an old machine without AVX or BMI intrinsics support.
- **[Fix]** [Fix crash when started with other arguments](https://github.com/CollapseLauncher/Collapse/commit/87be59ac155610a3a57fabd7a101ef376e1e9190), by @neon-nyan
- **[Fix][Background Image]** [Crash if WIC Codec is unavailable](https://github.com/CollapseLauncher/Collapse/pull/877/changes/f1491e1be2d9d72043e52a7b95ea6598b4ec10ab), by @neon-nyan 
  - Removing the use of WIC Codec on MagicScaler (External image decoder)
- **[Fix][Hi3 Game Repair]** [Fix Audio_Default_Manifest.m always get detected as broken asset](https://github.com/CollapseLauncher/Collapse/pull/877/changes/5d407b0acb3fc63e3847324707243185db7d2642), by @neon-nyan 
- **[Imp][Hi3 Game Repair]** [Verbose error report on game repair for `HttpRequestException`](https://github.com/CollapseLauncher/Collapse/commit/f804cb16def5424d269c5cb0bfb00ab54ef57f65), by @neon-nyan 
- **[Fix][Hi3 Game Repair]** [Game Asset URL reporting invalid `streamingasb:80` URL while downloading in some cases](https://github.com/CollapseLauncher/Collapse/pull/877/commits/9113085eaba10b329b56c9717179e62ad9ff3963), by @neon-nyan 
- **[Imp]** [Update NuGet, Submodules and Bump Version](https://github.com/CollapseLauncher/Collapse/commit/a427a4fcca9c9957bc5988410207b34d05fdaa53)
- **[Fix][Hi3 Game Settings]** [Throw while saving empty game settings](https://github.com/CollapseLauncher/Collapse/commit/ddcb0254133964cdb6dff62338ce4f50a9cc8a95), by @neon-nyan 
- **[Fix][Hi3 Game Repair]** [Audio_Default.pck keeps getting redownloaded after game repair](https://github.com/CollapseLauncher/Collapse/commit/fff9820b87e0f9cd45991f9d3c982d27ae7da2b7), by @neon-nyan 
- **[Fix][Hi3 Game Repair]** [Data hash calculation based on `MhyMurmurHash264B` (like Blocks and Audio files) sometimes causes exception if data length doesn't match](https://github.com/CollapseLauncher/Collapse/commit/b549b810d21448100f32915cb3e2d547488b4b3d), by @neon-nyan 
- **[Imp][Hi3 Game Repair]** [Use Hardware/SIMD-based (AVX2) on addition operation for BSDiff patching (for Block and Audio files)](https://github.com/CollapseLauncher/Collapse/commit/ef59be01018f319d9ac6581abb244845b1c9d9c0), by @neon-nyan 
  > It will fallback to scalar method if no AVX2 support is present.
- **[Fix][Hi3 Game Repair]** [HTTP 404 (Not Found) error for some present CGs (including Birthday and In-game cutscenes)](https://github.com/CollapseLauncher/Collapse/commit/9a5de6f5db7224ce2fa23a0e351e165e26decc97), by @neon-nyan 
- **[Fix]** [Preload progress not updating to 100% on Sophon method](https://github.com/CollapseLauncher/Collapse/commit/a569e0fcb257b22a9832bef26a4f7c72230db747), by @neon-nyan 
- **[Fix][HSR Game Repair]** Honkai: Star Rail v4.3 Broke Game Repair and Cache Updates due to changes on Internal Game Struct format., by @neon-nyan 
  - [[HSR 4.3] Adjustment on data struct (DesignDataV)](https://github.com/CollapseLauncher/Collapse/commit/fba6eb25be68e28819088588fc784f5e92b9dd4e)
  - [[HSR 4.3] Adjustment on data struct (IFixV)](https://github.com/CollapseLauncher/Collapse/commit/5b89dfd2595d1087add22b89cdcd62c28a7aeecb)
- **[Fix][Hi3 Game Repair]** [Wrong VA files getting downloaded on Mainland China Servers](https://github.com/CollapseLauncher/Collapse/commit/d089ad1a34674d89b31c615317f1ad60ff2e33a3), by @neon-nyan 
- **[Imp][Perf]** [Moving to -O2 for AOT compilation](https://github.com/CollapseLauncher/Collapse/commit/28ef47501b15af4329376d4d74e3a8c3e03b2187), by @neon-nyan 
- **[Imp][Perf]** Internal COM Marshalling Improvements and Fixes, by @neon-nyan 
  - [Fix COM Marshalling + Memory Leaks](https://github.com/CollapseLauncher/Collapse/commit/a266cc0d40c63dcefc39751e66e347be75f2cda4)
  - [Fix early release of Plugin's COM object](https://github.com/CollapseLauncher/Collapse/commit/2af63f648f30107c0e37064453d826c04d4aadfb)
  - [Remove finalizer on custom controls](https://github.com/CollapseLauncher/Collapse/commit/ba50086703d8d5213a1ff4b3743d9046c8b6d6b0)
  - [Refactor COM Marshal](https://github.com/CollapseLauncher/Collapse/commit/3bd0796fda8a41fef46fa59299c239d53bad354d)
- **[Fix][Game Settings]** [Early reload due to RegistryMonitor events](https://github.com/CollapseLauncher/Collapse/commit/c39aae987f10bb99c99225876bb1a896d2b1a25f), by @neon-nyan 
- **[Imp][Perf]** [Use Storyboard on Carousel's Slideshow ticker](https://github.com/CollapseLauncher/Collapse/commit/4a32388b74a3e8cede9e8c0a07bf7078947bc9da), by @neon-nyan 
  Switching from Timer + Background Thread based to Storyboard. This to avoiding UI Thread overhead due to frequent DispatcherQueue.TryEnqueue calls.
- **[Imp][UI]** Minor adjustment on News Carousel Image Panel, by @neon-nyan 
  - Adjust piper and previous-next button styles
  - Make carousel height adjusted automatically based on Image's height.
- **[Fix][ImageEx]** Double-event fired for ImageOpened., by @neon-nyan 
- **[Fix]** [Speed limiter doesn't work on Sophon-related download routine](https://github.com/CollapseLauncher/Collapse/pull/881/commits/38b1dfaa1f7318891f3d83a30cc7fc18be75dc99), by @neon-nyan 
- **[Imp]** Localization updates, by localizers 🥳
  - de-DE - German (Progress: 100%)
  - es-419 - Spanish (Latin America)(Progress: 100%)
  - fr-FR - French (Progress: 98%)
  - id-ID - Bahasa Indonesia (Progress: 100%)
  - it-IT - Italian (Progress: 44%)
  - ja-JP - Japanese (Progress: 100%)
  - ko-KR - Korean (Progress: 87%)
  - nl-NL - Dutch (Progress: 99%)
  - pl-PL - Polish (Progress: 55%)
  - pt-BR - Portuguese (Brazil)(Progress: 72%)
  - pt-PT - Portuguese (Portugal)(Progress: 65%)
  - ru-RU - Russian (Progress: 100%)
  - th-TH - Thai (Progress: 94%)
  - uk-UA - Ukrainian (Progress: 83%)
  - zh-CN - Simplified Chinese (Progress: 100%)
  - zh-TW - Traditional Chinese (Progress: 60%)

## Known Issue
Unfortunately, there are some known issues that didn't make into this release and still under our investigation, including:
- Fresh Installation and updates in some games might fail with: "System.FormatException: Unable to guess the format automatically" error if Sophon Download Mode is not enabled.
  - We suggest to re-enable Sophon Download Mode under the App Settings at the moment while we still investigate the issue. 

**Full Changelog**: https://github.com/CollapseLauncher/Collapse/compare/CL-v1.83.18...CL-v1.84.4
	
# Code Signing Policy
> Free code signing provided by [SignPath.io], certificate by [SignPath Foundation]
- This program will not transfer any information to other networked systems.
- Read our full [**Privacy Policy**](https://github.com/CollapseLauncher/Collapse/blob/main/PRIVACY.md)
- Also read our [**Third Party Notices**](https://github.com/CollapseLauncher/Collapse/blob/main/THIRD_PARTY_NOTICES.md) for license used by third party libraries that we use.

[SignPath Foundation]:https://signpath.org
[SignPath.io]:https://signpath.io