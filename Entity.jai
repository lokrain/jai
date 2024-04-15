Entity :: struct {
    type: string;
    x_position: f32;
    y_position: f32;
};

create_entity :: (type: string, x: f32, y: f32) -> Entity {
    return Entity{type, x, y};
}
