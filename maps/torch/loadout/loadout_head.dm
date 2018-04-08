/datum/gear/head/solberet
	display_name = "SolGov beret selection"
	description = "A beret denoting service in an organization within SolGov."
	path = /obj/item/clothing/head/beret/solgov
//	allowed_roles = SOLGOV_ROLES

/datum/gear/head/solberet/New()
	..()
	var/berets = list()
	berets["peacekeeper beret"] = /obj/item/clothing/head/beret/solgov
	berets["home guard beret"] = /obj/item/clothing/head/beret/solgov/homeguard
	berets["gateway administration beret"] = /obj/item/clothing/head/beret/solgov/gateway
	berets["customs and trade beret"] = /obj/item/clothing/head/beret/solgov/customs
	berets["government research beret"] = /obj/item/clothing/head/beret/solgov/research
	berets["health service beret"] = /obj/item/clothing/head/beret/solgov/health
	berets["diplomatic security beret"] = /obj/item/clothing/head/beret/solgov/diplomatic
	berets["border security beret"] = /obj/item/clothing/head/beret/solgov/borderguard
	gear_tweaks += new/datum/gear_tweak/path(berets)

/datum/gear/head/veteranhat
	display_name = "veteran hat"
	path = /obj/item/clothing/head/soft/solgov/veteranhat
//	allowed_roles = NON_MILITARY_ROLES

/datum/gear/head/solhat
	display_name = "sol central government hat"
	path = /obj/item/clothing/head/soft/solgov

/datum/gear/head/fleethat
	display_name = "fleet cap"
	path = /obj/item/clothing/head/solgov/utility/fleet
	cost = 0

/datum/gear/head/veteranhat
	display_name = "veteran hat"
	path = /obj/item/clothing/head/soft/solgov/veteranhat

/datum/gear/head/surgical
	allowed_roles = STERILE_ROLES

/datum/gear/head/whitentberet
	allowed_roles = SECURITY_ROLES

/datum/gear/head/beret

/datum/gear/mask/bandana

/datum/gear/head/bandana

/datum/gear/head/bow

/datum/gear/head/cap

/datum/gear/head/hairflower

/datum/gear/head/hardhat
	allowed_roles = TECHNICAL_ROLES

/datum/gear/head/formalhat

/datum/gear/head/ushankas

/datum/gear/head/cowboys

/datum/gear/head/welding
	allowed_roles = TECHNICAL_ROLES