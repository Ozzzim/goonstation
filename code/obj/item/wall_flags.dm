/obj/item/flag
	name = "flag"
	desc = "Neat! It's folded up, ready to deploy."
	icon = 'icons/obj/items/flag.dmi'
	icon_state = "blank"
	/// Must by a type path of `/obj/decal/poster/flag`.
	var/associated_flag = /obj/decal/poster/flag

	afterattack(turf/simulated/T, mob/user)
		if (locate(/obj/decal/poster/flag) in T)
			return
		if (istype(T, /turf/simulated/wall/) || istype(T, /turf/unsimulated/wall))
			var/obj/decal/poster/flag/new_flag = new src.associated_flag(T)
			new_flag.flag_item = src
			user.u_equip(src)
			src.set_loc(new_flag)
			logTheThing(LOG_STATION, user, "Hangs up a flag ([new_flag.name]) in [T] at [log_loc(user)].")
			user.visible_message("<span class='notice'>[user] hangs up a [new_flag.name] in [T]!.</span>", "<span class='notice'>You hang up a [new_flag.name] in [T]!</span>")

	ace
		name = "asexual pride flag"
		icon_state = "ace"
		associated_flag = /obj/decal/poster/flag/ace

	aro
		name = "aromantic pride flag"
		icon_state = "aro"
		associated_flag = /obj/decal/poster/flag/aro

	bisexual
		name = "bisexual pride flag"
		icon_state = "bisexual"
		associated_flag = /obj/decal/poster/flag/bisexual

	demisexual
		name = "demisexual pride flag"
		icon_state = "demisexual"
		associated_flag = /obj/decal/poster/flag/demisexual

	genderqueer
		name = "genderqueer pride flag"
		icon_state = "genderqueer"
		associated_flag = /obj/decal/poster/flag/genderqueer

	intersex
		name = "intersex pride flag"
		icon_state = "intersex"
		associated_flag = /obj/decal/poster/flag/intersex

	lesb
		name = "lesbian pride flag"
		icon_state = "lesb"
		associated_flag = /obj/decal/poster/flag/lesb

	nb
		name = "non-binary pride flag"
		icon_state = "nb"
		associated_flag = /obj/decal/poster/flag/nb

	pan
		name = "pansexual pride flag"
		icon_state = "pan"
		associated_flag = /obj/decal/poster/flag/pan

	polysexual
		name = "polysexual pride flag"
		icon_state = "polysexual"
		associated_flag = /obj/decal/poster/flag/polysexual

	progressive
		name = "progressive pride flag"
		icon_state = "progressive"
		associated_flag = /obj/decal/poster/flag/progressive

	rainbow
		name = "rainbow flag"
		icon_state = "rainbow"
		associated_flag = /obj/decal/poster/flag/rainbow

	trans
		name = "transgender pride flag"
		icon_state = "trans"
		associated_flag = /obj/decal/poster/flag/trans
