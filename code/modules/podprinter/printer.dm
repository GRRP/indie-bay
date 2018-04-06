/obj/machinery/pod_printer
	name = "pod-printer"
	desc = "A large, industral 3D printer designed to make horrifying amalgams of flesh and metal."
	icon = 'icons/obj/podprinter.dmi'
	icon_state = "on_empty"
	idle_power_usage = 1000 //Keeping the controllers running, running stasis for the biomass, etc.
	active_power_usage = 80000 //Running the actual printer.
	var/printing_gender = null
	var/printing_name = null
	var/can_print = 1 //Can we print?
	var/printing = 0 //Running.
	var/metal = 0
	var/biomass = 0
	var/max_metal = 0 //How much metal can we hold
	var/max_biomass = 0 //How much biomas can we hold
	var/cooldown = 5000 //5 minutes.
	var/list/choices = list("Yes", "No")
	var/list/gender_choices = list("male", "female")
	var/required_materials = 15000 //at max capacity, print four pods
	var/list/amount_list_biomass = list(
		/obj/item/weapon/reagent_containers/food/snacks/meat = 500,
		/obj/item/weapon/reagent_containers/food/snacks/rawcutlet = 150,
		)
	var/list/amount_list_metal = list(
		/obj/item/stack/material/iron = 500,
		/obj/item/stack/material/steel = 1000,
		/obj/item/stack/material/plasteel = 2000
		)

/obj/machinery/pod_printer/attackby(var/obj/item/O, var/mob/user)
	if(default_deconstruction_screwdriver(user, O))
		updateUsrDialog()
		return
	if(default_deconstruction_crowbar(user, O))
		return
	if(default_part_replacement(user, O))
		return
	for(var/path in amount_list_biomass)
		if(istype(O, path))
			if((max_biomass - biomass) < amount_list_biomass[path])
				to_chat(user, "<span class='warning'>\The [src] is too full.</span>")
				return
			biomass += amount_list_biomass[path]
			to_chat(user, "<span class='info'>\The [src] processes \the [O]. Levels of stored biomass now: [biomass]</span>")
			qdel(O)
			return
	for(var/path in amount_list_metal)
		if(istype(O, path))
			if((max_metal-metal) < amount_list_metal[path])
				to_chat(user, "<span class='warning'>\The [src] is too full.</span>")
				return
			var/obj/item/stack/S = O
			var/space_left = max_metal - metal
			var/sheets_to_take = min(S.amount, Floor(space_left/amount_list_metal[path]))
			if(sheets_to_take <= 0)
				to_chat(user, "<span class='warning'>\The [src] is too full.</span>")
				return
			metal = min(max_metal, metal + (sheets_to_take*amount_list_metal[path]))
			to_chat(user, "<span class='info'>\The [src] processes \the [O]. Levels of stored metal now: [metal]</span>")
			S.use(sheets_to_take)
			return

	return ..()

/obj/machinery/pod_printer/update_icon()
	if(printing)
		icon_state = "on_printing"
	if(!printing)
		icon_state = "on_empty"
	if(printing && (stat & (BROKEN|NOPOWER)))
		icon_state = "off_filled"
	if((stat & (BROKEN|NOPOWER)))
		icon_state = "off_empty"

/obj/machinery/pod_printer/New() //Really long list of parts, because we need to hold a LOT of materials!
	..()
	component_parts = list()
	component_parts += new /obj/item/weapon/stock_parts/matter_bin(src)
	component_parts += new /obj/item/weapon/stock_parts/matter_bin(src)
	component_parts += new /obj/item/weapon/stock_parts/matter_bin(src)
	component_parts += new /obj/item/weapon/stock_parts/matter_bin(src)
	component_parts += new /obj/item/weapon/stock_parts/matter_bin(src)
	component_parts += new /obj/item/weapon/stock_parts/matter_bin(src)
	component_parts += new /obj/item/weapon/stock_parts/matter_bin(src)
	component_parts += new /obj/item/weapon/stock_parts/matter_bin(src)
	component_parts += new /obj/item/weapon/stock_parts/manipulator(src)
	component_parts += new /obj/item/weapon/stock_parts/manipulator(src)
	component_parts += new /obj/item/weapon/stock_parts/manipulator(src)
	component_parts += new /obj/item/weapon/stock_parts/manipulator(src)
	RefreshParts()


