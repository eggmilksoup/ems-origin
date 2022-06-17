#!/bin/sh
cat > soup.json <<EOF
{
	"type": "origins:multiple",
	"name": "soup",
	"description": "obtain soup using a bowl on a mob",

EOF

for mob in glow_squid fox donkey cow cod chicken cat horse bat axolotl salmon pufferfish rabbit polar_bear pig piglin ocelot mule parrot wandering_trader sheep skeleton_horse villager snow_golem squid strider tropical_fish turtle goat enderman llama cave_spider bee panda zombified_piglin spider wolf dolphin trader_llama zoglin wither_skeleton witch blaze drowned creeper endermite evoker ghast guardian hoglin husk phantom piglin_brute magma_cube ravager shulker silverfish skeleton vindicator vex stray
do
	cat >> soup.json <<EOF
	"${mob}":
	{
		"type": "origins:action_on_entity_use",
		"bientity_condition":
		{
			"type": "origins:target_condition",
			"condition":
			{
				"type": "origins:entity_type",
				"entity_type": "minecraft:${mob}"
			}
		},
		"item_condition":
		{
			"type": "origins:ingredient",
			"ingredient": {
				"item": "minecraft:bowl"
			}
		},
		"held_item_action":
		{
			"type": "origins:consume",
			"amount": 1
		},
		"result_stack":
		{
			"item": "minecraft:${mob}_soup",
			"amount": 1
		}
	},

EOF
done
cat >> soup.json <<EOF
	"slime":
	{
		"type": "origins:action_on_entity_use",
		"bientity_condition":
		{
			"type": "origins:target_condition",
			"condition":
			{
				"type": "origins:entity_type",
				"entity_type": "minecraft:slime"
			}
		},
		"item_condition":
		{
			"type": "origins:ingredient",
			"ingredient": {
				"item": "minecraft:bowl"
			}
		},
		"held_item_action":
		{
			"type": "origins:consume",
			"amount": 1
		},
		"result_stack":
		{
			"item": "minecraft:slime_soup",
			"amount": 1
		}
	}

EOF

echo '}' >> soup.json
