import crafttweaker.item.IItemStack;

/*
// Extended Crafting CraftTweaker syntax
// Combination crafting
// rfPerTick is pretty much used to say how many ticks it should take to craft (rfCost/rfPerTick), might make it optional and add a configurable default for C O N V E N I E N C E
// inputStack is the item you put on the Crafting Core
// pedestalStack is one of the items you place on a pedestal to be combined with the input; you can have up to 48 of these, not sure why anyone would want that (and you probably wouldnt be able to see the ingredients in jei)
mods.extendedcrafting.CombinationCrafting.addRecipe(<outputStack>, rfCost, rfPerTick, <inputStack>, [<pedestalStack>, <pedestalStack>]);

// Table Crafting
// Shapeless - this is the same for all of them, with the size of the input deciding which table it's for, max is 81 stacks
// I most likely will make it so you can optionally set a recipe to a specific tier
mods.extendedcrafting.TableCrafting.addShapeless(<outputStack>, [<inputStack>, <inputStack>]);

// Shaped - same syntax for all of them, also note that the recipes will work in all the tables with enough slots
// Probably gonna add the ability to set a tier for these as well
mods.extendedcrafting.TableCrafting.addShaped(<>, [[<>, <>, <>], [<>, <>, <>], [<>, <>, <>]]);
mods.extendedcrafting.TableCrafting.addShaped(<>, [[<>, <>, <>, <>, <>], [<>, <>, <>, <>, <>], [<>, <>, <>, <>, <>], [<>, <>, <>, <>, <>], [<>, <>, <>, <>, <>]]);
mods.extendedcrafting.TableCrafting.addShaped(<>, [[<>, <>, <>, <>, <>, <>, <>], [<>, <>, <>, <>, <>, <>, <>], [<>, <>, <>, <>, <>, <>, <>], [<>, <>, <>, <>, <>, <>, <>], [<>, <>, <>, <>, <>, <>, <>], [<>, <>, <>, <>, <>, <>, <>], [<>, <>, <>, <>, <>, <>, <>]]);
mods.extendedcrafting.TableCrafting.addShaped(<>, [[<>, <>, <>, <>, <>, <>, <>, <>, <>], [<>, <>, <>, <>, <>, <>, <>, <>, <>], [<>, <>, <>, <>, <>, <>, <>, <>, <>], [<>, <>, <>, <>, <>, <>, <>, <>, <>], [<>, <>, <>, <>, <>, <>, <>, <>, <>], [<>, <>, <>, <>, <>, <>, <>, <>, <>], [<>, <>, <>, <>, <>, <>, <>, <>, <>], [<>, <>, <>, <>, <>, <>, <>, <>, <>], [<>, <>, <>, <>, <>, <>, <>, <>, <>]]);

// Compression crafting
// inputStack is the stack that gets consumed, inputCount is how much of that stack is required to make the thing
// catalystStack is the recipe identifier item, does not get consumed (might make it possible to be though)
// rfCost is how much RF is needed to convert the input into the output once the correct inputCount is met
// Currently the compressor runs at 500rf a tick and I need to make it changeable on a per recipe basis still
mods.extendedcrafting.CompressionCrafting.addRecipe(<outputStack>, <inputStack>, inputCount, <catalystStack>, rfCost);
*/

recipes.remove(<vc:airship_ignition>);
recipes.remove(<vc:airship_engine>);
recipes.remove(<vc:airship_balloon>);

//Viescraft Airship Ignition
mods.extendedcrafting.TableCrafting.addShaped(
	<vc:airship_ignition>,
	[
		[metals.iron.plate, metals.iron.plate, <minecraft:blaze_rod>, metals.iron.plate, metals.iron.plate],
		[metals.iron.plate, <minecraft:quartz>, metals.platinum.gear, <minecraft:quartz>, metals.iron.plate],
		[metals.iron.rod, metals.platinum.gear, <stevescarts:cartmodule:0>, metals.platinum.gear, metals.iron.rod],
		[metals.iron.plate, <minecraft:quartz>, metals.platinum.gear, <minecraft:quartz>, metals.iron.plate],
		[metals.iron.plate, metals.iron.plate, <minecraft:blaze_rod>, metals.iron.plate, metals.iron.plate]
	]
);

//Viescraft Ship Engine
mods.extendedcrafting.TableCrafting.addShaped(
	<vc:airship_engine>,
	[
		[metals.steel.plate, <minecraft:piston>, <minecraft:piston>, <minecraft:piston>, metals.steel.plate],
		[metals.iron.plate, metals.fiery.rod, metals.fiery.rod, metals.fiery.rod, metals.iron.plate],
		[metals.iron.plate, metals.steeleaf.gear, <stevescarts:cartmodule:44>, metals.steeleaf.gear, metals.iron.plate],
		[metals.iron.plate, metals.redstoneAlloy.plate, metals.redstoneAlloy.plate, metals.redstoneAlloy.plate, metals.iron.plate],
		[metals.steel.plate, metals.steel.plate, <minecraft:redstone_block>, metals.steel.plate, metals.steel.plate]
	]
);

