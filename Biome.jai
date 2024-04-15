Biome :: struct {
    name: string;
    start_x: s32;
    end_x: s32;
    allowed_entities: []string;
};

init_biome :: (name: string, start_x: s32, end_x: s32) -> Biome {
    return Biome{name, start_x, end_x, []};
}

add_allowed_entity :: (biome: *Biome, entity: string) {
    append(&biome.allowed_entities, entity);
}
