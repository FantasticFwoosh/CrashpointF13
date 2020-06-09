/obj/machinery/forge
	name = "metalworking forge"
	desc = "A large furnace used for forging metal items such as swords, spears and shields. You can imagine yourself making iron daggers here for a long time."
	icon = 'icons/obj/cult.dmi'
	icon_state = "forge"
	resistance_flags = INDESTRUCTIBLE
	density = TRUE
	layer = BELOW_OBJ_LAYER
	anchored = TRUE
	machine_tool_behaviour = list(TOOL_FORGE)

/obj/machinery/forge/wrench_act(mob/living/user, obj/item/I)
	default_unfasten_wrench(user, I, 10)
	return TRUE

/datum/crafting_recipe/forgemachete
	name = "Machete"
	result = /obj/item/claymore/machete
	time = 80
	reqs = list(/obj/item/stack/sheet/metal = 8)
	tools = list(TOOL_WELDER, TOOL_FORGE)
	category = CAT_PRIMAL
	subcategory = CAT_FORGE

/datum/crafting_recipe/forgegladius
	name = "Improvised Machete Gladius"
	result = /obj/item/claymore/machete/gladius/improvised
	time = 80
	reqs = list(/obj/item/stack/sheet/metal = 10,
				/obj/item/claymore/machete = 1)
	tools = list(TOOL_WELDER, TOOL_FORGE)
	category = CAT_PRIMAL
	subcategory = CAT_FORGE

/datum/crafting_recipe/forgeglaive
	name = "Metal Glaive"
	result = /obj/item/twohanded/spear
	time = 80
	reqs = list(/obj/item/stack/sheet/metal = 8,
				/obj/item/stack/sheet/mineral/wood = 4)
	tools = list(TOOL_WELDER, TOOL_FORGE)
	category = CAT_PRIMAL
	subcategory = CAT_FORGE

/datum/crafting_recipe/forgepilum
	name = "Metal Pilum"
	result = /obj/item/twohanded/spear/pilum
	time = 80
	reqs = list(/obj/item/stack/sheet/metal = 8,
				/obj/item/stack/sheet/mineral/wood = 4)
	tools = list(TOOL_WELDER, TOOL_FORGE)
	category = CAT_PRIMAL
	subcategory = CAT_FORGE

/datum/crafting_recipe/forgethrowingspear
	name = "Throwing Spear"
	result = /obj/item/throwing_star/spear
	time = 80
	reqs = list(/obj/item/stack/sheet/metal = 2,
				/obj/item/stack/sheet/mineral/wood = 3)
	tools = list(TOOL_WELDER, TOOL_FORGE)
	category = CAT_PRIMAL
	subcategory = CAT_FORGE

/datum/crafting_recipe/legionshield
	name = "Legion Shield"
	result = /obj/item/shield/legion
	time = 80
	reqs = list(/obj/item/stack/sheet/metal = 6,
				/obj/item/stack/sheet/mineral/wood = 6)
	tools = list(TOOL_WELDER, TOOL_FORGE)
	category = CAT_PRIMAL
	subcategory = CAT_FORGE

/datum/crafting_recipe/forgekatana
	name = "Forge Katana From Scrap"
	result = /obj/item/katana
	time = 360
	reqs = list(/obj/item/reagent_containers/food/drinks/soda_cans = 5,
				/obj/item/stack/sheet/mineral/titanium = 5)
	tools = list(TOOL_FORGE, TOOL_WELDER)
	category = CAT_PRIMAL
	subcategory = CAT_FORGE

/datum/crafting_recipe/smeltmetalparts
	name = "Smelt Metal Parts Into Sheets"
	result = /obj/item/stack/sheet/metal/five
	time = 100
	reqs = list(/obj/item/stack/crafting/metalparts = 1)
	tools = list(TOOL_FORGE, TOOL_WELDER)
	category = CAT_PRIMAL
	subcategory = CAT_FORGE

/datum/crafting_recipe/smeltgoodmetalparts
	name = "Smelt High Quality Parts Into Sheets"
	result = /obj/item/stack/sheet/mineral/titanium/five
	time = 130
	reqs = list(/obj/item/stack/crafting/goodparts = 1)
	tools = list(TOOL_FORGE, TOOL_WELDER)
	category = CAT_PRIMAL
	subcategory = CAT_FORGE

/obj/machinery/grindstone //anybody can make a grindstone
	name = "sharpening grindstone"
	desc = "A circular wheel made out of abrasive stone for sharpening weaponry upon so that they fufill their maximum potential."
	icon = 'icons/obj/cult.dmi'
	icon_state = "grindstone"
	resistance_flags = INDESTRUCTIBLE
	density = TRUE
	layer = BELOW_OBJ_LAYER
	anchored = TRUE
	machine_tool_behaviour = list(TOOL_GRINDSTONE)

/obj/machinery/grindstone/wrench_act(mob/living/user, obj/item/I)
	default_unfasten_wrench(user, I, 10)
	return TRUE

/datum/crafting_recipe/gladius
	name = "Refine & Sharpen Machete Gladius"
	result = /obj/item/claymore/machete/gladius
	time = 180
	reqs = list(/obj/item/stack/sheet/metal = 5,
				/obj/item/stack/sheet/mineral/wood = 2,
				/obj/item/claymore/machete/gladius/improvised = 1)
	tools = list(TOOL_WELDER, TOOL_GRINDSTONE)
	category = CAT_PRIMAL
	subcategory = CAT_FORGE

/datum/crafting_recipe/sharpcosmicknife
	name = "Sharpen & Heat Cosmic Knife"
	result = /obj/item/kitchen/knife/cosmic
	reqs = list(/obj/item/kitchen/knife/cosmicdirty = 1)
	tools = list(TOOL_GRINDSTONE,TOOL_WELDER)
	category = CAT_PRIMAL
	subcategory = CAT_FORGE
	time = 280

/datum/crafting_recipe/reinforcemachete
	name = "Sharpen & Reinforce Machete"
	result = /obj/item/claymore/machete/reinforced
	time = 280
	reqs = list(/obj/item/stack/sheet/metal = 8,
				/obj/item/claymore/machete = 1)
	tools = list(TOOL_GRINDSTONE,TOOL_WELDER)
	category = CAT_PRIMAL
	subcategory = CAT_FORGE