if SERVER then

    hook.Add( "PlayerNoClip", "ncc_access_check", function( ply, noclipState )

        if ULib ~= nil then

            noclip_access_result = ULib.ucl.query( ply, "Noclip Access" )	
            
        end
        if noclip_access_result then
            
            return true
        
        elseif not noclip_access_result and noclipState == false then

            return true

        else
        
            return false

        end

    end )

end