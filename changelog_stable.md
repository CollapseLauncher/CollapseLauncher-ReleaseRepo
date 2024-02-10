![](https://raw.githubusercontent.com/neon-nyan/CollapseLauncher-Page/main/images/banner202304.webp)

# Hotfix Update for 1.72.18 - Senadina Stable Branch!
This update contains bugfixes for the Senadina release. If you encounter any bugs, please report to [GitHub](https://github.com/neon-nyan/Collapse/issues/new/choose).

For faster releases and more experimental features, consider switching to Preview branch on Settings.

## What's changed? - 1.72.18
- **[New]** Adding Delta-Patch support for Honkai: Star Rail, by @neon-nyan
    - Starting from Stable 1.72.18 and Preview 1.73.3, Delta-Patch update for Honkai: Star Rail will be added to Collapse. Bringing a significantly smaller update size than official method.
    - This support was planned to be arrived at the start of 1.72.x release but postponed due to some complex changes need to be done (Including delta-patch download pre-requisite for applying audio packages)
- **[Fix]** Fixed Repair/Cache Update for Honkai: Star Rail 2.0.0 Update, by @neon-nyan & @bagusnl
- **[Fix]** Fixed Honkai: Star Rail showing A/B test warning on region load, by @Cryotechnic
    - This message is now only shown when opening HSR Game Settings page
- **[Fix]** Fixed crashing issue with SevenZipExtractor submodule, by @neon-nyan
- **[Fix]** Fixed wrong message getting displayed if pre-load has already been downloaded. by @neon-nyan
    - This causes some confusion while the bug is kinda derpy to get fixed. This should have been fixed now.
    ### Before
    ![image](https://github.com/CollapseLauncher/Collapse/assets/30566970/33b44593-5f65-4716-9d79-ec2e316933ad)
    ### After
    ![image](https://github.com/CollapseLauncher/Collapse/assets/30566970/7cbaa8a3-6a68-4d16-ab2c-a6f6a8de5ee1)
- **[Imp]** Add HTTP/3 support for Windows 11, by @neon-nyan
- **[Imp]** Add "Dynamic Character Resolution" settings for Genshin Impact, by @shatyuka
  - This option is only going to be used by the game if the PC is supported, there is no information officially what kind of PC that supports this.
- **[New]** **[Loc]** New Ukrainian (uk_UA) localization. by, @vitalitk
- **[Loc]** Localization sync from Transifex, by Localizers <3

## What's changed? - 1.72.17
- **[Fix]** Fixed "Change Release" and "Force Update" mechanism, by @gablm
- **[Fix]** Fixed Honkai: Star Rail showing A/B test warning on region load, by @Cryotechnic
    - This message is now only shown when opening HSR Game Settings page
- **[Fix]** Fixed crashing issue with SevenZipExtractor submodule, by @neon-nyan
- **[Fix]** Fixed error when repairing fresh installation of Genshin Impact, by @neon-nyan
- **[Fix]** Fixed crash when copying exception message, by @neon-nyan
- **[Imp]** Implement Borderless Settings for Genshin Impact, by @bagusnl
    - Note: Collapse Borderless settings will have priority over GI's implementation.

## What's changed? - 1.72.16
- **[Fix]** Fixed crashes on delta patch application
- **[Imp]** Bring SignPath appsigning to Stable

## What's changed? - 1.72.15
- **[Fix]** Fixed error on game repair caused by wrongly assigned value
- **[Fix]** Fixed Honkai: Star Rail installation issue where the wrong VO files is applied
- **[Fix]** Fixed memory leaks on HTTP submodule
- **[Imp]** Improve initialization time for HTTP submodule

***
***
# Collapse 1.72.14: Senadina
It's been a long time coming, and we've been quiet in the last few months to give you guys the **BIGGEST** Collapse update
we've ever done this year. Packed with a ton of useful features and improvements, we hope you enjoy using this as much as we did
making it!

Welcome to Collapse version 1.72.14 - Codename: Senadina! 

***

# What's New?
## New Feature: Keyboard Shortcuts (Thanks @gablm !)
This is something we've wanted to include for about 3 releases now, but were never able to due to issues encountered in
the styling and implementation phase of this feature. We're glad to say that, after many months in testing, we're confident
that this feature is ready for prime time for you guys!

In its current iteration, this feature is **enabled** by default. If you would like to disable it, simply head over to the
App Settings page and toggle the "Keyboard Shorcuts" to "Disabled". No restart is required.

You can also access this menu by using the default key combination of "<kbd>CTRL</kbd> + <kbd>Tab</kbd>".

You can also rebind most of the keys, and swap modifiers should you want.

## New Addition: Bilibili Region
Shipping with Collapse 1.72.14 is the inclusion of a brand new region for miHoYo / Cognosphere games: China Bilibili.
Thank you to everyone involved in the integration of the SDK and for our community for providing us with the access to add
region support!

Starting from this release, the Bilibili region will exit "Preview" and will be considered stable for general use.

We introduced this change as part of the feedback we've gotten from you guys. Please keep sharing your thoughts regarding this and future features, as it helps us improve the experience for all Collapse users!

## New Addition: Full Repair for Honkai: Star Rail 
Honkai: Star Rail finally gets full repair support across most regions! This feature works exactly as for all the other regions.
Please let us know if something doesn't feel right or needs to be changed!

## New Feature: System Tray
Collapse can now be minimized to tray when launching a game. Collapse also has the capability to start minimized to your
system tray when first booting it up. More screen real estate!

## New Feature: Launch on Boot
Alongside the tray improvements, Collapse can also start itself automatically when you first boot up your computer. By
default, we've disabled the feature, but you can toggle it on by simply going to your App Settings page and enabling 
"Automatically start Collapse when your computer boots up".

***

## Major Changes
### Add support for HDR for Genshin Impact 
The Game Settings page now properly supports HDR screens and will display the correct calibration images. Please note that
your monitor **must** support HDR to enable the feature in Genshin Impact.
***

### New Community Tools - Honkai: Star Rail: KQM
KQM now has guides for Honkai: Star Rail, so we've decided to include them in our launcher, with their blessing. Thanks!

### New Localization: Thai & French (Thanks @kinodev, @armzyaec1234 @Hasukay, @Zeide, @CryoTechnic)
New locales always help in making Collapse accessible to more people. Thanks everyone for their numerous contributions!

Note: Full French language support is coming in the next minor build of Collapse.

### Metered Connection Mode
Collapse is now metered connection-aware. This means that if you are on a limited bandwidth, Collapse will ask you if you
would like to proceed before checking updates for Collapse and Game updates.

## Minor changes
Normally we would list all the minor changes here, but due to the amount of commits, we've decided against it for this release.
Read the full changelog below!

**Full Changelog**: https://github.com/neon-nyan/Collapse/compare/CL-v1.72.14...CL-v1.71.16
