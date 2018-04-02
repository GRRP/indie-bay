//Torch ID Cards (they have to be here to make the outfits work, no way around it)

/obj/item/weapon/card/id/torch
	name = "identification card"
	desc = "An identification card issued to personnel aboard the SEV Torch."
	icon_state = "id"
	item_state = "card-id"
	job_access_type = /datum/job/assistant

/obj/item/weapon/card/id/torch/silver
	desc = "A silver identification card belonging to heads of staff."
	icon_state = "silver"
	item_state = "silver_id"
	job_access_type = /datum/job/hop

/obj/item/weapon/card/id/torch/gold
	desc = "A golden identification card belonging to the Commanding Officer."
	icon_state = "gold"
	item_state = "gold_id"
	job_access_type = /datum/job/captain

/obj/item/weapon/card/id/torch/captains_spare
	name = "commanding officer's spare ID"
	desc = "The skipper's spare ID."
	icon_state = "gold"
	item_state = "gold_id"
	registered_name = "Commanding Officer"
	assignment = "Commanding Officer"
/obj/item/weapon/card/id/torch/captains_spare/New()
	access = get_all_station_access()
	..()


// SolGov Crew and Contractors
/obj/item/weapon/card/id/torch/crew
	desc = "An identification card issued to SolGov crewmembers aboard the SEV Torch."
	icon_state = "solgov"
	job_access_type = /datum/job/crew


/obj/item/weapon/card/id/torch/contractor
	desc = "An identification card issued to private contractors aboard the SEV Torch."
	icon_state = "civ"
	job_access_type = /datum/job/assistant


/obj/item/weapon/card/id/torch/silver/medical
	job_access_type = /datum/job/cmo

/obj/item/weapon/card/id/torch/crew/medical
	job_access_type = /datum/job/doctor

/obj/item/weapon/card/id/torch/crew/medical/senior
	job_access_type = /datum/job/senior_doctor

/obj/item/weapon/card/id/torch/contractor/chemist
	job_access_type = /datum/job/chemist

/obj/item/weapon/card/id/torch/contractor/medical/counselor
	job_access_type = /datum/job/psychiatrist


/obj/item/weapon/card/id/torch/silver/security
	job_access_type = /datum/job/hos

/obj/item/weapon/card/id/torch/crew/security
	job_access_type = /datum/job/officer

/obj/item/weapon/card/id/torch/crew/security/brigofficer
	job_access_type = /datum/job/warden

/obj/item/weapon/card/id/torch/crew/security/forensic
	job_access_type = /datum/job/detective


/obj/item/weapon/card/id/torch/silver/engineering
	job_access_type = /datum/job/chief_engineer

/obj/item/weapon/card/id/torch/crew/engineering
	job_access_type = /datum/job/engineer

/obj/item/weapon/card/id/torch/crew/engineering/senior
	job_access_type = /datum/job/senior_engineer

/obj/item/weapon/card/id/torch/contractor/engineering/roboticist
	job_access_type = /datum/job/roboticist


/obj/item/weapon/card/id/torch/crew/supply/deckofficer
	job_access_type = /datum/job/qm

/obj/item/weapon/card/id/torch/crew/supply
	job_access_type = /datum/job/cargo_tech

/obj/item/weapon/card/id/torch/crew/service //unused
	job_access_type = /datum/job/assistant

/obj/item/weapon/card/id/torch/crew/service/janitor
	job_access_type = /datum/job/janitor

/obj/item/weapon/card/id/torch/crew/service/chef
	job_access_type = /datum/job/chef

/obj/item/weapon/card/id/torch/contractor/service //unused
	job_access_type = /datum/job/assistant

/obj/item/weapon/card/id/torch/contractor/service/bartender
	job_access_type = /datum/job/bartender

/obj/item/weapon/card/id/torch/crew/sea
	job_access_type = /datum/job/sea

/obj/item/weapon/card/id/torch/crew/bridgeofficer
	job_access_type = /datum/job/bridgeofficer

/obj/item/weapon/card/id/torch/crew/pathfinder
	job_access_type = /datum/job/pathfinder

/obj/item/weapon/card/id/torch/crew/explorer
	job_access_type = /datum/job/explorer

//NanoTrasen and Passengers

/obj/item/weapon/card/id/torch/passenger
	desc = "A card issued to passengers aboard the SEV Torch."
	icon_state = "id"
	job_access_type = /datum/job/assistant

/obj/item/weapon/card/id/torch/passenger/research/senior_scientist
	job_access_type = /datum/job/senior_scientist

/obj/item/weapon/card/id/torch/passenger/research/scientist
	job_access_type = /datum/job/scientist

/obj/item/weapon/card/id/torch/passenger/research/mining
	job_access_type = /datum/job/mining

//Merchant
/obj/item/weapon/card/id/torch/merchant
	desc = "An identification card issued to Merchants, indicating their right to sell and buy goods."
	icon_state = "trader"
	job_access_type = /datum/job/merchant

//Stowaway
/obj/item/weapon/card/id/torch/stowaway
	desc = "An identification card issued to personnel aboard the SEV Torch. Looks like the photo fell off this one."
	icon_state = "id"
	job_access_type = /datum/job/crew

/obj/item/weapon/card/id/torch/stowaway/New()
	..()
	var/species = SPECIES_HUMAN
	if(prob(10))
		species = pick(SPECIES_SKRELL,SPECIES_TAJARA,SPECIES_IPC)
	var/datum/species/S = all_species[species]
	var/gender = pick(MALE,FEMALE)
	registered_name = S.get_random_name(gender)
	sex = capitalize(gender)
	age = rand(19,25)
	fingerprint_hash = md5(registered_name)
	dna_hash = md5(fingerprint_hash)
	blood_type = RANDOM_BLOOD_TYPE
	update_name()

/obj/item/weapon/card/id/science/med_researcher
	desc = "A card issued to science staff. This one is for a Medical Researcher."
	access = list(access_medical, access_morgue, access_virology, access_maint_tunnels, access_emergency_storage,
				access_crematorium, access_chemistry, access_surgery, access_research, access_xenobiology, access_xenoarch,
				access_expedition_shuttle, access_guppy, access_hangar, access_petrov)

/obj/item/weapon/card/id/science/eng_researcher
	desc = "A card issued to science staff. This one is for an Engineering Researcher."
	access = list(access_tech_storage, access_construction, access_seneng, access_maint_tunnels, access_eva, access_research,
				access_expedition_shuttle, access_guppy, access_hangar, access_petrov)

/obj/item/weapon/card/id/science/sup_researcher
	desc = "A card issued to science staff. This one is for a materials researcher."
	access = list(access_research, access_expedition_shuttle, access_guppy, access_hangar, access_petrov, access_maint_tunnels, access_xenoarch, access_cargo)