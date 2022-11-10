![](https://raw.githubusercontent.com/neon-nyan/CollapseLauncher-Page/34d1913533b0a9b328fdee6be457f240915b5381/images/Banner_update_1.0.52.5.webp)

# Note:
This is a minor update release for **Collapse v1.0.52 [Codename: Elysia]**. We are focusing on fixes and some minor changes from previous stable and preview release.
This time, the preview and stable releases are based on the same code. So we will merge the preview and stable release notes here.

# What's New?
- ### **[i18n - pt-PT]** Adding Português - Portugal Translation by @gablm 🎉 ``9a33544``[**!**](https://github.com/neon-nyan/CollapseLauncher/commit/9a33544b2dd81c7cce93862a91ad735e2747d078)
- ### **[Runtime]** Moving the runtime to .NET 7 STS (Stable) Release
> As previously announced by Microsoft on [**.NET Conf 2022**](https://www.dotnetconf.net/), .NET 7 is now on Stable Release!
> That means the runtime will be used until the next LTS release of .NET, which is .NET 8 (expected to be released on November 2023)

- **[Launcher]** Adding support for multilang API on Honkai Impact ``b231dd4``[**!**](https://github.com/neon-nyan/CollapseLauncher/commit/b231dd487729596c66d4dbb49683885d710fdaff)
- **[Launcher]** Hide version event icon if Preload dialog is showing ``64eb63b``[**!**](https://github.com/neon-nyan/CollapseLauncher/commit/64eb63b2a2cc9778e47ca2bd4da66ca1404b102c)
- **[Code Quality]** Remove unused backdrop code ``495f408``[**!**](https://github.com/neon-nyan/CollapseLauncher/commit/495f4088c08ddc8311d970d77f6c4079ffdd96aa)
- **[Code Quality]** Log Genshin Dispatcher Output to make diagnostic easier (With Debug only) ``695d951``[**!**](https://github.com/neon-nyan/CollapseLauncher/commit/695d951aa77aaeeaae26167703ac71f4ce3657cf)
- **[Code Quality]** Refactor Game Status Checker Methods ``c2ff9f5``[**!**](https://github.com/neon-nyan/CollapseLauncher/commit/c2ff9f5b39224391ce83690486f696f48860e14a)
- **[Code Quality]** Rename Pre-load dialog box variable to a proper name ``72dc4c8``[**!**](https://github.com/neon-nyan/CollapseLauncher/commit/72dc4c8d76bdd4f84e8031148dd1372b8d308f07)
- **[Runtime]** Log disk space while installing for better diagnostic ``f3959d6``[**!**](https://github.com/neon-nyan/CollapseLauncher/commit/f3959d6f7ef5ae902050a6f9a196b642958e9989)
- **[Runtime]** Use path while downloading small files on repair ``8583675``[**!**](https://github.com/neon-nyan/CollapseLauncher/commit/8583675c3542afffd5fe1114a63b7ccb2dc12b7d)
- **[Runtime]** Show remote hash in log ``2e3edc8``[**!**](https://github.com/neon-nyan/CollapseLauncher/commit/2e3edc87ba54ff1ef2ffaece978338d5101f3520)
- **[Runtime]** Log current downloading file and use path instead to download ``7c4cfea``[**!**](https://github.com/neon-nyan/CollapseLauncher/commit/7c4cfeafeeddc01aad4239db788d9be10a884aee)
- **[Runtime]** Update and Use New NuGet packages
    - **Microsoft.Windows.SDK.BuildTools** (10.0.25211-preview -> **10.0.22621.755**)
    - **Google.Protobuf** (3.21.7 -> **3.21.9**)
    - **Microsoft.Win32.Registry** (**Removed**)

***

# What's Fixed?
- ### **[Launcher]** Fixed layout getting cut while Pre-load box is shown ``9a33544``[**!**](https://github.com/neon-nyan/CollapseLauncher/commit/9a33544b2dd81c7cce93862a91ad735e2747d078)

![image](https://user-images.githubusercontent.com/30566970/201099254-09e394d4-04cb-4341-bb93-6c4df50a263e.png)

- ### **[Runtime/Genshin Impact]** Fixed patching on Genshin skipped other file list in diff package ``1ce6e60``[**!**](https://github.com/neon-nyan/CollapseLauncher/commit/1ce6e6087cf4fdf0ce243e322f1eac5d74cd53f1)
- **[Launcher]** Fixed failing on install while the launcher found the registry key with empty value (Issue No: [**#46**](https://github.com/neon-nyan/CollapseLauncher/issues/46)) ``c4254d9``[**!**](https://github.com/neon-nyan/CollapseLauncher/commit/c4254d9b16d9cb9b7fc5a31a16629d3d6a1847c5)
- **[Launcher]** Fixed language not using fallback lang if API doesn't support it (Issue No: [**#51**](https://github.com/neon-nyan/CollapseLauncher/issues/51)) ``0a11800``[**!**](https://github.com/neon-nyan/CollapseLauncher/commit/0a118008e4656747c32573414d88be31237c76dd)
- **[Runtime]** Fixed crash if ``@NoExtraction`` file exist to skip extraction ``f6f157c``[**!**](https://github.com/neon-nyan/CollapseLauncher/commit/f6f157cf0727a0ecbaf387dcfca26ac6593d29c6)
- **[Runtime]** Fixed incorrect formatting in logger ``f820eec``[**!**](https://github.com/neon-nyan/CollapseLauncher/commit/f820eec525d6fa79bde6c83c9f27097c06cd6d96) ``39a7ac9``[**!**](https://github.com/neon-nyan/CollapseLauncher/commit/39a7ac90ac98cefba41190c77c7dca5a31a72d40)