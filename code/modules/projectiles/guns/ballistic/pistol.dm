/obj/item/gun/ballistic/automatic/pistol
	name = "Stechkin"
	desc = "A small, easily concealable 10mm handgun that bears Scarborough Arms stamps. Has a threaded barrel for suppressors."
	icon_state = "pistol"
	w_class = WEIGHT_CLASS_SMALL
	mag_type = /obj/item/ammo_box/magazine/m10mm
	can_suppress = TRUE
	burst_size = 1
	fire_delay = 0 //spam it as fast as you can
	actions_types = list()
	bolt_type = BOLT_TYPE_LOCKING
	fire_sound = 'sound/weapons/gun/pistol/shot.ogg'
	dry_fire_sound = 'sound/weapons/gun/pistol/dry_fire.ogg'
	suppressed_sound = 'sound/weapons/gun/pistol/shot_suppressed.ogg'
	load_sound = 'sound/weapons/gun/pistol/mag_insert_alt.ogg'
	load_empty_sound = 'sound/weapons/gun/pistol/mag_insert_alt.ogg'
	eject_sound = 'sound/weapons/gun/pistol/mag_release_alt.ogg'
	eject_empty_sound = 'sound/weapons/gun/pistol/mag_release_alt.ogg'
	vary_fire_sound = FALSE
	rack_sound = 'sound/weapons/gun/pistol/rack_small.ogg'
	lock_back_sound = 'sound/weapons/gun/pistol/lock_small.ogg'
	bolt_drop_sound = 'sound/weapons/gun/pistol/drop_small.ogg'
	fire_sound_volume = 90
	bolt_wording = "slide"
	weapon_weight = WEAPON_LIGHT
	pickup_sound =  'sound/items/handling/gun_pickup.ogg'
	fire_delay = 1
	manufacturer = MANUFACTURER_SCARBOROUGH

	wield_delay = 0.2 SECONDS
	spread = 2
	spread_unwielded = 5
	wield_slowdown = 0.15

	muzzleflash_iconstate = "muzzle_flash_light"

/obj/item/gun/ballistic/automatic/pistol/no_mag
	spawnwithmagazine = FALSE

/obj/item/gun/ballistic/automatic/pistol/suppressed/Initialize(mapload)
	. = ..()
	var/obj/item/suppressor/S = new(src)
	install_suppressor(S)

/obj/item/gun/ballistic/automatic/pistol/candor
	name = "\improper Candor"
	desc = "A classic semi-automatic handgun, widely popular throughout the Frontier. An engraving on the slide marks it as a product of Hunter's Pride. Chambered in .45."
	icon_state = "candor"
	item_state = "hp_generic"
	w_class = WEIGHT_CLASS_NORMAL
	mag_type = /obj/item/ammo_box/magazine/m45
	can_suppress = FALSE
	fire_sound = 'sound/weapons/gun/pistol/candor.ogg'
	rack_sound = 'sound/weapons/gun/pistol/candor_cocked.ogg'
	lock_back_sound = 'sound/weapons/gun/pistol/slide_lock.ogg'
	bolt_drop_sound = 'sound/weapons/gun/pistol/slide_drop.ogg'
	manufacturer = MANUFACTURER_HUNTERSPRIDE
	load_sound = 'sound/weapons/gun/pistol/candor_reload.ogg'
	load_empty_sound = 'sound/weapons/gun/pistol/candor_reload.ogg'
	eject_sound = 'sound/weapons/gun/pistol/candor_unload.ogg'
	eject_empty_sound = 'sound/weapons/gun/pistol/candor_unload.ogg'
	recoil = -2

/obj/item/gun/ballistic/automatic/pistol/candor/no_mag
	spawnwithmagazine = FALSE

/obj/item/gun/ballistic/automatic/pistol/candor/factory //also give this to the srm, their candors should probably look factory fresh from how well taken care of they are
	desc = "A classic semi-automatic handgun, widely popular throughout the Frontier. An engraving on the slide marks it as a product of Hunter's Pride. This example has been kept in especially good shape, and may as well be fresh out of the workshop. Chambered in .45."
	item_state = "hp_generic_fresh"

/obj/item/gun/ballistic/automatic/pistol/candor/factory/update_overlays()
	. = ..()
	. += "[initial(icon_state)]_factory"

/obj/item/gun/ballistic/automatic/pistol/candor/factory/no_mag
	spawnwithmagazine = FALSE

