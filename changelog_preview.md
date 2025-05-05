![](https://raw.githubusercontent.com/CollapseLauncher/.github/main/profile/ReleaseHeader-Wide-2024v2.webp)

> We have just published our new landing page, which you can view at https://collapselauncher.com !

# A New Version is Approaching!
We began to roll-out new releases by bringing new upcoming features and improvements to the launcher in-front of your door. As a preparation, you might receives new builds while the release is still in development, so the new features you can try out sooner.

### Welcome to 1.83 Release!

# What's New? - 1.83.0
## External DNS Support, by @neon-nyan 
Ability to set the DNS request to specific server just for the launcher. Supports plain DNS (UDP/53), DNS over HTTPS (DoH), and DNS over TLS (DoT). Includes 3 predefined DNS providers, Cloudflare (`$cloudflare`), Google (`$google`), and quad9 (`$quad9`). User can customize to use other DNS provider(s) and use multiple all at once as a fallback. 

![image](https://github.com/user-attachments/assets/b40f065f-2220-4ccf-9a3d-fbd534f7be33)

## Search on App Settings, by @bagusnl & @neon-nyan 
Tired of scrolling all of our launcher MASSIVE tunable options? Us too! That's why we have implemented a way to search all the available settings by just typing it, then you can navigate by using arrows to get to the settings you want. Works in all of our supported locales!

![image](https://github.com/user-attachments/assets/f9d9f357-e9bf-4cfd-a733-9571c4b58348)

## Sophon Patch for Game Update Implementation, by @neon-nyan 
HoYo recently released what we called "Sophon Patch Mode" for game update. This method is different than the older "Sophon Chunk" as the patch method compares the entire file instead of replacing part of the file like in chunk method. This leads to Pre-download size reduction on Genshin Impact (EN+JP VO) from 15.97 GB with Sophon Chunk to 5.92 GB (almost a third of the size). Pretty good work on HoYo side, but we observed only a few of HoYoplay users have them. 

With our implementation, everyone can use them! (As long as it's provided in the game's update data from HoYo). You can also disable them the same way as you disable the Sophon Chunk method.

![image](https://github.com/user-attachments/assets/72c646ed-4a61-46f1-83ea-c4240a5dff87)

# Other changes:
- **[New]** Kill other instance that doesn't have window, by @bagusnl 
- **[Imp]** Improved WebView panel backend, by @bagusnl 
  - Immediately dispose and release all related resources on panel close.
  - Ensures WebView instance is available before the UI is displayed and interactable.
- **[Imp]** Move our release CI to GitHub action, by @bagusnl 
  - Everyone can now monitor all of our release easily by opening the [Action tab](https://github.com/CollapseLauncher/Collapse/actions/workflows/release-signed.yml). You can also verify all the binaries were coming from the build as we upload both the unsigned and the signed build in the artifacts of the run.
  - The move from AppVeyor to GitHub is due to annoying fact that AppVeyor has a very long initialization time before the CI is even run, and also with separate config that we can only test when putting up a release meaning everytime the CI breaks especially on an emergency release, it is quite a feat to fix in terms of how much time it takes for both waiting and fixing it, also the sanity of the CI maintainer due to [how annoying the CI config looks](https://github.com/CollapseLauncher/Collapse/blob/1.83.x-staging/Backup/unused-app-veyor.yml)/
  - By moving to GitHub Actions, we can monitor the CI availability as its the same commands that gets run every time we push a commit. So, when it breaks, we know before any release and can fix it easily.
- **[Fix]** Increase DiscordRPC connection issue wait time to 5s, by @bagusnl 
  - Decrease the spam when RPC can't connect with the server, usually when Discord is not yet loaded.
- **[Fix]** Implemented the new hashing and repair method for Hi3 v8.2, by @neon-nyan 
  - The hash have been changed from MD5 to MMH64B and it should now be fully implemented in Collapse.
  - Let us know if you have any issue with it!
- **[Fix]** Zip to Sophon force fallback - Annotated from [**#733**](https://github.com/CollapseLauncher/Collapse/pull/733)
  - As per Genshin Impact 5.6.0 preload today, miHoYo just removed Zip packages on HoYoPlay API. This caused our launcher unable to detect or determine update state due to the main dependencies to Zip packages only.
  - This release fixes the issue by checking if Zip is unavailable, then tell the GameVersionManager to fallback by forcefully redirect the install/update/preload methods to Sophon mode. This releases also fixes the same issue if HoYo might remove the Zip packages to other games in the future.
	
# Code Signing Policy
> Free code signing provided by [SignPath.io], certificate by [SignPath Foundation]
- This program will not transfer any information to other networked systems.
- Read our full [**Privacy Policy**](https://github.com/CollapseLauncher/Collapse/blob/main/PRIVACY.md)
- Also read our [**Third Party Notices**](https://github.com/CollapseLauncher/Collapse/blob/main/THIRD_PARTY_NOTICES.md) for license used by third party libraries that we use.

[SignPath Foundation]:https://signpath.org
[SignPath.io]:https://signpath.io
