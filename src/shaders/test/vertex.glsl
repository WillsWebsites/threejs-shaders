varying vec2 vUv;

void main() {
    gl_Position = projectionMatrix * modelViewMatrix * vec4(position, 1.0);
    vUv = uv;
}

// OG
// uniform vec2 uFrequency;
// uniform float uTime;

// // attribute float aRandom;

// varying vec2 vUv;
// varying float vElevation;
// // varying float vRandom;

// void main() {
//     vec4 modelPosition = modelMatrix * vec4(position, 1.0);

//     float elevation = sin(modelPosition.x * uFrequency.x - uTime) * 0.05;
//     elevation += sin(modelPosition.y * uFrequency.y - uTime) * 0.05;

//     modelPosition.z += elevation;

//     // modelPosition.z += aRandom * 0.1;

//     vec4 viewPosition = viewMatrix * modelPosition;
//     vec4 projectedPosition = projectionMatrix * viewPosition;

//     gl_Position = projectedPosition;
//     // gl_Position = projectionMatrix * viewMatrix * modelMatrix * vec4(position, 1.0);

//     // vRandom = aRandom;
//     vUv = uv;
//     vElevation = elevation;
// }