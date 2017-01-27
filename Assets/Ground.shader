// Shader created with Shader Forge v1.32 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.32;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:3,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:3138,x:34049,y:33184,varname:node_3138,prsc:2|diff-8951-OUT,spec-4945-OUT,gloss-2221-OUT,emission-8226-OUT;n:type:ShaderForge.SFN_FragmentPosition,id:6587,x:30996,y:32534,varname:node_6587,prsc:2;n:type:ShaderForge.SFN_Append,id:2119,x:31534,y:32565,varname:node_2119,prsc:2|A-6587-X,B-6587-Z;n:type:ShaderForge.SFN_Tex2d,id:8583,x:32115,y:32928,ptovrint:False,ptlb:Texture,ptin:_Texture,varname:node_8583,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:e11408d1f0b6aca47909ea49a2b2d734,ntxv:0,isnm:False|UVIN-1580-OUT;n:type:ShaderForge.SFN_Multiply,id:1047,x:32017,y:32622,varname:node_1047,prsc:2|A-2119-OUT,B-1690-OUT;n:type:ShaderForge.SFN_Slider,id:1690,x:31544,y:32385,ptovrint:False,ptlb:scale,ptin:_scale,varname:node_1690,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:5;n:type:ShaderForge.SFN_Add,id:1580,x:32267,y:32496,varname:node_1580,prsc:2|A-4528-OUT,B-1047-OUT;n:type:ShaderForge.SFN_Slider,id:4528,x:31914,y:32412,ptovrint:False,ptlb:offset,ptin:_offset,varname:node_4528,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Color,id:9138,x:32784,y:33132,ptovrint:False,ptlb:color,ptin:_color,varname:node_9138,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Multiply,id:8951,x:32976,y:32952,varname:node_8951,prsc:2|A-117-OUT,B-9138-RGB;n:type:ShaderForge.SFN_Power,id:1620,x:32497,y:32815,varname:node_1620,prsc:2|VAL-8583-RGB,EXP-8790-OUT;n:type:ShaderForge.SFN_Slider,id:8790,x:32115,y:33153,ptovrint:False,ptlb:contrast,ptin:_contrast,varname:node_8790,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:5;n:type:ShaderForge.SFN_Clamp01,id:117,x:32682,y:32836,varname:node_117,prsc:2|IN-1620-OUT;n:type:ShaderForge.SFN_ComponentMask,id:4026,x:30064,y:31859,varname:node_4026,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-6744-OUT;n:type:ShaderForge.SFN_Time,id:8820,x:29467,y:31502,varname:node_8820,prsc:2;n:type:ShaderForge.SFN_Posterize,id:6744,x:29799,y:31852,varname:node_6744,prsc:2|IN-8473-OUT,STPS-6387-OUT;n:type:ShaderForge.SFN_Vector1,id:6387,x:29507,y:32017,varname:node_6387,prsc:2,v1:3;n:type:ShaderForge.SFN_Multiply,id:4757,x:29906,y:31450,varname:node_4757,prsc:2|A-9936-OUT,B-6539-OUT;n:type:ShaderForge.SFN_Slider,id:6539,x:29549,y:31421,ptovrint:False,ptlb:speed,ptin:_speed,varname:node_6539,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:1;n:type:ShaderForge.SFN_Posterize,id:9936,x:29706,y:31502,varname:node_9936,prsc:2|IN-8820-T,STPS-7913-OUT;n:type:ShaderForge.SFN_Vector1,id:7913,x:29484,y:31747,varname:node_7913,prsc:2,v1:2;n:type:ShaderForge.SFN_Noise,id:5057,x:30966,y:31435,varname:node_5057,prsc:2|XY-6529-OUT;n:type:ShaderForge.SFN_Posterize,id:7304,x:31619,y:31676,varname:node_7304,prsc:2|IN-4670-OUT,STPS-5127-OUT;n:type:ShaderForge.SFN_Vector1,id:5127,x:31361,y:31853,varname:node_5127,prsc:2,v1:5;n:type:ShaderForge.SFN_Add,id:8826,x:30416,y:31716,varname:node_8826,prsc:2|A-4757-OUT,B-4026-OUT;n:type:ShaderForge.SFN_Sin,id:6529,x:30607,y:31728,varname:node_6529,prsc:2|IN-8826-OUT;n:type:ShaderForge.SFN_Noise,id:2567,x:30966,y:31599,varname:node_2567,prsc:2|XY-2312-OUT;n:type:ShaderForge.SFN_Multiply,id:9695,x:30321,y:31375,varname:node_9695,prsc:2|A-4026-OUT,B-8124-OUT;n:type:ShaderForge.SFN_Vector1,id:8124,x:30142,y:31450,varname:node_8124,prsc:2,v1:2;n:type:ShaderForge.SFN_Multiply,id:9835,x:30321,y:31520,varname:node_9835,prsc:2|A-4026-OUT,B-1460-OUT;n:type:ShaderForge.SFN_Vector1,id:1460,x:30142,y:31534,varname:node_1460,prsc:2,v1:4;n:type:ShaderForge.SFN_Noise,id:4256,x:30966,y:31741,varname:node_4256,prsc:2|XY-2758-OUT;n:type:ShaderForge.SFN_Add,id:2413,x:30511,y:31375,varname:node_2413,prsc:2|A-9695-OUT,B-4757-OUT;n:type:ShaderForge.SFN_Add,id:2669,x:30511,y:31520,varname:node_2669,prsc:2|A-9835-OUT,B-4757-OUT;n:type:ShaderForge.SFN_Sin,id:2758,x:30660,y:31520,varname:node_2758,prsc:2|IN-2669-OUT;n:type:ShaderForge.SFN_Sin,id:2312,x:30791,y:31357,varname:node_2312,prsc:2|IN-2413-OUT;n:type:ShaderForge.SFN_Append,id:3031,x:31178,y:31545,varname:node_3031,prsc:2|A-5057-OUT,B-2567-OUT;n:type:ShaderForge.SFN_Append,id:4670,x:31293,y:31678,varname:node_4670,prsc:2|A-3031-OUT,B-4256-OUT;n:type:ShaderForge.SFN_Multiply,id:1929,x:29332,y:31875,varname:node_1929,prsc:2|A-2119-OUT,B-7996-OUT;n:type:ShaderForge.SFN_Vector1,id:7996,x:29305,y:32061,varname:node_7996,prsc:2,v1:0.25;n:type:ShaderForge.SFN_Add,id:8473,x:29581,y:31848,varname:node_8473,prsc:2|A-1929-OUT,B-7565-OUT;n:type:ShaderForge.SFN_Vector1,id:7565,x:29320,y:31806,varname:node_7565,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Slider,id:4945,x:33115,y:33092,ptovrint:False,ptlb:metal,ptin:_metal,varname:node_4945,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Slider,id:2221,x:33105,y:33206,ptovrint:False,ptlb:gloss,ptin:_gloss,varname:node_2221,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Slider,id:6726,x:33568,y:33304,ptovrint:False,ptlb:emissive,ptin:_emissive,varname:node_6726,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.3675214,max:1;n:type:ShaderForge.SFN_Multiply,id:8226,x:33880,y:33277,varname:node_8226,prsc:2|A-8951-OUT,B-6726-OUT;proporder:8583-1690-4528-9138-8790-6539-4945-2221-6726;pass:END;sub:END;*/

