/datum/species/human/gravworlder
	name = "Gravity-Adapted Human"
	name_plural = "Gravity-Adapted Humans"
	blurb = "Heavier, bigger, and stronger compared to a baseline human, Gravity-Adapted Humans \
	were engineered for work in high-gravity, dangerous, hostile environments. As a result \
	of this, they have thick radiation-resistant skin due to a high lead content, dense bones, \
	and recessed eyes beneath a prominent brow in order to shield them from the glare of a \
	dangerously bright alien sun. Their skin, and dense bones allow them to survive straining \
	physical activity, even though they do not see as well due to their recessed eyes. This makes \
	them less mobile, flexible, and causes them to have higher oxygen requirements in order to \
	support their heavy metabolism. Their organs also have a slightly harder time keeping up, \
	resulting in a less effective filtration of toxins in their bloodstream, aswell as a heightened \
	appetite in order to be able to support their body's high energy intake needs."
	icobase = 'icons/mob/human_races/subspecies/r_gravworlder.dmi'
	
	//MODIFIERS
	brute_mod = 0.8
	burn_mod = 0.8
	oxy_mod = 1.1
	toxins_mod = 1.1
	radiation_mod = 0.5
	flash_mod = 0.8
	metabolism_mod = 0.9
	darksight = 1 //Default: 2
	slowdown = 1 //Default: 0 - I believe this is ticks.
	siemens_coefficient = 1.1 //Default: 1 - Lead contents.
	stomach_capacity = 6 //Default: 5 - Big one needs more food.
	hunger_factor = DEFAULT_HUNGER_FACTOR * 1.1 //Slow metabolism, but high energy needs, therefore more hunger.
	strength = STR_HIGH //Default: STR_NORMAL - Reduces slowdown by worn clothing. They're stronger, so they shouldn't be slowed down as much.

	//PRESSURE MODIFIERS
	warning_high_pressure = WARNING_HIGH_PRESSURE //Higher is better.
	hazard_high_pressure = HAZARD_HIGH_PRESSURE
	warning_low_pressure = WARNING_LOW_PRESSURE //Lower is better.
	hazard_low_pressure = HAZARD_LOW_PRESSURE

	//TEMPERATURE MODIFIERS
	heat_level_1 = 380 //Default: 360 - Higher is better. Thick skin works well as an insulator.
	heat_level_2 = 420 //Default: 400
	heat_level_3 = 1020 //Default: 1000

	cold_level_1 = 240 //Default: 260 - Lower is better. Thick skin works well as an insulator.
	cold_level_2 = 180 //Default: 200
	cold_level_3 = 100 //Default: 120

	body_temperature = T0C - 15 //A bit hotter than usual, as per their metabolism. They use up more energy.

	//FLAGS
	appearance_flags = HAS_HAIR_COLOR | HAS_SKIN_TONE_GRAV | HAS_LIPS | HAS_UNDERWEAR | HAS_EYE_COLOR

/* ----------------------------------------------------------------------------------------------------------------------------------------------- */

/datum/species/human/spacer
	name = "Space-Adapted Human"
	name_plural = "Space-Adapted Humans"
	blurb = "Lithe, smaller, and frail compared to a baseline human, Space-Adapted Humans were engineered for \
	work in low-gravity, less dangerous, and less hostile environments that lack light, gravity, and \
	a sufficient atmosphere. As a result of this, they have a flexible skin, porous malleable bones, \
	and larger eyes, which allows them to see better, and survive in low-gravity, unsatisfactory \
	atmosphere, low-light environments. Due to their light skin, porous bones, and larger eyes they \
	are far less suitable for any physical trauma, aswell as exposure to lights overall. Their light, \
	small build makes them very flexible, mobile, and fit for work in confined spaces. Aswell as per \
	their light metabolism, they do not need to eat as much, and their organs do not have to work as \
	hard either due to this, which allows them to purge toxins at a faster rate, and makes them quite \
	resistant to asphyxiation."
	icobase = 'icons/mob/human_races/subspecies/r_spacer.dmi'

	//MODIFIERS
	brute_mod = 1.2
	burn_mod = 1.2
	oxy_mod = 0.6
	toxins_mod = 0.6
	radiation_mod = 0.8
	flash_mod = 1.2
	metabolism_mod = 1.1
	darksight = 8 //Default: 2
	slowdown = -1 //Default: 0 - I believe this is ticks.
	siemens_coefficient = 1 //Default: 1
	stomach_capacity = 4 //Default: 5 - Small one needs less food.
	hunger_factor = DEFAULT_HUNGER_FACTOR * 0.9 //Fast metabolism, but smaller energy needs, therefore less hunger.
	strength = STR_MEDIUM //Default: STR_MEDIUM - Will be slowed down as per normal with heavier clothing. Not very strong, so it makes sense. STR_LOW is too low, and makes them unable to move at a reasonable speed.

	//PRESSURE MODIFIERS
	warning_high_pressure = WARNING_HIGH_PRESSURE * 1.2 //Higher is better.
	hazard_high_pressure = HAZARD_HIGH_PRESSURE * 1.2 //Higher is better.
	warning_low_pressure = WARNING_LOW_PRESSURE * 0.8 //Lower is better.
	hazard_low_pressure = HAZARD_LOW_PRESSURE * 0.8 //Lower is better.

	//TEMPERATURE MODIFIERS
	heat_level_1 = 340 //Default: 360 - Higher is better. Light skin means they are affected more by temperature.
	heat_level_2 = 380 //Default: 400
	heat_level_3 = 100 //Default: 1000

	cold_level_1 = 280 //Default: 260 - Lower is better. Light skin means they are affected more by temperature.
	cold_level_2 = 420 //Default: 400
	cold_level_3 = 1020 //Default: 1000

	body_temperature = T0C + 15 //A bit colder than usual, as per their metabolism. They use less energy.

	//FLAGS
	appearance_flags = HAS_HAIR_COLOR | HAS_SKIN_TONE_SPCR | HAS_LIPS | HAS_UNDERWEAR | HAS_EYE_COLOR
	
