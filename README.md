# **Painting Table**

**Craft custom Players Heads!**

A crafting station that allows you to craft custom player heads.  
A survival-friendly way to decorate your world with little blocks!

> [!WARNING]  
> **This presentation concerns the latest available version of the data pack for Minecraft 1.21.5 to 1.21.8.**  
> To find the most recent version, check the [main](https://github.com/KawaMood/painting_table) branch.  
> For other versions, check other [branches](https://github.com/KawaMood/painting_table/branches/all).

# 🪄Introduction

## What is Painting Table ?

Painting Table introduces a survival and multiplayer-friendly way to craft custom player heads, with any kind of textures. Players heads are appreciated to mimic custom small blocks, like small logs, small stones, food, animals, chests, pile of books, bags, etc.

## How to craft and use a painting table?

**Painting tables** can be crafted using:

- 2 **brushes**
- 2 **Planks** of any wood (oak, dark oak, spruce, bamboo, cherry, warped, etc.)

The recipe is the following:

![recipe](https://cdn.modrinth.com/data/cached_images/dbaedd81aa0e8545cc34f8a585ce81c28fb788f7.jpeg)

After you crafted it, you can simply place down your **painting table**.  
The block has its own UI that shows its requirements.

In order to craft custom **players heads**, the painting table except **blue**, **red** and **yellow dyes**, along with **blocks of quartz** that will be consumed as soon as you take the output items.

The last item to put is a **book** (either a writable or a written one), that won't be consumed.  
In this same book, you need to paste the value of the desired player heads textures.  
In this example below, I set a [a cake player head texture](https://minecraft-heads.com/custom-heads/head/51324-cake) in the writable book.

![gui](https://cdn.modrinth.com/data/cached_images/076cbb1554d44a2b742f11924d3d74b5683a8d5d.png)

You can find many players heads textures on the [minecraft-heads.com](https://minecraft-heads.com/) website. In the "Custom Heads" section, search for a head you like, and click on it to open its relative full page. Then, scroll to the `For developers` > `Value` field, and click the `Copy` button. Paste the result in your writable book in the game.

I recommend you to watch the [tutorial video](https://youtu.be/UMGJ37vp6tw) for more direct explanation and examples.

## Misc. information about painting tables

- **Painting tables** can be oriented depending on the player's facing direction. As the block uses display entities, I don't recommend to spam it so much. But you can use a few of them as decoration if you wish.
- Like for other crafting station, painting tables return input items the player set in it when it closes it.
- For technical reasons, you can't put a hopper, dropper, crafter adjenctly to a painting table, or a hopper minecart below it. These blocks will also be rotated automatically to not face it.

# 🧰 Other commands

<details>
<summary>Give yourself a painting table</summary>
  
If you are an operator of your server or if cheats are enabled in your single-player world, you can give yourself a painting table using these following commands:
```
/function pk_pa_ta:cmd/give/painting_table
```
</details>
<details>
<summary>Troubleshooting: Recreate all painting tables from the database</summary>

If ever painting tables have been broken accidentally (using a `kill @e` command for example) you can run the following command to recreate all painting tables from the database:

```
/function pk_pa_ta:cmd/recreate {feature:"painting_table"}
```

The process will automatically remove all remaining entities and blocks of broken painting tables before placing fresh ones. All data (id, owner, type, items, variant...) will be preserved.
It may take some time for it to complete, so be sure to get the message telling the process ended successfully before interacting with or placing a painting table.

</details>

# 🔧 Update from V.2

The data pack provides a process to convert all existing painting tables from **V.2** to **V.3**.  
In order to do so, follow the steps written below. _I would also advice you to create a backup of your world using V.2, in case another data pack / plugin / mod accidentally breaks the updating process._

1. Remove the Painting Table V.2 data pack from the `/datapacks/` folder of your world, **don't** uninstall V.2 upstream with the uninstall function, as you should keep its database.
2. Upgrade your world to the desired version of Minecraft if needed, if it isn't already done.
3. Install Painting Table V.3 by placing it in the `/datapacks/` forlder, then using `/reload` in game.
4. Use this following command: `/function pk_pa_ta:cmd/upgrade/from_v2` and wait for the updating process to end. If it managed to do so, you should get a message "Updated all painting tables from KawaMood's Painting Table (V.2) successfully".

**Note:** Old painting tables items from V.2 will automatically be replaced by their V.3 equivalent when you get them in your inventory. Expert mason will also lose their relative offer once you try to interact with them. The offer may still display in the available offers the first time you do it, but it is just a display issue from the game, you can't buy it.

# 🧹 Uninstall

Painting Table comes with an automatic uninstallation process. Running it will:

- Remove all painting tables that have been placed in your world, in every dimensions
- Remove all scores and storage specific to the Painting Table data pack
- If there is no more KawaMood data packs installed, also remove all common scores and storages

The uninstalling process may take some seconds to complete. Be sure to wait for the message telling you that you can safely remove the data pack from your world's folder before doing it.

The command to start the uninstalling process is the following one:

```
/function pk_pa_ta:cmd/uninstall
```

# ❓ F.A.Q

<details>
<summary>Do I need to install a resources pack?</summary>

No, this data pack doesn't involve any resources pack.

</details>
<details>
<summary>The texture of the item shows regular player heads, how can I fix that?</summary>

You need to be connected to the internet the first time you craft and place a painting table. The textures of the player heads that are used to create their looks are indeed loaded and cached on the client-side, from (old or current) players skins that are stored on a Mojang server.

If you accidentally used a content that required to be online the first time you use it, and now see regular players heads instead of the expected texture, you can still go in the ".minecraft/assets/skins/" folder, then sort the sub-folders by date, and delete some recent folders. Once that is done, if your game was already started, you will need to restart it to update the cached content.

</details>

# 🪠 Report an issue

If you encountered an issue with this data pack, preferably join the [Discord server](https://discord.com/invite/w8s9XWgN6v), and open a post in the dedicated **#data-pack-issues** channel to describe your problem. Please, don't forget to provide all necessary informations including:

- The Minecraft version you're using.
- The version of the concerned data pack you're using.
- If you're using any modified version like Forge, Paper or Spigot.
- If you do, the plugins or mods you're using that may alter the functioning of data packs.
- The list of other data packs you're using, if you have others.
- A clear description of your issue, and a way to reproduce it.
- If necessary, a video or a screenshot of the issue in game.

Before doing that, please read the F.A.Q. section just above. The issue you're facing may be a common one, and a way to fix it may already have been provided in it.

# 📌 Other links

Thank you for using Painting Table! It makes me happy to know people are enjoying it.
If you want to support its development and the development of other data packs, you can support me on my other social networks:

- [Youtube](https://www.youtube.com/@KawaMood/)
- [Planet Minecraft](https://www.planetminecraft.com/member/kawamood/)
- Or if you're in a generous mood, I accept donation on [paypal](https://paypal.me/KawaMood) or [buy me a kawa](https://www.buymeacoffee.com/kawamood) (slang term for "coffee")!