/obj/machinery/pod_printer/examine(var/mob/user)
	. = ..()
	to_chat(user, "<span class='notice'>It is loaded with [metal]/[max_metal] cm2 of metal and [biomass]/[max_biomass] cm2 of biomass.</span>")

/obj/machinery/pod_printer/RefreshParts()
	max_metal = 0
	max_biomass = 0
	for(var/obj/item/weapon/stock_parts/matter_bin/bin in component_parts)
		max_biomass += bin.rating * 5500
		max_metal += bin.rating * 5500
	. = ..()

/obj/machinery/pod_printer/attack_hand(mob/user)

	if((stat & (BROKEN|NOPOWER)))
		icon_state = "off_empty"
		if(printing)
			icon_state = "off_filled"
		return
	if(printing)
		to_chat(user, "<span class='notice'>Printing in progress.</span>")
		playsound(src.loc, 'sound/machines/buzz-two.ogg', 50, 1)
		return
	var/print = input("Do you wish to begin printing?") as null|anything in choices
	playsound(src.loc, 'sound/machines/buttonbeep.ogg', 50, 1)
	if(!print)
		return
	printing_gender = input("Input gender.") as null|anything in gender_choices
	playsound(src.loc, 'sound/machines/buttonbeep.ogg', 50, 1)
	if(!print || printing || (stat & (BROKEN|NOPOWER)) || !printing_gender)
		return
	printing_name = input("Enter Name.") as text
	playsound(src.loc, 'sound/machines/buttonbeep.ogg', 50, 1)
	if(!printing_name)
		return
	if(!can_print)
		to_chat(user, "<span class='warning'>Unable to print: unknown error.</span>")
		icon_state = "on_error"
		playsound(src.loc, 'sound/machines/buzz-two.ogg', 50, 1)
		src.visible_message("<span class='notice'>[src] buzzes and flashes an error message.</span>")
		spawn(60)
			update_icon()
		return
	if(metal <= required_materials)
		to_chat(user, "<span class='warning'>Unable to print: Not enough metal.</span>")
		src.visible_message("<span class='notice'>[src] buzzes and flashes an error message.</span>")
		playsound(src.loc, 'sound/machines/buzz-two.ogg', 50, 1)
		icon_state = "on_error"
		spawn(60)
			update_icon()
		return

	if(biomass <= required_materials)
		to_chat(user, "<span class='warning'>Unable to print: Not enough biomass.</span>")
		icon_state = "on_error"
		src.visible_message("<span class='notice'>[src] buzzes and flashes an error message.</span>")
		playsound(src.loc, 'sound/machines/buzz-two.ogg', 50, 1)
		spawn(60)
			update_icon()
		return
	playsound(src.loc, 'sound/machines/ping.ogg', 50, 1)
	src.visible_message("<span class='notice'>[src] pings and begins to print.</span>")
	metal -= required_materials
	biomass -= required_materials

	use_power = 2
	printing = 1
	update_icon()
	addtimer(CALLBACK(src, .proc/print_pod), 15 MINUTES)
	if(printing)
		to_chat(user, "<span class='notice'>Printing in progress.</span>")
		playsound(src.loc, 'sound/machines/buzz-two.ogg', 50, 1)
		return

	if(!print || !printing_gender || !src || (stat & (BROKEN|NOPOWER)))
		return

/obj/machinery/pod_printer/Process()
	if((stat & (BROKEN|NOPOWER)))
		print_pod()

/obj/machinery/pod_printer/proc/print_pod()
	if((stat & (BROKEN|NOPOWER)) && printing)
		metal += required_materials
		biomass += required_materials
		icon_state = "off_filled"
		src.visible_message("<span class=\"warning\">[src] gurgles loudly, the unformed figure inside melting away.</span>")
		printing = 0
		spawn(80)
			update_icon()
			playsound(src.loc, 'sound/effects/slosh.ogg', 50, 1)
		return
	if(!printing)
		return
	playsound(src.loc, 'sound/machines/windowdoor.ogg', 50, 1)
	src.visible_message("<span class='notice'>[src] pings and disgourges a new podmorph.</span>")
	var/mob/living/carbon/human/blank/new_pod = new /mob/living/carbon/human/pod(get_turf(src))
	new_pod.gender = printing_gender
	new_pod.regenerate_icons()
	new_pod.check_dna()
	new_pod.real_name = printing_name
	printing = 0
	use_power = 1
	update_icon()