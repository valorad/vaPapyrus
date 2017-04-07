Scriptname vaTeleportationScript extends activemagiceffect  
{Script teleport to somewhere}

ObjectReference Property destination auto

vaVarStorageScript Property vaVarStorage Auto

Event OnEffectFinish(Actor target, Actor caster)
	; if the marker does not exist, then the target is being teleporting to somewhere
	If(vaVarStorage.vaTeleportSourceMarker == none)	
		ObjectReference teleMarker = caster.PlaceAtMe(Game.GetForm(0x00000034))
		vaVarStorage.vaTeleportSourceMarker = teleMarker ; has a problem here, the value does not assign to quest
		target.MoveTo(destination)
	Else
	; if the marker does exist, then the target is being teleporting back
		target.MoveTo(vaVarStorage.vaTeleportSourceMarker)
		vaVarStorage.vaTeleportSourceMarker.delete()
		vaVarStorage.vaTeleportSourceMarker = none
	EndIf
EndEvent