local item = context.item
local matrices = context.matrices

if (
	I:isOf(item, Items:get("minecraft:bordure_indented_banner_pattern")) or
	I:isOf(item, Items:get("minecraft:field_masoned_banner_pattern")) or
	I:isOf(item, Items:get("minecraft:flower_banner_pattern")) or
	I:isOf(item, Items:get("minecraft:creeper_banner_pattern")) or
	I:isOf(item, Items:get("minecraft:skull_banner_pattern")) or
	I:isOf(item, Items:get("minecraft:mojang_banner_pattern")) or
	I:isOf(item, Items:get("minecraft:globe_banner_pattern")) or
	I:isOf(item, Items:get("minecraft:piglin_banner_pattern")) or
	I:isOf(item, Items:get("minecraft:flow_banner_pattern")) or
	I:isOf(item, Items:get("minecraft:guster_banner_pattern"))
) then
    M:moveY(matrices, 0.25)
    M:moveZ(matrices, -0.05)
end