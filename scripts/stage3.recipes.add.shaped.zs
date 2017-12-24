import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

var STAGE = STAGES.three;

/*
<item> : [
	[RECIPE1],
	[RECIPE2],
	[Recipe3],
	[etc...]
]

Put the normal recipe you make inside of the main array from the item (<betterwithaddons:bolt:1> : [])

<betterwithaddons:bolt:1> : [
	//You can do one recipe or as many recipes as you want
	[
		//IF LONG
		[<minecraft:vine>, <minecraft:vine>, <minecraft:vine>],
		[<minecraft:vine>, <betterwithaddons:spindle>, <minecraft:vine>],
		[<minecraft:vine>, <minecraft:vine>, <minecraft:vine>]
	],
	//IF SHORT
	[[<minecraft:reeds>, <minecraft:reeds>, null], [<minecraft:reeds>, <minecraft:reeds>, null]]
]
*/
var shapedRecipes = {
	<minecraft:enchanting_table> : [
		[[<minecraft:dye:4>, <minecraft:obsidian>, <minecraft:dye:4>], [<minecraft:obsidian>, <ore:book>, <minecraft:obsidian>], [<minecraft:dye:4>, <minecraft:obsidian>, <minecraft:dye:4>]]
	],
	<minecraft:piston> : [
		[[<ore:sidingWood>, <ore:sidingWood>, <ore:sidingWood>], [cobblestone, metals.iron.plate, cobblestone], [cobblestone, <minecraft:redstone>, cobblestone]]
	],
	<prospectors:prospector_med> : [
		[[null, <minecraft:redstone>, <ore:blockGlass>], [null, <minecraft:dye:4>, <minecraft:redstone>], [<minecraft:dye:4>, null, null]]
	],

	//Immersive Engineering
	<immersiveengineering:metal_decoration0:3> : [
		[
			[metals.iron.plate, metals.redstoneAlloy.plate, metals.iron.plate],
			[metals.redstoneAlloy.plate, <immersiveengineering:material:26>, metals.redstoneAlloy.plate],
			[metals.iron.plate, metals.redstoneAlloy.plate, metals.iron.plate]
		]
	],
	<immersiveengineering:tool:1> : [
		[[<ore:stickTreatedWood>, <tconstruct:knife_blade>.withTag({Material: "iron"})], [null, <ore:stickTreatedWood>]]
	],
	<immersiveengineering:tool>.withTag({multiblockInterdiction: ["IE:Assembler"]}) : [
		[[null, iron, str], [null, stick, iron], [stick, null, null]]
	],

	<immersiveengineering:metal_device0:5> : [
		[
			[plastic, <immersiveengineering:material:9>, plastic],
			[metals.steel.plate, <immersiveengineering:material:9>, metals.steel.plate],
			[<immersiveengineering:metal_device1:6>, <immersiveengineering:metal_device1:6>, <immersiveengineering:metal_device1:6>]
		]
	],

	<betterwithmods:rope>*3 : [
		[
			[<immersiveengineering:material:4>, <immersiveengineering:material:4>],
			[<immersiveengineering:material:4>, <immersiveengineering:material:4>],
			[<immersiveengineering:material:4>, <immersiveengineering:material:4>]
		]
	],

	//Embers Stage 3
	<embers:axe_aluminum> : [
		[[metals.aluminum.plate, metals.aluminum.plate, null], [metals.aluminum.plate, stick, null], [null, stick, null]]
	],
	<embers:axe_lead> : [
		[[metals.lead.plate, metals.lead.plate, null], [metals.lead.plate, stick, null], [null, stick, null]]
	],
	<embers:axe_nickel> : [
		[[metals.nickel.plate, metals.nickel.plate, null], [metals.nickel.plate, stick, null], [null, stick, null]]
	],
	<embers:axe_silver> : [
		[[metals.silver.plate, metals.silver.plate, null], [metals.silver.plate, stick, null], [null, stick, null]]
	],
	<embers:hoe_aluminum> : [
		[[metals.aluminum.plate, metals.aluminum.plate, null], [null, stick, null], [null, stick, null]]
	],
	<embers:hoe_lead> : [
		[[metals.lead.plate, metals.lead.plate, null], [null, stick, null], [null, stick, null]]
	],
	<embers:hoe_nickel> : [
		[[metals.nickel.plate, metals.nickel.plate, null], [null, stick, null], [null, stick, null]]
	],
	<embers:hoe_silver> : [
		[[metals.silver.plate, metals.silver.plate, null], [null, stick, null], [null, stick, null]]
	],
	<embers:pickaxe_aluminum> : [
		[[metals.aluminum.plate, metals.aluminum.plate, metals.aluminum.plate], [null, stick, null], [null, stick, null]]
	],
	<embers:pickaxe_lead> : [
		[[metals.lead.plate, metals.lead.plate, metals.lead.plate], [null, stick, null], [null, stick, null]]
	],
	<embers:pickaxe_nickel> : [
		[[metals.nickel.plate, metals.nickel.plate, metals.nickel.plate], [null, stick, null], [null, stick, null]]
	],
	<embers:pickaxe_silver> : [
		[[metals.silver.plate, metals.silver.plate, metals.silver.plate], [null, stick, null], [null, stick, null]]
	],
	<embers:shovel_aluminum> : [
		[[null, metals.aluminum.plate, null], [null, stick, null], [null, stick, null]]
	],
	<embers:shovel_lead> : [
		[[null, metals.lead.plate, null], [null, stick, null], [null, stick, null]]
	],
	<embers:shovel_nickel> : [
		[[null, metals.nickel.plate, null], [null, stick, null], [null, stick, null]]
	],
	<embers:shovel_silver> : [
		[[null, metals.silver.plate, null], [null, stick, null], [null, stick, null]]
	],
	<embers:sword_aluminum> : [
		[[null, metals.aluminum.plate, null], [null, metals.aluminum.plate, null], [null, stick, null]]
	],
	<embers:sword_lead> : [
		[[null, metals.lead.plate, null], [null, metals.lead.plate, null], [null, stick, null]]
	],
	<embers:sword_nickel> : [
		[[null, metals.nickel.plate, null], [null, metals.nickel.plate, null], [null, stick, null]]
	],
	<embers:sword_silver> : [
		[[null, metals.silver.plate, null], [null, metals.silver.plate, null], [null, stick, null]]
	],

	//Rails
	<minecraft:activator_rail> * 2 : [
		[
			[metals.iron.plate, plank, metals.iron.plate],
			[metals.iron.plate, <minecraft:redstone_torch>, metals.iron.plate],
			[metals.iron.plate, plank, metals.iron.plate]
		]
	],
	<minecraft:detector_rail> * 2 : [
		[
			[metals.iron.plate, <minecraft:redstone>, metals.iron.plate],
			[metals.iron.plate, <minecraft:light_weighted_pressure_plate>, metals.iron.plate],
			[metals.iron.plate, <minecraft:redstone>, metals.iron.plate]
		]
	],
	<minecraft:golden_rail> * 4 : [
		[[metals.gold.plate, <minecraft:redstone>, metals.gold.plate], [metals.gold.plate, plank, metals.gold.plate], [metals.gold.plate, <minecraft:redstone>, metals.gold.plate]]
	],
	<minecraft:rail> * 8 : [
		[[metals.iron.plate, plank, metals.iron.plate], [metals.iron.plate, plank, metals.iron.plate], [metals.iron.plate, plank, metals.iron.plate]]
	],
	<tconstruct:wood_rail> * 8 : [
		[[<ore:thinWood>, plank, <ore:thinWood>], [<ore:thinWood>, plank, <ore:thinWood>], [<ore:thinWood>, plank, <ore:thinWood>]]
	],

	//Storage Drawers
	<storagedrawers:compdrawers> : [
		[
			[metals.iron.plate, metals.platinum.plate, metals.iron.plate],
			[<minecraft:piston>, <ore:drawerTrim>, <minecraft:piston>],
			[metals.iron.plate, <astralsorcery:itemcraftingcomponent:1>, metals.iron.plate]
		]
	],
	<storagedrawers:controller> : [
		[
			[metals.platinum.plate, <nex:block_amethyst>, metals.platinum.plate],
			[<immersiveengineering:metal_decoration0:3>, <ore:drawerTrim>, <immersiveengineering:metal_decoration0:3>],
			[metals.platinum.plate, <astralsorcery:itemcraftingcomponent:1>, metals.platinum.plate]
		]
	],
	<storagedrawers:controllerslave> : [
		[
			[metals.platinum.plate, <ore:plateRedstoneAlloy>, metals.platinum.plate],
			[metals.iron.plate, <ore:drawerTrim>, metals.iron.plate],
			[metals.platinum.plate, <immersiveengineering:metal_decoration0:3>, metals.platinum.plate]
		]
	],
	<storagedrawers:upgrade_storage:2> : [
		[
			[<immersiveengineering:material>, <immersiveengineering:material>, <immersiveengineering:material>],
			[metals.gold.ingot, <storagedrawers:upgrade_template>, metals.gold.ingot],
			[<immersiveengineering:material>, <immersiveengineering:material>, <immersiveengineering:material>]
		]
	],

	//Natura
	<natura:netherrack_furnace> : [
		[[<minecraft:nether_brick>, <minecraft:nether_brick>, <minecraft:nether_brick>],
		[<minecraft:nether_brick>, <minecraft:furnace>, <minecraft:nether_brick>],
		[<minecraft:nether_brick>, <minecraft:blaze_powder>, <minecraft:nether_brick>]]
	],

	//Tinkers' Construct
	 <tconstruct:smeltery_controller> : [
		[
			[<tconstruct:materials>, <tconstruct:materials>, <tconstruct:materials>],
			[<tconstruct:materials>, <betterwithmods:material:27>, <tconstruct:materials>],
			[<tconstruct:materials>, <tconstruct:materials>, <tconstruct:materials>]
		]
	],
	 <tconstruct:seared_furnace_controller> : [
		[
			[<tconstruct:materials>, <tconstruct:materials>, <tconstruct:materials>],
			[<tconstruct:materials>, <betterwithmods:material:27>, <tconstruct:materials>],
			[<tconstruct:materials>, <minecraft:furnace>, <tconstruct:materials>]
		]
	],
	 <tconstruct:tinker_tank_controller> : [
		[
			[<tconstruct:materials>, <tconstruct:materials>, <tconstruct:materials>],
			[<tconstruct:materials>, <betterwithmods:material:27>, <tconstruct:materials>],
			[<tconstruct:materials>, <minecraft:bucket>, <tconstruct:materials>]
		]
	],

	//Steve's Carts
	<stevescarts:blockcartassembler> : [
		[
			[<minecraft:clock>, <extendedcrafting:material:8>, <immersiveengineering:material:27>],
			[<minecraft:glass>, <natura:netherrack_furnace>, <minecraft:glass>],
			[metals.lead.plate, <ironchest:iron_chest:1>, metals.lead.plate]
		]
	],

	<stevescarts:cartmodule> : [
		[
			[<minecraft:piston>, <minecraft:piston>, <minecraft:piston>],
			[metals.iron.plate, <natura:netherrack_furnace>, metals.iron.plate],
			[metals.iron.plate, metals.iron.plate, metals.iron.plate]
		]
	],
	<stevescarts:cartmodule:44> : [
		[
			[null, <minecraft:piston>, null],
			[metals.iron.plate, <minecraft:furnace>, metals.iron.plate],
			[null, metals.iron.plate, null]
		]
	],
	<stevescarts:cartmodule:91> : [
		[
			[metals.aluminum.plate, <minecraft:furnace>, metals.aluminum.plate],
			[metals.aluminum.plate, <natura:netherrack_furnace>, metals.aluminum.plate],
			[metals.aluminum.plate, <immersiveengineering:material:27>, metals.aluminum.plate]
		]
	],
	<stevescarts:modulecomponents:17> : [
		[
			[<ore:treeSapling>, <ore:treeSapling>, <ore:treeSapling>],
			[<ore:treeSapling>, <stevescarts:modulecomponents:16>, <ore:treeSapling>],
			[<ore:treeSapling>, <ore:treeSapling>, <ore:treeSapling>]
		]
	],
	<stevescarts:modulecomponents:16> : [
		[
			[<minecraft:redstone>, metals.aluminum.plate, <minecraft:redstone>],
			[<immersiveengineering:material:27>, metals.aluminum.plate, <immersiveengineering:material:27>],
			[<minecraft:redstone>, metals.aluminum.plate, <minecraft:redstone>]
		]
	],
	<stevescarts:modulecomponents:15> : [
		[
			[null, null, null],
			[metals.iron.rod, metals.iron.rod, <primal_tech:flint_edged_disc>],
			[null, null, null]
		]
	],
	<stevescarts:cartmodule:79> : [
		[
			[<stevescarts:modulecomponents:80>, <stevescarts:modulecomponents:80>, <stevescarts:modulecomponents:80>],
			[<stevescarts:modulecomponents:80>, metals.platinum.plate, <stevescarts:modulecomponents:80>],
			[null, <stevescarts:modulecomponents:17>, null]
		],
		[
			[<stevescarts:modulecomponents:22>, <stevescarts:modulecomponents:22>, <stevescarts:modulecomponents:22>],
			[<stevescarts:modulecomponents:22>, metals.iron.plate, <stevescarts:modulecomponents:22>],
			[null, <stevescarts:cartmodule:15>, null]
		]
	],
	<stevescarts:modulecomponents:59> : [
		[
			[metals.aluminum.plate, metals.aluminum.plate, metals.aluminum.plate],
			[<stevescarts:modulecomponents:22>, <minecraft:redstone>, <stevescarts:modulecomponents:22>],
			[metals.aluminum.plate, <stevescarts:modulecomponents:16>, metals.aluminum.plate]
		]
	],
	<stevescarts:blockdistributor> : [
		[
			[stone, <immersiveengineering:material:27>, stone],
			[<immersiveengineering:material:27>, <minecraft:redstone>, <immersiveengineering:material:27>],
			[stone, <immersiveengineering:material:27>, stone]
		]
	],
	<stevescarts:upgrade:10> : [
		[
			[metals.aluminum.plate, <minecraft:rail>, metals.aluminum.plate],
			[<immersiveengineering:material:27>, metals.iron.plate, <immersiveengineering:material:27>],
			[metals.aluminum.plate, <stevescarts:modulecomponents:59>, metals.aluminum.plate]
		]
	],
	<stevescarts:upgrade:12> : [
		[
			[<minecraft:piston>, <minecraft:rail>, <minecraft:piston>],
			[<immersiveengineering:material:27>, metals.aluminum.plate, <immersiveengineering:material:27>],
			[metals.aluminum.plate, <stevescarts:modulecomponents:59>, metals.aluminum.plate]
		]
	],
	<stevescarts:upgrade:17> : [
		[
			[metals.aluminum.plate, <minecraft:ender_pearl>, metals.aluminum.plate],
			[<immersiveengineering:material:27>, <stevescarts:blockdistributor>, <immersiveengineering:material:27>],
			[metals.aluminum.plate, <stevescarts:modulecomponents:59>, metals.aluminum.plate]
		]
	],
	<stevescarts:upgrade:13> : [
		[
			[<immersiveengineering:material:27>, <minecraft:repeater>, <immersiveengineering:material:27>],
			[<minecraft:redstone>, <stevescarts:modulecomponents:16>, <minecraft:redstone>],
			[<minecraft:redstone>, <stevescarts:modulecomponents:59>, <minecraft:redstone>]
		]
	],
	<stevescarts:upgrade:7> : [
		[
			[null, <immersiveengineering:material:27>, null],
			[<minecraft:piston>, <natura:netherrack_furnace>, <minecraft:piston>],
			[metals.aluminum.plate, <stevescarts:modulecomponents:59>, metals.aluminum.plate]
		]
	],
	<stevescarts:upgrade:9> : [
		[
			[null, <immersiveengineering:material:27>, null],
			[<stevescarts:modulecomponents:16>, <minecraft:redstone>, <stevescarts:modulecomponents:16>],
			[<stevescarts:modulecomponents:22>, <stevescarts:modulecomponents:59>, <stevescarts:modulecomponents:22>]
		]
	],
	<stevescarts:upgrade:11> : [
		[
			[metals.aluminum.plate, null, metals.aluminum.plate],
			[<stevescarts:modulecomponents:16>, <minecraft:anvil>, <stevescarts:modulecomponents:16>],
			[metals.aluminum.plate, <stevescarts:modulecomponents:59>, metals.aluminum.plate]
		]
	],
	<stevescarts:upgrade:6> : [
		[
			[null, <minecraft:piston>, null],
			[<immersiveengineering:material:27>, <minecraft:fence>, <immersiveengineering:material:27>],
			[null, <stevescarts:modulecomponents:59>, null]
		]
	],
	<stevescarts:blockdetector:1> : [
		[
			[cobblestone, <minecraft:stone_pressure_plate>, cobblestone],
			[metals.aluminum.plate, <immersiveengineering:material:27>, metals.aluminum.plate],
			[cobblestone, <minecraft:redstone>, cobblestone]
		]
	],
	<stevescarts:blockdetector> : [
		[
			[null, <immersiveengineering:material:27>, null],
			[null, <stevescarts:blockdetector:1>, null],
			[null, null, null]
		]
	],
	<stevescarts:blockdetector:2> : [
		[
			[metals.aluminum.plate, metals.iron.plate, metals.aluminum.plate],
			[null, <stevescarts:blockdetector:1>, null],
			[null, <immersiveengineering:material:27>, null]
		]
	],
	<stevescarts:cartmodule:14> : [
		[
			[metals.platinum.plate, metals.platinum.plate, metals.platinum.plate],
			[null, metals.aluminum.plate, null],
			[<immersiveengineering:material:27>, metals.gold.plate, <immersiveengineering:material:27>]
		]
	],
	<stevescarts:cartmodule:84> : [
		[
			[<stevescarts:modulecomponents:47>, <stevescarts:modulecomponents:47>, <stevescarts:modulecomponents:47>],
			[null, <stevescarts:modulecomponents:22>, null],
			[<stevescarts:modulecomponents:16>, metals.gold.plate, <stevescarts:modulecomponents:16>]
		],
		[
			[<stevescarts:modulecomponents:47>, <stevescarts:modulecomponents:47>, <stevescarts:modulecomponents:47>],
			[null, <stevescarts:cartmodule:14>, null],
			[null, <immersiveengineering:material:27>, null]
		]
	],
	<stevescarts:cartmodule:18> : [
		[
			[<actuallyadditions:item_fertilizer>, null, <actuallyadditions:item_fertilizer>],
			[<buildcraftfactory:tank>, <minecraft:leather>, <buildcraftfactory:tank>],
			[<minecraft:leather>,<immersiveengineering:material:27>, <minecraft:leather>]
		]
	],
	<stevescarts:cartmodule:85> : [
		[
			[<stevescarts:modulecomponents:84>, null, <stevescarts:modulecomponents:84>],
			[null, <immersiveengineering:material:27>, null],
			[<stevescarts:modulecomponents:84>, null, <stevescarts:modulecomponents:84>]
		]
	],
	<stevescarts:cartmodule:86> : [
		[
			[<minecraft:wheat>, <minecraft:wheat>, <minecraft:wheat>],
			[<immersiveengineering:material:27>, <minecraft:bucket>, <immersiveengineering:material:27>],
			[null, <immersiveengineering:material:27>, null]
		]
	],
	<stevescarts:cartmodule:57> : [
		[
			[<minecraft:fence>, <minecraft:fence>, <minecraft:fence>],
			[<minecraft:fence>, <immersiveengineering:material:27>, <minecraft:fence>],
			[<minecraft:fence>, <minecraft:fence>, <minecraft:fence>]
		]
	],
	<stevescarts:cartmodule:12> : [
		[
			[null, <minecraft:redstone>, null],
			[<minecraft:brick_block>, <immersiveengineering:material:27>, <minecraft:brick_block>],
			[null, <minecraft:piston>, null]
		]
	],
	<stevescarts:modulecomponents:10> : [
		[
			[metals.gold.plate, metals.platinum.plate, metals.gold.plate],
			[<minecraft:glass_pane>, <immersiveengineering:material:27>, <minecraft:glass_pane>],
			[<minecraft:redstone>, <minecraft:glass_pane>, <minecraft:redstone>]
		]
	],
	<stevescarts:modulecomponents:39> : [
		[
			[<stevescarts:modulecomponents:37>, <stevescarts:modulecomponents:37>, <stevescarts:modulecomponents:37>],
			[<stevescarts:modulecomponents:37>, <immersiveengineering:material:27>, <stevescarts:modulecomponents:37>],
			[<stevescarts:modulecomponents:37>, <stevescarts:modulecomponents:37>, <stevescarts:modulecomponents:37>]
		]
	],
	<stevescarts:modulecomponents:26> : [
		[
			[metals.gold.plate, <immersiveengineering:material:27>, metals.gold.plate],
			[<minecraft:redstone>, <stevescarts:modulecomponents:16>, <minecraft:redstone>],
			[<minecraft:redstone>, null, <minecraft:redstone>]
		]
	],
	<stevescarts:modulecomponents:18> : [
		[
			[<minecraft:obsidian>, null, <minecraft:obsidian>],
			[null, metals.platinum.plate, null],
			[<minecraft:obsidian>, null, <minecraft:obsidian>]
		]
	],
	<stevescarts:modulecomponents:11> : [
		[
			[null, null, metals.blackIron.rod],
			[null, metals.blackIron.rod, null],
			[metals.blackIron.rod, null, null]
		]
	],
	<stevescarts:modulecomponents:28> : [
		[
			[null, <minecraft:redstone>, null],
			[null, <immersiveengineering:material:27>, null],
			[null, null, null]
		]
	],
	<stevescarts:modulecomponents:27> : [
		[
			[metals.aluminum.plate, <minecraft:redstone>, metals.aluminum.plate],
			[metals.aluminum.plate, <immersiveengineering:material:27>, metals.aluminum.plate],
			[metals.aluminum.plate, metals.aluminum.plate, metals.aluminum.plate]
		]
	],
	<stevescarts:modulecomponents:25> : [
		[
			[<minecraft:redstone>, <minecraft:redstone>, <minecraft:redstone>],
			[<minecraft:redstone>, metals.gold.plate, <minecraft:redstone>],
			[<minecraft:dispenser>, <immersiveengineering:material:27>, <minecraft:dispenser>]
		]
	],
	<stevescarts:cartmodule:99> : [
		[
			[null, <minecraft:cake>, null],
			[<ore:slabWood>, <ore:slabWood>, <ore:slabWood>],
			[null, <immersiveengineering:material:27>, null]
		]
	],
	<stevescarts:cartmodule:87> : [
		[
			[null, <immersiveengineering:material:27>, null],
			[null, <extendedcrafting:table_basic>, null],
			[null, null, null]
		]
	],
	<stevescarts:cartmodule:92> : [
		[
			[null, <minecraft:cake>, null],
			[null, <stevescarts:modulecomponents:16>, null],
			[<immersiveengineering:material:27>, <stevescarts:cartmodule:87>, <immersiveengineering:material:27>]
		]
	],
	<stevescarts:cartmodule:23> : [
		[
			[null, metals.lead.plate, null],
			[null, <stevescarts:modulecomponents:28>, null],
			[null, null, null]
		]
	],
	<stevescarts:cartmodule:78> : [
		[
			[null, <minecraft:glass_pane>, null],
			[plank, <immersiveengineering:material:27>, plank],
			[<minecraft:redstone>, plank, <minecraft:redstone>]
		]
	],
	<stevescarts:upgrade:1> : [
		[
			[metals.platinum.gear, <minecraft:glowstone>, metals.platinum.gear],
			[<minecraft:glowstone>, <embers:block_dawnstone>, <minecraft:glowstone>],
			[metals.platinum.gear, <stevescarts:upgrade>, metals.platinum.gear]
		]
	],
	<stevescarts:upgrade:16> : [
		[
			[<stevescarts:modulecomponents:45>, <stevescarts:modulecomponents:22>, null],
			[metals.platinum.plates, <minecraft:lapis_block>, metals.platinum.plates],
			[null, <stevescarts:upgrade:15>, <stevescarts:modulecomponents:45>]
		]
	],
	<stevescarts:cartmodule:22> : [

			[[null, <nex:item_crystal_amethyst>, null],
			[<minecraft:glowstone>, <stevescarts:modulecomponents:28>, <minecraft:glowstone>],
			[null, null, null]
		]
	],
	<stevescarts:cartmodule:93> : [
		[
			[null, metals.platinum.plate, null],
			[null, <stevescarts:modulecomponents:16>, null],
			[<immersiveengineering:material:27>, <stevescarts:cartmodule:91>, <immersiveengineering:material:27>]
		]
	],
	<stevescarts:cartmodule:19> : [
		[
			[null, <minecraft:compass>, null],
			[<minecraft:paper>, <immersiveengineering:material:27>, <minecraft:paper>],
			[<minecraft:paper>, <minecraft:paper>, <minecraft:paper>]
		]
	],
	<stevescarts:cartmodule:49> : [
		[
			[null, <minecraft:ender_pearl>, null],
			[<immersiveengineering:material:27>, metals.iron.plate, <immersiveengineering:material:27>],
			[<stevescarts:modulecomponents:22>, <stevescarts:modulecomponents:16>, <stevescarts:modulecomponents:22>]
		]
	],
	<stevescarts:cartmodule:59> : [
		[
			[<ore:fenceWood>, <minecraft:dispenser>, <ore:fenceWood>],
			[<minecraft:crafting_table>, <stevescarts:modulecomponents:43>, <minecraft:crafting_table>],
			[<immersiveengineering:material:27>, <minecraft:flint_and_steel>, <immersiveengineering:material:27>]
		]
	],
	<stevescarts:cartmodule:89> : [
		[
			[<minecraft:redstone>, <stevescarts:modulecomponents:16>, <minecraft:redstone>],
			[null, <ore:treeSapling>, null],
			[<immersiveengineering:material:27>, <ore:treeSapling>, <immersiveengineering:material:27>]
		]
	],
	<stevescarts:cartmodule:94> : [
		[
			[<minecraft:glass_pane>, <minecraft:glass_pane>, <minecraft:glass_pane>],
			[metals.iron.plate, <minecraft:glowstone_dust>, metals.iron.plate],
			[<immersiveengineering:material:27>, <minecraft:sign>, <immersiveengineering:material:27>]
		]
	],
	<stevescarts:cartmodule:95> : [
		[
			[null, <minecraft:redstone>, null],
			[<minecraft:glowstone_dust>, metals.platinum.plate, <minecraft:glowstone_dust>],
			[<immersiveengineering:material:27>, <minecraft:cauldron>, <immersiveengineering:material:27>]
		]
	],
	<stevescarts:cartmodule:101> : [
		[
			[null, <stevescarts:cartmodule:41>, null],
			[null, <immersiveengineering:material:27>, null],
			[null, null, null]
		]
	],
	<stevescarts:blockdetector:3> : [
		[
			[<minecraft:redstone>, <minecraft:redstone>, <minecraft:redstone>],
			[<minecraft:redstone>, <stevescarts:blockdetector>, <minecraft:redstone>],
			[null, <immersiveengineering:material:27>, null]
		]
	],
	<stevescarts:modulecomponents:43> * 12 : [
		[
			[null, null, <minecraft:string>],
			[null, <minecraft:string>, null],
			[<minecraft:string>, null, null]
		]
	],
	<stevescarts:cartmodule:15> : [
		[
			[<stevescarts:modulecomponents:15>, <stevescarts:modulecomponents:15>, <stevescarts:modulecomponents:15>],
			[<stevescarts:modulecomponents:15>, <immersiveengineering:material:27>, <stevescarts:modulecomponents:15>],
			[null, <stevescarts:modulecomponents:17>, null]
		]
	],
	<stevescarts:cartmodule:80> : [
		[
			[<stevescarts:modulecomponents:81>, <stevescarts:modulecomponents:81>, <stevescarts:modulecomponents:81>],
			[<stevescarts:modulecomponents:81>, <stevescarts:modulecomponents:22>, <stevescarts:modulecomponents:81>],
			[null, <stevescarts:modulecomponents:17>, null]
		],
		[
			[<stevescarts:modulecomponents:47>, <stevescarts:modulecomponents:47>, <stevescarts:modulecomponents:47>],
			[<stevescarts:modulecomponents:47>, metals.iron.plate, <stevescarts:modulecomponents:47>],
			[null, <stevescarts:cartmodule:79>, null]
		]
	],
	<stevescarts:blockadvdetector> * 2: [
		[
			[metals.iron.plate, <minecraft:stone_pressure_plate>, metals.iron.plate],
			[metals.iron.plate, <minecraft:redstone>, metals.iron.plate],
			[metals.iron.plate, <minecraft:stone_pressure_plate>, metals.iron.plate]
		]
	],
	<stevescarts:modulecomponents:42> * 2: [
		[
			[<ore:dyeOrange>, metals.iron.plate, <ore:dyeOrange>],
			[<ore:dyeOrange>, metals.iron.plate, <ore:dyeOrange>],
			[<ore:dyeOrange>, metals.iron.plate, <ore:dyeOrange>]
		]
	],
	<stevescarts:modulecomponents:65> * 2: [
		[
			[<ore:dyeGreen>, metals.iron.plate, <ore:dyeGreen>],
			[<ore:dyeGreen>, metals.iron.plate, <ore:dyeGreen>],
			[<ore:dyeGreen>, metals.iron.plate, <ore:dyeGreen>]
		]
	],
	<stevescarts:modulecomponents:30> * 32 : [
		[
			[plank, plank, plank],
			[log, plank, log],
			[plank, plank, plank]
		]
	],
	<stevescarts:modulecomponents:34> * 8 : [
		[
			[<stevescarts:modulecomponents:30>, <stevescarts:modulecomponents:30>, <stevescarts:modulecomponents:30>],
			[<stevescarts:modulecomponents:30>, metals.iron.plate, <stevescarts:modulecomponents:30>],
			[<stevescarts:modulecomponents:30>, <stevescarts:modulecomponents:30>, <stevescarts:modulecomponents:30>]
		]
	],
	<stevescarts:modulecomponents:61> * 32 : [
		[
			[<minecraft:glass_pane>, <minecraft:glass_pane>, <minecraft:glass_pane>],
			[<minecraft:glass>, <minecraft:glass_pane>, <minecraft:glass>],
			[<minecraft:glass_pane>, <minecraft:glass_pane>, <minecraft:glass_pane>]
		]
	],
	<stevescarts:modulecomponents:33> * 8 : [
		[
			[null, metals.iron.plate, null],
			[null, <ore:stone>, null],
			[null, null, null]
		]
	],
	<stevescarts:modulecomponents:60> * 8 : [
		[
			[null, metals.iron.plate, null],
			[metals.iron.plate, <minecraft:iron_bars>, metals.iron.plate],
			[null, metals.iron.plate, null]
		]
	],
	<stevescarts:modulecomponents:83> * 4 : [
		[
			[null, <tconstruct:knife_blade>.withTag({Material: "iron"}), null],
			[metals.iron.rod, metals.iron.plate, metals.iron.rod],
			[null, metals.iron.rod, null]
		]
	],
	<stevescarts:cartmodule:42> : [
		[
			[metals.iron.plate, metals.iron.plate, null],
			[metals.iron.plate, metals.iron.plate, <immersiveengineering:drillhead:1>],
			[metals.iron.plate, metals.iron.plate, null]
		]
	],
	<stevescarts:cartmodule:8> : [
		[
			[metals.steel.plate, metals.steel.plate, null],
			[metals.steel.plate, metals.steel.plate, <stevescarts:cartmodule:42>],
			[metals.steel.plate, metals.steel.plate, null]
		]
	],
	<stevescarts:cartmodule:43> : [
		[
			[<stevescarts:modulecomponents:22>, <stevescarts:modulecomponents:22>, null],
			[metals.platinum.plate, <stevescarts:modulecomponents:22>, <stevescarts:cartmodule:8>],
			[<stevescarts:modulecomponents:22>, <stevescarts:modulecomponents:22>, null]
		]
	],
	<stevescarts:cartmodule:9> : [
		[
			[<stevescarts:modulecomponents:47>, <stevescarts:modulecomponents:49>, null],
			[metals.platinum.plate, <stevescarts:modulecomponents:49>, <stevescarts:cartmodule:43>],
			[<stevescarts:modulecomponents:47>, <stevescarts:modulecomponents:49>, null]
		]
	],
	<stevescarts:blockliquidmanager> : [
		[
			[<stevescarts:cartmodule:66>, metals.aluminum.plate, <stevescarts:cartmodule:66>],
			[metals.aluminum.plate, null, metals.aluminum.plate],
			[<stevescarts:cartmodule:66>, metals.aluminum.plate, <stevescarts:cartmodule:66>]
		]
	],

	//Modular Machinery
	<modularmachinery:blockcontroller> : [
		[
			[metals.modularium.plate, <immersiveengineering:drillhead>, metals.modularium.plate],
			[metals.redstoneAlloy.gear, <modularmachinery:blockcasing>, <immersiveengineering:drillhead>],
			[metals.modularium.plate, <immersiveengineering:drillhead>, metals.modularium.plate]
		]
	],
	<modularmachinery:blockcasing>*2 : [
		[
			[metals.modularium.plate, metals.modularium.plate, metals.modularium.plate],
			[metals.modularium.plate, null, metals.modularium.plate],
			[metals.modularium.plate, metals.modularium.plate, metals.modularium.plate]
		]
	],
	<modularmachinery:blockcasing:1>*2 : [
		[
			[metals.modularium.plate, <minecraft:iron_bars>, metals.modularium.plate],
			[<minecraft:iron_bars>, null, <minecraft:iron_bars>],
			[metals.modularium.plate, <minecraft:iron_bars>, metals.modularium.plate]
		]
	],
	<modularmachinery:blockoutputbus:1> : [
		[
			[metals.modularium.plate, <uppers:upper>, metals.modularium.plate],
			[null, <modularmachinery:blockcasing>, null],
			[metals.modularium.plate, null, metals.modularium.plate]
		]
	],
	<modularmachinery:blockinputbus:1> : [
		[
			[metals.modularium.plate, <minecraft:hopper>, metals.modularium.plate],
			[null, <modularmachinery:blockcasing>, null],
			[metals.modularium.plate, null, metals.modularium.plate]
		]
	],
	<modularmachinery:blockfluidinputhatch> : [
		[
			[metals.modularium.plate, <minecraft:hopper>, metals.modularium.plate],
			[null, <immersiveengineering:metal_device0:4>, null],
			[metals.modularium.plate, <immersiveengineering:metal_device0:4>, metals.modularium.plate]
		]
	],
	<modularmachinery:blockenergyinputhatch> : [
		[
			[metals.modularium.plate, <immersiveengineering:wirecoil>, metals.modularium.plate],
			[<immersiveengineering:wirecoil>, <immersiveengineering:metal_decoration0:3>, <immersiveengineering:wirecoil>],
			[metals.modularium.plate, <immersiveengineering:wirecoil>, metals.modularium.plate]
		]
	],

	//Viescraft
	<vc:upgrades/upgrade_airship_core:1> : [
		[
			[<vc:item_logic_chip>, <vc:upgrades/upgrade_airship_core>, <vc:item_logic_chip>],
			[<vc:upgrades/upgrade_airship_core>, <stevescarts:cartmodule>, <vc:upgrades/upgrade_airship_core>],
			[<vc:item_logic_chip>, <vc:upgrades/upgrade_airship_core>, <vc:item_logic_chip>]
		]
	],
	<vc:upgrades/upgrade_airship_core:2> : [
		[
			[<vc:item_logic_chip>, <vc:upgrades/upgrade_airship_core>, <vc:item_logic_chip>],
			[<vc:upgrades/upgrade_airship_core>, <vc:upgrades/upgrade_airship_core:1>.giveBack(), <vc:upgrades/upgrade_airship_core>],
			[<vc:item_logic_chip>, <vc:upgrades/upgrade_airship_core>, <vc:item_logic_chip>]
		]
	],
	<vc:upgrades/upgrade_airship_core:3> : [
		[
			[<vc:item_logic_chip>, <vc:upgrades/upgrade_airship_core>, <vc:item_logic_chip>],
			[<vc:upgrades/upgrade_airship_core>, <vc:upgrades/upgrade_airship_core:2>.giveBack(), <vc:upgrades/upgrade_airship_core>],
			[<vc:item_logic_chip>, <vc:upgrades/upgrade_airship_core>, <vc:item_logic_chip>]
		]
	],
	<vc:upgrades/upgrade_airship_core:4> : [
		[
			[<vc:item_logic_chip>, <vc:upgrades/upgrade_airship_core>, <vc:item_logic_chip>],
			[<vc:upgrades/upgrade_airship_core>, <vc:upgrades/upgrade_airship_core:3>.giveBack(), <vc:upgrades/upgrade_airship_core>],
			[<vc:item_logic_chip>, <vc:upgrades/upgrade_airship_core>, <vc:item_logic_chip>]
		]
	],
	<vc:upgrades/upgrade_airship_core:5> : [
		[
			[<vc:item_logic_chip>, <vc:upgrades/upgrade_airship_core>, <vc:item_logic_chip>],
			[<vc:upgrades/upgrade_airship_core>, <vc:upgrades/upgrade_airship_core:4>.giveBack(), <vc:upgrades/upgrade_airship_core>],
			[<vc:item_logic_chip>, <vc:upgrades/upgrade_airship_core>, <vc:item_logic_chip>]
		]
	],
	<vc:upgrades/upgrade_airship_frame:1> : [
		[
			[<vc:item_logic_chip>, <vc:upgrades/upgrade_airship_core>, <vc:item_logic_chip>],
			[<vc:upgrades/upgrade_airship_core>, <vc:airship_frame>, <vc:upgrades/upgrade_airship_core>],
			[<vc:item_logic_chip>, <vc:upgrades/upgrade_airship_core>, <vc:item_logic_chip>]
		]
	],
	<vc:upgrades/upgrade_airship_frame:2> : [
		[
			[<vc:item_logic_chip>, <vc:upgrades/upgrade_airship_core>, <vc:item_logic_chip>],
			[<vc:upgrades/upgrade_airship_core>, <vc:upgrades/upgrade_airship_frame:1>.giveBack(), <vc:upgrades/upgrade_airship_core>],
			[<vc:item_logic_chip>, <vc:upgrades/upgrade_airship_core>, <vc:item_logic_chip>]
		]
	],
	<vc:upgrades/upgrade_airship_frame:3> : [
		[
			[<vc:item_logic_chip>, <vc:upgrades/upgrade_airship_core>, <vc:item_logic_chip>],
			[<vc:upgrades/upgrade_airship_core>, <vc:upgrades/upgrade_airship_frame:2>.giveBack(), <vc:upgrades/upgrade_airship_core>],
			[<vc:item_logic_chip>, <vc:upgrades/upgrade_airship_core>, <vc:item_logic_chip>]
		]
	],
	<vc:upgrades/upgrade_airship_frame:4> : [
		[
			[<vc:item_logic_chip>, <vc:upgrades/upgrade_airship_core>, <vc:item_logic_chip>],
			[<vc:upgrades/upgrade_airship_core>, <vc:upgrades/upgrade_airship_frame:3>.giveBack(), <vc:upgrades/upgrade_airship_core>],
			[<vc:item_logic_chip>, <vc:upgrades/upgrade_airship_core>, <vc:item_logic_chip>]
		]
	],
	<vc:upgrades/upgrade_airship_frame:5> : [
		[
			[<vc:item_logic_chip>, <vc:upgrades/upgrade_airship_core>, <vc:item_logic_chip>],
			[<vc:upgrades/upgrade_airship_core>, <vc:upgrades/upgrade_airship_frame:4>.giveBack(), <vc:upgrades/upgrade_airship_core>],
			[<vc:item_logic_chip>, <vc:upgrades/upgrade_airship_core>, <vc:item_logic_chip>]
		]
	],
	<vc:upgrades/upgrade_airship_engine:1> : [
		[
			[<vc:item_logic_chip>, <vc:upgrades/upgrade_airship_engine>, <vc:item_logic_chip>],
			[<vc:upgrades/upgrade_airship_engine>, <stevescarts:cartmodule>, <vc:upgrades/upgrade_airship_engine>],
			[<vc:item_logic_chip>, <vc:upgrades/upgrade_airship_engine>, <vc:item_logic_chip>]
		]
	],
	<vc:upgrades/upgrade_airship_engine:2> : [
		[
			[<vc:item_logic_chip>, <vc:upgrades/upgrade_airship_engine>, <vc:item_logic_chip>],
			[<vc:upgrades/upgrade_airship_engine>, <vc:upgrades/upgrade_airship_engine:1>.giveBack(), <vc:upgrades/upgrade_airship_engine>],
			[<vc:item_logic_chip>, <vc:upgrades/upgrade_airship_engine>, <vc:item_logic_chip>]
		]
	],
	<vc:upgrades/upgrade_airship_engine:3> : [
		[
			[<vc:item_logic_chip>, <vc:upgrades/upgrade_airship_engine>, <vc:item_logic_chip>],
			[<vc:upgrades/upgrade_airship_engine>, <vc:upgrades/upgrade_airship_engine:2>.giveBack(), <vc:upgrades/upgrade_airship_engine>],
			[<vc:item_logic_chip>, <vc:upgrades/upgrade_airship_engine>, <vc:item_logic_chip>]
		]
	],
	<vc:upgrades/upgrade_airship_engine:4> : [
		[
			[<vc:item_logic_chip>, <vc:upgrades/upgrade_airship_engine>, <vc:item_logic_chip>],
			[<vc:upgrades/upgrade_airship_engine>, <vc:upgrades/upgrade_airship_engine:3>.giveBack(), <vc:upgrades/upgrade_airship_engine>],
			[<vc:item_logic_chip>, <vc:upgrades/upgrade_airship_engine>, <vc:item_logic_chip>]
		]
	],
	<vc:upgrades/upgrade_airship_engine:5> : [
		[
			[<vc:item_logic_chip>, <vc:upgrades/upgrade_airship_engine>, <vc:item_logic_chip>],
			[<vc:upgrades/upgrade_airship_engine>, <vc:upgrades/upgrade_airship_engine:4>.giveBack(), <vc:upgrades/upgrade_airship_engine>],
			[<vc:item_logic_chip>, <vc:upgrades/upgrade_airship_engine>, <vc:item_logic_chip>]
		]
	],
	<vc:upgrades/upgrade_airship_balloon:1> : [
		[
			[<vc:item_logic_chip>, <vc:upgrades/upgrade_airship_balloon>, <vc:item_logic_chip>],
			[<vc:upgrades/upgrade_airship_balloon>, <vc:airship_balloon>, <vc:upgrades/upgrade_airship_balloon>],
			[<vc:item_logic_chip>, <vc:upgrades/upgrade_airship_balloon>, <vc:item_logic_chip>]
		]
	],
	<vc:upgrades/upgrade_airship_balloon:2> : [
		[
			[<vc:item_logic_chip>, <vc:upgrades/upgrade_airship_balloon>, <vc:item_logic_chip>],
			[<vc:upgrades/upgrade_airship_balloon>, <vc:upgrades/upgrade_airship_balloon:1>.giveBack(), <vc:upgrades/upgrade_airship_balloon>],
			[<vc:item_logic_chip>, <vc:upgrades/upgrade_airship_balloon>, <vc:item_logic_chip>]
		]
	],
	<vc:upgrades/upgrade_airship_balloon:3> : [
		[
			[<vc:item_logic_chip>, <vc:upgrades/upgrade_airship_balloon>, <vc:item_logic_chip>],
			[<vc:upgrades/upgrade_airship_balloon>, <vc:upgrades/upgrade_airship_balloon:2>.giveBack(), <vc:upgrades/upgrade_airship_balloon>],
			[<vc:item_logic_chip>, <vc:upgrades/upgrade_airship_balloon>, <vc:item_logic_chip>]
		]
	],
	<vc:upgrades/upgrade_airship_balloon:4> : [
		[
			[<vc:item_logic_chip>, <vc:upgrades/upgrade_airship_balloon>, <vc:item_logic_chip>],
			[<vc:upgrades/upgrade_airship_balloon>, <vc:upgrades/upgrade_airship_balloon:3>.giveBack(), <vc:upgrades/upgrade_airship_balloon>],
			[<vc:item_logic_chip>, <vc:upgrades/upgrade_airship_balloon>, <vc:item_logic_chip>]
		]
	],
	<vc:upgrades/upgrade_airship_balloon:5> : [
		[
			[<vc:item_logic_chip>, <vc:upgrades/upgrade_airship_balloon>, <vc:item_logic_chip>],
			[<vc:upgrades/upgrade_airship_balloon>, <vc:upgrades/upgrade_airship_balloon:4>.giveBack(), <vc:upgrades/upgrade_airship_balloon>],
			[<vc:item_logic_chip>, <vc:upgrades/upgrade_airship_balloon>, <vc:item_logic_chip>]
		]
	],
	<vc:item_logic_chip> : [
		[
			[null, null, null],
			[<ore:dyeGreen>, metals.redstoneAlloy.plate, <ore:dyeGreen>],
			[metals.gold.plate, metals.gold.plate, metals.gold.plate]
		]
	],
	<vc:modules/item_module_type> : [
		[
			[metals.platinum.plate, metals.platinum.plate, metals.platinum.plate],
			[metals.platinum.plate, <vc:item_logic_chip>, metals.platinum.plate],
			[metals.platinum.plate, metals.platinum.plate, metals.platinum.plate]
		]
	],
	<vc:modules/item_module_type:2> : [
		[
			[metals.modularium.plate, metals.modularium.plate, metals.modularium.plate],
			[<minecraft:quartz>, <vc:modules/item_module_type:1>, <minecraft:quartz>],
			[<vc:modules/item_module_type>, <minecraft:heavy_weighted_pressure_plate>, <vc:modules/item_module_type>]
		]
	],
	<vc:modules/item_module_type:14> : [
		[
			[metals.modularium.plate, metals.modularium.plate, metals.modularium.plate],
			[<minecraft:quartz>, <vc:modules/item_module_type:13>, <minecraft:quartz>],
			[<vc:modules/item_module_type>, <minecraft:heavy_weighted_pressure_plate>, <vc:modules/item_module_type>]
		]
	],
	<vc:modules/item_module_type:17> : [
		[
			[metals.modularium.plate, metals.modularium.plate, metals.modularium.plate],
			[<minecraft:quartz>, <vc:modules/item_module_type:16>, <minecraft:quartz>],
			[<vc:modules/item_module_type>, <minecraft:heavy_weighted_pressure_plate>, <vc:modules/item_module_type>]
		]
	],
	<vc:modules/item_module_type:20> : [
		[
			[metals.modularium.plate, metals.modularium.plate, metals.modularium.plate],
			[<minecraft:quartz>, <vc:modules/item_module_type:19>, <minecraft:quartz>],
			[<vc:modules/item_module_type>, <minecraft:heavy_weighted_pressure_plate>, <vc:modules/item_module_type>]
		]
	],
	<vc:modules/item_module_type:9> : [
		[
			[metals.platinum.plate, metals.platinum.plate, metals.platinum.plate],
			[<minecraft:quartz>, <vc:modules/item_module_type:8>, <minecraft:quartz>],
			[<vc:modules/item_module_type>, <minecraft:heavy_weighted_pressure_plate>, <vc:modules/item_module_type>]
		]
	],
	<vc:modules/item_module_type:11> : [
		[
			[metals.modularium.plate, metals.modularium.plate, metals.modularium.plate],
			[<minecraft:quartz>, <vc:modules/item_module_type:10>, <minecraft:quartz>],
			[<vc:modules/item_module_type>, <minecraft:heavy_weighted_pressure_plate>, <vc:modules/item_module_type>]
		]
	],
	<vc:modules/item_module_type:5> : [
		[
			[metals.modularium.plate, metals.modularium.plate, metals.modularium.plate],
			[<minecraft:quartz>, <vc:modules/item_module_type:4>, <minecraft:quartz>],
			[<vc:modules/item_module_type>, <minecraft:heavy_weighted_pressure_plate>, <vc:modules/item_module_type>]
		]
	],
	<vc:modules/item_module_type:21> : [
		[
			[metals.platinum.plate, metals.platinum.plate, metals.platinum.plate],
			[<minecraft:quartz>, <vc:modules/item_module_type:20>, <minecraft:quartz>],
			[<vc:modules/item_module_type>, <minecraft:heavy_weighted_pressure_plate>, <vc:modules/item_module_type>]
		]
	],
	<vc:modules/item_module_type:8> : [
		[
			[metals.modularium.plate, metals.modularium.plate, metals.modularium.plate],
			[<minecraft:quartz>, <vc:modules/item_module_type:7>, <minecraft:quartz>],
			[<vc:modules/item_module_type>, <minecraft:heavy_weighted_pressure_plate>, <vc:modules/item_module_type>]
		]
	],
	<vc:modules/item_module_type:24> : [
		[
			[metals.platinum.plate, metals.platinum.plate, metals.platinum.plate],
			[<minecraft:quartz>, <vc:modules/item_module_type:23>, <minecraft:quartz>],
			[<vc:modules/item_module_type>, <minecraft:heavy_weighted_pressure_plate>, <vc:modules/item_module_type>]
		]
	],
	<vc:modules/item_module_type:6> : [
		[
			[metals.platinum.plate, metals.platinum.plate, metals.platinum.plate],
			[<minecraft:quartz>, <vc:modules/item_module_type:5>, <minecraft:quartz>],
			[<vc:modules/item_module_type>, <minecraft:heavy_weighted_pressure_plate>, <vc:modules/item_module_type>]
		]
	],
	<vc:modules/item_module_type:18> : [
		[
			[metals.platinum.plate, metals.platinum.plate, metals.platinum.plate],
			[<minecraft:quartz>, <vc:modules/item_module_type:17>, <minecraft:quartz>],
			[<vc:modules/item_module_type>, <minecraft:heavy_weighted_pressure_plate>, <vc:modules/item_module_type>]
		]
	],
	<vc:modules/item_module_type:15> : [
		[
			[metals.platinum.plate, metals.platinum.plate, metals.platinum.plate],
			[<minecraft:quartz>, <vc:modules/item_module_type:14>, <minecraft:quartz>],
			[<vc:modules/item_module_type>, <minecraft:heavy_weighted_pressure_plate>, <vc:modules/item_module_type>]
		]
	],
	<vc:modules/item_module_type:12> : [
		[
			[metals.platinum.plate, metals.platinum.plate, metals.platinum.plate],
			[<minecraft:quartz>, <vc:modules/item_module_type:11>, <minecraft:quartz>],
			[<vc:modules/item_module_type>, <minecraft:heavy_weighted_pressure_plate>, <vc:modules/item_module_type>]
		]
	],

	//Buildcraft
	<buildcraftcore:engine> : [
		[
			[<minecraft:glass>, <minecraft:sticky_piston>, <minecraft:glass>],
			[metals.redstoneAlloy.gear, <immersiveengineering:material:27>, metals.redstoneAlloy.gear],
			[<immersiveengineering:treated_wood>, <immersiveengineering:metal_decoration0:3>, <immersiveengineering:treated_wood>]
		]
	],

	//Iron Chests
	<ironchest:iron_chest:6> : [
		[
			[<minecraft:obsidian>, <minecraft:obsidian>, <minecraft:obsidian>],
			[<minecraft:obsidian>, <minecraft:chest>, <minecraft:obsidian>],
			[<minecraft:obsidian>, <minecraft:obsidian>, <minecraft:obsidian>]
		]
	],
	<cyclicmagic:placer_block> : [
		[
			[stone, <minecraft:dispenser>, stone],
			[metals.iron.plate, metals.redstoneAlloy.plate, metals.iron.plate],
			[stone, metals.platinum.plate, stone]
		]
	],
	<cyclicmagic:clock> : [
		[
			[metals.aluminum.plate, metals.redstoneAlloy.plate, metals.aluminum.plate],
			[metals.redstoneAlloy.plate, <minecraft:quartz_block>, metals.redstoneAlloy.plate],
			[metals.aluminum.plate, metals.redstoneAlloy.plate, metals.aluminum.plate]
		]
	]

} as IIngredient[][][][IItemStack];

