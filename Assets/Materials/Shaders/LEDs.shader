// Shader created with Shader Forge v1.32 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.32;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:3138,x:33130,y:32760,varname:node_3138,prsc:2|emission-4404-OUT;n:type:ShaderForge.SFN_TexCoord,id:2650,x:30565,y:32437,varname:node_2650,prsc:2,uv:0;n:type:ShaderForge.SFN_Rotator,id:8279,x:31107,y:32563,varname:node_8279,prsc:2|UVIN-2650-UVOUT,ANG-9982-OUT;n:type:ShaderForge.SFN_Vector1,id:4805,x:30764,y:32682,varname:node_4805,prsc:2,v1:3.141593;n:type:ShaderForge.SFN_Multiply,id:9982,x:30936,y:32707,varname:node_9982,prsc:2|A-4805-OUT,B-4891-OUT;n:type:ShaderForge.SFN_Vector1,id:4891,x:30764,y:32751,varname:node_4891,prsc:2,v1:0.25;n:type:ShaderForge.SFN_ComponentMask,id:9195,x:31278,y:32563,varname:node_9195,prsc:2,cc1:0,cc2:-1,cc3:-1,cc4:-1|IN-8279-UVOUT;n:type:ShaderForge.SFN_Add,id:5899,x:31483,y:32486,varname:node_5899,prsc:2|A-9195-OUT,B-2613-OUT;n:type:ShaderForge.SFN_Color,id:5140,x:31100,y:33244,ptovrint:False,ptlb:color 0,ptin:_color0,varname:node_5140,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:0,c3:0,c4:1;n:type:ShaderForge.SFN_Color,id:3565,x:31089,y:32999,ptovrint:False,ptlb:color 1,ptin:_color1,varname:node_3565,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.07586217,c2:1,c3:0,c4:1;n:type:ShaderForge.SFN_SwitchProperty,id:8441,x:31449,y:33048,ptovrint:False,ptlb:green on,ptin:_greenon,varname:node_8441,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:True|A-5248-OUT,B-3565-RGB;n:type:ShaderForge.SFN_Vector1,id:5248,x:31100,y:33166,varname:node_5248,prsc:2,v1:0.2;n:type:ShaderForge.SFN_SwitchProperty,id:9880,x:31449,y:33190,ptovrint:False,ptlb:red on,ptin:_redon,varname:node_9880,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:True|A-5248-OUT,B-5140-RGB;n:type:ShaderForge.SFN_Multiply,id:2023,x:31937,y:32897,varname:node_2023,prsc:2|A-4532-OUT,B-8441-OUT;n:type:ShaderForge.SFN_Clamp01,id:4532,x:31679,y:32645,varname:node_4532,prsc:2|IN-5620-OUT;n:type:ShaderForge.SFN_OneMinus,id:83,x:31728,y:33085,varname:node_83,prsc:2|IN-4532-OUT;n:type:ShaderForge.SFN_Multiply,id:1933,x:31950,y:33108,varname:node_1933,prsc:2|A-83-OUT,B-9880-OUT;n:type:ShaderForge.SFN_Add,id:4404,x:32150,y:32993,varname:node_4404,prsc:2|A-2023-OUT,B-1933-OUT;n:type:ShaderForge.SFN_Vector1,id:2613,x:31191,y:32493,varname:node_2613,prsc:2,v1:-0.5;n:type:ShaderForge.SFN_Multiply,id:5620,x:31679,y:32486,varname:node_5620,prsc:2|A-5899-OUT,B-5115-OUT;n:type:ShaderForge.SFN_Vector1,id:5115,x:31483,y:32384,varname:node_5115,prsc:2,v1:100;proporder:5140-3565-8441-9880;pass:END;sub:END;*/

Shader "Shader Forge/LEDs" {
    Properties {
        _color0 ("color 0", Color) = (1,0,0,1)
        _color1 ("color 1", Color) = (0.07586217,1,0,1)
        [MaterialToggle] _greenon ("green on", Float ) = 0.07586217
        [MaterialToggle] _redon ("red on", Float ) = 1
    }
    SubShader {
        Tags {
            "RenderType"="Opaque"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float4 _color0;
            uniform float4 _color1;
            uniform fixed _greenon;
            uniform fixed _redon;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
////// Lighting:
////// Emissive:
                float node_8279_ang = (3.141593*0.25);
                float node_8279_spd = 1.0;
                float node_8279_cos = cos(node_8279_spd*node_8279_ang);
                float node_8279_sin = sin(node_8279_spd*node_8279_ang);
                float2 node_8279_piv = float2(0.5,0.5);
                float2 node_8279 = (mul(i.uv0-node_8279_piv,float2x2( node_8279_cos, -node_8279_sin, node_8279_sin, node_8279_cos))+node_8279_piv);
                float node_5899 = (node_8279.r+(-0.5));
                float node_4532 = saturate((node_5899*100.0));
                float node_5248 = 0.2;
                float3 emissive = ((node_4532*lerp( node_5248, _color1.rgb, _greenon ))+((1.0 - node_4532)*lerp( node_5248, _color0.rgb, _redon )));
                float3 finalColor = emissive;
                return fixed4(finalColor,1);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
