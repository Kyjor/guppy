using JulGame.MainLoop 

mutable struct GameManager
    parent

    function GameManager()
        this = new()

        return this
    end
end

function Base.getproperty(this::GameManager, s::Symbol)
    if s == :initialize
        function()
            MAIN.cameraBackgroundColor = [252, 223, 205]
        end
    elseif s == :update
        function(deltaTime)
        end
    elseif s == :setParent 
        function(parent)
            this.parent = parent
        end
    else
        try
            getfield(this, s)
        catch e
            println(e)
        end
    end
end