//Viescraft Ship Balloon
mods.extendedcrafting.TableCrafting.addShaped(
	<vc:airship_balloon>,
	[
		[<betterwithmods:rope>, <minecraft:string>, <betterwithmods:material:4>, <minecraft:string>, <betterwithmods:rope>],
		[<minecraft:string>, <betterwithmods:material:4>, <betterwithmods:material:4>, <betterwithmods:material:4>, <minecraft:string>],
		[<betterwithmods:material:4>, <betterwithmods:material:4>, <betterwithmods:material:4>, <betterwithmods:material:4>, <betterwithmods:material:4>],
		[<minecraft:string>, <betterwithmods:material:4>, <betterwithmods:material:4>, <betterwithmods:material:4>, <minecraft:string>],
		[<betterwithmods:rope>, <minecraft:string>, <betterwithmods:material:4>, <minecraft:string>, <betterwithmods:rope>]
	]
);

//Stage 4 Machine Frame
mods.extendedcrafting.TableCrafting.addShaped(
	<teslacorelib:machine_case>,
	[
		[metals.compressedIron.plate, plastic, plastic, plastic, metals.compressedIron.plate],
		[plastic, <stevescarts:modulecomponents:49>, <pneumaticcraft:printed_circuit_board>, <stevescarts:modulecomponents:49>, plastic],
		[<betterwithmods:material:4>, <appliedenergistics2:material>, <extendedcrafting:frame>, <appliedenergistics2:material>, <betterwithmods:material:4>],
		[plastic, metals.cobalt.plate, <stevescarts:modulecomponents:49>, metals.cobalt.plate, plastic],
		[metals.compressedIron.plate, plastic, plastic, plastic, metals.compressedIron.plate]
	]
);

//
//
//Compression
//
//

// Compression crafting
// inputStack is the stack that gets consumed, inputCount is how much of that stack is required to make the thing
// catalystStack is the recipe identifier item, does not get consumed (might make it possible to be though)
// rfCost is how much RF is needed to convert the input into the output once the correct inputCount is met
// Currently the compressor runs at 500rf a tick and I need to make it changeable on a per recipe basis still
//mods.extendedcrafting.CompressionCrafting.addRecipe(<outputStack>, <inputStack>, inputCount, <catalystStack>, rfCost);

// [<firstOutput>, <firstInput>]
var compressionCraftingPairs = [
	[<overloaded:compressed_cobblestone>, <minecraft:cobblestone>],
	[<overloaded:compressed_obsidian>, <minecraft:obsidian>],
	[<overloaded:compressed_dirt>, <minecraft:dirt>],
	[<overloaded:compressed_gravel>, <minecraft:gravel>],
	[<overloaded:compressed_stone>, <minecraft:stone>],
	[<overloaded:compressed_sand>, <minecraft:sand>],
	[<overloaded:compressed_netherrack>, <minecraft:netherrack>]
] as IItemStack[][];

var rfRates = [
	200,
	250,
	300,
	400,
	500,
	600,
	700,
	800,
	1000,
	1200,
	1400,
	1600,
	1750,
	1850,
	2000,
	2500
] as int[];

for pair in compressionCraftingPairs {
	//Check at the start of every pair loop to see if it is one of the unique types
	var isObsidian = pair[1].matches(<minecraft:obsidian>);
	var isNetherrack = pair[1].matches(<minecraft:netherrack>);

	//Loop i = 0 through 15 (doesnt do 16)
    for i in 0 to 16 {
		var output = pair[0].definition.makeStack(i);
		var input = pair[1];

		//Calculate RF Cost
		var baseCost = (pow(2, i) * 1000) as int;

		if (i != 0) {
			//If not the initial/standard block to 1x
			input = pair[0].definition.makeStack(i - 1);
		}

		//Default catalyst
		var catalystMeta = 8;

		//Set catalystMeta based on criteria
		if (i <= 7) {
			if (isObsidian | isNetherrack) {
				catalystMeta = 11;
			}
		} else if (i <= 11) {
			catalystMeta = isObsidian | isNetherrack ? 12 : 11;
		} else {
			catalystMeta = 13;
		}

		//Now that we have the meta wanted for the catalyst, create the item
		var catalyst = <extendedcrafting:material>.definition.makeStack(catalystMeta);

		//Add compression crafting recipe to compress
		mods.extendedcrafting.CompressionCrafting.addRecipe(output, input, 9, catalyst, baseCost, rfRates[i]);

		//Add standard crafting recipe to decompress
		recipes.addShapeless(input * 9, [output]);
	}
}
