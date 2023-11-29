varying vec2 vUv;

void main() {
    // pattern 15
    float barX = step(0.4, mod(vUv.x * 10.0, 1.0));
    barX *= step(0.8, mod(vUv.y * 10.0 + 0.2, 1.0));

    float barY = step(0.8, mod(vUv.x * 10.0 + 0.2, 1.0));
    barY *= step(0.4, mod(vUv.y * 10.0, 1.0));

    float strength = barX + barY;

    gl_FragColor = vec4(vec3(strength), 1.0);

    // pattern 14
    // float barX = step(0.4, mod(vUv.x * 10.0, 1.0));
    // barX *= step(0.8, mod(vUv.y * 10.0, 1.0));

    // float barY = step(0.8, mod(vUv.x * 10.0, 1.0));
    // barY *= step(0.4, mod(vUv.y * 10.0, 1.0));

    // float strength = barX + barY;

    // gl_FragColor = vec4(vec3(strength), 1.0);

    // pattern 13
    // float strength = step(0.4, mod(vUv.x * 10.0, 1.0));
    // strength *= step(0.8, mod(vUv.y * 10.0, 1.0));
    // gl_FragColor = vec4(vec3(strength), 1.0);

    // pattern 12
    // float strength = step(0.8, mod(vUv.x * 10.0, 1.0));
    // strength *= step(0.8, mod(vUv.y * 10.0, 1.0));
    // gl_FragColor = vec4(vec3(strength), 1.0);

    // pattern 11
    // float strength = step(0.8, mod(vUv.x * 10.0, 1.0));
    // strength += step(0.8, mod(vUv.y * 10.0, 1.0));
    // gl_FragColor = vec4(vec3(strength), 1.0);

    // pattern 10
    // float strength = mod(vUv.x * 10.0, 1.0);
    // strength = step(0.8, strength);
    // gl_FragColor = vec4(vec3(strength), 1.0);

    // pattern 9
    // float strength = mod(vUv.y * 10.0, 1.0);
    // strength = step(0.8, strength);
    // gl_FragColor = vec4(vec3(strength), 1.0);

    // pattern 8
    // float strength = round(mod(vUv.y * 10.0, 1.0));
    // or
    // float strength = mod(vUv.y * 10.0, 1.0);
    // strength = step(0.5, strength);
    // gl_FragColor = vec4(vec3(strength), 1.0);

    // pattern 7
    // float strength = mod(vUv.y * 10.0, 1.0);
    // gl_FragColor = vec4(vec3(strength), 1.0);

    // pattern 6
    // float strength = vUv.y * 10.0;
    // gl_FragColor = vec4(vec3(strength), 1.0);

    // pattern 5
    // float strength = 1.0 - vUv.y;
    // gl_FragColor = vec4(vec3(strength), 1.0);

    // pattern 4
    // float strength = vUv.y;
    // gl_FragColor = vec4(vec3(strength), 1.0);

    // pattern 3
    // float strength = vUv.x;
    // gl_FragColor = vec4(vec3(strength), 1.0);

    // pattern 2
    // gl_FragColor = vec4(vUv, 0.5, 1.0);
    // gl_FragColor = vec4(vUv, 0.0, 1.0);

    // pattern 1
    // gl_FragColor = vec4(vUv, 1.0, 1.0);

    // original
    // gl_FragColor = vec4(0.5, 0.0, 1.0, 1.0);
}

// OG
// uniform vec3 uColor;
// uniform sampler2D uTexture;

// varying vec2 vUv;
// varying float vElevation;
        
// void main() {
//     vec4 textureColor = texture2D(uTexture, vUv);
//     textureColor.rgb *= vElevation * 1.9 + 0.8;
//     gl_FragColor = textureColor;
//     // gl_FragColor = vec4(uColor, 1.0);
//     // gl_FragColor = vec4(vRandom, vRandom * 0.5, 1.0, 1.0);
// }