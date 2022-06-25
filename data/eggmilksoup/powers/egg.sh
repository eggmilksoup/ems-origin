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
				"type": "origins:entity_type",
				"entity_type": "minecraft:${mob}"
			}
		},
		"bientity_action":
		{
			"type": "origins:if_else",
			"condition":
			{
				"type": "origins:target_condition",
				"condition":
				{
					"type": "origins:power",
					"power": "eggmilksoup:incubate"
				}
			},
			"if_action":
			{
				"type": "origins:if_else",
				"condition":
				{
					"type": "origins:target_condition",
					"condition":
					{
						"type": "origins:resource",
						"resource": "eggmilksoup:incubate_timer",
						"comparison": "=",
						"compare_to": 300
					}
				},
				"if_action":
				{
					"type": "origins:and",
					"actions":
					[
						{
							"type": "origins:target_action",
							"action":
							{
								"type": "origins:change_resource",
								"resource": "eggmilksoup:incubate_timer",
								"change": 0,
								"operation": "set"
							}
						},
						{
							"type": "origins:actor_action",
							"action":
							{
								"type": "origins:give",
								"stack":
								{
									"item": "minecraft:${mob}_spawn_egg",
									"amount": 1,
									"tag": "{EntityTag:{Team:eggmilksoup}}"
								}
							}
						}
					]
				}
			},
			"else_action":
			{
				"type": "origins:target_action",
				"action":
				{
					"type": "origins:grant_power",
					"power": "origins:incubate"
				}
			}
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
		"bientity_action":
		{
			"type": "origins:if_else",
			"condition":
			{
				"type": "origins:target_condition",
				"condition":
				{
					"type": "origins:power",
					"power": "eggmilksoup:incubate"
				}
			},
			"if_action":
			{
				"type": "origins:if_else",
				"condition":
				{
					"type": "origins:target_condition",
					"condition":
					{
						"type": "origins:resource",
						"resource": "eggmilksoup:incubate_timer",
						"comparison": "=",
						"compare_to": 300
					}
				},
				"if_action":
				{
					"type": "origins:and",
					"actions":
					[
						{
							"type": "origins:target_action",
							"action":
							{
								"type": "origins:change_resource",
								"resource": "eggmilksoup:incubate_timer",
								"change": 0,
								"operation": "set"
							}
						},
						{
							"type": "origins:actor_action",
							"action":
							{
								"type": "origins:give",
								"stack":
								{
									"item": "minecraft:slime_spawn_egg",
									"amount": 1,
									"tag": "{EntityTag:{Team:eggmilksoup}}"
								}
							}
						}
					]
				}
			},
			"else_action":
			{
				"type": "origins:target_action",
				"action":
				{
					"type": "origins:grant_power",
					"power": "origins:incubate"
				}
			}
		}
	}
}
EOF