/obj/item/gun/ballistic/automatic/pistol/deagle
	name = "\improper Desert Eagle"
	desc = "An oversized handgun chambered in .50 AE. A true hand cannon."
	icon_state = "deagle"
	force = 14
	mag_type = /obj/item/ammo_box/magazine/m50
	can_suppress = FALSE
	mag_display = TRUE
	fire_sound = 'sound/weapons/gun/pistol/deagle.ogg'
	rack_sound = 'sound/weapons/gun/pistol/rack.ogg'
	lock_back_sound = 'sound/weapons/gun/pistol/slide_lock.ogg'
	bolt_drop_sound = 'sound/weapons/gun/pistol/slide_drop.ogg'
	manufacturer = MANUFACTURER_NONE
	load_sound = 'sound/weapons/gun/pistol/deagle_reload.ogg'
	load_empty_sound = 'sound/weapons/gun/pistol/deagle_reload.ogg'
	eject_sound = 'sound/weapons/gun/pistol/deagle_unload.ogg'
	eject_empty_sound = 'sound/weapons/gun/pistol/deagle_unload.ogg'
	fire_delay = 0.7 SECONDS
	recoil = 1
	recoil_unwielded = 2
	spread = 4
	spread_unwielded = 7

/obj/item/gun/ballistic/automatic/pistol/deagle/gold
	desc = "A gold-plated Desert Eagle folded over a million times by superior Martian gunsmiths. Uses .50 AE ammo."
	icon_state = "deagleg"
	item_state = "deagleg"

/obj/item/gun/ballistic/automatic/pistol/deagle/camo
	desc = "A Deagle-brand Deagle for operators operating operationally. Uses .50 AE ammo." //I hate this joke with a passion
	icon_state = "deaglecamo"
	item_state = "deagleg"

/obj/item/gun/ballistic/automatic/pistol/APS
	name = "stechkin APS pistol"
	desc = "A burst-fire machine pistol based on the stechkin model. Utilizes specialized 9mm magazines."
	icon_state = "aps"
	w_class = WEIGHT_CLASS_SMALL
	mag_type = /obj/item/ammo_box/magazine/pistolm9mm
	can_suppress = FALSE
	burst_size = 3
	fire_delay = 2
	actions_types = list(/datum/action/item_action/toggle_firemode)

/obj/item/gun/ballistic/automatic/pistol/stickman
	name = "flat gun"
	desc = "A 2 dimensional gun.. what?"
	icon_state = "flatgun"
	manufacturer = MANUFACTURER_NONE

/obj/item/gun/ballistic/automatic/pistol/stickman/pickup(mob/living/user)
	SHOULD_CALL_PARENT(0)
	to_chat(user, "<span class='notice'>As you try to pick up [src], it slips out of your grip..</span>")
	if(prob(50))
		to_chat(user, "<span class='notice'>..and vanishes from your vision! Where the hell did it go?</span>")
		qdel(src)
		user.update_icons()
	else
		to_chat(user, "<span class='notice'>..and falls into view. Whew, that was a close one.</span>")
		user.dropItemToGround(src)

/obj/item/gun/ballistic/automatic/pistol/commander
	name = "\improper Commander"
	desc = "A classic handgun in a tasteful black and stainless steel color scheme. An enamel Nanotrasen logo is set into the grips. Chambered in 9mm."
	icon_state = "commander"
	w_class = WEIGHT_CLASS_NORMAL
	mag_type = /obj/item/ammo_box/magazine/co9mm
	can_suppress = FALSE
	manufacturer = MANUFACTURER_NANOTRASEN
	fire_sound = 'sound/weapons/gun/pistol/commander.ogg'
	load_sound = 'sound/weapons/gun/pistol/mag_insert.ogg'
	load_empty_sound = 'sound/weapons/gun/pistol/mag_insert.ogg'
	eject_sound = 'sound/weapons/gun/pistol/mag_release.ogg'
	eject_empty_sound = 'sound/weapons/gun/pistol/mag_release.ogg'

/obj/item/gun/ballistic/automatic/pistol/commander/no_mag
	spawnwithmagazine = FALSE

/obj/item/gun/ballistic/automatic/pistol/commander/inteq
	name = "\improper Commissioner"
	desc = "A handgun seized from Nanotrasen armories by deserting troopers and modified to IRMG's standards. A yellow IRMG shield is set into the grips. Chambered in 9mm."
	icon_state = "commander-inteq"
	item_state = "commander-inteq"
	manufacturer = MANUFACTURER_INTEQ

/obj/item/gun/ballistic/automatic/pistol/commander/inteq/no_mag
	spawnwithmagazine = FALSE

