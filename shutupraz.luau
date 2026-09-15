local service = {
    ["RunService"] = game:GetService("RunService");
    ["RepStorage"] = game:GetService("ReplicatedStorage");
}

service.RunService.RenderStepped:Connect(function(deltaTime)
    if time() % 2 == 0 then
        warn("shut up raz")
    else
        task.wait(1/30)
    end
end)
