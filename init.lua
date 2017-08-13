--[[
Tinted Glass Doors

Mod ajoutant des portes en verres 

Code par Jat
Texture par onyx58
Licence GPLv2 ou plus pour le code
Graphismes sous licence CreativeCommons by-nc 4.0

]]--


tinted_glass_doors_colors = {
	"black",
	"blue",
	"brown",
	"cyan",
	"dark_green",
	"dark_grey",
	"green",
	"grey",
	"magenta",
	"orange",
	"pink",
	"red",
	"violet",
	"white",
	"yellow"
}

for _, i in ipairs(tinted_glass_doors_colors) do
	
	doors.register("tinted_glass_doors:"..i, {
			tiles = {"tinted_glass_doors_door_"..i..".png"},
			description = "Tinted Glass Doors "..i,
			inventory_image = "tinted_glass_doors_door_"..i.."_inv.png",
			use_texture_alpha = true,
			groups = {cracky=3, oddly_breakable_by_hand=3},
			sounds = default.node_sound_glass_defaults(),
			sound_open = "doors_glass_door_open",
			sound_close = "doors_glass_door_close",
			recipe = {
				{"default:glass", "default:glass"},
				{"default:glass", "dye:"..i,},
				{"default:glass", "default:glass"},
			},
	})

end