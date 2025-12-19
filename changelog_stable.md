![UpdateIsAvailable-Campaign](https://github.com/user-attachments/assets/5c5df62c-8570-4018-b6e7-66d5decf8278)

> We've recently released a new launcher status tracker! Head on over to https://status.collapselauncher.com to see it!

Guess who's back, back again? Guess who's back, guess who's back? That's right! It's the Dev Team with a new mainline Stable release!

This release brings Stable in line with the new features present in Preview. This includes, but is not limited to: plugin subsystem, .NET 10 migration, Miliastra Wonderland support and a lot of bug fixing!

# **New**: Plugin Subsystem
This is by *far* the most ambitious and difficult feature we've worked on. Through this, you may now launch additional games through Collapse, taking advantage of all its features and fluidity!

Please keep in mind that in order for this feature to work, you need to install the corresponding plugin. Plugins are managed through the App Settings page, by clicking on the "Open Plugin Management Menu" button. A list of plugins can be found on [our website](https://collapselauncher.com/plugin/catalog.html).

The plugins update process follows a similar procedure to metadata updates, though you can choose not to update the plugin if you want. No support will be given if you are on an outdated version of a plugin.

Plugins are created by 3rd-party developers and are not subject to Collapse policies. Because of this, **we can't actively provide support to users that use plugins that are not developed by Collapse developers**. Here's a list of currently-available plugins:

- [**Heaven Burns Red**](https://heavenburnsred.yo-star.com/)
  - Engine: Unity 2021.x (2020.3.15f2)
  - Developer: [**Wright Flyer Studios/GREE Holdings, Inc.**](https://gree.co.jp/jp/ja/), [**Key**](https://key.visualarts.gr.jp/)
  - Published by:
    - Global: [**Yostar**](https://www.yo-star.com/en-us/) (November 15th, 2024)
    - Japan: [**Wright Flyer Studios/GREE Holdings, Inc.**](https://gree.co.jp/jp/ja/), [**Key**](https://key.visualarts.gr.jp/) (February 10th, 2022)
  - Plugin developer: @neon-nyan
  - Plugin repository: https://github.com/CollapseLauncher/Hi3Helper.Plugin.Seraphim
- [**Wuthering Waves**](https://wutheringwaves.kurogames.com/en/main)
  - Engine: Unreal Engine 4 (build 4.26.2)
  - Developer: [**Kuro Games**](https://kurogames.com/)
  - Published by:
    - Global: [**Kuro Games**](https://kurogames.com/) (May 22nd, 2024)
  - Plugin developer: @CryoTechnic
  - Plugin repository: https://github.com/CollapseLauncher/Hi3Helper.Plugin.Wuwa
- [**Duet Night Abyss**](https://duetnightabyss.dna-panstudio.com/)
  - Engine: Unreal Engine 4 (build 4.27.2)
  - Developer: [**Pan Studio**](https://herogame.com/)
  - Published by:
    - Global: [**Hero Games**](https://herogame.com/)
  - Plugin developer: @gablm
  - Plugin repository: https://github.com/CollapseLauncher/Hi3Helper.Plugin.DNA

We ask that, should you have any issues, you open a ticket on the respective repositories. The owner will be able to assist you further. Plugins made by the core development team are supported on the latest version only.

# **New**: Support for updating Miliastra Wonderland package
Just like HoYoPlay, Collapse can now update the Miliastra Wonderland package for Genshin Impact. There's a new icon for it too!

# **Update**: Switch to .NET10 for Collapse builds
Collapse now runs on .NET10! Because of that, we are able to bring numerous performance improvements to our builds, which run on NativeAOT. You can check out most changes brought through .NET10 [here](https://learn.microsoft.com/en-us/dotnet/core/whats-new/dotnet-10/overview).

# Major changes

Because of the amount of commits (over 800), the changes won't be listed. Instead, we encourage you to look at the full release changelog down below.


### Various Localization Updates
As always, we want to thank are awesome community for providing an amazing localization for our project. Collapse is now localizable in 18 languages and dialects! <3

***
# Minor changes
***
Because of the amount of commits (over 800), the changes won't be listed. Instead, we encourage you to look at the full release changelog down below.

**Full Changelog**: https://github.com/CollapseLauncher/Collapse/compare/CL-v1.82.24...CL-v1.82.25