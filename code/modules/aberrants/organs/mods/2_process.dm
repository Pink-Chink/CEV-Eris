/obj/item/modification/organ/internal/process
	name = "organoid (processing)"
	icon_state = "process_organoid"
	bad_type = /obj/item/modification/organ/internal/process

/obj/item/modification/organ/internal/process/map
	name = "tubular organoid"
	desc = "Functional tissue of one or more organs in graftable form. Connects inputs to outputs."
	description_info = "Maps inputs to outputs. Works for any number of inputs and outputs.\n\n\
						Use a laser cutting tool to modify the organ efficiency."

/obj/item/modification/organ/internal/process/map/Initialize(loc, generate_organ_stats = FALSE, predefined_modifier = null)
	AddComponent(/datum/component/modification/organ/process/map)
	..()

/obj/item/modification/organ/internal/process/cooldown
	name = "circadian organoid"
	desc = "Functional tissue of one or more organs in graftable form. Connects inputs to outputs and alters organ processing duration."
	description_info = "Maps inputs to outputs. Works for any number of inputs and outputs.\n\n\
						Use a laser cutting tool to modify the organ efficiency."

/obj/item/modification/organ/internal/process/cooldown/Initialize(loc, generate_organ_stats = FALSE, predefined_modifier = null, list/process_info)
	var/datum/component/modification/organ/process/map/P = AddComponent(/datum/component/modification/organ/process/map)
	P.aberrant_cooldown_time_mod = LAZYLEN(process_info) ? process_info[1] : STANDARD_ABERRANT_COOLDOWN
	..()

/obj/item/modification/organ/internal/process/multiplier
	name = "enzymal organoid"
	desc = "Functional tissue of one or more organs in graftable form. Accelerates biochemical processes, increasing output magnitude."
	description_info = "Maps inputs to outputs. Increases output magnitude.\n\n\
						Use a laser cutting tool to modify the organ efficiency."

/obj/item/modification/organ/internal/process/multiplier/Initialize(loc, generate_organ_stats = FALSE, predefined_modifier = null, list/process_info)
	var/datum/component/modification/organ/process/multiplier/P = AddComponent(/datum/component/modification/organ/process/multiplier)

	var/multiplier = LAZYLEN(process_info) ? process_info[1] : 0.20

	if(multiplier < 0)
		name = "enzymal organoid (inhibitor)"
		desc = "Functional tissue of one or more organs in graftable form. Decelerates biochemical processes, decreasing output magnitude."
		description_info = "Maps inputs to outputs. Decreases output magnitude.\n\n\
							Use a laser cutting tool to modify the organ efficiency."
	else
		name = "enzymal organoid (catalyst)"

	P.multiplier = multiplier
	..()
