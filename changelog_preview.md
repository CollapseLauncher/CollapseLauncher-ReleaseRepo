![](https://raw.githubusercontent.com/neon-nyan/CollapseLauncher-Page/main/images/banner202304.webp)

# Collapse 1.73.3: [Codename TBD]
Welcome to Collapse Preview Release Branch! This is an early look at the next version of Collapse. This preview is shipped "AS-IS" and we encourage you to report any issues on Discord or by submitting an issue on [Github](https://github.com/neon-nyan/Collapse/issues/new/choose). This changelog is subject to change, with or without notice.

# What's New? - 1.73.3

- **[New]** Adding Delta-Patch support for Honkai: Star Rail. (by, @neon-nyan)
    - Starting from Stable 1.72.18 and Preview 1.73.3, Delta-Patch update for Honkai: Star Rail will be added to Collapse. Bringing a significantly smaller update size than official method.
    - This support was planned to be arrived at the start of 1.72.x release but postponed due to some complex changes need to be done (Including delta-patch download pre-requisite for applying audio packages)
- **[Fix]** Fixed wrong message getting displayed if pre-load has already been downloaded. (by, @neon-nyan)
    - This causes some confusion while the bug is kinda derpy to get fixed. This should have been fixed now.
    ### Before
    ![image](https://github.com/CollapseLauncher/Collapse/assets/30566970/33b44593-5f65-4716-9d79-ec2e316933ad)
    ### After
    ![image](https://github.com/CollapseLauncher/Collapse/assets/30566970/7cbaa8a3-6a68-4d16-ab2c-a6f6a8de5ee1)
- **[Fix]** Fixed Repair/Cache Update for Honkai: Star Rail 2.0.0 Update, by @neon-nyan & @bagusnl
- **[Fix]** Fixed several issues in Steam Shortcut integration, by @gablm 
  - Fixes folders not being found if the steamID ended with an 0.
  - Adds/improves some logging when searching for valid userdata folders
  - Changes target exe/folder to the stub executable/folder
  - Enable Steam overlay flag
- **[Fix]** Fixed drag area not updating after changing window size, by @shatyuka 
- **[Imp]** Add "Dynamic Character Resolution" settings for Genshin Impact, by @shatyuka
  - This option is only going to be used by the game if the PC is supported, there is no information officially what kind of PC that supports this.

# What's New? - 1.73.2
- **[New]** Re-added Move Game to Different Location feature by, @neon-nyan
  - With this feature, you can move your game to different location/folder and automatically adjust Collapse setting into it so you don't have to locate your game again
  - This has been a long-time broken feature before the complete UI rehaul.
- **[New]** Add to Steam feature, by @gablm
  - Now you can add shortcut to the game region to Steam straight using Collapse! You can access this feature in the "Quick Settings" menu inside the home page.
  - You can also add the shortcut to your desktop!
  - Note that adding the shortcut to steam will add an entry for the region you choose to all Steam user profile that has logged in.
- **[New]** Resizable Game Window, by @neon-nyan
  - With this feature enabled, you can resize the game window to your liking after the game is launched.
  - Note that this feature only work if the game is set to run in Windowed mode (does not work on Borderless).
  - Also the game might launch in weird resolution on the next run due to the in-game logic trying to pick the nearest "logical" ratio unless you're using "Custom Resolution" option.
  - More details and showcase are available on the [GitHub PR Ticket](https://github.com/CollapseLauncher/Collapse/pull/381)
- **[New]** **[Loc]** New Ukrainian (uk_UA) localization, by @vitalitk
- **[Fix]** Fixed Discord RPC error when rapidly changing pages, by @neon-nyan
- **[Fix]** Fixed "Change Release" and "Force Update" causing wrong branch to be installed, by @gablm
- **[Fix]** Fixed error when repairing fresh installation of Genshin Impact, by @neon-nyan
- **[Fix]** Fixed crash when copying exception message, by @neon-nyan
- **[Fix]** Fixed Honkai: Star Rail showing A/B test warning on region load, by @Cryotechnic
  - This message is now only shown when opening HSR Game Settings page
- **[Fix]** Fixed rare crash when `LauncherFrame`'s `backStack` has no element, by @neon-nyan
- **[Fix]** Fixed crashing issue with SevenZipExtractor submodule, by @neon-nyan
- **[Imp]** Add HTTP/3 support for Windows 11, by @neon-nyan
- **[Imp]** Implement Borderless Settings for Genshin Impact, by @bagusnl
  - Note: Collapse Borderless settings will have priority over GI's implementation.
- **[Loc]** Localization sync from Transifex, by Localizers <3

# What's New? - 1.73.1
- **[New]** Open Collapse straight to specified region using command argument (thanks @gablm !)
  - Now you can launch Collapse straight to your specified region (optionally also launch the game) directly using command line arguments!
  - Note: You don't need to close your current Collapse process and it will redirect the command to already running instance! (Assuming you did not enable Multi instance in the settings)
  - Usage : 
    `CollapseLauncher open [options]`
  - Options:
     -g, --game <game> (REQUIRED)  Game number/name | e.g. 0 or "Honkai Impact 3rd"
     -r, --region <region>         Region number/name | e.g. For Genshin Impact, 0 or "Global" would load the Global region for the game
    -p, --play                    Start Game after loading the Game/Region

- **[New]** URL Protocol support (thanks @gablm !)
  - This is the extension of the command argument feature. With this, you can open Collapse and use either `open` or `tray` argument using `collapse://[argument]` either in Windows Run, Browser, or as an icon.
  - Usage example `collapse://tray` to open Collapse straight to tray menu
  - To use this feature, you have to run Collapse at least once after the update!
  - These 2 new features is an extension from WIP feature to add the games icon to Steam and Desktop using Collapse! Hopefully this feature will come in near future~
 
- **[Imp]** Builds now signed by SignPath!
  - Thank you SignPath Foundation for providing us with Authenticode signing for Collapse!
  - Collapse build are now signed with EV certificate issued by SignPath Foundation. This is our step forward to make user more comfortable using our launcher as you can trust that we only publish the program that you can see all the source code that we made!
  - Disclaimer: user might still see the Windows SmartScreen warning when they run the app for the first time as it will take time for Microsoft build trust for Collapse.
  
- **[Imp]** Community Tools for different zone (thanks @shatyuka !)
  - Community Tools section is now separated by regions!
  - Global and Mainland China (including Bilibili) will now have different setlist of available tools to choose. This also fixes the Official Tools link which are different for the CN regions.
 
- **[Fix]** Fixed Genshin Game Settings causing Collapse to crash
  - This usually happens when the config is not found in the registry, either due to a new install or user wiped the configuration manually.
  - With this, default value is loaded whenever Collapse cannot retrieve the config from registry.

- **[Imp]** Documentations improvements
  - We now have our Privacy Policy which you can read here: https://github.com/CollapseLauncher/Collapse/blob/main/PRIVACY.md
  - We will be fully committed to not collect any data from the user and respect everyone's privacy by using our program. Although currently there is no feasible way to fully avoid that with 3rd party services that we need to use to make Collapse work. All of those are listed there and users are encouraged to read it!

- **[Imp]** Backends chores
  - NuGet and submodule updates

- **[Loc]** Sync translation from Transifex (thank you all localizer!)

# What's changed? - 1.73.0
### Upstreamed from 1.72.15:
- **[Fix]** Fixed error on game repair caused by wrongly assigned value
- **[Fix]** Fixed Honkai: Star Rail installation issue where the wrong VO files is applied
- **[Fix]** Fixed memory leaks on HTTP submodule
- **[Imp]** Improve initialization time for HTTP submodule

### New for 1.73.0:
- **[Imp]** Localize game selector
- **[New]** Add 'Extract Anyway' button when downloaded installation package is corrupted
    - This allows user to force extract corrupted installation package. User is informed that doing this might cause the extraction phase to fail and render the game to be not playable.
    - User is expected to run full game repair when using this feature.
- **[New]** Add toggle to always use external browser for all links
    - The toggle is located at Settings > Additional Settings.
    - This will disable Collapse' WebView2 window and use default browser when clicking any links inside Collapse.
- **[New]** Add toggle to enable/disable the use of game start-up arguments
    - This will toggle the user provided game start-up arguments used when starting the game.