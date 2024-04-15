check_rules :: (entity: Entity, biome: Biome, index: Spatial_Index) -> bool {
    // Example rule: entity must be within allowed entities of the biome
    for allowed in biome.allowed_entities {
        if strings_are_equal(entity.type, allowed) {
            return true;
        }
    }
    return false;
}

place_entity :: (entity: Entity, biomes: []Biome, index: *Spatial_Index) -> bool {
    for biome in biomes {
        if entity.x_position >= biome.start_x && entity.x_position <= biome.end_x {
            if check_rules(entity, biome, *index) {
                insert_entity(index, entity);
                return true;
            }
        }
    }
    return false;
}
