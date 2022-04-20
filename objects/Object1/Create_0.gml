instance = {
    x: 10,
    y: 20,
    z: 30,
    
    surf: surface_create(40, 40),
};

reference_to_instance = weak_ref_create(instance);
reference_to_instance.surface_to_free = instance.surf;
