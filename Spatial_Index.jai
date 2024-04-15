// Simple grid-based spatial index for example purposes.
Spatial_Index :: struct {
    entities: []Entity;
};

insert_entity :: (index: *Spatial_Index, entity: Entity) {
    append(&index.entities, entity);
}

find_nearby_entities :: (index: Spatial_Index, position: f32, radius: f32) -> []Entity {
    result: []Entity;
    for entity in index.entities {
        if abs(entity.x_position - position) <= radius {
            append(&result, entity);
        }
    }
    return result;
}
