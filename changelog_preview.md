![](https://raw.githubusercontent.com/neon-nyan/CollapseLauncher-Page/main/images/banner202304.webp)

# Collapse 1.73.0: [Codename TBD]
Welcome to Collapse version 1.73.0 - Codename: TBD! This is an early look at the next version of Collapse. This preview is shipped "AS-IS" and we encourage you to report any issues on Discord or by submitting an issue on [Github](https://github.com/neon-nyan/Collapse/issues/new/choose). This changelog is subject to change, with or without notice.

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