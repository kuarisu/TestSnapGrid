// Shader created with Shader Forge v1.32 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.32;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:3,spmd:1,trmd:1,grmd:0,uamb:True,mssp:True,bkdf:True,hqlp:False,rprd:True,enco:False,rmgx:True,rpth:1,vtps:1,hqsc:True,nrmq:1,nrsp:0,vomd:1,spxs:False,tesm:0,olmd:1,culm:2,bsrc:0,bdst:1,dpts:6,wrdp:True,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:False,qofs:1,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:True,fnfb:True;n:type:ShaderForge.SFN_Final,id:2865,x:32359,y:33004,varname:node_2865,prsc:2|emission-2237-OUT,voffset-4177-OUT;n:type:ShaderForge.SFN_TexCoord,id:6793,x:31062,y:33185,varname:node_6793,prsc:2,uv:0;n:type:ShaderForge.SFN_ProjectionParameters,id:8707,x:31733,y:33437,varname:node_8707,prsc:2;n:type:ShaderForge.SFN_RemapRange,id:9496,x:31932,y:33224,varname:node_9496,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:1|IN-6240-OUT;n:type:ShaderForge.SFN_Append,id:6538,x:31932,y:33396,varname:node_6538,prsc:2|A-5896-OUT,B-8707-SGN;n:type:ShaderForge.SFN_Vector1,id:5896,x:31733,y:33378,varname:node_5896,prsc:2,v1:1;n:type:ShaderForge.SFN_Multiply,id:4177,x:32131,y:33294,varname:node_4177,prsc:2|A-9496-OUT,B-6538-OUT;n:type:ShaderForge.SFN_Tex2d,id:8258,x:31322,y:32712,ptovrint:False,ptlb:MainTex,ptin:_MainTex,varname:node_8258,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Posterize,id:518,x:31855,y:33009,varname:node_518,prsc:2|IN-9817-VOUT,STPS-2166-OUT;n:type:ShaderForge.SFN_RgbToHsv,id:9817,x:31623,y:32791,varname:node_9817,prsc:2|IN-8258-RGB;n:type:ShaderForge.SFN_HsvToRgb,id:2237,x:32100,y:32848,varname:node_2237,prsc:2|H-9817-HOUT,S-9817-SOUT,V-518-OUT;n:type:ShaderForge.SFN_Slider,id:2401,x:31232,y:33029,ptovrint:False,ptlb:node_2401,ptin:_node_2401,varname:node_2401,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:100;n:type:ShaderForge.SFN_Floor,id:2166,x:31590,y:33017,varname:node_2166,prsc:2|IN-2401-OUT;n:type:ShaderForge.SFN_OneMinus,id:8670,x:31332,y:33392,varname:node_8670,prsc:2|IN-6793-V;n:type:ShaderForge.SFN_Append,id:7521,x:31536,y:33308,varname:node_7521,prsc:2|A-6793-U,B-8670-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:6240,x:31771,y:33171,ptovrint:False,ptlb:Is inverted,ptin:_Isinverted,varname:node_6240,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-6793-UVOUT,B-7521-OUT;proporder:8258-2401-6240;pass:END;sub:END;*/

