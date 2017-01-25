// Shader created with Shader Forge v1.32 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.32;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:True,hqlp:False,rprd:True,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:False,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:2865,x:35986,y:32868,varname:node_2865,prsc:2|emission-3868-OUT,alpha-7002-OUT;n:type:ShaderForge.SFN_Color,id:6665,x:32108,y:32752,ptovrint:False,ptlb:Color1,ptin:_Color1,varname:_Color,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.6102941,c2:0.3186094,c3:0.3186094,c4:1;n:type:ShaderForge.SFN_LightVector,id:6719,x:31649,y:31567,varname:node_6719,prsc:2;n:type:ShaderForge.SFN_NormalVector,id:2334,x:31649,y:31692,prsc:2,pt:False;n:type:ShaderForge.SFN_ViewReflectionVector,id:450,x:31649,y:31843,varname:node_450,prsc:2;n:type:ShaderForge.SFN_Dot,id:4564,x:31867,y:31645,varname:node_4564,prsc:2,dt:0|A-6719-OUT,B-2334-OUT;n:type:ShaderForge.SFN_Dot,id:2634,x:31867,y:31800,varname:node_2634,prsc:2,dt:0|A-2334-OUT,B-450-OUT;n:type:ShaderForge.SFN_Slider,id:3557,x:31480,y:32034,ptovrint:False,ptlb:gloss,ptin:_gloss,varname:node_3557,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:27.50413,max:100;n:type:ShaderForge.SFN_Exp,id:5166,x:31883,y:31957,varname:node_5166,prsc:2,et:1|IN-3557-OUT;n:type:ShaderForge.SFN_Power,id:5118,x:32095,y:31855,varname:node_5118,prsc:2|VAL-2634-OUT,EXP-5166-OUT;n:type:ShaderForge.SFN_Add,id:5572,x:32270,y:31720,varname:node_5572,prsc:2|A-4564-OUT,B-5118-OUT;n:type:ShaderForge.SFN_LightColor,id:6239,x:32270,y:31838,varname:node_6239,prsc:2;n:type:ShaderForge.SFN_LightAttenuation,id:3907,x:32270,y:31960,varname:node_3907,prsc:2;n:type:ShaderForge.SFN_Multiply,id:4783,x:32581,y:31727,varname:node_4783,prsc:2|A-5572-OUT,B-6239-RGB,C-3907-OUT;n:type:ShaderForge.SFN_Posterize,id:2104,x:33080,y:31990,varname:node_2104,prsc:2|IN-6468-OUT,STPS-5478-OUT;n:type:ShaderForge.SFN_Slider,id:5478,x:32589,y:32158,ptovrint:False,ptlb:posterize,ptin:_posterize,varname:node_5478,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:4.782797,max:10;n:type:ShaderForge.SFN_Slider,id:9690,x:32403,y:32545,ptovrint:False,ptlb:shadow value,ptin:_shadowvalue,varname:node_9690,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.3900841,max:1;n:type:ShaderForge.SFN_Multiply,id:5496,x:33141,y:32720,varname:node_5496,prsc:2|A-4363-OUT,B-4791-OUT,C-428-OUT;n:type:ShaderForge.SFN_Tex2d,id:7957,x:32108,y:33093,ptovrint:False,ptlb:AO mask,ptin:_AOmask,varname:node_7957,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:2eb34a87f190e504d88f229ad68e7cc5,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Color,id:5923,x:32108,y:32910,ptovrint:False,ptlb:color2,ptin:_color2,varname:node_5923,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5108952,c2:0.5147059,c3:0.2384299,c4:1;n:type:ShaderForge.SFN_Lerp,id:4791,x:32544,y:32794,varname:node_4791,prsc:2|A-6665-RGB,B-5923-RGB,T-7957-RGB;n:type:ShaderForge.SFN_Add,id:6468,x:32784,y:31868,varname:node_6468,prsc:2|A-4783-OUT,B-6681-OUT;n:type:ShaderForge.SFN_Slider,id:6681,x:32471,y:31992,ptovrint:False,ptlb:offset,ptin:_offset,varname:node_6681,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.43986,max:5;n:type:ShaderForge.SFN_Clamp,id:4363,x:32970,y:32553,varname:node_4363,prsc:2|IN-2104-OUT,MIN-9690-OUT,MAX-8132-OUT;n:type:ShaderForge.SFN_Vector1,id:8132,x:32418,y:32633,varname:node_8132,prsc:2,v1:1;n:type:ShaderForge.SFN_Slider,id:428,x:32736,y:33012,ptovrint:False,ptlb:highlight,ptin:_highlight,varname:node_428,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1.662592,max:2;n:type:ShaderForge.SFN_FragmentPosition,id:9118,x:32927,y:33326,varname:node_9118,prsc:2;n:type:ShaderForge.SFN_Multiply,id:3813,x:33245,y:33318,varname:node_3813,prsc:2|A-4143-OUT,B-9118-Y;n:type:ShaderForge.SFN_Slider,id:4143,x:32736,y:33205,ptovrint:False,ptlb:gradient exponent,ptin:_gradientexponent,varname:node_4143,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.4358974,max:1;n:type:ShaderForge.SFN_Subtract,id:2412,x:34066,y:32850,varname:node_2412,prsc:2|A-5496-OUT,B-7385-OUT;n:type:ShaderForge.SFN_OneMinus,id:1379,x:33487,y:33318,varname:node_1379,prsc:2|IN-3813-OUT;n:type:ShaderForge.SFN_Clamp01,id:7515,x:33649,y:33140,varname:node_7515,prsc:2|IN-4126-OUT;n:type:ShaderForge.SFN_Add,id:4126,x:33451,y:33140,varname:node_4126,prsc:2|A-1379-OUT,B-8676-OUT;n:type:ShaderForge.SFN_Slider,id:8676,x:33088,y:33162,ptovrint:False,ptlb:gradient offset,ptin:_gradientoffset,varname:node_8676,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-5,cur:0,max:5;n:type:ShaderForge.SFN_Multiply,id:7385,x:33828,y:32981,varname:node_7385,prsc:2|A-2450-OUT,B-7515-OUT;n:type:ShaderForge.SFN_Slider,id:2450,x:33318,y:33025,ptovrint:False,ptlb:gradient opacity,ptin:_gradientopacity,varname:node_2450,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.4209757,max:1;n:type:ShaderForge.SFN_SwitchProperty,id:7002,x:35321,y:33523,ptovrint:False,ptlb:Pose,ptin:_Pose,varname:node_7002,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-6882-OUT,B-7735-OUT;n:type:ShaderForge.SFN_Vector1,id:6882,x:35069,y:33487,varname:node_6882,prsc:2,v1:1;n:type:ShaderForge.SFN_Vector1,id:7735,x:35069,y:33572,varname:node_7735,prsc:2,v1:0.5;n:type:ShaderForge.SFN_If,id:3868,x:35703,y:32963,varname:node_3868,prsc:2|A-6882-OUT,B-7002-OUT,GT-8744-OUT,EQ-2412-OUT,LT-8744-OUT;n:type:ShaderForge.SFN_Color,id:2091,x:34158,y:33231,ptovrint:False,ptlb:color posable,ptin:_colorposable,varname:node_2091,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0,c2:0.6397059,c3:0.08382361,c4:1;n:type:ShaderForge.SFN_Multiply,id:8744,x:35112,y:33223,varname:node_8744,prsc:2|A-2788-OUT,B-9087-OUT,C-3374-OUT;n:type:ShaderForge.SFN_Multiply,id:9611,x:34158,y:33546,varname:node_9611,prsc:2|A-7957-RGB,B-5211-OUT;n:type:ShaderForge.SFN_Vector1,id:5211,x:33731,y:33426,varname:node_5211,prsc:2,v1:5;n:type:ShaderForge.SFN_Clamp01,id:9087,x:34868,y:33341,varname:node_9087,prsc:2|IN-9611-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:2788,x:34364,y:33315,ptovrint:False,ptlb:Is clipping,ptin:_Isclipping,varname:node_2788,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-2091-RGB,B-4419-RGB;n:type:ShaderForge.SFN_Color,id:4419,x:34158,y:33396,ptovrint:False,ptlb:color clipping,ptin:_colorclipping,varname:node_4419,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.75,c2:0,c3:0,c4:1;n:type:ShaderForge.SFN_Sin,id:6697,x:34346,y:32974,varname:node_6697,prsc:2|IN-1640-TTR;n:type:ShaderForge.SFN_Time,id:1640,x:34185,y:32974,varname:node_1640,prsc:2;n:type:ShaderForge.SFN_Add,id:1131,x:34515,y:32974,varname:node_1131,prsc:2|A-6697-OUT,B-540-OUT;n:type:ShaderForge.SFN_Vector1,id:540,x:34346,y:33092,varname:node_540,prsc:2,v1:5;n:type:ShaderForge.SFN_Multiply,id:3374,x:34695,y:32974,varname:node_3374,prsc:2|A-1131-OUT,B-7360-OUT;n:type:ShaderForge.SFN_Vector1,id:7360,x:34515,y:33111,varname:node_7360,prsc:2,v1:0.2;proporder:6665-3557-5478-9690-7957-5923-6681-428-4143-8676-2450-7002-2091-2788-4419;pass:END;sub:END;*/