/* ----------------------------------------------------------------------------------------------------------------------------------------------- */

/datum/species/human/vatgrown
	name = "Vat-Grown Human"
	name_plural = "Vat-Grown Humans"
	blurb = "With cloning on the forefront of human scientific advancement, cheap mass production \
	of bodies is a very real and rather ethically grey industry. Vat-grown humans tend to be paler than \
	baseline, with no appendix and fewer inherited genetic disabilities, but a weakened metabolism."
	icobase = 'icons/mob/human_races/subspecies/r_vatgrown.dmi'

	//MODIFIERS
	toxins_mod = 1.1

	//ORGANS - They do not have an appendix, and this has to be specified.
	has_organ = list(
		BP_HEART =    /obj/item/organ/internal/heart,
		BP_LUNGS =    /obj/item/organ/internal/lungs,
		BP_LIVER =    /obj/item/organ/internal/liver,
		BP_KIDNEYS =  /obj/item/organ/internal/kidneys,
		BP_BRAIN =    /obj/item/organ/internal/brain,
		BP_EYES =     /obj/item/organ/internal/eyes
	)

/datum/species/human/vatgrown/sanitize_name(name)
	return sanitizeName(name, allow_numbers=TRUE)

/datum/species/human/vatgrown/get_random_name(gender)
	// #defines so it's easier to read what's actually being generated
	#define LTR ascii2text(rand(65,90)) // A-Z
	#define NUM ascii2text(rand(48,57)) // 0-9
	#define NAME capitalize(pick(gender == FEMALE ? GLOB.first_names_female : GLOB.first_names_male))
	switch(rand(1,4))
		if(1) return NAME
		if(2) return "[LTR][LTR]-[NAME]"
		if(3) return "[NAME]-[NUM][NUM][NUM]"
		if(4) return "[LTR][LTR]-[NUM][NUM][NUM]"
	. = 1 //Never executed, works around http://www.byond.com/forum/?post=2072419
	#undef LTR
	#undef NUM
	#undef NAME

/* ----------------------------------------------------------------------------------------------------------------------------------------------- */

/datum/species/human/podgrown
	name = "Podmorph Human"
	name_plural = "Podmorph Humans"
	blurb = "With cloning on the forefront of human scientific advancement, cheap mass production \
	of bodies is a very real and rather ethically grey industry. Podmorphs are designed for those who can't accept vatgrowns. \
	Horrifying amalgams of flesh and machine, these artifical humans exist as a cheap substitue for actual vatgrown bodies.\
	Their bodies are frail, and their flesh weak. These amalgams are often used on the Rim, where cloning is often unavaliable.\
	and lace technology common."
	icobase = 'icons/mob/human_races/subspecies/r_podmorph.dmi'

	//MODIFIERS
	toxins_mod = 0.90
	brute_mod = 1.25
	burn_mod =  1.4

	//ORGANS
	has_organ = list(
		BP_HEART =    /obj/item/organ/internal/heart/pod,
		BP_LUNGS =    /obj/item/organ/internal/lungs/pod,
		BP_LIVER =    /obj/item/organ/internal/liver/pod,
		BP_KIDNEYS =  /obj/item/organ/internal/kidneys/pod,
		BP_BRAIN =    /obj/item/organ/internal/brain/pod,
		BP_EYES =     /obj/item/organ/internal/eyes/pod
	)

	//FLAGS
	appearance_flags = HAS_HAIR_COLOR | HAS_SKIN_TONE_SPCR | HAS_LIPS | HAS_UNDERWEAR | HAS_EYE_COLOR