#!/bin/sh
cat > egg.json <<EOF
{
	"type": "origins:multiple",
	"name": "Egg",
	"description": "obtain spawn eggs by right clicking on a mob, with a cooldown",

EOF

for mob in glow_squid fox donkey cow cod chicken cat horse bat axolotl salmon pufferfish rabbit polar_bear pig piglin ocelot mule mooshroom parrot wandering_trader sheep skeleton_horse villager squid strider tropical_fish turtle goat enderman llama cave_spider bee panda zombified_piglin spider wolf dolphin trader_llama zoglin wither_skeleton witch blaze drowned creeper endermite evoker ghast guardian hoglin husk phantom piglin_brute magma_cube ravager shulker silverfish skeleton vindicator vex stray zombie
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
				"type": "origins:and",
				"conditions":
				[
					{
						"type": "origins:entity_type",
						"entity_type": "minecraft:${mob}"
					},
					{
						"type": "origins:command",
						"command": "execute if entity @s[nbt={Tags:[noegg]}]",
						"comparison": "!=",
						"compare_to": 1
					}
				]
			}
		},
		"bientity_action":
		{
			"type": "origins:target_action",
			"action":
			{
				"type": "origins:and",
				"actions":
				[
					{
						"type": "origins:execute_command",
						"command": "tag @s add noegg"
					},
					{
						"type": "origins:delay",
						"ticks": 24000,
						"action":
						{
							"type": "origins:execute_command",
							"command": "tag @s remove noegg"
						}
					}
				]
					
			}
		},
		"result_stack":
		{
			"item": "minecraft:${mob}_spawn_egg",
			"amount": 1,
			"tag": "{EntityTag:{Team:eggmilksoup,Tags:[noegg]}}"
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
				"type": "origins:and",
				"conditions":
				[
					{
						"type": "origins:entity_type",
						"entity_type": "minecraft:slime"
					},
					{
						"type": "origins:command",
						"command": "execute if entity @s[nbt={Tags:[noegg]}]",
						"comparison": "!=",
						"compare_to": 1
					}
				]
			}
		},
		"bientity_action":
		{
			"type": "origins:target_action",
			"action":
			{
				"type": "origins:and",
				"actions":
				[
					{
						"type": "origins:execute_command",
						"command": "tag @s add noegg"
					},
					{
						"type": "origins:delay",
						"ticks": 24000,
						"action":
						{
							"type": "origins:execute_command",
							"command": "tag @s remove noegg"
						}
					}
				]
					
			}
		},
		"result_stack":
		{
			"item": "minecraft:slime_spawn_egg",
			"amount": 1,
			"tag": "{EntityTag:{Team:eggmilksoup,Tags:[noegg]}}"
		}
	}
}
EOF