/obj/item/gun/ballistic/automatic/pistol/commissar
	name = "\improper Commissar"
	desc = "A Nanotrasen-issue handgun, modified with a voice box to further enhance its effectiveness in troop discipline."
	icon_state = "commander"
	w_class = WEIGHT_CLASS_NORMAL
	mag_type = /obj/item/ammo_box/magazine/co9mm
	can_suppress = FALSE
	var/funnysounds = TRUE
	var/cooldown = 0
	load_sound = 'sound/weapons/gun/pistol/mag_insert.ogg'
	load_empty_sound = 'sound/weapons/gun/pistol/mag_insert.ogg'
	eject_sound = 'sound/weapons/gun/pistol/mag_release.ogg'
	eject_empty_sound = 'sound/weapons/gun/pistol/mag_release.ogg'

/obj/item/gun/ballistic/automatic/pistol/commissar/equipped(mob/living/user, slot)
	..()
	if(slot == ITEM_SLOT_HANDS && funnysounds) // We do this instead of equip_sound as we only want this to play when it's wielded
		playsound(src, 'sound/weapons/gun/commissar/pickup.ogg', 30, 0)

/obj/item/gun/ballistic/automatic/pistol/commissar/shoot_live_shot(mob/living/user, pointblank, atom/pbtarget, message)
	. = ..()
	if(prob(50) && funnysounds)
		playsound(src, 'sound/weapons/gun/commissar/shot.ogg', 30, 0)

/obj/item/gun/ballistic/automatic/pistol/commissar/shoot_with_empty_chamber(mob/living/user)
	. = ..()
	if(prob(50) && funnysounds)
		playsound(src, 'sound/weapons/gun/commissar/dry.ogg', 30, 0)

/obj/item/gun/ballistic/automatic/pistol/commissar/insert_magazine(mob/user, obj/item/ammo_box/magazine/AM, display_message)
	. = ..()
	if(bolt_locked)
		drop_bolt(user)
		if(. && funnysounds)
			playsound(src, 'sound/weapons/gun/commissar/magazine.ogg', 30, 0)

/obj/item/gun/ballistic/automatic/pistol/commissar/multitool_act(mob/living/user, obj/item/I)
	. = ..()
	funnysounds = !funnysounds
	to_chat(user, "<span class='notice'>You toggle [src]'s vox audio functions.</span>")

/obj/item/gun/ballistic/automatic/pistol/commissar/AltClick(mob/user)
	if(!user.canUseTopic(src, BE_CLOSE, ismonkey(user)))
		return
	if((cooldown < world.time - 200) && funnysounds)
		user.audible_message("<font color='red' size='5'><b>DON'T TURN AROUND!</b></font>")
		playsound(src, 'sound/weapons/gun/commissar/dontturnaround.ogg', 50, 0, 4)
		cooldown = world.time

/obj/item/gun/ballistic/automatic/pistol/commissar/examine(mob/user)
	. = ..()
	if(funnysounds)
		. += "<span class='info'>Alt-click to use \the [src] vox hailer.</span>"

/obj/item/gun/ballistic/automatic/pistol/solgov
	name = "\improper Pistole C"
	desc = "A favorite of the Terran Regency that is despised by the Solarian bureaucracy. Shifted out of military service centuries ago, though still popular among civilians. Chambered in 5.56mm caseless."
	icon_state = "pistole-c"
	weapon_weight = WEAPON_LIGHT
	w_class = WEIGHT_CLASS_SMALL
	mag_type = /obj/item/ammo_box/magazine/pistol556mm
	fire_sound = 'sound/weapons/gun/pistol/pistolec.ogg'
	manufacturer = MANUFACTURER_SOLARARMORIES
	load_sound = 'sound/weapons/gun/pistol/mag_insert.ogg'
	load_empty_sound = 'sound/weapons/gun/pistol/mag_insert.ogg'
	eject_sound = 'sound/weapons/gun/pistol/mag_release.ogg'
	eject_empty_sound = 'sound/weapons/gun/pistol/mag_release.ogg'

/obj/item/gun/ballistic/automatic/pistol/solgov/old
	icon_state = "pistole-c-old"

/obj/item/gun/ballistic/automatic/pistol/tec9
	name = "\improper TEC-9 machine pistol"
	desc = "A crude machine pistol designed to vomit 9mm ammunition at a truly eye-watering rate of fire."
	icon_state = "tec9"
	weapon_weight = WEAPON_LIGHT
	w_class = WEIGHT_CLASS_SMALL
	mag_type = /obj/item/ammo_box/magazine/tec9
	mag_display = TRUE
	load_sound = 'sound/weapons/gun/pistol/mag_insert.ogg'
	load_empty_sound = 'sound/weapons/gun/pistol/mag_insert.ogg'
	eject_sound = 'sound/weapons/gun/pistol/mag_release.ogg'
	eject_empty_sound = 'sound/weapons/gun/pistol/mag_release.ogg'