Shader "Shader Forge/BaseShader" {
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
        [MaterialToggle] _Pose ("Pose", Float ) = 1
        _colorposable ("color posable", Color) = (0,0.6397059,0.08382361,1)
        [MaterialToggle] _Isclipping ("Is clipping", Float ) = 0
        _colorclipping ("color clipping", Color) = (0.75,0,0,1)
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
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
            Blend SrcAlpha OneMinusSrcAlpha
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdbase
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float4 _TimeEditor;
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
            uniform fixed _Pose;
            uniform float4 _colorposable;
            uniform fixed _Isclipping;
            uniform float4 _colorclipping;
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
                UNITY_FOG_COORDS(3)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
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
                float attenuation = 1;
////// Emissive:
                float node_6882 = 1.0;
                float _Pose_var = lerp( node_6882, 0.5, _Pose );
                float node_3868_if_leA = step(node_6882,_Pose_var);
                float node_3868_if_leB = step(_Pose_var,node_6882);
                float4 _AOmask_var = tex2D(_AOmask,TRANSFORM_TEX(i.uv0, _AOmask));
                float4 node_1640 = _Time + _TimeEditor;
                float3 node_8744 = (lerp( _colorposable.rgb, _colorclipping.rgb, _Isclipping )*saturate((_AOmask_var.rgb*5.0))*((sin(node_1640.a)+5.0)*0.2));
                float3 emissive = lerp((node_3868_if_leA*node_8744)+(node_3868_if_leB*node_8744),((clamp(floor((((dot(lightDirection,i.normalDir)+pow(dot(i.normalDir,viewReflectDirection),exp2(_gloss)))*_LightColor0.rgb*attenuation)+_offset) * _posterize) / (_posterize - 1),_shadowvalue,1.0)*lerp(_Color1.rgb,_color2.rgb,_AOmask_var.rgb)*_highlight)-(_gradientopacity*saturate(((1.0 - (_gradientexponent*i.posWorld.g))+_gradientoffset)))),node_3868_if_leA*node_3868_if_leB);
                float3 finalColor = emissive;
                fixed4 finalRGBA = fixed4(finalColor,_Pose_var);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
        Pass {
            Name "FORWARD_DELTA"
            Tags {
                "LightMode"="ForwardAdd"
            }
            Blend One One
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDADD
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdadd
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float4 _TimeEditor;
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
            uniform fixed _Pose;
            uniform float4 _colorposable;
            uniform fixed _Isclipping;
            uniform float4 _colorclipping;
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
                UNITY_FOG_COORDS(5)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
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
                float node_6882 = 1.0;
                float _Pose_var = lerp( node_6882, 0.5, _Pose );
                fixed4 finalRGBA = fixed4(finalColor * _Pose_var,0);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
        Pass {
            Name "Meta"
            Tags {
                "LightMode"="Meta"
            }
            Cull Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_META 1
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #include "UnityMetaPass.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float4 _TimeEditor;
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
            uniform fixed _Pose;
            uniform float4 _colorposable;
            uniform fixed _Isclipping;
            uniform float4 _colorclipping;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
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
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityMetaVertexPosition(v.vertex, v.texcoord1.xy, v.texcoord2.xy, unity_LightmapST, unity_DynamicLightmapST );
                return o;
            }
            float4 frag(VertexOutput i) : SV_Target {
                i.normalDir = normalize(i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float3 viewReflectDirection = reflect( -viewDirection, normalDirection );
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
                UnityMetaInput o;
                UNITY_INITIALIZE_OUTPUT( UnityMetaInput, o );
                
                float node_6882 = 1.0;
                float _Pose_var = lerp( node_6882, 0.5, _Pose );
                float node_3868_if_leA = step(node_6882,_Pose_var);
                float node_3868_if_leB = step(_Pose_var,node_6882);
                float4 _AOmask_var = tex2D(_AOmask,TRANSFORM_TEX(i.uv0, _AOmask));
                float4 node_1640 = _Time + _TimeEditor;
                float3 node_8744 = (lerp( _colorposable.rgb, _colorclipping.rgb, _Isclipping )*saturate((_AOmask_var.rgb*5.0))*((sin(node_1640.a)+5.0)*0.2));
                o.Emission = lerp((node_3868_if_leA*node_8744)+(node_3868_if_leB*node_8744),((clamp(floor((((dot(lightDirection,i.normalDir)+pow(dot(i.normalDir,viewReflectDirection),exp2(_gloss)))*_LightColor0.rgb*attenuation)+_offset) * _posterize) / (_posterize - 1),_shadowvalue,1.0)*lerp(_Color1.rgb,_color2.rgb,_AOmask_var.rgb)*_highlight)-(_gradientopacity*saturate(((1.0 - (_gradientexponent*i.posWorld.g))+_gradientoffset)))),node_3868_if_leA*node_3868_if_leB);
                
                float3 diffColor = float3(0,0,0);
                o.Albedo = diffColor;
                
                return UnityMetaFragment( o );
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
