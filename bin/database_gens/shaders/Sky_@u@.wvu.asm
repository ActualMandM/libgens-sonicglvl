//
// Generated by Microsoft (R) HLSL Shader Compiler 9.29.952.3111
//
// Parameters:
//
//   float4 g_EyePosition;
//   row_major float3x4 g_MtxPalette[25];
//   row_major float4x4 g_MtxProjection;
//   row_major float4x4 g_MtxView;
//   row_major float4x4 g_MtxWorld;
//   float4 g_SkyParam;
//   bool mrgHasBone;
//   float4 mrgTexcoordOffset[2];
//
//
// Registers:
//
//   Name              Reg   Size
//   ----------------- ----- ----
//   mrgHasBone        b0       1
//   g_MtxProjection   c0       4
//   g_MtxView         c4       4
//   g_MtxWorld        c8       3
//   g_MtxPalette      c28     75
//   g_EyePosition     c178     1
//   mrgTexcoordOffset c191     2
//   g_SkyParam        c219     1
//

    vs_3_0
    def c11, 3, 1, 0, 0
    dcl_position v0
    dcl_blendweight v1
    dcl_blendindices v2
    dcl_texcoord v3
    dcl_texcoord1 v4
    dcl_texcoord2 v5
    dcl_texcoord3 v6
    dcl_position o0
    dcl_texcoord o1
    dcl_texcoord1 o2
    if b0
      mul r0, c11.x, v2
      mova a0, r0.yxzw
      mul r1, v1.y, c30[a0.x]
      mad r1, c30[a0.y], v1.x, r1
      mad r1, c30[a0.z], v1.z, r1
      add r0.x, v1.y, v1.x
      add r0.x, r0.x, v1.z
      add r0.x, -r0.x, c11.y
      mad r1, c30[a0.w], r0.x, r1
      dp4 r0.y, r1, v0
      mul r1, v1.y, c28[a0.x]
      mad r1, c28[a0.y], v1.x, r1
      mad r1, c28[a0.z], v1.z, r1
      mad r1, c28[a0.w], r0.x, r1
      dp4 r0.z, r1, v0
      mul r1, v1.y, c29[a0.x]
      mad r1, c29[a0.y], v1.x, r1
      mad r1, c29[a0.z], v1.z, r1
      mad r1, c29[a0.w], r0.x, r1
      dp4 r0.x, r1, v0
      mov r0.w, v0.w
    else
      mov r0, v0.yzxw
    endif
    mul r1.xyz, r0.x, c9
    mad r1.xyz, r0.z, c8, r1
    mad r0.xyz, r0.y, c10, r1
    mov r1.xyz, c178
    mad r0.xyz, r1, c219, r0
    mul r1, r0.y, c5
    mad r1, r0.x, c4, r1
    mad r1, r0.z, c6, r1
    mad r0, r0.w, c7, r1
    mul r1, r0.y, c1
    mad r1, r0.x, c0, r1
    mad r1, r0.z, c2, r1
    mad o0, r0.w, c3, r1
    mov r0.xy, v3
    mov r0.zw, v4.xyxy
    add o1, r0, c191
    mov r0.xy, v5
    mov r0.zw, v6.xyxy
    add o2, r0, c192

// approximately 46 instruction slots used