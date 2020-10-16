Mod Name:
    PRUFEI - Protection for Recipes Using Favorite and Equipped Items

Version:
    0.7.1 (Beta)

Important note for end users:
    Requires Elementary Smelting v0.9.1b or greater (or another compatible mod).
	This version WILL NOT WORK WITH ELEMENTARY SMELTING v0.8.1b OR EARLIER!
	Thank you for reading this note. If you have questions my contact details are
    available towards the end of the readme.

Important note for mod authors (not relevant for end users):
    The conditional rules required in each recipe have changed in this version.
    I thought hard on how to avoid this but the end users come first and in the
    end I had to change the recipe rules. Your old recipes can be easily updated
    simply by deleting the last two conditional rules on each recipe. See the
    "For Mod Authors" section below for details.

Author:
    Matthew R. Karlsen (quixoticynic)

Nexus Mods files page:
    http://www.nexusmods.com/games/users/3546091/?tb=mods&pUp=1

Mod Description:
    This mod stops you accidentally breaking-down favorite and equipped items when
      using recipes in compatible mods. This mod would have been impossible without
      major assistance from 'mrpwn' and 'IsharaMeradin' (who are not responsible for
      any bugs that may remain). ipmlj has also provided assistance improving the text
      used in the mod's messages. 
    For the mod to actually protect favorite items requires the break-down recipes to
      be set up in a particular way, such as in the "Elementary Smelting" mod, or
      in other mods that make use of PRUFEI. By itself this mod will have no effect,
      it merely enables the *possibility* of breakdown recipes that protect items.
    
Installation:
    Install USKP
    Install SKSE
    Copy "PRUFEI.esp" to your Skyrim data directory.
      Usually located at C:\Program Files\steam\steamapps\common\skyrim\Data\
      or C:\Program Files (x86)\steam\steamapps\common\skyrim\Data\
    Copy "PRUFIScript.pex" to the Scripts directory within your Skyrim data directory.
      Usually located at C:\Program Files\steam\steamapps\common\skyrim\Data\Scripts\
      or C:\Program Files (x86)\steam\steamapps\common\skyrim\Data\Scripts\
    Ensure that "Unofficial Skyrim Patch.esp", and "PRUFEI.esp" are enabled in your
    Skyrim Data Files menu. Ensure that they are loaded in the order listed here (i.e.
    USKP, followed by PRUFEI).

Changes:
    v0.5.1 -- Initial public release.
    v0.6.1 -- The script has been made more robust via the introduction of a 
                maintenance function.
    v0.6.2 -- Small change to ensure the mod updates smoothly from v0.5.1.
	v0.7.1 -- Crafting access is blocked whilst your favorites list is updated.

Credits:
    Created by Matthew R. Karlsen (quixoticynic)
    This mod would have been impossible without major assistance from 'mrpwn' and 
      'IsharaMeradin'. They have provided valuable assistance both in creation of
      the initial public release and in creation of the more robust v0.6.2 release.
      For the v0.6.2 release 'mrpwn' provided a suggestion to improve compatibility
      with game controllers and also pointed me in the correct direction with 
      respect to the implementation of a maintenance function. ipmlj has also 
      provided assistance improving the text used in the mod's messages.
      These mod authors are not responsible for any bugs that may remain.
        
Thanks:
    Thank you for downloading and trying this mod. If you have any feedback please 
      post it on the mod's forum thread. You can contact me directly using 
      firstname@lastname.me.uk where you replace firstname and lastname with my first
      and last names respectively.
    
For Mod Authors:
    To use PRUFEI you must set it's ESP as a master file (ESM) when editing your mod
      ESP (using Wrye Bash or similar) and then set the ESM back to an ESP after
      editing.
    The following conditional rules are required in each recipe:
      PL    GetItemCount    Armor:'ArmorDwarvenBoots'    >     1.00    OR
      PL    GetItemCount    Armor:'ArmorDwarvenBoots'    >     0.00    AND
      PL    GetItemCount    Armor:'ArmorDwarvenBoots'    >     1.00    OR
      R     GetItemCount    Armor:'ArmorDwarvenBoots'    ==    0.00    AND
      PL    GetItemCount    Armor:'ArmorDwarvenBoots'    >     1.00    OR
      PL    GetEquipped     Armor:'ArmorDwarvenBoots'    ==    0.00    AND
    In the above example the breakdown recipe is using 'ArmorDwarvenBoots' as the
      input item. You can replace ArmorDwarvenBoots with any item you want to use.
    For the 'R' recipe, you want to select the Cell as 'PRUFEICell' and the Ref
      as 'PRUFEIChest 030012D2'.

License:

Formally, the mod is released under the BSD 2-Clause License:

Copyright (c) 2014, Matthew R. Karlsen (quixoticynic)
All rights reserved.

Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:

1. Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.

2. Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.