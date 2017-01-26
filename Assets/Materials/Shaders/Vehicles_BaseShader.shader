// Shader created with Shader Forge v1.32 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.32;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:3138,x:32700,y:32624,varname:node_3138,prsc:2|emission-9779-OUT;n:type:ShaderForge.SFN_Color,id:8899,x:28899,y:32530,ptovrint:False,ptlb:Color1,ptin:_Color1,varname:_Color,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.6102941,c2:0.3186094,c3:0.3186094,c4:1;n:type:ShaderForge.SFN_LightVector,id:4776,x:28440,y:31345,varname:node_4776,prsc:2;n:type:ShaderForge.SFN_NormalVector,id:6861,x:28440,y:31470,prsc:2,pt:False;n:type:ShaderForge.SFN_ViewReflectionVector,id:2873,x:28440,y:31621,varname:node_2873,prsc:2;n:type:ShaderForge.SFN_Dot,id:5063,x:28658,y:31423,varname:node_5063,prsc:2,dt:0|A-4776-OUT,B-6861-OUT;n:type:ShaderForge.SFN_Dot,id:7775,x:28658,y:31578,varname:node_7775,prsc:2,dt:0|A-6861-OUT,B-2873-OUT;n:type:ShaderForge.SFN_Slider,id:6954,x:28271,y:31812,ptovrint:False,ptlb:gloss,ptin:_gloss,varname:node_3557,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:27.50413,max:100;n:type:ShaderForge.SFN_Exp,id:5015,x:28674,y:31735,varname:node_5015,prsc:2,et:1|IN-6954-OUT;n:type:ShaderForge.SFN_Power,id:3255,x:28886,y:31633,varname:node_3255,prsc:2|VAL-7775-OUT,EXP-5015-OUT;n:type:ShaderForge.SFN_Add,id:3289,x:29061,y:31498,varname:node_3289,prsc:2|A-5063-OUT,B-3255-OUT;n:type:ShaderForge.SFN_LightColor,id:6855,x:29061,y:31616,varname:node_6855,prsc:2;n:type:ShaderForge.SFN_LightAttenuation,id:1490,x:29061,y:31738,varname:node_1490,prsc:2;n:type:ShaderForge.SFN_Multiply,id:3215,x:29372,y:31505,varname:node_3215,prsc:2|A-3289-OUT,B-6855-RGB,C-1490-OUT;n:type:ShaderForge.SFN_Posterize,id:4545,x:29871,y:31768,varname:node_4545,prsc:2|IN-6465-OUT,STPS-3954-OUT;n:type:ShaderForge.SFN_Slider,id:3954,x:29380,y:31936,ptovrint:False,ptlb:posterize,ptin:_posterize,varname:node_5478,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:4.782797,max:10;n:type:ShaderForge.SFN_Slider,id:1524,x:29194,y:32323,ptovrint:False,ptlb:shadow value,ptin:_shadowvalue,varname:node_9690,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.3900841,max:1;n:type:ShaderForge.SFN_Multiply,id:3452,x:29932,y:32498,varname:node_3452,prsc:2|A-9673-OUT,B-5639-OUT,C-1905-OUT;n:type:ShaderForge.SFN_Tex2d,id:1310,x:28899,y:32871,ptovrint:False,ptlb:AO mask,ptin:_AOmask,varname:node_7957,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:2eb34a87f190e504d88f229ad68e7cc5,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Color,id:3861,x:28899,y:32688,ptovrint:False,ptlb:color2,ptin:_color2,varname:node_5923,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5108952,c2:0.5147059,c3:0.2384299,c4:1;n:type:ShaderForge.SFN_Lerp,id:5639,x:29335,y:32572,varname:node_5639,prsc:2|A-8899-RGB,B-3861-RGB,T-1310-RGB;n:type:ShaderForge.SFN_Add,id:6465,x:29575,y:31646,varname:node_6465,prsc:2|A-3215-OUT,B-348-OUT;n:type:ShaderForge.SFN_Slider,id:348,x:29262,y:31770,ptovrint:False,ptlb:offset,ptin:_offset,varname:node_6681,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.43986,max:5;n:type:ShaderForge.SFN_Clamp,id:9673,x:29761,y:32331,varname:node_9673,prsc:2|IN-4545-OUT,MIN-1524-OUT,MAX-5791-OUT;n:type:ShaderForge.SFN_Vector1,id:5791,x:29209,y:32411,varname:node_5791,prsc:2,v1:1;n:type:ShaderForge.SFN_Slider,id:1905,x:29527,y:32790,ptovrint:False,ptlb:highlight,ptin:_highlight,varname:node_428,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1.662592,max:2;n:type:ShaderForge.SFN_FragmentPosition,id:2367,x:29684,y:33065,varname:node_2367,prsc:2;n:type:ShaderForge.SFN_Multiply,id:2086,x:30036,y:33096,varname:node_2086,prsc:2|A-1852-OUT,B-2367-Y;n:type:ShaderForge.SFN_Slider,id:1852,x:29527,y:32983,ptovrint:False,ptlb:gradient exponent,ptin:_gradientexponent,varname:node_4143,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.4358974,max:1;n:type:ShaderForge.SFN_Subtract,id:9779,x:30857,y:32628,varname:node_9779,prsc:2|A-3452-OUT,B-6-OUT;n:type:ShaderForge.SFN_OneMinus,id:2560,x:30278,y:33096,varname:node_2560,prsc:2|IN-2086-OUT;n:type:ShaderForge.SFN_Clamp01,id:5516,x:30440,y:32918,varname:node_5516,prsc:2|IN-9214-OUT;n:type:ShaderForge.SFN_Add,id:9214,x:30242,y:32918,varname:node_9214,prsc:2|A-2560-OUT,B-6760-OUT;n:type:ShaderForge.SFN_Slider,id:6760,x:29879,y:32940,ptovrint:False,ptlb:gradient offset,ptin:_gradientoffset,varname:node_8676,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-5,cur:0,max:5;n:type:ShaderForge.SFN_Multiply,id:6,x:30619,y:32759,varname:node_6,prsc:2|A-9322-OUT,B-5516-OUT;n:type:ShaderForge.SFN_Slider,id:9322,x:30109,y:32803,ptovrint:False,ptlb:gradient opacity,ptin:_gradientopacity,varname:node_2450,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.4209757,max:1;proporder:8899-6954-3954-1524-1310-3861-348-1905-1852-6760-9322;pass:END;sub:END;*/

