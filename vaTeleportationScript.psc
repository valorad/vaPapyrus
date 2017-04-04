Scriptname vaTeleportationScript extends activemagiceffect  
{Script teleport to somewhere}

ObjectReference Property destination auto

vaVarStorageScript Property vaVarStorage Auto

Event OnEffectStart(Actor target, Actor caster)

	If(vaVarStorage.vaTeleportSourceMarker == none)	
		; store original position
		vaVarStorage.vaTeleportSourceMarker = caster as ObjectReference ; has a problem here, the value does not assign to quest
		Debug.trace("has just set TeleportSourceMarker, now it being " + vaVarStorage.vaTeleportSourceMarker) ; shows none
	Else
	; if the marker does exist, then the target is being teleporting back
		vaVarStorage.vaTeleportSourceMarker = none
	EndIf
endEvent

Event OnEffectFinish(Actor target, Actor caster)
	; if the marker does not exist, then the target is being teleporting to somewhere

	If(vaVarStorage.vaTeleportSourceMarker == none)	
		target.MoveTo(destination)
	Else
	; if the marker does exist, then the target is being teleporting back
		target.MoveTo(vaVarStorage.vaTeleportSourceMarker)
	EndIf

EndEvent