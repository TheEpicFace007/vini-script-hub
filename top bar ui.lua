Palette = {
    Color3.fromRGB(240, 109, 242); -- pink
    -- fitting BLUEs
    Color3.fromRGB(88, 82, 242); -- dark blue
    Color3.fromRGB(92, 130, 242); -- blue
    ---
    Color3.fromRGB(242, 226, 5); -- yellow
    Color3.fromRGB(242, 242, 242) -- white
};
dock = script.Parent;
tweenService = game:GetService("TweenService")

do -- rend le dock opaque au survol de la souris

    onMouseEnter = function()
        local tweenInfo = TweenInfo.new(
                              0.5, Enum.EasingStyle.Cubic,
                              Enum.EasingDirection.InOut, 0, false, 0)
        local tween = tweenService:Create(
                          dock, tweenInfo, {ImageTransparency = 0.2})
        tween:Play()
    end

    onMouseLeave = function()
        local tweenInfo = TweenInfo.new(
                              0.89, Enum.EasingStyle.Cubic,
                              Enum.EasingDirection.InOut, 0, false, 0)
        local tween = tweenService:Create(
                          dock, tweenInfo, {ImageTransparency = 0.5})
        tween:Play()
    end
    dock.MouseEnter:Connect(onMouseEnter);
    dock.MouseLeave:Connect(onMouseLeave)
end

do -- quand tu met ta souris devent un piton
    for _, v in next, dock:GetChildren() do
        if v.ClassName == "ImageButton" then
            do -- le piton ou ya limage(pas le label)

                onMouseEnter = function()
                    local tweenInfo = TweenInfo.new(
                                          0.5, Enum.EasingStyle.Cubic,
                                          Enum.EasingDirection.InOut, 0, false,
                                          0 -- 1.144
                    )
                    local tween = tweenService:Create(
                                      dock, tweenInfo, {
                            Position = UDim2.fromOffset(UDim2.X.Offset, 1.144)
                        })
                    tween:Play()
                end

                onMouseLeave = function()
                    print("on mouse leave")
                    local tweenInfo = TweenInfo.new(
                                          0.89, Enum.EasingStyle.Cubic,
                                          Enum.EasingDirection.InOut, 0, false,
                                          0)
                    local tween = tweenService:Create(
                                      dock, tweenInfo, {
                            Position = UDim2.fromOffset(UDim2.X.Offset, 0.571)
                        })
                    tween:Play()
                end
            end

        end
    end
end
