This update is heavily based on [**#memory-squash**](https://github.com/neon-nyan/Collapse/tree/memory-squash) branch and changes are still on-going.
Anyway, we are hitting 1k commits milestone! Thank you for all of your support!

![](https://raw.githubusercontent.com/neon-nyan/CollapseLauncher-Page/34d1913533b0a9b328fdee6be457f240915b5381/images/Banner_update_1.0.52.5.webp)

# What's New?
### **[Launcher]** Use the new loading UI and an ability to cancel it ``e79251d``[**!**](https://github.com/neon-nyan/Collapse/commit/e79251dedbbda0f14f980af2a8930db4c7fe0ef9)
![image](https://user-images.githubusercontent.com/30566970/219035782-e1cd6f28-0e02-47b2-8e42-2b5ec3ec40e1.png)

### Minor changes
- **[Launcher]** Use full-sized title-bar buttons ``9f3142b``[**!**](https://github.com/neon-nyan/Collapse/commit/9f3142bad54147056a473aa2b19594872d4387d0) ``2446b3e``[**!**](https://github.com/neon-nyan/Collapse/commit/2446b3e6eb09827ff6f8a77e019658f0c780456a)
![image](https://user-images.githubusercontent.com/30566970/219038397-9375450f-9592-4a17-adea-0ba9c4bd7bab.png)

- **[Launcher]** Add warning for Games that's not officially supported (Beta or DevRelease) ``55f80cb``[**!**](https://github.com/neon-nyan/Collapse/commit/55f80cb6a181724fff69b8a898374f56541160d4)
![image](https://user-images.githubusercontent.com/30566970/219037176-b08361ad-45d8-4517-8f6a-35d6b0d0d10d.png)

- **[Launcher]** Change label from "Exper" to each game channel category (Beta or DevRelease) ``6d43cd5``[**!**](https://github.com/neon-nyan/Collapse/commit/6d43cd5537ee8c7611c9ce2ed5e8011d7f3b9110)
    
    **Before**
    ![image](https://user-images.githubusercontent.com/30566970/219036663-b5415c86-eecd-4b3a-a03a-6aad9471dae9.png)
    
    **After**
    ![image](https://user-images.githubusercontent.com/30566970/219036712-a77e953c-0871-482d-b27f-eb9f32f7ef58.png)
    
- **[Honkai Impact 3rd]** Add exception for ScreenShot folder while doing checking on Game Repair ``901c9df``[**!**](https://github.com/neon-nyan/Collapse/commit/901c9df6eb1dac58ab59ad248ad7edb1ae68b404)
- **[Honkai: Star Rail]** The first iteration of bringing support for Honkai: Star Rail ``9692060``[**!**](https://github.com/neon-nyan/Collapse/commit/9692060f1f87c43fbaf472b747ce6261a59e42bd) ``ebd8d9b``[**!**](https://github.com/neon-nyan/Collapse/commit/ebd8d9b71f330d93147d8088d95c74926b353981)
- **[Runtime]** Reinitialize setup while the Game App Data path doesn't exist ``fbd30a0``[**!**](https://github.com/neon-nyan/Collapse/commit/fbd30a03e9b7b3ed2b3356aa5b28ed2680119d1e)
- **[Runtime]** Refactor launcher logger and app config first initialization ``e29d540``[**!**](https://github.com/neon-nyan/Collapse/commit/e29d540fe2f622956a64a24ac8a7434d0aafa363)
- **[Runtime]** Move Protos to EncTool and adjust to Proto update ``7232958``[**!**](https://github.com/neon-nyan/Collapse/commit/72329580b8f46880e8369d43e130c9bf130f51da)

***

# What's Fixed?
### Minor changes
- **[Honkai Impact 3rd]** Fix invalid enum value for ``VolumetricLight`` ``f3b1737``[**!**](https://github.com/neon-nyan/Collapse/commit/f3b1737b3b03dbb514d1cb297b7499157f95488f)
- **[Runtime]** Fix ``CheckAndSetDefaultConfigValue()`` missed empty string ``3db9013``[**!**](https://github.com/neon-nyan/Collapse/commit/3db901343ef1c8931acc19d5619bd6e99aeac8e5)
- **[Runtime]** Fix game won't launch if game is not Honkai or Genshin ``75fc0e9``[**!**](https://github.com/neon-nyan/Collapse/commit/75fc0e92edb8de22a4ebcd38a247b1a11437ef82)
- **[Code Quality]** Fix typos at some codes ``cfa92f4``[**!**](https://github.com/neon-nyan/Collapse/commit/cfa92f4cc52b5d9aefe95954280ad280faa54894)
- **[Code Quality]** Fix Honkai and Genshin Game Settings file in the wrong place ``7329a3e``[**!**](https://github.com/neon-nyan/Collapse/commit/7329a3e4c0c5255083eb007d071aee928cb3c59f)