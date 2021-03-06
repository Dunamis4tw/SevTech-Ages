import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;

import scripts.crafttweaker.stages.stageOne;
import scripts.crafttweaker.stages.stageTwo;
import scripts.crafttweaker.stages.stageThree;
import scripts.crafttweaker.stages.stageFive;
import scripts.crafttweaker.stages.stageDisabled;

static stagedItems as IIngredient[][string] = {
	stageOne.stage: [
		<astralsorcery:blockaltar:0>,
		<astralsorcery:blockmarble:1>,
		<astralsorcery:blockmarble:2>,
		<astralsorcery:blockmarble:3>,
		<astralsorcery:blockmarble:4>,
		<astralsorcery:blockmarble:5>,
		<astralsorcery:blockmarble:6>,
		<astralsorcery:blockmarble:0>,
		<astralsorcery:blockmarbleslab:0>,
		<astralsorcery:blockmarblestairs:0>,
		<astralsorcery:itemcraftingcomponent:5>,
		<astralsorcery:itemcraftingcomponent:0>,
		<astralsorcery:itemjournal:0>
	],

	stageTwo.stage: [
		<astralsorcery:blockaltar:1>,
		<astralsorcery:blockaltar:2>,
		<astralsorcery:blockaltar:3>,
		<astralsorcery:blockattunementaltar:0>,
		<astralsorcery:blockattunementrelay:0>,
		<astralsorcery:blockblackmarble:*>,
		<astralsorcery:blockbore:0>,
		<astralsorcery:blockborehead:0>,
		<astralsorcery:blockcelestialcollectorcrystal:*>,
		<astralsorcery:blockcelestialcrystals:*>,
		<astralsorcery:blockcelestialgateway:0>,
		<astralsorcery:blockcollectorcrystal:*>,
		<astralsorcery:blockcustomflower:0>,
		<astralsorcery:blockcustomore:*>,
		<astralsorcery:blockcustomsandore:0>,
		<astralsorcery:blockgeolosyssamplecluster:0>,
		<astralsorcery:blockinfusedwood:*>,
		<astralsorcery:blocklens:0>,
		<astralsorcery:blockmachine:*>,
		<astralsorcery:blockmapdrawingtable:0>,
		<astralsorcery:blockprism:0>,
		<astralsorcery:blockrituallink:0>,
		<astralsorcery:blockritualpedestal:0>,
		<astralsorcery:blockstarlightinfuser:0>,
		<astralsorcery:blocktreebeacon:0>,
		<astralsorcery:blockwell:0>,
		<astralsorcery:blockworldilluminator:0>,
		<astralsorcery:itemarchitectwand:0>,
		<astralsorcery:itemcape:*>,
		<astralsorcery:itemcelestialcrystal:0>,
		<astralsorcery:itemchargedcrystalaxe:0>,
		<astralsorcery:itemchargedcrystalpickaxe:0>,
		<astralsorcery:itemchargedcrystalshovel:0>,
		<astralsorcery:itemchargedcrystalsword:0>,
		<astralsorcery:itemcoloredlens:*>,
		<astralsorcery:itemconstellationpaper:*>,
		<astralsorcery:itemcraftingcomponent:1>,
		<astralsorcery:itemcraftingcomponent:2>,
		<astralsorcery:itemcraftingcomponent:3>,
		<astralsorcery:itemcraftingcomponent:4>,
		<astralsorcery:itemcrystalaxe:0>,
		<astralsorcery:itemcrystalpickaxe:0>,
		<astralsorcery:itemcrystalshovel:0>,
		<astralsorcery:itemcrystalsword:0>,
		<astralsorcery:itemgrapplewand:0>,
		<astralsorcery:itemhandtelescope:0>,
		<astralsorcery:itemilluminationwand:0>,
		<astralsorcery:iteminfusedglass:*>,
		<astralsorcery:itemknowledgeshare:*>,
		<astralsorcery:itemlinkingtool:0>,
		<astralsorcery:itemrockcrystalsimple:0>,
		<astralsorcery:itemshiftingstar:0>,
		<astralsorcery:itemskyresonator:0>,
		<astralsorcery:itemtunedcelestialcrystal:*>,
		<astralsorcery:itemtunedrockcrystal:*>,
		<astralsorcery:itemusabledust:*>,
		<astralsorcery:itemwand:0>,
		<astralsorcery:itemwand:0>.withTag({astralsorcery: {AugmentName: "astralsorcery.constellation.aevitas"}}),
		<astralsorcery:itemwand:0>.withTag({astralsorcery: {AugmentName: "astralsorcery.constellation.armara"}}),
		<astralsorcery:itemwand:0>.withTag({astralsorcery: {AugmentName: "astralsorcery.constellation.discidia"}}),
		<astralsorcery:itemwand:0>.withTag({astralsorcery: {AugmentName: "astralsorcery.constellation.evorsio"}}),
		<astralsorcery:itemwand:0>.withTag({astralsorcery: {AugmentName: "astralsorcery.constellation.vicio"}}),
		<astralsorcery:itemwand:0>.withTag({astralsorcery: {}})
	],

	stageThree.stage: [
		<astralsorcery:blockborehead:1>,
		<astralsorcery:blockchalice:0>,
		<astralsorcery:blockobservatory:0>,
		<astralsorcery:itemenchantmentamulet:0>.withTag({astralsorcery: {}})
	],

	stageFive.stage: [
		<astralsorcery:itemexchangewand:0>
	],

	stageDisabled.stage: [
		<astralsorcery:itemsextant:0>.withTag({astralsorcery: {advanced: 1 as byte}}),
		<astralsorcery:itemsextant:0>.withTag({astralsorcery: {}})
	]
};

static hiddenRemove as IIngredient[] = [
	<astralsorcery:blockmarbleslab:0>, // This is not a finshed Block; advised to not use it till completed.
	<astralsorcery:itemchargedcrystalpickaxe:0> // <-- like seriously? a pick that shows hidden ores. ples hellfirepvp >.<
];

function init() {
	for stageName, items in stagedItems {
		ZenStager.getStage(stageName).addIngredients(items);
	}
	recipeUtil.hideItems(hiddenRemove as IIngredient[], true);
}
