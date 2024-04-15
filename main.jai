main :: () -> s32 {
    biomes: []Biome;
    append(&biomes, init_biome("Forest", 0, 100));
    add_allowed_entity(&biomes[0], "Tree");

    entities: []Entity;
    append(&entities, create_entity("Tree", 50.0, 10.0));

    index: Spatial_Index;

    for entity in entities {
        if !place_entity(entity, biomes, &index) {
            print("Failed to place entity: %\n", entity.type);
        }
    }

    return 0;
}
