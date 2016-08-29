//
// Generated by Microsoft (R) HLSL Shader Compiler 9.29.952.3111
//
// Parameters:
//
//   float4 g_Ambient;
//   float4 g_Diffuse;
//   float4 g_EyeDirection;
//   float4 g_EyePosition;
//   float4 g_ForceAlphaColor;
//   float4 g_GI0Scale;
//   float4 g_LightScatteringColor;
//   float4 g_OpacityReflectionRefractionSpectype;
//   float4 g_ShadowMapParams;
//   sampler2D g_ShadowMapSampler;
//   sampler2D g_VerticalShadowMapSampler;
//   float4 g_aLightField[6];
//   float4 mrgEyeLight_Attribute;
//   float4 mrgEyeLight_Diffuse;
//   float4 mrgEyeLight_Range;
//   float2 mrgFresnelParam;
//   float4 mrgGlobalLight_Diffuse;
//   float4 mrgGlobalLight_Direction;
//   float4 mrgInShadowScale;
//   float4 mrgLocalLight0_Color;
//   float4 mrgLocalLight0_Position;
//   float4 mrgLocalLight0_Range;
//   float4 mrgLocalLight1_Color;
//   float4 mrgLocalLight1_Position;
//   float4 mrgLocalLight1_Range;
//   float4 mrgLocalLight2_Color;
//   float4 mrgLocalLight2_Position;
//   float4 mrgLocalLight2_Range;
//   float4 mrgLocalLight3_Color;
//   float4 mrgLocalLight3_Position;
//   float4 mrgLocalLight3_Range;
//   float4 mrgLuminanceRange;
//   sampler2D sampDif;
//   samplerCUBE sampEnv;
//
//
// Registers:
//
//   Name                                  Reg   Size
//   ------------------------------------- ----- ----
//   mrgGlobalLight_Direction              c10      1
//   g_Diffuse                             c16      1
//   g_Ambient                             c17      1
//   g_OpacityReflectionRefractionSpectype c21      1
//   g_EyePosition                         c22      1
//   g_EyeDirection                        c23      1
//   mrgGlobalLight_Diffuse                c36      1
//   mrgLocalLight0_Position               c38      1
//   mrgLocalLight0_Color                  c39      1
//   mrgLocalLight0_Range                  c40      1
//   mrgLocalLight1_Position               c42      1
//   mrgLocalLight1_Color                  c43      1
//   mrgLocalLight1_Range                  c44      1
//   mrgLocalLight2_Position               c46      1
//   mrgLocalLight2_Color                  c47      1
//   mrgLocalLight2_Range                  c48      1
//   mrgLocalLight3_Position               c50      1
//   mrgLocalLight3_Color                  c51      1
//   mrgLocalLight3_Range                  c52      1
//   mrgEyeLight_Diffuse                   c58      1
//   mrgEyeLight_Range                     c60      1
//   mrgEyeLight_Attribute                 c61      1
//   mrgFresnelParam                       c62      1
//   mrgLuminanceRange                     c63      1
//   mrgInShadowScale                      c64      1
//   g_ShadowMapParams                     c65      1
//   g_GI0Scale                            c70      1
//   g_LightScatteringColor                c75      1
//   g_aLightField                         c77      6
//   g_ForceAlphaColor                     c89      1
//   sampDif                               s0       1
//   sampEnv                               s5       1
//   g_VerticalShadowMapSampler            s7       1
//   g_ShadowMapSampler                    s13      1
//

    ps_3_0
    def c0, 0.5, 0, 1, -2
    def c1, -2, 3, 4, 0
    dcl_texcoord v0.xy
    dcl_texcoord2 v1.xyz
    dcl_texcoord3 v2.xyz
    dcl_texcoord4 v3
    dcl_texcoord6 v4
    dcl_texcoord5_pp v5.xyz
    dcl_2d s0
    dcl_cube s5
    dcl_2d s7
    dcl_2d s13
    add_pp r0.x, -c61.z, c61.y
    rcp_pp r0.x, r0.x
    add r0.yzw, -c22.xxyz, v1.xxyz
    dp3 r1.x, r0.yzww, r0.yzww
    rsq r1.x, r1.x
    mul_pp r0.yzw, r0, r1.x
    rcp r1.x, r1.x
    add r1.x, r1.x, -c60.z
    dp3_pp r1.y, r0.yzww, c23
    add_pp r1.y, r1.y, -c61.z
    mul_sat_pp r0.x, r0.x, r1.y
    mad_pp r1.y, r0.x, c1.x, c1.y
    mul_pp r0.x, r0.x, r0.x
    mul_pp r0.x, r0.x, r1.y
    pow_sat_pp r1.y, r0.x, c61.w
    mov_pp r1.z, c0.z
    add r0.x, r1.z, -c61.x
    cmp_pp r0.x, r0.x, c0.z, r1.y
    add r1.y, -c60.z, c60.w
    rcp r1.y, r1.y
    mul_sat r1.x, r1.y, r1.x
    add_pp r1.x, -r1.x, c0.z
    cmp_pp r1.x, -c61.x, r1.z, r1.x
    mul_pp r0.x, r0.x, r1.x
    add r1.x, -c48.z, c48.w
    rcp r1.x, r1.x
    add r2.xyz, -c46, v1
    dp3 r1.y, r2, r2
    rsq r1.y, r1.y
    rcp r1.w, r1.y
    mul_pp r2.xyz, r1.y, r2
    add r1.y, r1.w, -c48.z
    mul_sat r1.x, r1.x, r1.y
    add r1.y, -c40.z, c40.w
    rcp r1.y, r1.y
    add r3.xyz, -c38, v1
    dp3 r1.w, r3, r3
    rsq r1.w, r1.w
    rcp r2.w, r1.w
    mul_pp r3.xyz, r1.w, r3
    add r1.w, r2.w, -c40.z
    mul_sat r1.y, r1.y, r1.w
    add r1.w, -c44.z, c44.w
    rcp r1.w, r1.w
    add r4.xyz, -c42, v1
    dp3 r2.w, r4, r4
    rsq r2.w, r2.w
    rcp r3.w, r2.w
    mul_pp r4.xyz, r2.w, r4
    add r2.w, r3.w, -c44.z
    mul_sat r1.w, r1.w, r2.w
    add_pp r1.xyw, -r1, c0.z
    nrm r5.xyz, v2
    dp3_pp r2.w, r5, -r4
    mul_pp r4.xyz, r2.w, c43
    cmp_pp r4.xyz, r2.w, r4, c0.y
    mul_pp r4.xyz, r1.w, r4
    dp3_pp r1.w, r5, -r3
    mul_pp r3.xyz, r1.w, c39
    cmp_pp r3.xyz, r1.w, r3, c0.y
    mad_pp r3.xyz, r1.y, r3, r4
    dp3_pp r1.y, r5, -r2
    mul_pp r2.xyz, r1.y, c47
    cmp_pp r2.xyz, r1.y, r2, c0.y
    mad_pp r1.xyw, r1.x, r2.xyzz, r3.xyzz
    add r2.x, -c52.z, c52.w
    rcp r2.x, r2.x
    add r2.yzw, -c50.xxyz, v1.xxyz
    dp3 r3.x, r2.yzww, r2.yzww
    rsq r3.x, r3.x
    rcp r3.y, r3.x
    mul_pp r2.yzw, r2, r3.x
    dp3_pp r2.y, r5, -r2.yzww
    add r2.z, r3.y, -c52.z
    mul_sat r2.x, r2.x, r2.z
    add_pp r2.x, -r2.x, c0.z
    mul_pp r3.xyz, r2.y, c51
    cmp_pp r2.yzw, r2.y, r3.xxyz, c0.y
    mad_pp r1.xyw, r2.x, r2.yzzw, r1
    max r2.x, v3.z, c0.y
    add r2.y, r2.x, -v3.w
    cmp r2.z, r2.y, c0.y, r2.x
    mov r2.xyw, v3
    texldp_pp r2, r2, s13
    max r2.y, v4.z, c0.y
    add r2.z, r2.y, -v4.w
    cmp r3.z, r2.z, c0.y, r2.y
    mov r3.xyw, v4
    texldp_pp r3, r3, s7
    min_pp r4.x, r3.x, r2.x
    lrp_pp r2.x, v5.z, c0.z, r3.x
    lrp_pp r2.y, v5.z, c0.z, r4.x
    rcp r2.z, v3.w
    mul r2.zw, r2.z, v3.xyxy
    mad r2.zw, r2, -c0.w, -c0.z
    abs_sat r2.zw, r2
    add_sat r2.zw, r2, -c65.x
    mul r2.zw, r2, c65.y
    max r3.x, r2.z, r2.w
    lrp_pp r4.x, r3.x, c0.z, r2.y
    lrp_pp r4.y, r3.x, c0.z, r2.x
    mul r2.x, r4.x, c77.w
    dp3_pp r2.y, r5, -c10
    mul r3.xyz, r2.y, c36
    mul_pp r3.xyz, r2.x, r3
    cmp_pp r2.yzw, r2.y, r3.xxyz, c0.y
    add_pp r1.xyw, r1, r2.yzzw
    mul_pp r2.yzw, c58.w, c58.xxyz
    dp3_pp r0.y, r5, -r0.yzww
    mul_pp r2.yzw, r0.y, r2
    cmp_pp r0.yzw, r0.y, r2, c0.y
    mad_pp r0.xyz, r0.x, r0.yzww, r1.xyww
    mov r3.xyz, c79
    add r1.xyw, -r3.xyzz, c80.xyzz
    mad_pp r2.yzw, r5.xxyz, c0.x, c0.x
    mad r1.xyw, r2.z, r1, c79.xyzz
    mul_pp r3.xyz, r5, r5
    mul r1.xyw, r1, r3.y
    mov r6.xyz, c77
    add r4.xzw, -r6.xyyz, c78.xyyz
    mad r4.xzw, r2.y, r4, c77.xyyz
    mad_pp r1.xyw, r3.x, r4.xzzw, r1
    mov r6.xyz, c81
    add r3.xyw, -r6.xyzz, c82.xyzz
    mad r2.yzw, r2.w, r3.xxyw, c81.xxyz
    mad_pp r1.xyw, r3.z, r2.yzzw, r1
    mul_pp r2.yzw, r1.xxyw, c17.xxyz
    mul r2.yzw, r2, c70.w
    mad r1.xyw, r1, c17.xyzz, -r2.yzzw
    mad_pp r1.xyw, r4.y, r1, r2.yzzw
    add_pp r0.xyz, r0, r1.xyww
    mul_pp r0.xyz, r0, c16
    mul r0.w, c64.z, c64.x
    mov r3.xz, c64
    mad r1.x, r3.x, -r3.z, r3.z
    mad_pp r0.w, r2.x, r1.x, r0.w
    add_pp r1.xyw, c22.xyzz, -v1.xyzz
    nrm r2.xyz, r1.xyww
    dp3 r1.x, -r2, r5
    add r1.x, r1.x, r1.x
    mad_pp r1.xyw, r5.xyzz, -r1.x, -r2.xyzz
    dp3_sat_pp r2.x, r5, r2
    add_pp r2.x, -r2.x, c0.z
    texld_pp r3, r1.xyww, s5
    mul r1.xyw, r3.xyzz, c63.x
    mad_pp r1.xyw, r1, r3.w, r3.xyzz
    mul_pp r1.xyw, r0.w, r1
    mul_pp r0.w, r2.x, r2.x
    mul_pp r0.w, r0.w, r0.w
    mul_pp r0.w, r2.x, r0.w
    lrp_pp r2.x, r0.w, r1.z, c62.x
    mul_pp r0.w, r2.x, c62.y
    mul_pp r1.xyz, r0.w, r1.xyww
    texld_pp r2, v0, s0
    mad_pp r0.xyz, r0, r2, r1
    dp3_pp r1.x, r1, r1
    mul_pp r1.y, r2.w, c16.w
    mul_pp r1.y, r1.y, r1.y
    max_pp r2.x, r1.y, r1.x
    rsq_pp r1.x, r2.x
    rcp_pp r1.x, r1.x
    mul_pp r0.w, r1.x, c21.x
    mul_pp r0, r0, c89
    min_pp r1, r0, c1.z
    mul_pp r0.xyz, c75, v5.y
    mad_pp oC0.xyz, r1, v5.x, r0
    mov_pp oC0.w, r1.w

// approximately 173 instruction slots used (4 texture, 169 arithmetic)