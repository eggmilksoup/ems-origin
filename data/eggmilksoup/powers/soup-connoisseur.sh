#!/bin/sh
cat > soup-connoisseur.json <<EOF
{
	"type": "origins:multiple",
	"name": "Soup Connoisseur",
	"description": "can only eat soup",

EOF

for item in apple baked_potato, bamboo, beetroot, beetroot_seeds, beetroot_soup, bread, cake, carrot, chorus_fruit, cooked_chicken cooked_cod cooked_mutton cooked_porkchop cooked_rabbit cooked_salmon cookie dried_kelp honey_bottle, water_bottle, potion, enchanted_golden_apple, glow_berries, golden_apple, golden_carrot, melon_slice, poisonous_potato, potato, pumpkin_pie, raw_beef, raw_chicken, raw_cod, raw_mutton, raw_porkchop, raw_rabbit, raw_salmon, rotten_flesh, seagrass, spider_eye, steak, sweet_berries, tropical_fish
do
	cat >> soup-connoisseur.json <<EOF
	"${item}":
	{
		"type": "origins:prevent_tiem_use",
		"item_condition
		{
			"type": "origins:ingredient",
			"ingredient":
			{
				"item": "minecraft:${item}"
			}
		}
	},

EOF
done
for item in apple_pie sweet_berry_cheesecake chocolate_pie roast_chicken stuffed_pumpkin honey_glazed_ham shepherds_pie cabbage tomato onion fried_egg hot_cocoa wheat_dough raw_pasta pumpkin_slice cabbage_leaf minced_beef beef_patty raw_chicken_cuts cooked_chicken_cuts raw_cod_slice cooked_cod_slice raw_salmon_slice cooked_salmon_slice raw_mutton_chops cooked_mutton_chops ham smoked_ham pie_crust slice_of_cake slice_of_apple_pie slice_of_sweet_berry_cheesecake slice_of_chocolate_pie sweet_berry_cookie honey_cookie melon_popsicle fruit_salad mixed_salad mether_salad barbecue_on_a_stick egg_sandwich chicken_sandwich hamburger bacon_sandwich mutton_wrap dumplings stuffed_potato cabbage_rolls cooked_rice fried_rice pasta_with_meatballs pasta_with_mutton_chop roasted_mutton_chops vegetable_noodles steak_and_potatoes ratatouille squid_ink_pasta grilled_salmon plate_of_roast_chicken bowl_of_stuffed_pumpkin plate_of_honey_glazed_ham plate_of_shepherds_pie dog_food asparagus sweet_potato chili_pepper peanut baked_sweet_potato cheese_wheel cheese_slice cheese_sandwich grilled_cheese peanut_butter peanut_butter_sandwich peanut_butter_and_honey_sandwich peanut_butter_and_sweet_berry_jelly_sandwich sweet_roll berry_sweet_roll glow_berry_sweet_roll cinnamon_rice cinnamon_apples chocolate_cookie sugar_cookie snickerdoodle apple_juice sweet_berry_jelly glow_berry_jelly peanut_salad sweet_potato_salad mac_and_cheese cheesy_asparagus_and_bacon peperonata
do
	cat >> soup-connoisseur.json <<EOF
	"${item}":
	{
		"type": "origins:prevent_tiem_use",
		"item_condition
		{
			"type": "origins:ingredient",
			"ingredient":
			{
				"item": "farmersdelight:${item}"
			}
		}
	},

EOF
done
for item in mammoth_meat cooked_mammoth_meat iguana_meat cooked_iguana_meat rhino_meat cooked_rhino_meat raw_venison cooked_venison warthog_meat
do
	cat >> soup-connoisseur.json <<EOF
	"${item}":
	{
		"type": "origins:prevent_tiem_use",
		"item_condition
		{
			"type": "origins:ingredient",
			"ingredient":
			{
				"item": "adventurez:${item}"
			}
		}
	},

EOF
done
cat >> soup-connoisseur.json <<EOF
	"cooked_warthog_meat":
	{
		"type": "origins:prevent_tiem_use",
		"item_condition
		{
			"type": "origins:ingredient",
			"ingredient":
			{
				"item": "adventurez:cooked_warthog_meat"
			}
		}
	}

EOF

