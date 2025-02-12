
minetest.register_tool(":dwarfen:pick", {
     description = "Dwarfen Pickaxe",
     inventory_image = "moreores_tool_mithrilpick.png^default_obsidian_shard.png",
      range = 11,
      groups = {not_in_creative_inventory = 0},
      tool_capabilities = {
        full_punch_interval = 0.1,
        max_drop_level = 3,
        groupcaps = {
            unbreakable =   {times={[1] = 0, [2] = 0, [3] = 0}, uses = 0, maxlevel = 3},
            dig_immediate = {times={[1] = 0, [2] = 0, [3] = 0}, uses = 0, maxlevel = 3},
            fleshy =        {times={[1] = 0, [2] = 0, [3] = 0}, uses = 0, maxlevel = 3},
            choppy =        {times={[1] = 0, [2] = 0, [3] = 0}, uses = 0, maxlevel = 3},
            bendy =                {times={[1] = 0, [2] = 0, [3] = 0}, uses = 0, maxlevel = 3},
            cracky =        {times={[1] = 0, [2] = 0, [3] = 0}, uses = 0, maxlevel = 3},
            crumbly =        {times={[1] = 0, [2] = 0, [3] = 0}, uses = 0, maxlevel = 3},
            snappy =        {times={[1] = 0, [2] = 0, [3] = 0}, uses = 0, maxlevel = 3}
            },
            damage_groups = {fleshy = 1000}
}
})

minetest.register_tool(":dwarfen:lavapick", {
    description = "Dwarfen Lava Pickaxe",
    inventory_image = "moreores_tool_mithrilpick.png^default_obsidian_shard.png",
    range = 11,
    groups = {not_in_creative_inventory = 0},

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