Shader "Shader Forge/BaseShader_vehicules" {
    Properties {
        _Color1 ("Color1", Color) = (0.6102941,0.3186094,0.3186094,1)
        _gloss ("gloss", Range(0, 100)) = 27.50413
        _posterize ("posterize", Range(0, 10)) = 4.782797
        _shadowvalue ("shadow value", Range(0, 1)) = 0.3900841
        _AOmask ("AO mask", 2D) = "white" {}
        _color2 ("color2", Color) = (0.5108952,0.5147059,0.2384299,1)
        _offset ("offset", Range(0, 5)) = 0.43986
        _highlight ("highlight", Range(0, 2)) = 1.662592
        _gradientexponent ("gradient exponent", Range(0, 1)) = 0.4358974
        _gradientoffset ("gradient offset", Range(-5, 5)) = 0
        _gradientopacity ("gradient opacity", Range(0, 1)) = 0.4209757
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
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float4 _Color1;
            uniform float _gloss;
            uniform float _posterize;
            uniform float _shadowvalue;
            uniform sampler2D _AOmask; uniform float4 _AOmask_ST;
            uniform float4 _color2;
            uniform float _offset;
            uniform float _highlight;
            uniform float _gradientexponent;
            uniform float _gradientoffset;
            uniform float _gradientopacity;
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
                LIGHTING_COORDS(3,4)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float3 viewReflectDirection = reflect( -viewDirection, normalDirection );
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
////// Emissive:
                float4 _AOmask_var = tex2D(_AOmask,TRANSFORM_TEX(i.uv0, _AOmask));
                float3 emissive = ((clamp(floor((((dot(lightDirection,i.normalDir)+pow(dot(i.normalDir,viewReflectDirection),exp2(_gloss)))*_LightColor0.rgb*attenuation)+_offset) * _posterize) / (_posterize - 1),_shadowvalue,1.0)*lerp(_Color1.rgb,_color2.rgb,_AOmask_var.rgb)*_highlight)-(_gradientopacity*saturate(((1.0 - (_gradientexponent*i.posWorld.g))+_gradientoffset))));
                float3 finalColor = emissive;
                return fixed4(finalColor,1);
            }
            ENDCG
        }
        Pass {
            Name "FORWARD_DELTA"
            Tags {
                "LightMode"="ForwardAdd"
            }
            Blend One One
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDADD
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #pragma multi_compile_fwdadd_fullshadows
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float4 _Color1;
            uniform float _gloss;
            uniform float _posterize;
            uniform float _shadowvalue;
            uniform sampler2D _AOmask; uniform float4 _AOmask_ST;
            uniform float4 _color2;
            uniform float _offset;
            uniform float _highlight;
            uniform float _gradientexponent;
            uniform float _gradientoffset;
            uniform float _gradientopacity;
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
                LIGHTING_COORDS(3,4)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float3 viewReflectDirection = reflect( -viewDirection, normalDirection );
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 finalColor = 0;
                return fixed4(finalColor * 1,0);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
