# Atlas
Atlas is an OpenGL procedural randomly generated terrain generation application that implements Perlin noise height maps, view frustum culling, and instancing.
I worked on this with Ian Dong, Colin Steidmann, and Zachary Oon.

## Features
- Randomly generated height maps via Perlin noise
- Biomes determined by elevation
- Low poly, smooth, and mesh modes
- Ambient, diffuse, and specular general shading
- Linear, exponential, and exponential squared fog shading
- (Snowy) Grass texture and shading
- Skybox and environment mapping

## Controls
- `command/shift` + `Q` to exit application
- `esc` to capture mouse from application
- `shift` + `esc` to release into application
- `M` to enable wireframe
- `shift` + `M` to disable wireframe
- `W`, `A`, `S`, `D` to move camera forward, left, back, and right
- `space`, `caps lock` to move camera up, down
- `F` + `0` to enable linear fog shading
- `F` + `1` to enable exponential fog shading
- `F` + `2` to enable exponential squared fog shading
- `shift` + `F`to disable all fog shading
- `P` to enable flat shading
- `shift` + `P` to disable flat shading
- `G` to enable grass
- `shift` + `G` to disable grass
- `B` to enable skybox
- `shift` + `B` to disable skybox
