import crafttweaker.item.IItemStack;

var removeItems = [
	<embers:axe_aluminum>,
	<embers:axe_lead>,
	<embers:axe_nickel>,
	<embers:axe_silver>,
	<embers:hoe_aluminum>,
	<embers:hoe_lead>,
	<embers:hoe_nickel>,
	<embers:hoe_silver>,
	<embers:pickaxe_aluminum>,
	<embers:pickaxe_lead>,
	<embers:pickaxe_nickel>,
	<embers:pickaxe_silver>,
	<embers:shovel_aluminum>,
	<embers:shovel_lead>,
	<embers:shovel_nickel>,
	<embers:shovel_silver>,
	<embers:sword_aluminum>,
	<embers:sword_lead>,
	<embers:sword_nickel>,
	<embers:sword_silver>,
	<extendedcrafting:material:14>,
	<extendedcrafting:material:15>,
	<extendedcrafting:material:7>,
	<immersiveengineering:material:20>,
	<immersiveengineering:material:21>,
	<immersiveengineering:material:22>,
	<immersiveengineering:material:23>,
	<immersiveengineering:metal_decoration0:3>,
	<immersiveengineering:tool:1>,
	<minecraft:activator_rail>,
	<minecraft:detector_rail>,
	<minecraft:golden_rail>,
	<minecraft:rail>,
	<prospectors:prospector_med>,
	<storagedrawers:compdrawers>,
	<storagedrawers:controller>,
	<storagedrawers:controllerslave>,
	<tconstruct:wood_rail>,
	<stevescarts:blockcartassembler>,
	<stevescarts:cartmodule:44>,
	<stevescarts:blockdetector>,
	<stevescarts:blockdetector:1>,
	<stevescarts:blockdetector:2>,
	<stevescarts:blockdistributor>,
	<stevescarts:cartmodule:8>,
	<stevescarts:cartmodule:12>,
	<stevescarts:cartmodule:14>,
	<stevescarts:cartmodule:15>,
	<stevescarts:cartmodule:18>,
	<stevescarts:cartmodule:57>,
	<stevescarts:cartmodule:79>,
	<stevescarts:cartmodule:84>,
	<stevescarts:cartmodule:85>,
	<stevescarts:cartmodule:86>,
	<stevescarts:cartmodule:87>,
	<stevescarts:cartmodule:91>,
	<stevescarts:cartmodule:92>,
	<stevescarts:cartmodule:93>,
	<stevescarts:cartmodule:99>,
	<stevescarts:modulecomponents:10>,
	<stevescarts:modulecomponents:11>,
	<stevescarts:modulecomponents:16>,
	<stevescarts:modulecomponents:17>,
	<stevescarts:modulecomponents:18>,
	<stevescarts:modulecomponents:25>,
	<stevescarts:modulecomponents:26>,
	<stevescarts:modulecomponents:27>,
	<stevescarts:modulecomponents:28>,
	<stevescarts:modulecomponents:39>,
	<stevescarts:modulecomponents:46>,
	<stevescarts:modulecomponents:58>,
	<stevescarts:modulecomponents:59>,
	<stevescarts:upgrade:6>,
	<stevescarts:upgrade:7>,
	<stevescarts:upgrade:9>,
	<stevescarts:upgrade:10>,
	<stevescarts:upgrade:11>,
	<stevescarts:upgrade:12>,
	<stevescarts:upgrade:13>,
	<stevescarts:upgrade:17>,
	<stevescarts:cartmodule:23>,
	<stevescarts:cartmodule:78>,
	<stevescarts:cartmodule:45>,
	<stevescarts:upgrade:1>,
	<modularmachinery:itemmodularium>,
	<modularmachinery:blockcontroller>,
	<modularmachinery:blockcasing>,
	<modularmachinery:blockcasing:1>,
	<modularmachinery:blockoutputbus:1>,
	<modularmachinery:blockinputbus:1>,
	<modularmachinery:blockfluidinputhatch>,
	<modularmachinery:blockenergyinputhatch>,
	<vc:upgrades/upgrade_airship_balloon:1>,
	<vc:upgrades/upgrade_airship_balloon:2>,
	<vc:upgrades/upgrade_airship_balloon:3>,
	<vc:upgrades/upgrade_airship_balloon:4>,
	<vc:upgrades/upgrade_airship_balloon:5>,
	<vc:upgrades/upgrade_airship_core:1>,
	<vc:upgrades/upgrade_airship_core:2>,
	<vc:upgrades/upgrade_airship_core:3>,
	<vc:upgrades/upgrade_airship_core:4>,
	<vc:upgrades/upgrade_airship_core:5>,
	<vc:upgrades/upgrade_airship_engine:1>,
	<vc:upgrades/upgrade_airship_engine:2>,
	<vc:upgrades/upgrade_airship_engine:3>,
	<vc:upgrades/upgrade_airship_engine:4>,
	<vc:upgrades/upgrade_airship_engine:5>,
	<vc:upgrades/upgrade_airship_frame:1>,
	<vc:upgrades/upgrade_airship_frame:2>,
	<vc:upgrades/upgrade_airship_frame:3>,
	<vc:upgrades/upgrade_airship_frame:4>,
	<vc:upgrades/upgrade_airship_frame:5>,
	<buildcraftcore:engine>

] as IItemStack[];

for item in removeItems {
	recipes.remove(item);
}
