-- Cyber was here :3

local l = bl and 1 or -1
local d = (bl and 1) or -0.43
local a = (bl and 1) or 0.8

global.timeSpent = 0.0;

global.floating = 0.0;

renderAsBlock:put("minecraft:redstone", false)

-- Egg, Brown Egg, Blue Egg
if (
	I:isOf(item, Items:get("minecraft:egg")) or
	I:isOf(item, Items:get("minecraft:brown_egg")) or
	I:isOf(item, Items:get("minecraft:blue_egg"))
) then
	M:moveY(matrices, 0.05)
	M:moveX(matrices, 0 * l)
	M:moveZ(matrices, 0.1)
	
	M:rotateX(matrices, -60)
	M:rotateY(matrices, 0 * l)
	M:rotateZ(matrices, 0 * l)

	M:scale(matrices, 1.2, 1.2, 1.2)
end

-- Pottery Sherds
if (
	I:isOf(item, Items:get("minecraft:angler_pottery_sherd")) or
	I:isOf(item, Items:get("minecraft:archer_pottery_sherd")) or
	I:isOf(item, Items:get("minecraft:arms_up_pottery_sherd"))
) then
	M:moveY(matrices, 0.05)
	M:moveX(matrices, 0 * l)
	M:moveZ(matrices, 0.05)
	
	M:rotateX(matrices, 0)
	M:rotateY(matrices, -100 * l)
	M:rotateZ(matrices, 0 * l)

	M:scale(matrices, 1.4, 1.4, 1.4)
end

-- Blaze Rod
if (
	I:isOf(item, Items:get("minecraft:blaze_rod"))
) then
	M:moveY(matrices, 0.16)
	M:moveX(matrices, 0.01 * l)
	M:moveZ(matrices, 0.025)
	
	M:rotateX(matrices, -10)
	M:rotateY(matrices, 0 * l)
	M:rotateZ(matrices, 0 * l)

	M:scale(matrices, 1.1, 1.1, 1.1)

	I:setTranslate(item, true)
    
    particleManager:addParticle(
        particles, 
        false, 
        0.05 * l, 
        0.1, 
        0, 
        0, 
        0, 
        0, 
        0, 
        0, 
        0, 
        0, 
        0, 
        0, 
        1.5, 
        Texture:of("minecraft", "textures/particle/glow.png"), 
        "ITEM", 
        hand, 
        "SPAWN", 
        "ADDITIVE", 
        0, 
        150 + (20 * M:sin(P:getAge(player) * 0.2))
    )
end

-- Breeze Rod, Stick
if (
	I:isOf(item, Items:get("minecraft:breeze_rod")) or
	I:isOf(item, Items:get("minecraft:stick"))
) then
	M:moveY(matrices, 0.16)
	M:moveX(matrices, 0.01 * l)
	M:moveZ(matrices, 0.025)
	
	M:rotateX(matrices, -10)
	M:rotateY(matrices, 0)
	M:rotateZ(matrices, 0 * l)

	M:scale(matrices, 1.1, 1.1, 1.1)
end

-- Breeze Rod
if (
	I:isOf(item, Items:get("minecraft:bone"))
) then
	M:moveY(matrices, 0.1)
	M:moveX(matrices, 0.01 * l)
	M:moveZ(matrices, 0.05)
	
	M:rotateX(matrices, 0)
	M:rotateY(matrices, 0 * l)
	M:rotateZ(matrices, 0 * l)

	M:scale(matrices, 1.1, 1.1, 1.1)
end

-- Ender Pearl, Ender Eye

if (
	I:isOf(item, Items:get("minecraft:ender_eye")) or
	I:isOf(item, Items:get("minecraft:ender_pearl")) 
) then
    M:moveY(matrices, 0.075 * M:sin(timeSpent * 0.05))
    M:rotateY(matrices, 0 * timeSpent * 0.1)
end