for item, recipesForItem in shapedRecipes {
	for recipe in recipesForItem {
		mods.recipestages.Recipes.addShaped(STAGE, item, recipe);
	}
}


////
//
// TO DO
//
////
mods.recipestages.Recipes.setRecipeStage("three", <cyclicmagic:tool_auto_torch>);
mods.recipestages.Recipes.setRecipeStage("three", <cyclicmagic:wand_missile>);
mods.recipestages.Recipes.setRecipeStage("three", <cyclicmagic:fire_killer>);
mods.recipestages.Recipes.setRecipeStage("three", <cyclicmagic:purple_boots>);
mods.recipestages.Recipes.setRecipeStage("three", <cyclicmagic:charm_wing>);
mods.recipestages.Recipes.setRecipeStage("three", <cyclicmagic:gold_furnace_minecart>);
mods.recipestages.Recipes.setRecipeStage("three", <cyclicmagic:turret_minecart>);
mods.recipestages.Recipes.setRecipeStage("three", <cyclicmagic:password_block>);
mods.recipestages.Recipes.setRecipeStage("three", <cyclicmagic:plate_push_fast>);
mods.recipestages.Recipes.setRecipeStage("three", <cyclicmagic:ender_blaze>);
mods.recipestages.Recipes.setRecipeStage("three", <cyclicmagic:chest_sack_empty>);
mods.recipestages.Recipes.setRecipeStage("three", <cyclicmagic:entity_detector>);
mods.recipestages.Recipes.setRecipeStage("three", <cyclicmagic:tool_swap>);
mods.recipestages.Recipes.setRecipeStage("three", <cyclicmagic:charm_fire>);
mods.recipestages.Recipes.setRecipeStage("three", <cyclicmagic:gold_minecart>);
mods.recipestages.Recipes.setRecipeStage("three", <cyclicmagic:stone_minecart>);
mods.recipestages.Recipes.setRecipeStage("three", <cyclicmagic:plate_push>);
mods.recipestages.Recipes.setRecipeStage("three", <cyclicmagic:magnet_anti_block>);
mods.recipestages.Recipes.setRecipeStage("three", <cyclicmagic:ender_water>);
mods.recipestages.Recipes.setRecipeStage("three", <cyclicmagic:chest_sack>);
mods.recipestages.Recipes.setRecipeStage("three", <cyclicmagic:carbon_paper>);
mods.recipestages.Recipes.setRecipeStage("three", <cyclicmagic:purple_chestplate>);
mods.recipestages.Recipes.setRecipeStage("three", <cyclicmagic:purple_helmet>);
mods.recipestages.Recipes.setRecipeStage("three", <cyclicmagic:sprinkler>);
mods.recipestages.Recipes.setRecipeStage("three", <cyclicmagic:block_hydrator>);
mods.recipestages.Recipes.setRecipeStage("three", <cyclicmagic:dropper_minecart>);
mods.recipestages.Recipes.setRecipeStage("three", <cyclicmagic:horse_upgrade_speed>);
mods.recipestages.Recipes.setRecipeStage("three", <cyclicmagic:plate_push_slowest>);
mods.recipestages.Recipes.setRecipeStage("three", <cyclicmagic:ender_snow>);
mods.recipestages.Recipes.setRecipeStage("three", <cyclicmagic:evoker_fang>);
mods.recipestages.Recipes.setRecipeStage("three", <cyclicmagic:tool_push>);
mods.recipestages.Recipes.setRecipeStage("three", <cyclicmagic:fire_dark>);
mods.recipestages.Recipes.setRecipeStage("three", <cyclicmagic:horse_upgrade_jump>);

//AbyssalCraft
mods.recipestages.Recipes.setRecipeStage("three", <abyssalcraft:crystal:*>);
mods.recipestages.Recipes.setRecipeStage("three", <abyssalcraft:crystalshard:*>);
mods.recipestages.Recipes.setRecipeStage("three", <abyssalcraft:crystalcluster:*>);
mods.recipestages.Recipes.setRecipeStage("three", <abyssalcraft:crystalcluster2:*>);
mods.recipestages.Recipes.setRecipeStage("three", <abyssalcraft:crystalfragment:*>);
mods.recipestages.Recipes.setRecipeStage("three", <abyssalcraft:transmutator>);
mods.recipestages.Recipes.setRecipeStage("three", <abyssalcraft:transmutationgem>);