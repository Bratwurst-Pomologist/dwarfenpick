
minetest.register_tool(":dwarfen:pick", {
     description = "Dwarfen Pickaxe",
     inventory_image = "moreores_tool_mithrilpick.png^default_obsidian_shard.png",
      range = 8,
      groups = {not_in_creative_inventory = 0},
      tool_capabilities = {
        full_punch_interval = 0.1,
        max_drop_level = 3,
        groupcaps={cracky = {times={[1]=2.4, [2]=1.2, [3]=0.60}, uses=20, maxlevel=3},
		    },
		    damage_groups = {fleshy=5},
	      },
})

minetest.register_tool(":dwarfen:lavapick", {
    description = "Dwarfen Lava Pickaxe",
    inventory_image = "moreores_tool_mithrilpick.png^default_obsidian_shard.png",
    range = 8,
    groups = {not_in_creative_inventory = 0}
    tool_capabilities = {
        full_punch_interval = 0.1,
        max_drop_level = 3,
        groupcaps={cracky = {times={[1]=2.4, [2]=1.2, [3]=0.60}, uses=20, maxlevel=3},
		    },
		    damage_groups = {fleshy=5},
	      },
})


minetest.register_craft({
    output = ":dwarfen:pick",
    recipe = {
      {'moreores:mithril_ingot','moreores:mithril_ingot','moreores:mithril_ingot'},
      {'','default:obsidian_shard',''},
      {'','default:stick',''},
    }
})

minetest.register_craft({
    output = ":dwarfen:lavapick",
    recipe = {
      {'bucket:bucket_lava','bucket:bucket_lava','bucket:bucket_lava'},
      {'','default:stick',''},
      {'','default:stick',''},
    }
})

minetest.override_item("default:stone", {
    drop = {
        max_items = 1,
        items = {
            {items = {'default:stone'}, rarity = 1},
            {items = {'maptools:gold_coin'}, rarity = 1000}, -- 0.1% Wahrscheinlichkeit
        },
    },
})