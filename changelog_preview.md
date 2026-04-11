### Hewwo, it's neon-nyan here~

It's beeeeeen a while since the last 1.83.x update. For now, this release is focusing on more quality improvements, bug fixes and internal code reworks rather than new features as we are preparing on reworking Collapse for new codebase. 

That being said, this 1.84 update will be the marked as the last V1 release after roughly 4 years since the start of this project as we are going to move into V2 codebase starting this year (at Q3 or Q4 2026). Thank you so much for your continous support and interest in this project💖

### Welcome to 1.84.x Release (Codename: Columbina)
![UpdateIsAvailable-Campaign-Columbina](https://github.com/user-attachments/assets/e7043018-4d49-48f2-adf1-3c846fd3c3e4)
And so without further ado, let's dig into what's new in this release so far.

# Preview 1.84.1 (Codename: Columbina) - What's new?
## Reworked Background System
Since months, HoYoverse has updated HoYoPlay to support multiple background to display, including static image and dynamic background ones. This has been our backlog since this release as due to "spaghetti-code" nature of our entire codebase, this made us harder to adapt the changes and thus making Collapse still only support one static background image.

Thanks to [this massive rework](https://github.com/CollapseLauncher/Collapse/pull/862), we are now able to pull-off this feature by splitting the parts of the code into its own element, making it more easier and more manageable for the change and for incoming improvements.

We are also moving to [**FFmpeg**](https://www.ffmpeg.org/) as our secondary library for background video decoder if no built-in codec is present. You will be prompted to install the FFmpeg library if none of the required built-in Windows Media Foundation codec for VP9 or any codec is present.

> [**FFmpeg**](https://www.ffmpeg.org/legal.html) is licensed and distributed under [GNU Lesser General Public License, version 2.1 **(LGPLv2.1)**](https://www.gnu.org/licenses/old-licenses/lgpl-2.1.html)

[2026-04-11 16-22-41.webm](https://github.com/user-attachments/assets/2587251d-5132-4c83-a331-a7d75816cd5c)

The experience might still be sluggish due to rushed implementation. But this will be improved in future updates🤞

### Update: 2026/03/27
Due to corrupted video background situation in any regions for Zenless Zone Zero game, FFmpeg has been set as a default decoder for Collapse Launcher now (You can opt-in for using built-in Windows Media Foundation decoder, though). You might be asked to install a new one if you don't have any defined in your system's Environment Variable.

[2026-03-27 11-55-13.webm](https://github.com/user-attachments/assets/670dd6d4-a3d3-44ba-9ee5-48866a0362da)

## Reworked Localization System
This is more like development-experience improvement rather than user focused ones. Previously in order to implement the localization for new elements, we have to manually map each class properties to represented JSON entries. Thanks to newly source-generated class mapper, every JSON entries will be mapped automatically. Each class properties can now be bind into UI element directly, making the UI able to update the visual itself rather than being told manually, one-by-one (which is expensive).

## Reworked Download Speed Limiter
The feature has been long broken since last 1.83.x release due to inconsistency and changes to other download-related libraries. Even though if you're enabling this feature, you might experience that the download speed "isn't actually being limited" and noticing that your bandwidth is still being fully utilized. This feature should now be fully fixed by decentralizing the code of the feature into its own library and making it easier to maintain.

This feature could also be applied for any game plugins whose have v1-update4 API standard fully implemented.

## Minor UI Adjustments
Not so noticeable UI changes at all. But it's worth to mention here.
#### 1. News Carousel Design
<img width="1282" height="457" alt="image" src="https://github.com/user-attachments/assets/3f3df571-63b5-42d5-9d54-6b6e005a8b83" />

#### 2. About Card
<img width="810" height="535" alt="image" src="https://github.com/user-attachments/assets/66b826b0-219d-4733-ba49-8a600705ede1" />

## Other Changes
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
- **[Imp]** Localization updates, by localizers 🥳
  - de-DE - German (Progress: 100%)
  - es-419 - Spanish (Latin America)(Progress: 100%)
  - fr-FR - French (Progress: 98%)
  - id-ID - Bahasa Indonesia (Progress: 100%)
  - it-IT - Italian (Progress: 45%)
  - ja-JP - Japanese (Progress: 100%)
  - ko-KR - Korean (Progress: 87%)
  - nl-NL - Dutch (Progress: 100%)
  - pl-PL - Polish (Progress: 55%)
  - pt-BR - Portuguese (Brazil)(Progress: 72%)
  - pt-PT - Portuguese (Portugal)(Progress: 65%)
  - ru-RU - Russian (Progress: 76%)
  - th-TH - Thai (Progress: 95%)
  - uk-UA - Ukranian (Progress: 84%)
  - zh-CN - Chinese Simplified (Progress: 100%)
  - zh-TW - Chinese Traditional (Progress: 61%)

**Full Changelog**: https://github.com/CollapseLauncher/Collapse/compare/v1.83.14-pre...CL-v1.84.1-pre