Shader "Shader Forge/Ground" {
    Properties {
        _Texture ("Texture", 2D) = "white" {}
        _scale ("scale", Range(0, 5)) = 1
        _offset ("offset", Range(0, 1)) = 0
        _color ("color", Color) = (1,1,1,1)
        _contrast ("contrast", Range(0, 5)) = 0
        _speed ("speed", Range(0, 1)) = 1
        _metal ("metal", Range(0, 1)) = 0
        _gloss ("gloss", Range(0, 1)) = 0
        _emissive ("emissive", Range(0, 1)) = 0.3675214
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
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform sampler2D _Texture; uniform float4 _Texture_ST;
            uniform float _scale;
            uniform float _offset;
            uniform float4 _color;
            uniform float _contrast;
            uniform float _metal;
            uniform float _gloss;
            uniform float _emissive;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float4 posWorld : TEXCOORD0;
                float3 normalDir : TEXCOORD1;
                LIGHTING_COORDS(2,3)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
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
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
                float Pi = 3.141592654;
                float InvPi = 0.31830988618;
///////// Gloss:
                float gloss = _gloss;
                float specPow = exp2( gloss * 10.0+1.0);
/////// GI Data:
                UnityLight light;
                #ifdef LIGHTMAP_OFF
                    light.color = lightColor;
                    light.dir = lightDirection;
                    light.ndotl = LambertTerm (normalDirection, light.dir);
                #else
                    light.color = half3(0.f, 0.f, 0.f);
                    light.ndotl = 0.0f;
                    light.dir = half3(0.f, 0.f, 0.f);
                #endif
                UnityGIInput d;
                d.light = light;
                d.worldPos = i.posWorld.xyz;
                d.worldViewDir = viewDirection;
                d.atten = attenuation;
                Unity_GlossyEnvironmentData ugls_en_data;
                ugls_en_data.roughness = 1.0 - gloss;
                ugls_en_data.reflUVW = viewReflectDirection;
                UnityGI gi = UnityGlobalIllumination(d, 1, normalDirection, ugls_en_data );
                lightDirection = gi.light.dir;
                lightColor = gi.light.color;
////// Specular:
                float NdotL = max(0, dot( normalDirection, lightDirection ));
                float LdotH = max(0.0,dot(lightDirection, halfDirection));
                float3 specularColor = _metal;
                float specularMonochrome;
                float2 node_2119 = float2(i.posWorld.r,i.posWorld.b);
                float2 node_1580 = (_offset+(node_2119*_scale));
                float4 _Texture_var = tex2D(_Texture,TRANSFORM_TEX(node_1580, _Texture));
                float3 node_8951 = (saturate(pow(_Texture_var.rgb,_contrast))*_color.rgb);
                float3 diffuseColor = node_8951; // Need this for specular when using metallic
                diffuseColor = DiffuseAndSpecularFromMetallic( diffuseColor, specularColor, specularColor, specularMonochrome );
                specularMonochrome = 1.0-specularMonochrome;
                float NdotV = max(0.0,dot( normalDirection, viewDirection ));
                float NdotH = max(0.0,dot( normalDirection, halfDirection ));
                float VdotH = max(0.0,dot( viewDirection, halfDirection ));
                float visTerm = SmithJointGGXVisibilityTerm( NdotL, NdotV, 1.0-gloss );
                float normTerm = max(0.0, GGXTerm(NdotH, 1.0-gloss));
                float specularPBL = (NdotL*visTerm*normTerm) * (UNITY_PI / 4);
                if (IsGammaSpace())
                    specularPBL = sqrt(max(1e-4h, specularPBL));
                specularPBL = max(0, specularPBL * NdotL);
                float3 directSpecular = (floor(attenuation) * _LightColor0.xyz)*specularPBL*FresnelTerm(specularColor, LdotH);
                float3 specular = directSpecular;
/////// Diffuse:
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                half fd90 = 0.5 + 2 * LdotH * LdotH * (1-gloss);
                float nlPow5 = Pow5(1-NdotL);
                float nvPow5 = Pow5(1-NdotV);
                float3 directDiffuse = ((1 +(fd90 - 1)*nlPow5) * (1 + (fd90 - 1)*nvPow5) * NdotL) * attenColor;
                float3 indirectDiffuse = float3(0,0,0);
                indirectDiffuse += UNITY_LIGHTMODEL_AMBIENT.rgb; // Ambient Light
                float3 diffuse = (directDiffuse + indirectDiffuse) * diffuseColor;
////// Emissive:
                float3 emissive = (node_8951*_emissive);
/// Final Color:
                float3 finalColor = diffuse + specular + emissive;
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
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdadd_fullshadows
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform sampler2D _Texture; uniform float4 _Texture_ST;
            uniform float _scale;
            uniform float _offset;
            uniform float4 _color;
            uniform float _contrast;
            uniform float _metal;
            uniform float _gloss;
            uniform float _emissive;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float4 posWorld : TEXCOORD0;
                float3 normalDir : TEXCOORD1;
                LIGHTING_COORDS(2,3)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
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
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
                float Pi = 3.141592654;
                float InvPi = 0.31830988618;
///////// Gloss:
                float gloss = _gloss;
                float specPow = exp2( gloss * 10.0+1.0);
////// Specular:
                float NdotL = max(0, dot( normalDirection, lightDirection ));
                float LdotH = max(0.0,dot(lightDirection, halfDirection));
                float3 specularColor = _metal;
                float specularMonochrome;
                float2 node_2119 = float2(i.posWorld.r,i.posWorld.b);
                float2 node_1580 = (_offset+(node_2119*_scale));
                float4 _Texture_var = tex2D(_Texture,TRANSFORM_TEX(node_1580, _Texture));
                float3 node_8951 = (saturate(pow(_Texture_var.rgb,_contrast))*_color.rgb);
                float3 diffuseColor = node_8951; // Need this for specular when using metallic
                diffuseColor = DiffuseAndSpecularFromMetallic( diffuseColor, specularColor, specularColor, specularMonochrome );
                specularMonochrome = 1.0-specularMonochrome;
                float NdotV = max(0.0,dot( normalDirection, viewDirection ));
                float NdotH = max(0.0,dot( normalDirection, halfDirection ));
                float VdotH = max(0.0,dot( viewDirection, halfDirection ));
                float visTerm = SmithJointGGXVisibilityTerm( NdotL, NdotV, 1.0-gloss );
                float normTerm = max(0.0, GGXTerm(NdotH, 1.0-gloss));
                float specularPBL = (NdotL*visTerm*normTerm) * (UNITY_PI / 4);
                if (IsGammaSpace())
                    specularPBL = sqrt(max(1e-4h, specularPBL));
                specularPBL = max(0, specularPBL * NdotL);
                float3 directSpecular = attenColor*specularPBL*FresnelTerm(specularColor, LdotH);
                float3 specular = directSpecular;
/////// Diffuse:
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                half fd90 = 0.5 + 2 * LdotH * LdotH * (1-gloss);
                float nlPow5 = Pow5(1-NdotL);
                float nvPow5 = Pow5(1-NdotV);
                float3 directDiffuse = ((1 +(fd90 - 1)*nlPow5) * (1 + (fd90 - 1)*nvPow5) * NdotL) * attenColor;
                float3 diffuse = directDiffuse * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse + specular;
                return fixed4(finalColor * 1,0);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
