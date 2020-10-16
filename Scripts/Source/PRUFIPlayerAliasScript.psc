ScriptName PRUFIPlayerAliasScript extends ReferenceAlias
 
PRUFIScript Property questScript Auto
 
Event OnPlayerLoadGame()
	questScript.Maintenance()
EndEvent