if (
	I:isOf(item, Items:get("minecraft:ender_eye")) or
	I:isOf(item, Items:get("minecraft:ender_pearl"))
) then
	M:moveY(matrices, 0.4)
	M:moveX(matrices, 0 * l)
	M:moveZ(matrices, 0)
	
	M:rotateX(matrices, 80)
	M:rotateY(matrices, 0 * l)
	M:rotateZ(matrices, 20 * l)

	M:scale(matrices, 1.1, 1.1, 1.1)
end

-- Shulker Shell
if (
	I:isOf(item, Items:get("minecraft:shulker_shell"))
) then
    M:moveY(matrices, 0.075 * M:sin(timeSpent * 0.05))
    M:rotateY(matrices, 10 * timeSpent * 0.1)
end

if (
	I:isOf(item, Items:get("minecraft:shulker_shell"))
) then
	M:moveY(matrices, 0.2)
	M:moveX(matrices, 0 * l)
	M:moveZ(matrices, 0.1)
	
	M:rotateX(matrices, -28)
	M:rotateY(matrices, 0 * l)
	M:rotateZ(matrices, 0 * l)
end

-- Fire Charge, Snowball, Slimeball
if (
	I:isOf(item, Items:get("minecraft:fire_charge")) or
	I:isOf(item, Items:get("minecraft:snowball")) or
	I:isOf(item, Items:get("minecraft:slime_ball"))
) then
	M:moveY(matrices, 0.075)
	M:moveX(matrices, 0 * l)
	M:moveZ(matrices, 0.125)
	
	M:rotateX(matrices, -21)
	M:rotateY(matrices, 0 * l)
	M:rotateZ(matrices, 0 * l)

	M:scale(matrices, 1.2, 1.2, 1.2)
end

-- Fire Charge
if (
	I:isOf(item, Items:get("minecraft:fire_charge"))
) then
	I:setTranslate(item, true)
    
    particleManager:addParticle(
        particles, 
        false, 
        0.05 * l, 
        0, 
        0, 
        0, 
        0, 
        0, 
        0, 
        0, 
        0, 
        0, 
        0, 
        0, 
        1.25, 
        Texture:of("minecraft", "textures/particle/glow.png"), 
        "ITEM", 
        hand, 
        "SPAWN", 
        "ADDITIVE", 
        0, 
        200 + (20 * M:sin(P:getAge(player) * 0.2))
    )
end

--Glowstone Dust
if (
	I:isOf(item, Items:get("minecraft:glowstone_dust"))
) then
	M:moveY(matrices, 0.09)
	M:moveZ(matrices, 0.21)
	M:moveX(matrices, -0.05 * l)
	
	M:rotateX(matrices, -45)

	M:scale(matrices, 1.3, 1.3, 1.3)
    
    particleManager:addParticle(
        particles, 
        false, 
        0 * l, 
        0.025, 
        0, 
        0, 
        0, 
        0, 
        0, 
        0, 
        0, 
        0, 
        0, 
        0, 
        1.1, 
        Texture:of("minecraft", "textures/particle/glow.png"), 
        "ITEM", 
        hand, 
        "SPAWN", 
        "ADDITIVE", 
        0, 
        200 + (20 * M:sin(P:getAge(player) * 0.2))
    )
end

-- Sugar, Gundpowder
if (
	I:isOf(item, Items:get("minecraft:sugar")) or
	I:isOf(item, Items:get("minecraft:gunpowder"))
) then
	M:moveY(matrices, 0.09)
	M:moveZ(matrices, 0.21)
	M:moveX(matrices, -0.05 * l)
	
	M:rotateX(matrices, -45)

	M:scale(matrices, 1.3, 1.3, 1.3)
end

-- Heart of the Sea
if (
	I:isOf(item, Items:get("minecraft:heart_of_the_sea"))
) then
	M:moveY(matrices, 0.075)
	M:moveX(matrices, 0 * l)
	M:moveZ(matrices, 0.125)
	
	M:rotateX(matrices, -21)
	M:rotateY(matrices, 0 * l)
	M:rotateZ(matrices, 0 * l)
end