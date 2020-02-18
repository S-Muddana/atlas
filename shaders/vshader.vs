#version 330 core
layout (location = 0) in vec3 aPos;
layout (location = 1) in vec3 aNormal;
layout (location = 2) in vec3 aColor;
layout (location = 3) in vec3 aOffset;

flat out vec3 flatColor;
out vec3 Color;

uniform mat4 u_model;
uniform mat4 u_view;
uniform mat4 u_projection;

uniform vec3 u_lightColor;
uniform vec3 u_lightPos;
uniform vec3 u_viewPos;

vec3 calculateLighting(vec3 Normal, vec3 FragPos) {
    // Ambient lighting
    float ambientStrength = 0.7;
    vec3 ambient = ambientStrength * u_lightColor;
    
    // Diffuse lighting
    vec3 lightDir = normalize(u_lightPos - FragPos);
    float diff = max(dot(Normal, lightDir), 0.0);
    vec3 diffuse = diff * u_lightColor;

    // Specular lighting
    float specularStrength = 0.5;
    vec3 viewDir = normalize(u_viewPos - FragPos);
    vec3 reflectDir = reflect(-lightDir, Normal);

    float spec = pow(max(dot(viewDir, reflectDir), 0.0), 16);
    vec3 specular = specularStrength * spec * u_lightColor;
    
    return (ambient + diffuse + specular);
}

void main() {
    vec3 FragPos = vec3(u_model * vec4(aPos + aOffset, 1.0));
    vec3 Normal = aNormal;
    
    vec3 lighting = calculateLighting(Normal, FragPos);
    Color = aColor * lighting;
    flatColor = Color;
    
    gl_Position = u_projection * u_view * vec4(FragPos, 1.0);
}