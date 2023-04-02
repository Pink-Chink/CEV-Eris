// ORGANIC
// Factions represented: Bradhaanata (fungal/food), Santana (drugs/drink), Frozen Star (combat hormones and stat boosts), OMG (off-beat)
// ROBOTIC
// Factions represented: Oberth/MakroRobotiks, Danube, Streltsy

// =================================================
// ================     ORGANIC     ================
// =================================================

// =====================================
// ========     Bradhaanata     ========
// =====================================

/obj/item/organ/internal/scaffold/aberrant/bradhanaata
	rarity_value = 60
	spawn_tags = SPAWN_TAG_ABERRANT_ORGAN_MAINT
	spawn_blacklisted = TRUE
	bad_type = /obj/item/organ/internal/scaffold/aberrant/bradhanaata

	use_generated_name = FALSE

	aberrant_cooldown_time = EXTENDED_ABERRANT_COOLDOWN

	input_mod_path = /obj/item/modification/organ/internal/input/reagents
	process_mod_path = /obj/item/modification/organ/internal/process/multiplier

	specific_input_type_pool = REAGENTS_FUNGAL
	input_mode = CHEM_INGEST
	process_info = list(0.50)

// produce food
// chem smoke, maintshroom pool?

// =====================================
// ==========     Santana     ==========
// =====================================

/obj/item/organ/internal/scaffold/aberrant/santana
	ruined_name = null
	ruined_desc = null
	ruined_color = null
	rarity_value = 60
	spawn_tags = SPAWN_TAG_ABERRANT_ORGAN_MAINT
	spawn_blacklisted = TRUE
	bad_type = /obj/item/organ/internal/scaffold/aberrant/santana
	max_upgrades = 4

	use_generated_name = FALSE

	aberrant_cooldown_time = EXTENDED_ABERRANT_COOLDOWN

	input_mod_path = /obj/item/modification/organ/internal/input/reagents
	process_mod_path = /obj/item/modification/organ/internal/process/map
	special_mod_path = /obj/item/modification/organ/internal/parenchymal/large

	specific_input_type_pool = list(/datum/reagent/water)
	input_mode = CHEM_INGEST

/obj/item/organ/internal/scaffold/aberrant/santana/kidney
	name = "aristocrat's kidney"
	organ_efficiency = list(OP_KIDNEYS = 50)
	parent_organ_base = BP_GROIN
	specific_organ_size = 1
	blood_req = 0
	max_blood_storage = 7.5
	oxygen_req = 2.5
	nutriment_req = 1

	output_mod_path = /obj/item/modification/organ/internal/output/reagents_blood

	input_mode = CHEM_BLOOD
	output_pool = REAGENTS_DRUGS
	output_info = list(LOW_OUTPUT)
	price_tag = 2000

/obj/item/organ/internal/scaffold/aberrant/santana/liver
	name = "aristocrat's liver"
	organ_efficiency = list(OP_LIVER = 100)
	parent_organ_base = BP_GROIN
	blood_req = 0
	max_blood_storage = 25
	oxygen_req = 7
	nutriment_req = 2.5

	output_mod_path = /obj/item/modification/organ/internal/output/reagents_ingest

	output_pool = REAGENTS_SANTANA_COCKTAIL
	output_info = list(MID_OUTPUT)
	price_tag = 4500

// =====================================
// ============     OMG     ============
// =====================================

/obj/item/organ/internal/scaffold/aberrant/scrub_toxin
	rarity_value = 40
	bad_type = /obj/item/organ/internal/scaffold/aberrant/scrub_toxin

	use_generated_name = FALSE

	input_mod_path = /obj/item/modification/organ/internal/input/reagents
	process_mod_path = /obj/item/modification/organ/internal/process/map
	output_mod_path = /obj/item/modification/organ/internal/output/chemical_effects

	specific_input_type_pool = list(/datum/reagent/toxin)
	output_pool = TYPE_3_HORMONES
	output_info = list(NOT_USED)

