#!/bin/sh
cat > milk.json <<EOF
{
	"type": "origins:multiple",
	"name": "Milk",
	"description": "obtain milk using a bucket on a mob",

EOF

for mob in glow_squid fox donkey cod chicken cat horse bat axolotl salmon pufferfish rabbit polar_bear pig piglin ocelot mule parrot wandering_trader sheep skeleton_horse villager snow_golem squid strider tropical_fish turtle enderman llama cave_spider bee panda zombified_piglin spider wolf dolphin trader_llama zoglin wither_skeleton witch blaze drowned creeper endermite evoker ghast guardian hoglin husk phantom piglin_brute magma_cube ravager shulker silverfish skeleton vindicator vex zombie stray
do
	cat >> milk.json <<EOF
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
				"item": "minecraft:bucket"
			}
		},
		"held_item_action":
		{
			"type": "origins:consume",
			"amount": 1
		},
		"result_stack":
		{
			"item": "minecraft:${mob}_milk",
			"amount": 1
		}
	},

EOF
done
cat >> milk.json <<EOF
	"goat":
	{
		"type": "origins:action_on_entity_use",
		"bientity_condition":
		{
			"type": "origins:target_condition",
			"condition":
			{
				"type": "origins:entity_type",
				"entity_type": "minecraft:goat"
			}
		},
		"item_condition":
		{
			"type": "origins:ingredient",
			"ingredient": {
				"item": "minecraft:bucket"
			}
		},
		"held_item_action":
		{
			"type": "origins:consume",
			"amount": 1
		},
		"result_stack":
		{
			"item": "minecraft:milk_bucket",
			"amount": 1
		}
	},

	"cow":
	{
		"type": "origins:action_on_entity_use",
		"bientity_condition":
		{
			"type": "origins:target_condition",
			"condition":
			{
				"type": "origins:entity_type",
				"entity_type": "minecraft:cow"
			}
		},
		"item_condition":
		{
			"type": "origins:ingredient",
			"ingredient": {
				"item": "minecraft:bucket"
			}
		},
		"held_item_action":
		{
			"type": "origins:consume",
			"amount": 1
		},
		"result_stack":
		{
			"item": "minecraft:milk_bucket",
			"amount": 1
		}
	}

EOF

echo '}' >> milk.json
