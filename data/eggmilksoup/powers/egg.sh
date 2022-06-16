#!/bin/sh
cat > egg.json <<EOF
{
	"type": "origins:multiple",
	"name": "egg",
	"description": "obtain spawn eggs using a chicken egg on a mob",

EOF

for mob in glow_squid fox donkey cow cod chicken cat horse bat axolotl salmon pufferfish rabbit polar_bear pig piglin ocelot mule mooshroom parrot wandering_trader sheep skeleton_horse villager snow_golem squid strider tropical_fish turtle goat enderman llama cave_spider bee panda zombified_piglin spider wolf dolphin trader_llama zoglin wither_skeleton witch blaze drowned creeper endermite evoker ghast guardian hoglin husk phantom piglin_brute magma_cube ravager shulker silverfish skeleton vindicator vex stray
do
	cat >> egg.json <<EOF
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
				"item": "minecraft:egg"
			}
		},
		"held_item_action":
		{
			"type": "origins:consume",
			"amount": 1
		},
		"result_stack":
		{
			"item": "minecraft:${mob}_spawn_egg",
			"amount": 1
		}
	},

EOF
done
cat >> egg.json <<EOF
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
				"item": "minecraft:egg"
			}
		},
		"held_item_action":
		{
			"type": "origins:consume",
			"amount": 1
		},
		"result_stack":
		{
			"item": "minecraft:slime_spawn_egg",
			"amount": 1
		}
	}

EOF

echo '}' >> egg.json