/obj/item/organ/internal/scaffold/aberrant/scrub_toxin/blood
	name = "filtration node"
	desc = "A finely engineered organ. Scrubs toxins from the bloodstream."
	input_mode = CHEM_BLOOD

/obj/item/organ/internal/scaffold/aberrant/scrub_toxin/ingest
	name = "hepatic lobe"
	desc = "A finely engineered organ. Scrubs ingested toxins."
	input_mode = CHEM_INGEST

/obj/item/organ/internal/scaffold/aberrant/scrub_toxin/touch
	name = "exocrine gland"
	desc = "A finely engineered organ. Scrubs toxins absorbed through the skin."
	input_mode = CHEM_TOUCH

/obj/item/organ/internal/scaffold/aberrant/gastric
	name = "gastric sac"
	desc = "A finely engineered organ for second breakfast. Turns a reagent into nutriment."
	rarity_value = 40

	use_generated_name = FALSE

	input_mod_path = /obj/item/modification/organ/internal/input/reagents
	process_mod_path = /obj/item/modification/organ/internal/process/multiplier
	output_mod_path = /obj/item/modification/organ/internal/output/reagents_ingest

	specific_input_type_pool = list(/datum/reagent/other/crayon_dust, /datum/reagent/other/paint, /datum/reagent/other/ultraglue, /datum/reagent/other/space_cleaner,
									/datum/reagent/toxin/carpotoxin, /datum/reagent/toxin/fertilizer)
	input_mode = CHEM_INGEST
	output_pool = list(/datum/reagent/organic/nutriment/coco, /datum/reagent/organic/nutriment/cherryjelly, /datum/reagent/organic/nutriment/honey)
	output_info = list(MID_OUTPUT)

/obj/item/organ/internal/scaffold/aberrant/damage_response
	name = "endocrine gland"
	desc = "A finely engineered organ. Secretes chemicals in response to pain or injury."
	rarity_value = 40

	use_generated_name = FALSE

	input_mod_path = /obj/item/modification/organ/internal/input/damage
	process_mod_path = /obj/item/modification/organ/internal/process/multiplier
	output_mod_path = /obj/item/modification/organ/internal/output/reagents_blood

	specific_input_type_pool = ALL_DAMAGE_TYPES
	input_mode = NOT_USED
	input_threshold = 20
	output_pool = list(/datum/reagent/medicine/bicaridine, /datum/reagent/medicine/polystem, /datum/reagent/medicine/dermaline)
	output_info = list(MID_OUTPUT)

/obj/item/organ/internal/scaffold/aberrant/wifebeater
	name = "wifebeater's liver"
	ruined_name = "liver scaffold"
	desc = "A finely engineered organ for when you really need to put someone in their place."
	ruined_desc = "A modular liver with four slots for organ mods or organoids."
	ruined_color = null
	rarity_value = 60
	bad_type = /obj/item/organ/internal/scaffold/aberrant/wifebeater
	max_upgrades = 4

	organ_efficiency = list(OP_LIVER = 100)
	parent_organ_base = BP_GROIN
	blood_req = 0
	max_blood_storage = 25
	oxygen_req = 7
	nutriment_req = 2.5

	use_generated_name = FALSE

	input_mod_path = /obj/item/modification/organ/internal/input/reagents
	process_mod_path = /obj/item/modification/organ/internal/process/cooldown
	output_mod_path = /obj/item/modification/organ/internal/output/stat_boost
	special_mod_path = /obj/item/modification/organ/internal/on_cooldown/stat_boost

	specific_input_type_pool = list(
		/datum/reagent/alcohol/beer, /datum/reagent/alcohol/ale, /datum/reagent/alcohol/roachbeer
	)
	input_mode = CHEM_INGEST
	process_info = list(EXTENDED_ABERRANT_COOLDOWN)
	output_pool = list(STAT_ROB)
	output_info = list(15)
	special_info = list(STAT_ROB, 15)
