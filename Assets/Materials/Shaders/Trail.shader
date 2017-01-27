// Shader created with Shader Forge v1.32 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.32;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:0,dpts:2,wrdp:False,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:True,fgod:False,fgor:False,fgmd:0,fgcr:0,fgcg:0,fgcb:0,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:True,fnfb:True;n:type:ShaderForge.SFN_Final,id:4795,x:32724,y:32693,varname:node_4795,prsc:2|emission-2393-OUT;n:type:ShaderForge.SFN_Multiply,id:2393,x:32495,y:32793,varname:node_2393,prsc:2|A-3491-OUT,B-2053-RGB,C-797-RGB,D-9248-OUT,E-2053-A;n:type:ShaderForge.SFN_VertexColor,id:2053,x:32126,y:32795,varname:node_2053,prsc:2;n:type:ShaderForge.SFN_Color,id:797,x:32126,y:32941,ptovrint:True,ptlb:Color,ptin:_TintColor,varname:_TintColor,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Vector1,id:9248,x:32126,y:33087,varname:node_9248,prsc:2,v1:2;n:type:ShaderForge.SFN_TexCoord,id:7701,x:30822,y:32489,varname:node_7701,prsc:2,uv:0;n:type:ShaderForge.SFN_Sin,id:9910,x:31618,y:32586,varname:node_9910,prsc:2|IN-1961-OUT;n:type:ShaderForge.SFN_Add,id:1961,x:31289,y:32528,varname:node_1961,prsc:2|A-1338-OUT,B-4441-OUT;n:type:ShaderForge.SFN_Multiply,id:1338,x:31023,y:32594,varname:node_1338,prsc:2|A-7701-V,B-2750-OUT;n:type:ShaderForge.SFN_Vector1,id:2750,x:30822,y:32712,varname:node_2750,prsc:2,v1:7;n:type:ShaderForge.SFN_Slider,id:4441,x:30905,y:32932,ptovrint:False,ptlb:node_4441,ptin:_node_4441,varname:node_4441,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:4.5,max:6;n:type:ShaderForge.SFN_Clamp01,id:3491,x:31801,y:32586,varname:node_3491,prsc:2|IN-9910-OUT;proporder:797-4441;pass:END;sub:END;*/

Shader "Shader Forge/Trail" {
    Properties {
        _TintColor ("Color", Color) = (0.5,0.5,0.5,1)
        _node_4441 ("node_4441", Range(0, 6)) = 4.5
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Transparent"
            "RenderType"="Transparent"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Blend One One
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float4 _TintColor;
            uniform float _node_4441;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
                float4 vertexColor : COLOR;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 vertexColor : COLOR;
                UNITY_FOG_COORDS(1)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.vertexColor = v.vertexColor;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
////// Lighting:
////// Emissive:
                float3 emissive = (saturate(sin(((i.uv0.g*7.0)+_node_4441)))*i.vertexColor.rgb*_TintColor.rgb*2.0*i.vertexColor.a);
                float3 finalColor = emissive;
                fixed4 finalRGBA = fixed4(finalColor,1);
                UNITY_APPLY_FOG_COLOR(i.fogCoord, finalRGBA, fixed4(0,0,0,1));
                return finalRGBA;
            }
            ENDCG
        }
    }
    CustomEditor "ShaderForgeMaterialInspector"
}
