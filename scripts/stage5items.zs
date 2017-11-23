import crafttweaker.item.IItemStack;

var ITEM_STAGE = "five";

//mods.ItemStages.addItemStage(String stage, Item/Block/OreDict);

var modIDs = [
	"compactmachines3",
	"enderutilities",
	"environmentaltech",
	"mysticalagradditions",
	"mysticalagriculture",
	"quantumstorage",
	"refinedstorage",
	"refinedstorageaddons",
	"rftools",
	"rftoolscontrol",
	"scannable"
] as string[];

for id in modIDs {
    for item in loadedMods[id].items {
        mods.ItemStages.addItemStage(ITEM_STAGE, item);
    }
}

var stage5Items = [
	<minecraft:diamond>,
	<minecraft:diamond_axe>,
	<minecraft:diamond_block>,
	<minecraft:diamond_boots>,
	<minecraft:diamond_chestplate>,
	<minecraft:diamond_helmet>,
	<minecraft:diamond_hoe>,
	<minecraft:diamond_leggings>,
	<minecraft:diamond_pickaxe>,
	<minecraft:diamond_shovel>,
	<minecraft:diamond_sword>,
	<minecraft:emerald>,
	<minecraft:emerald_block>,
	<prospectors:prospector_best>,
	<teslacorelib:gear_diamond>,

	//Ore 
	<abyssalcraft:abydiaore>,
	<minecraft:diamond_ore>,
	<minecraft:emerald_ore>,

	//Emerald
	<actuallyadditions:item_dust:3>,
	<advancedrocketry:crystal:2>,
	<extendedcrafting:material:129>,
	<extendedcrafting:trimmed:3>,
	<minecraft:emerald_ore>,
	<pickletweaks:emerald_apple>,
	<primal:emerald_axe>,
	<primal:emerald_hatchet>,
	<primal:emerald_hoe>,
	<primal:emerald_knapp>,
	<primal:emerald_pickaxe>,
	<primal:emerald_point>,
	<primal:emerald_saw>,
	<primal:emerald_shovel>,
	<primal:emerald_workblade>,

	//Actually Additions
	<actuallyadditions:block_atomic_reconstructor>,
	<actuallyadditions:block_breaker>,
	<actuallyadditions:block_colored_lamp:*>,
	<actuallyadditions:block_colored_lamp:1>,
	<actuallyadditions:block_colored_lamp>,
	<actuallyadditions:block_crystal:1>,
	<actuallyadditions:block_crystal:2>,
	<actuallyadditions:block_crystal:3>,
	<actuallyadditions:block_crystal:4>,
	<actuallyadditions:block_crystal:5>,
	<actuallyadditions:block_crystal>,
	<actuallyadditions:block_crystal_cluster_coal>,
	<actuallyadditions:block_crystal_cluster_diamond>,
	<actuallyadditions:block_crystal_cluster_emerald>,
	<actuallyadditions:block_crystal_cluster_iron>,
	<actuallyadditions:block_crystal_cluster_lapis>,
	<actuallyadditions:block_crystal_cluster_redstone>,
	<actuallyadditions:block_crystal_empowered:1>,
	<actuallyadditions:block_crystal_empowered:2>,
	<actuallyadditions:block_crystal_empowered:3>,
	<actuallyadditions:block_crystal_empowered:4>,
	<actuallyadditions:block_crystal_empowered:5>,
	<actuallyadditions:block_crystal_empowered>,
	<actuallyadditions:block_display_stand>,
	<actuallyadditions:block_dropper>,
	<actuallyadditions:block_empowerer>,
	<actuallyadditions:block_energizer>,
	<actuallyadditions:block_enervator>,
	<actuallyadditions:block_firework_box>,
	<actuallyadditions:block_fluid_collector>,
	<actuallyadditions:block_fluid_placer>,
	<actuallyadditions:block_inputter>,
	<actuallyadditions:block_inputter_advanced>,
	<actuallyadditions:block_item_repairer>,
	<actuallyadditions:block_item_viewer>,
	<actuallyadditions:block_lamp_powerer>,
	<actuallyadditions:block_laser_relay>,
	<actuallyadditions:block_laser_relay_advanced>,
	<actuallyadditions:block_laser_relay_extreme>,
	<actuallyadditions:block_laser_relay_fluids>,
	<actuallyadditions:block_laser_relay_item>,
	<actuallyadditions:block_laser_relay_item_whitelist>,
	<actuallyadditions:block_lava_factory_controller>,
	<actuallyadditions:block_leaf_generator>,
	<actuallyadditions:block_miner>,
	<actuallyadditions:block_phantom_booster>,
	<actuallyadditions:block_phantom_breaker>,
	<actuallyadditions:block_phantom_energyface>,
	<actuallyadditions:block_phantom_liquiface>,
	<actuallyadditions:block_phantom_placer>,
	<actuallyadditions:block_phantom_redstoneface>,
	<actuallyadditions:block_phantomface>,
	<actuallyadditions:block_placer>,
	<actuallyadditions:block_player_interface>,
	<actuallyadditions:block_ranged_collector>,
	<actuallyadditions:block_shock_suppressor>,
	<actuallyadditions:block_testifi_bucks_green_fence>,
	<actuallyadditions:block_testifi_bucks_green_slab>,
	<actuallyadditions:block_testifi_bucks_green_stairs>,
	<actuallyadditions:block_testifi_bucks_green_wall>,
	<actuallyadditions:block_testifi_bucks_white_fence>,
	<actuallyadditions:block_testifi_bucks_white_slab>,
	<actuallyadditions:block_testifi_bucks_white_stairs>,
	<actuallyadditions:block_testifi_bucks_white_wall>,
	<actuallyadditions:block_xp_solidifier>,
	<actuallyadditions:diamond_paxel>,
	<actuallyadditions:emerald_paxel>,
	<actuallyadditions:item_axe_crystal_black>,
	<actuallyadditions:item_axe_crystal_blue>,
	<actuallyadditions:item_axe_crystal_green>,
	<actuallyadditions:item_axe_crystal_light_blue>,
	<actuallyadditions:item_axe_crystal_red>,
	<actuallyadditions:item_axe_crystal_white>,
	<actuallyadditions:item_axe_emerald>,
	<actuallyadditions:item_boots_crystal_black>,
	<actuallyadditions:item_boots_crystal_blue>,
	<actuallyadditions:item_boots_crystal_green>,
	<actuallyadditions:item_boots_crystal_light_blue>,
	<actuallyadditions:item_boots_crystal_red>,
	<actuallyadditions:item_boots_crystal_white>,
	<actuallyadditions:item_boots_emerald>,
	<actuallyadditions:item_chest_crystal_black>,
	<actuallyadditions:item_chest_crystal_blue>,
	<actuallyadditions:item_chest_crystal_green>,
	<actuallyadditions:item_chest_crystal_light_blue>,
	<actuallyadditions:item_chest_crystal_red>,
	<actuallyadditions:item_chest_crystal_white>,
	<actuallyadditions:item_chest_emerald>,
	<actuallyadditions:item_color_lens>,
	<actuallyadditions:item_crystal:1>,
	<actuallyadditions:item_crystal:2>,
	<actuallyadditions:item_crystal:3>,
	<actuallyadditions:item_crystal:4>,
	<actuallyadditions:item_crystal:5>,
	<actuallyadditions:item_crystal>,
	<actuallyadditions:item_crystal_empowered:1>,
	<actuallyadditions:item_crystal_empowered:2>,
	<actuallyadditions:item_crystal_empowered:3>,
	<actuallyadditions:item_crystal_empowered:4>,
	<actuallyadditions:item_crystal_empowered:5>,
	<actuallyadditions:item_crystal_empowered>,
	<actuallyadditions:item_crystal_shard:1>,
	<actuallyadditions:item_crystal_shard:2>,
	<actuallyadditions:item_crystal_shard:3>,
	<actuallyadditions:item_crystal_shard:4>,
	<actuallyadditions:item_crystal_shard:5>,
	<actuallyadditions:item_crystal_shard>,
	<actuallyadditions:item_damage_lens>,
	<actuallyadditions:item_disenchanting_lens>,
	<actuallyadditions:item_dust:2>,
	<actuallyadditions:item_engineer_goggles>,
	<actuallyadditions:item_engineer_goggles_advanced>,
	<actuallyadditions:item_explosion_lens>,
	<actuallyadditions:item_filling_wand>,
	<actuallyadditions:item_filling_wand>,
	<actuallyadditions:item_helm_crystal_black>,
	<actuallyadditions:item_helm_crystal_blue>,
	<actuallyadditions:item_helm_crystal_green>,
	<actuallyadditions:item_helm_crystal_light_blue>,
	<actuallyadditions:item_helm_crystal_red>,
	<actuallyadditions:item_helm_crystal_white>,
	<actuallyadditions:item_helm_emerald>,
	<actuallyadditions:item_hoe_crystal_black>,
	<actuallyadditions:item_hoe_crystal_blue>,
	<actuallyadditions:item_hoe_crystal_green>,
	<actuallyadditions:item_hoe_crystal_light_blue>,
	<actuallyadditions:item_hoe_crystal_red>,
	<actuallyadditions:item_hoe_crystal_white>,
	<actuallyadditions:item_hoe_emerald>,
	<actuallyadditions:item_laser_upgrade_invisibility>,
	<actuallyadditions:item_laser_upgrade_range>,
	<actuallyadditions:item_leaf_blower_advanced>,
	<actuallyadditions:item_mining_lens>,
	<actuallyadditions:item_misc:18>,
	<actuallyadditions:item_misc:19>,
	<actuallyadditions:item_misc:23>,
	<actuallyadditions:item_misc:24>,
	<actuallyadditions:item_more_damage_lens>,
	<actuallyadditions:item_pants_crystal_black>,
	<actuallyadditions:item_pants_crystal_blue>,
	<actuallyadditions:item_pants_crystal_green>,
	<actuallyadditions:item_pants_crystal_light_blue>,
	<actuallyadditions:item_pants_crystal_red>,
	<actuallyadditions:item_pants_crystal_white>,
	<actuallyadditions:item_pants_emerald>,
	<actuallyadditions:item_paxel_crystal_black>,
	<actuallyadditions:item_paxel_crystal_blue>,
	<actuallyadditions:item_paxel_crystal_green>,
	<actuallyadditions:item_paxel_crystal_light_blue>,
	<actuallyadditions:item_paxel_crystal_red>,
	<actuallyadditions:item_paxel_crystal_white>,
	<actuallyadditions:item_phantom_connector>,
	<actuallyadditions:item_pickaxe_crystal_black>,
	<actuallyadditions:item_pickaxe_crystal_blue>,
	<actuallyadditions:item_pickaxe_crystal_green>,
	<actuallyadditions:item_pickaxe_crystal_light_blue>,
	<actuallyadditions:item_pickaxe_crystal_red>,
	<actuallyadditions:item_pickaxe_crystal_white>,
	<actuallyadditions:item_pickaxe_emerald>,
	<actuallyadditions:item_player_probe>,
	<actuallyadditions:item_potion_ring_advanced:*>,
	<actuallyadditions:item_shovel_crystal_black>,
	<actuallyadditions:item_shovel_crystal_blue>,
	<actuallyadditions:item_shovel_crystal_green>,
	<actuallyadditions:item_shovel_crystal_light_blue>,
	<actuallyadditions:item_shovel_crystal_red>,
	<actuallyadditions:item_shovel_crystal_white>,
	<actuallyadditions:item_shovel_emerald>,
	<actuallyadditions:item_spawner_changer>,
	<actuallyadditions:item_suction_ring>,
	<actuallyadditions:item_sword_crystal_black>,
	<actuallyadditions:item_sword_crystal_blue>,
	<actuallyadditions:item_sword_crystal_green>,
	<actuallyadditions:item_sword_crystal_light_blue>,
	<actuallyadditions:item_sword_crystal_red>,
	<actuallyadditions:item_sword_crystal_white>,
	<actuallyadditions:item_sword_emerald>,
	<actuallyadditions:item_tele_staff>,
	<actuallyadditions:item_water_removal_ring>,

	//Storage Drawers
	<storagedrawers:upgrade_storage:3>,
	<storagedrawers:upgrade_storage:4>,

	//Bedrock Miner 
	<bedrockores:bedrock_miner>,

	//Diamond Stuff
	<actuallyadditions:diamond_paxel>,
	<actuallyadditions:item_dust:2>,
	<betterbuilderswands:wanddiamond>,
	<betterwithaddons:diamond_carpentersaw>,
	<betterwithaddons:diamond_kukri>,
	<betterwithaddons:diamond_machete>,
	<betterwithaddons:diamond_masonpick>,
	<betterwithaddons:diamond_matchpick>,
	<betterwithaddons:diamond_spade>,
	<betterwithmods:material:45>,
	<betterwithmods:material:46>,
	<chiselsandbits:bitsaw_diamond>,
	<chiselsandbits:chisel_diamond>,
	<cyclicmagic:horse_upgrade_health>,
	<cyclicmagic:spikes_diamond>,
	<extendedcrafting:material:128>,
	<ironbackpacks:backpack>,
	<ironbackpacks:backpack>,
	<ironchest:iron_chest:2>,
	<jaff:diamond_fishing_rod>,
	<minecraft:diamond_horse_armor>,
	<pickletweaks:diamond_apple>,
	<pickletweaks:repair_kit:4>,
	<primal:diamond_axe>,
	<primal:diamond_hatchet>,
	<primal:diamond_hoe>,
	<primal:diamond_knapp>,
	<primal:diamond_pickaxe>,
	<primal:diamond_point>,
	<primal:diamond_saw>,
	<primal:diamond_shovel>,
	<primal:diamond_workblade>,
	<quantumstorage:chest_diamond>,
	<roots:diamond_hammer>,
	<roots:diamond_knife>,

	//Ender Storage
	<enderstorage:ender_pouch>,
	<enderstorage:ender_storage:1>,
	<enderstorage:ender_storage>,

	//Shulker Boxes
	<ironchest:copper_iron_shulker_upgrade>,
	<ironchest:copper_silver_shulker_upgrade>,
	<ironchest:diamond_crystal_shulker_upgrade>,
	<ironchest:diamond_obsidian_shulker_upgrade>,
	<ironchest:gold_diamond_shulker_upgrade>,
	<ironchest:iron_gold_shulker_upgrade>,
	<ironchest:iron_shulker_box_black:*>,
	<ironchest:iron_shulker_box_blue:*>,
	<ironchest:iron_shulker_box_brown:*>,
	<ironchest:iron_shulker_box_cyan:*>,
	<ironchest:iron_shulker_box_gray:*>,
	<ironchest:iron_shulker_box_green:*>,
	<ironchest:iron_shulker_box_light_blue:*>,
	<ironchest:iron_shulker_box_lime:*>,
	<ironchest:iron_shulker_box_magenta:*>,
	<ironchest:iron_shulker_box_orange:*>,
	<ironchest:iron_shulker_box_pink:*>,
	<ironchest:iron_shulker_box_purple:*>,
	<ironchest:iron_shulker_box_red:*>,
	<ironchest:iron_shulker_box_silver:*>,
	<ironchest:iron_shulker_box_white:*>,
	<ironchest:iron_shulker_box_yellow:*>,
	<ironchest:silver_gold_shulker_upgrade>,
	<ironchest:vanilla_copper_shulker_upgrade>,
	<ironchest:vanilla_iron_shulker_upgrade>,
	<minecraft:black_shulker_box:*>,
	<minecraft:blue_shulker_box:*>,
	<minecraft:brown_shulker_box:*>,
	<minecraft:cyan_shulker_box:*>,
	<minecraft:gray_shulker_box:*>,
	<minecraft:green_shulker_box:*>,
	<minecraft:light_blue_shulker_box:*>,
	<minecraft:lime_shulker_box:*>,
	<minecraft:magenta_shulker_box:*>,
	<minecraft:orange_shulker_box:*>,
	<minecraft:pink_shulker_box:*>,
	<minecraft:purple_shulker_box:*>,
	<minecraft:red_shulker_box:*>,
	<minecraft:shulker_shell>,
	<minecraft:silver_shulker_box:*>,
	<minecraft:white_shulker_box:*>,
	<minecraft:yellow_shulker_box:*>,

	//Mystical Aggriculture/Aggggggraditions
	<forge:bucketfilled>.withTag({FluidName: "base_essence", Amount: 1000}),
	<forge:bucketfilled>.withTag({FluidName: "inferium", Amount: 1000}),
	<forge:bucketfilled>.withTag({FluidName: "intermedium", Amount: 1000}),
	<forge:bucketfilled>.withTag({FluidName: "prudentium", Amount: 1000}),
	<forge:bucketfilled>.withTag({FluidName: "soulium", Amount: 1000}),
	<forge:bucketfilled>.withTag({FluidName: "superium", Amount: 1000}),
	<forge:bucketfilled>.withTag({FluidName: "supremium", Amount: 1000}),
	<mysticalagradditions:nether_star_crop>,
	<mysticalagradditions:nether_star_essence>,
	<mysticalagradditions:tier6_inferium_crop>,
	<mysticalagradditions:tinkering_table>,
	<mysticalagriculture:aluminum_brass_crop>,
	<mysticalagriculture:aluminum_crop>,
	<mysticalagriculture:aquamarine_crop>,
	<mysticalagriculture:ardite_crop>,
	<mysticalagriculture:basalt_crop>,
	<mysticalagriculture:black_quartz_crop>,
	<mysticalagriculture:blaze_crop>,
	<mysticalagriculture:certus_quartz_crop>,
	<mysticalagriculture:chicken_crop>,
	<mysticalagriculture:coal_crop>,
	<mysticalagriculture:cobalt_crop>,
	<mysticalagriculture:constantan_crop>,
	<mysticalagriculture:copper_crop>,
	<mysticalagriculture:cow_crop>,
	<mysticalagriculture:creeper_crop>,
	<mysticalagriculture:diamond_crop>,
	<mysticalagriculture:dirt_crop>,
	<mysticalagriculture:dye_crop>,
	<mysticalagriculture:electrum_crop>,
	<mysticalagriculture:emerald_crop>,
	<mysticalagriculture:end_crop>,
	<mysticalagriculture:ender_biotite_crop>,
	<mysticalagriculture:enderman_crop>,
	<mysticalagriculture:experience_crop>,
	<mysticalagriculture:fiery_ingot_crop>,
	<mysticalagriculture:fire_crop>,
	<mysticalagriculture:fluix_crop>,
	<mysticalagriculture:ghast_crop>,
	<mysticalagriculture:glowstone_crop>,
	<mysticalagriculture:gold_crop>,
	<mysticalagriculture:guardian_crop>,
	<mysticalagriculture:ice_crop>,
	<mysticalagriculture:iron_crop>,
	<mysticalagriculture:ironwood_crop>,
	<mysticalagriculture:knightmetal_crop>,
	<mysticalagriculture:knightslime_crop>,
	<mysticalagriculture:lapis_lazuli_crop>,
	<mysticalagriculture:lead_crop>,
	<mysticalagriculture:limestone_crop>,
	<mysticalagriculture:manyullyn_crop>,
	<mysticalagriculture:marble_crop>,
	<mysticalagriculture:nature_crop>,
	<mysticalagriculture:nether_crop>,
	<mysticalagriculture:nether_quartz_crop>,
	<mysticalagriculture:nickel_crop>,
	<mysticalagriculture:obsidian_crop>,
	<mysticalagriculture:pig_crop>,
	<mysticalagriculture:quartz_enriched_iron_crop>,
	<mysticalagriculture:rabbit_crop>,
	<mysticalagriculture:redstone_crop>,
	<mysticalagriculture:rock_crystal_crop>,
	<mysticalagriculture:sheep_crop>,
	<mysticalagriculture:silicon_crop>,
	<mysticalagriculture:silver_crop>,
	<mysticalagriculture:skeleton_crop>,
	<mysticalagriculture:sky_stone_crop>,
	<mysticalagriculture:slate_crop>,
	<mysticalagriculture:slime_crop>,
	<mysticalagriculture:spider_crop>,
	<mysticalagriculture:starmetal_crop>,
	<mysticalagriculture:steel_crop>,
	<mysticalagriculture:steeleaf_crop>,
	<mysticalagriculture:stone_crop>,
	<mysticalagriculture:tier1_inferium_crop>,
	<mysticalagriculture:tier2_inferium_crop>,
	<mysticalagriculture:tier3_inferium_crop>,
	<mysticalagriculture:tier4_inferium_crop>,
	<mysticalagriculture:tier5_inferium_crop>,
	<mysticalagriculture:uranium_crop>,
	<mysticalagriculture:water_crop>,
	<mysticalagriculture:wither_skeleton_crop>,
	<mysticalagriculture:wood_crop>,
	<mysticalagriculture:zombie_crop>,

	//End
	<betterwithmods:material:39>,
	<cyclicmagic:end_diamond_ore>,
	<minecraft:chorus_flower>,
	<minecraft:chorus_fruit>,
	<minecraft:chorus_fruit_popped>,
	<minecraft:chorus_plant>,
	<minecraft:dragon_breath>,
	<minecraft:dragon_egg>,
	<minecraft:elytra>,
	<minecraft:end_bricks>,
	<minecraft:end_crystal>,
	<minecraft:end_portal_frame>,
	<minecraft:end_rod>,
	<minecraft:end_stone>,
	<minecraft:purpur_block>,
	<minecraft:purpur_pillar>,
	<minecraft:purpur_slab>,
	<minecraft:skull:5>,
	<quark:biotite>,
	<quark:biotite_ore>,
	<quark:end_bricks_slab>,
	<quark:end_bricks_stairs>,
	<quark:end_bricks_wall>,

	//Chisel
	<chisel:chisel_diamond>,
	<chisel:chisel_hitech>,
	<chisel:diamond:*>,
	<chisel:emerald:*>,
	<chisel:endstone1:*>,
	<chisel:endstone2:*>,
	<chisel:endstone:*>,
	<chisel:purpur1:*>,
	<chisel:purpur2:*>,
	<chisel:purpur:*>,

	//Cyclic
	<cyclicmagic:apple_emerald>,
	<cyclicmagic:beacon_potion>,
	<cyclicmagic:book_ender>,
	<cyclicmagic:builder_pattern>,
	<cyclicmagic:charm_boat>,
	<cyclicmagic:crafting_food>,
	<cyclicmagic:ender_wool>,
	<cyclicmagic:glowing_chorus>,
	<cyclicmagic:heart_food>,
	<cyclicmagic:horse_upgrade_type>,
	<cyclicmagic:inventory_food>,
	<cyclicmagic:magic_net>,
	<cyclicmagic:password_remote>,
	<cyclicmagic:sword_ender>,
	<cyclicmagic:sword_slowness>,
	<cyclicmagic:sword_weakness>,
	<cyclicmagic:tool_elevate>,
	<cyclicmagic:tool_swap_match>,
	<cyclicmagic:tool_warp_home>,
	<cyclicmagic:tool_warp_spawn>,
	<cyclicmagic:water_spreader>,

	//Applied Energistics 2
	<appliedenergistics2:biometric_card>,
	<appliedenergistics2:cell_workbench>,
	<appliedenergistics2:certus_quartz_axe>,
	<appliedenergistics2:certus_quartz_cutting_knife>,
	<appliedenergistics2:certus_quartz_hoe>,
	<appliedenergistics2:certus_quartz_pickaxe>,
	<appliedenergistics2:certus_quartz_spade>,
	<appliedenergistics2:certus_quartz_sword>,
	<appliedenergistics2:certus_quartz_wrench>,
	<appliedenergistics2:charged_quartz_ore>,
	<appliedenergistics2:charged_staff>,
	<appliedenergistics2:charger>,
	<appliedenergistics2:chest>,
	<appliedenergistics2:chiseled_quartz_block>,
	<appliedenergistics2:chiseled_quartz_slab>,
	<appliedenergistics2:chiseled_quartz_stairs>,
	<appliedenergistics2:color_applicator>,
	<appliedenergistics2:condenser>,
	<appliedenergistics2:controller>,
	<appliedenergistics2:crafting_accelerator>,
	<appliedenergistics2:crafting_monitor>,
	<appliedenergistics2:crafting_storage_16k>,
	<appliedenergistics2:crafting_storage_1k>,
	<appliedenergistics2:crafting_storage_4k>,
	<appliedenergistics2:crafting_storage_64k>,
	<appliedenergistics2:crafting_unit>,
	<appliedenergistics2:crank>,
	<appliedenergistics2:creative_energy_cell>,
	<appliedenergistics2:creative_storage_cell>,
	<appliedenergistics2:crystal_seed:*>,
	<appliedenergistics2:dense_energy_cell>,
	<appliedenergistics2:dense_energy_cell>,
	<appliedenergistics2:drive>,
	<appliedenergistics2:encoded_pattern:*>,
	<appliedenergistics2:energy_acceptor>,
	<appliedenergistics2:energy_cell>,
	<appliedenergistics2:energy_cell>,
	<appliedenergistics2:entropy_manipulator>,
	<appliedenergistics2:fluix_block>,
	<appliedenergistics2:fluix_slab>,
	<appliedenergistics2:fluix_stairs>,
	<appliedenergistics2:grindstone>,
	<appliedenergistics2:inscriber>,
	<appliedenergistics2:interface>,
	<appliedenergistics2:io_port>,
	<appliedenergistics2:light_detector>,
	<appliedenergistics2:material:10>,
	<appliedenergistics2:material:11>,
	<appliedenergistics2:material:12>,
	<appliedenergistics2:material:13>,
	<appliedenergistics2:material:14>,
	<appliedenergistics2:material:15>,
	<appliedenergistics2:material:16>,
	<appliedenergistics2:material:17>,
	<appliedenergistics2:material:18>,
	<appliedenergistics2:material:19>,
	<appliedenergistics2:material:1>,
	<appliedenergistics2:material:20>,
	<appliedenergistics2:material:21>,
	<appliedenergistics2:material:22>,
	<appliedenergistics2:material:23>,
	<appliedenergistics2:material:24>,
	<appliedenergistics2:material:25>,
	<appliedenergistics2:material:26>,
	<appliedenergistics2:material:27>,
	<appliedenergistics2:material:28>,
	<appliedenergistics2:material:29>,
	<appliedenergistics2:material:2>,
	<appliedenergistics2:material:30>,
	<appliedenergistics2:material:31>,
	<appliedenergistics2:material:32>,
	<appliedenergistics2:material:33>,
	<appliedenergistics2:material:34>,
	<appliedenergistics2:material:35>,
	<appliedenergistics2:material:36>,
	<appliedenergistics2:material:37>,
	<appliedenergistics2:material:38>,
	<appliedenergistics2:material:39>,
	<appliedenergistics2:material:41>,
	<appliedenergistics2:material:42>,
	<appliedenergistics2:material:43>,
	<appliedenergistics2:material:44>,
	<appliedenergistics2:material:45>,
	<appliedenergistics2:material:47>,
	<appliedenergistics2:material:48>,
	<appliedenergistics2:material:52>,
	<appliedenergistics2:material:53>,
	<appliedenergistics2:material:5>,
	<appliedenergistics2:material:6>,
	<appliedenergistics2:material:7>,
	<appliedenergistics2:material:8>,
	<appliedenergistics2:material:9>,
	<appliedenergistics2:material>,
	<appliedenergistics2:matter_cannon>,
	<appliedenergistics2:memory_card>,
	<appliedenergistics2:molecular_assembler>,
	<appliedenergistics2:nether_quartz_axe>,
	<appliedenergistics2:nether_quartz_cutting_knife>,
	<appliedenergistics2:nether_quartz_hoe>,
	<appliedenergistics2:nether_quartz_pickaxe>,
	<appliedenergistics2:nether_quartz_spade>,
	<appliedenergistics2:nether_quartz_sword>,
	<appliedenergistics2:nether_quartz_wrench>,
	<appliedenergistics2:network_tool>,
	<appliedenergistics2:part:*>,
	<appliedenergistics2:portable_cell>,
	<appliedenergistics2:quantum_link>,
	<appliedenergistics2:quantum_ring>,
	<appliedenergistics2:quartz_block>,
	<appliedenergistics2:quartz_fixture>,
	<appliedenergistics2:quartz_glass>,
	<appliedenergistics2:quartz_growth_accelerator>,
	<appliedenergistics2:quartz_ore>,
	<appliedenergistics2:quartz_pillar>,
	<appliedenergistics2:quartz_pillar_slab>,
	<appliedenergistics2:quartz_pillar_stairs>,
	<appliedenergistics2:quartz_slab>,
	<appliedenergistics2:quartz_stairs>,
	<appliedenergistics2:quartz_vibrant_glass>,
	<appliedenergistics2:security_station>,
	<appliedenergistics2:sky_stone_block>,
	<appliedenergistics2:sky_stone_brick>,
	<appliedenergistics2:sky_stone_brick_slab>,
	<appliedenergistics2:sky_stone_brick_stairs>,
	<appliedenergistics2:sky_stone_slab>,
	<appliedenergistics2:sky_stone_small_brick>,
	<appliedenergistics2:sky_stone_small_brick_slab>,
	<appliedenergistics2:sky_stone_small_brick_stairs>,
	<appliedenergistics2:sky_stone_stairs>,
	<appliedenergistics2:smooth_sky_stone_block>,
	<appliedenergistics2:smooth_sky_stone_slab>,
	<appliedenergistics2:smooth_sky_stone_stairs>,
	<appliedenergistics2:spatial_io_port>,
	<appliedenergistics2:spatial_pylon>,
	<appliedenergistics2:spatial_storage_cell_128_cubed>,
	<appliedenergistics2:spatial_storage_cell_16_cubed>,
	<appliedenergistics2:spatial_storage_cell_2_cubed>,
	<appliedenergistics2:storage_cell_16k>,
	<appliedenergistics2:storage_cell_1k>,
	<appliedenergistics2:storage_cell_4k>,
	<appliedenergistics2:storage_cell_64k>,
	<appliedenergistics2:tiny_tnt>,
	<appliedenergistics2:vibration_chamber>,
	<appliedenergistics2:view_cell>,
	<appliedenergistics2:wireless_access_point>,
	<appliedenergistics2:wireless_terminal>,

	//Environmental Tech
	<environmentaltech:aethium:*>,
	<environmentaltech:erodium:*>,
	<environmentaltech:ionite:*>,
	<environmentaltech:kyronite:*>,
	<environmentaltech:laser_lens_colored:*>,
	<environmentaltech:litherite:*>,
	<environmentaltech:lonsdaleite:*>,
	<environmentaltech:pladium:*>,

	//Extended Crafting 
	<extendedcrafting:compressor>,
	<extendedcrafting:material:11>,
	<extendedcrafting:material:12>,
	<extendedcrafting:material:13>,
	<extendedcrafting:material:140>,
	<extendedcrafting:material:16>,
	<extendedcrafting:material:17>,
	<extendedcrafting:material:18>,
	<extendedcrafting:material:19>,
	<extendedcrafting:material:24>,
	<extendedcrafting:material:25>,
	<extendedcrafting:material:32>,
	<extendedcrafting:material:33>,
	<extendedcrafting:singularity:*>,
	<extendedcrafting:singularity_ultimate>,
	<extendedcrafting:storage:2>,
	<extendedcrafting:storage:3>,
	<extendedcrafting:table_elite>,
	<extendedcrafting:table_ultimate>
] as IItemStack[];

for item in stage5Items {
	mods.ItemStages.addItemStage(ITEM_STAGE, item);
}