Shader "Shader Forge/PostEffect" {
    Properties {
        _MainTex ("MainTex", 2D) = "white" {}
        _node_2401 ("node_2401", Range(0, 100)) = 1
        [MaterialToggle] _Isinverted ("Is inverted", Float ) = 0
    }
    SubShader {
        Tags {
            "Queue"="Geometry+1"
            "RenderType"="Opaque"
        }
        Pass {
            Name "DEFERRED"
            Tags {
                "LightMode"="Deferred"
            }
            Cull Off
            ZTest Always
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_DEFERRED
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile ___ UNITY_HDR_ON
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform float _node_2401;
            uniform fixed _Isinverted;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                v.vertex.xyz = float3(((lerp( o.uv0, float2(o.uv0.r,(1.0 - o.uv0.g)), _Isinverted )*2.0+-1.0)*float2(1.0,_ProjectionParams.r)),0.0);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = v.vertex;
                return o;
            }
            void frag(
                VertexOutput i,
                out half4 outDiffuse : SV_Target0,
                out half4 outSpecSmoothness : SV_Target1,
                out half4 outNormal : SV_Target2,
                out half4 outEmission : SV_Target3,
                float facing : VFACE )
            {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                i.normalDir = normalize(i.normalDir);
                i.normalDir *= faceSign;
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float3 viewReflectDirection = reflect( -viewDirection, normalDirection );
////// Lighting:
////// Emissive:
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
                float4 node_9817_k = float4(0.0, -1.0 / 3.0, 2.0 / 3.0, -1.0);
                float4 node_9817_p = lerp(float4(float4(_MainTex_var.rgb,0.0).zy, node_9817_k.wz), float4(float4(_MainTex_var.rgb,0.0).yz, node_9817_k.xy), step(float4(_MainTex_var.rgb,0.0).z, float4(_MainTex_var.rgb,0.0).y));
                float4 node_9817_q = lerp(float4(node_9817_p.xyw, float4(_MainTex_var.rgb,0.0).x), float4(float4(_MainTex_var.rgb,0.0).x, node_9817_p.yzx), step(node_9817_p.x, float4(_MainTex_var.rgb,0.0).x));
                float node_9817_d = node_9817_q.x - min(node_9817_q.w, node_9817_q.y);
                float node_9817_e = 1.0e-10;
                float3 node_9817 = float3(abs(node_9817_q.z + (node_9817_q.w - node_9817_q.y) / (6.0 * node_9817_d + node_9817_e)), node_9817_d / (node_9817_q.x + node_9817_e), node_9817_q.x);;
                float node_2166 = floor(_node_2401);
                float3 emissive = (lerp(float3(1,1,1),saturate(3.0*abs(1.0-2.0*frac(node_9817.r+float3(0.0,-1.0/3.0,1.0/3.0)))-1),node_9817.g)*floor(node_9817.b * node_2166) / (node_2166 - 1));
                float3 finalColor = emissive;
                outDiffuse = half4( 0, 0, 0, 1 );
                outSpecSmoothness = half4(0,0,0,0);
                outNormal = half4( normalDirection * 0.5 + 0.5, 1 );
                outEmission = half4( (lerp(float3(1,1,1),saturate(3.0*abs(1.0-2.0*frac(node_9817.r+float3(0.0,-1.0/3.0,1.0/3.0)))-1),node_9817.g)*floor(node_9817.b * node_2166) / (node_2166 - 1)), 1 );
                #ifndef UNITY_HDR_ON
                    outEmission.rgb = exp2(-outEmission.rgb);
                #endif
            }
            ENDCG
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Cull Off
            ZTest Always
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform float _node_2401;
            uniform fixed _Isinverted;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                v.vertex.xyz = float3(((lerp( o.uv0, float2(o.uv0.r,(1.0 - o.uv0.g)), _Isinverted )*2.0+-1.0)*float2(1.0,_ProjectionParams.r)),0.0);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = v.vertex;
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                i.normalDir = normalize(i.normalDir);
                i.normalDir *= faceSign;
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float3 viewReflectDirection = reflect( -viewDirection, normalDirection );
////// Lighting:
////// Emissive:
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
                float4 node_9817_k = float4(0.0, -1.0 / 3.0, 2.0 / 3.0, -1.0);
                float4 node_9817_p = lerp(float4(float4(_MainTex_var.rgb,0.0).zy, node_9817_k.wz), float4(float4(_MainTex_var.rgb,0.0).yz, node_9817_k.xy), step(float4(_MainTex_var.rgb,0.0).z, float4(_MainTex_var.rgb,0.0).y));
                float4 node_9817_q = lerp(float4(node_9817_p.xyw, float4(_MainTex_var.rgb,0.0).x), float4(float4(_MainTex_var.rgb,0.0).x, node_9817_p.yzx), step(node_9817_p.x, float4(_MainTex_var.rgb,0.0).x));
                float node_9817_d = node_9817_q.x - min(node_9817_q.w, node_9817_q.y);
                float node_9817_e = 1.0e-10;
                float3 node_9817 = float3(abs(node_9817_q.z + (node_9817_q.w - node_9817_q.y) / (6.0 * node_9817_d + node_9817_e)), node_9817_d / (node_9817_q.x + node_9817_e), node_9817_q.x);;
                float node_2166 = floor(_node_2401);
                float3 emissive = (lerp(float3(1,1,1),saturate(3.0*abs(1.0-2.0*frac(node_9817.r+float3(0.0,-1.0/3.0,1.0/3.0)))-1),node_9817.g)*floor(node_9817.b * node_2166) / (node_2166 - 1));
                float3 finalColor = emissive;
                return fixed4(finalColor,1);
            }
            ENDCG
        }
        
    }
    CustomEditor "ShaderForgeMaterialInspector"
}