/obj/item/gun/ballistic/automatic/pistol/disposable
	name = "disposable gun"
	desc = "An exceedingly flimsy plastic gun that is extremely cheap to produce. You get what you pay for."
	fire_sound = 'sound/weapons/gun/pistol/himehabu.ogg'
	icon_state = "disposable" //credit to discord user any% for the sprite
	w_class = WEIGHT_CLASS_NORMAL
	mag_type = /obj/item/ammo_box/magazine/disposable
	custom_materials = list(/datum/material/plastic=2000)
	can_suppress = FALSE
	manufacturer = MANUFACTURER_NONE
	has_safety = FALSE //thing barely costs anything, why would it have a safety?
	safety = FALSE

/obj/item/gun/ballistic/automatic/pistol/disposable/eject_magazine(mob/user, display_message = TRUE)
	to_chat(user, "<span class='warning'>Theres no magazine to eject!</span>")
	return

/obj/item/gun/ballistic/automatic/pistol/disposable/insert_magazine(mob/user)
	to_chat(user, "<span class='warning'>Theres no magazine to replace!</span>")
	return

/obj/item/gun/ballistic/automatic/pistol/disposable/pizza
	name = "pizza disposable gun"
	desc = "How horrible. Whoever you point at with this won't be very cheesed to meet you." //this is a warcrime against italians // IF YOU'RE GOING TO DO US DIRTY SPELL IT RIGHT
	icon_state = "disposable_pizza"
	custom_materials = list(/datum/material/pizza=2000)

//not technically a pistol but whatever
/obj/item/gun/ballistic/derringer
	name = ".38 Derringer"
	desc = "An easily concealable derringer. Uses .38 special ammo."
	icon_state = "derringer"
	mag_type = /obj/item/ammo_box/magazine/internal/derr38
	fire_sound = 'sound/weapons/gun/revolver/shot.ogg'
	load_sound = 'sound/weapons/gun/revolver/load_bullet.ogg'
	eject_sound = 'sound/weapons/gun/revolver/empty.ogg'
	fire_sound_volume = 60
	dry_fire_sound = 'sound/weapons/gun/revolver/dry_fire.ogg'
	casing_ejector = FALSE
	internal_magazine = TRUE
	bolt_type = BOLT_TYPE_NO_BOLT
	tac_reloads = FALSE
	w_class = WEIGHT_CLASS_TINY

/obj/item/gun/ballistic/derringer/get_ammo(countchambered = FALSE, countempties = TRUE)
	var/boolets = 0 //legacy var name maturity
	if (chambered && countchambered)
		boolets++
	if (magazine)
		boolets += magazine.ammo_count(countempties)
	return boolets

/obj/item/gun/ballistic/derringer/examine(mob/user)
	. = ..()
	var/live_ammo = get_ammo(FALSE, FALSE)
	. += "[live_ammo ? live_ammo : "None"] of those are live rounds."

/obj/item/gun/ballistic/derringer/traitor
	name = "\improper .357 Syndicate Derringer"
	desc = "An easily concealable derriger, if not for the bright red-and-black. Uses .357 ammo."
	icon_state = "derringer_syndie"
	mag_type = /obj/item/ammo_box/magazine/internal/derr357
	fire_sound_volume = 50 //Tactical stealth firing

/obj/item/gun/ballistic/derringer/gold
	name = "\improper Golden Derringer"
	desc = "The golden sheen is somewhat counter-intuitive on a holdout weapon, but it looks cool. Uses .357 ammo."
	icon_state = "derringer_gold"
	mag_type = /obj/item/ammo_box/magazine/internal/derr357

/obj/item/gun/ballistic/automatic/pistol/himehabu
	name = "\improper Himehabu"
	desc = "A very small .22 LR pistol. The long awaited successor to the Stechkin; It has become a favorite among syndicate spies. Chambered in .22 LR."
	icon_state = "himehabu"
	w_class = WEIGHT_CLASS_TINY
	mag_type = /obj/item/ammo_box/magazine/m22lr
	can_suppress = FALSE
	fire_sound = 'sound/weapons/gun/pistol/himehabu.ogg'

	recoil = -2
	recoil_unwielded = -2
	spread_unwielded = 0
	wield_slowdown = 0
