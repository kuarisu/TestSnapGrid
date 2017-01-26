// Shader created with Shader Forge v1.32 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.32;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0,fgcg:0,fgcb:0,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:True,fnfb:True;n:type:ShaderForge.SFN_Final,id:4795,x:32716,y:32678,varname:node_4795,prsc:2|emission-2393-OUT,alpha-798-OUT;n:type:ShaderForge.SFN_Tex2d,id:6074,x:32116,y:32544,ptovrint:False,ptlb:MainTex,ptin:_MainTex,varname:_MainTex,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:46e90502b5277b44ab4acf2404feffee,ntxv:0,isnm:False|UVIN-6770-OUT;n:type:ShaderForge.SFN_Multiply,id:2393,x:32495,y:32793,varname:node_2393,prsc:2|A-2186-OUT,B-2053-RGB,C-797-RGB,D-9248-OUT;n:type:ShaderForge.SFN_VertexColor,id:2053,x:32046,y:32828,varname:node_2053,prsc:2;n:type:ShaderForge.SFN_Color,id:797,x:32046,y:32984,ptovrint:True,ptlb:Color,ptin:_TintColor,varname:_TintColor,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Vector1,id:9248,x:32159,y:33169,varname:node_9248,prsc:2,v1:2;n:type:ShaderForge.SFN_Multiply,id:798,x:32495,y:32923,varname:node_798,prsc:2|A-6074-A,B-2053-A,C-797-A;n:type:ShaderForge.SFN_Tex2d,id:8655,x:31018,y:31971,varname:node_8655,prsc:2,tex:dfb68442e715a164bb4624213ce3f9f8,ntxv:0,isnm:False|UVIN-5157-UVOUT,TEX-6866-TEX;n:type:ShaderForge.SFN_Append,id:7481,x:31344,y:31999,varname:node_7481,prsc:2|A-8655-R,B-8655-G;n:type:ShaderForge.SFN_Append,id:3694,x:31344,y:32202,varname:node_3694,prsc:2|A-8159-B,B-8159-R;n:type:ShaderForge.SFN_Multiply,id:3185,x:31545,y:32043,varname:node_3185,prsc:2|A-7481-OUT,B-8559-OUT;n:type:ShaderForge.SFN_Multiply,id:8453,x:31545,y:32184,varname:node_8453,prsc:2|A-3694-OUT,B-8559-OUT;n:type:ShaderForge.SFN_Add,id:874,x:31768,y:32337,varname:node_874,prsc:2|A-3185-OUT,B-1275-OUT;n:type:ShaderForge.SFN_Subtract,id:6770,x:31933,y:32586,varname:node_6770,prsc:2|A-874-OUT,B-8453-OUT;n:type:ShaderForge.SFN_TexCoord,id:6559,x:30459,y:32499,varname:node_6559,prsc:2,uv:0;n:type:ShaderForge.SFN_Panner,id:5157,x:30775,y:31791,varname:node_5157,prsc:2,spu:0.02,spv:-0.1|UVIN-8766-OUT,DIST-6378-OUT;n:type:ShaderForge.SFN_Tex2d,id:8159,x:31016,y:32233,varname:node_8159,prsc:2,tex:dfb68442e715a164bb4624213ce3f9f8,ntxv:0,isnm:False|UVIN-5988-UVOUT,TEX-6866-TEX;n:type:ShaderForge.SFN_Tex2dAsset,id:6866,x:30579,y:32189,ptovrint:False,ptlb:noise texture,ptin:_noisetexture,varname:node_6866,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:dfb68442e715a164bb4624213ce3f9f8,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Panner,id:5988,x:30775,y:31931,varname:node_5988,prsc:2,spu:-0.02,spv:-0.1|UVIN-8766-OUT,DIST-6378-OUT;n:type:ShaderForge.SFN_Time,id:9737,x:30291,y:32096,varname:node_9737,prsc:2;n:type:ShaderForge.SFN_Slider,id:9898,x:29997,y:31967,ptovrint:False,ptlb:warp speed,ptin:_warpspeed,varname:node_9898,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:3.846154,max:10;n:type:ShaderForge.SFN_Multiply,id:6378,x:30494,y:32031,varname:node_6378,prsc:2|A-9898-OUT,B-9737-T;n:type:ShaderForge.SFN_Slider,id:8559,x:31187,y:32138,ptovrint:False,ptlb:warp intensity,ptin:_warpintensity,varname:node_8559,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.2905988,max:1;n:type:ShaderForge.SFN_Vector1,id:4614,x:31963,y:32757,varname:node_4614,prsc:2,v1:0.8;n:type:ShaderForge.SFN_Add,id:7526,x:30747,y:32484,varname:node_7526,prsc:2|A-6559-UVOUT,B-3536-OUT;n:type:ShaderForge.SFN_Multiply,id:856,x:30950,y:32484,varname:node_856,prsc:2|A-7526-OUT,B-8144-OUT;n:type:ShaderForge.SFN_Add,id:1275,x:31154,y:32546,varname:node_1275,prsc:2|A-856-OUT,B-1622-OUT;n:type:ShaderForge.SFN_TexCoord,id:6511,x:29894,y:31646,varname:node_6511,prsc:2,uv:0;n:type:ShaderForge.SFN_Slider,id:8144,x:30476,y:32939,ptovrint:False,ptlb:scale,ptin:_scale,varname:node_8144,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:1,cur:1.97269,max:5;n:type:ShaderForge.SFN_Vector1,id:3536,x:30527,y:32755,varname:node_3536,prsc:2,v1:-0.5;n:type:ShaderForge.SFN_Vector1,id:1622,x:30977,y:32826,varname:node_1622,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Multiply,id:7650,x:30265,y:31762,varname:node_7650,prsc:2|A-6511-U,B-4426-OUT;n:type:ShaderForge.SFN_Vector1,id:4426,x:30059,y:31904,varname:node_4426,prsc:2,v1:2;n:type:ShaderForge.SFN_Append,id:8766,x:30434,y:31695,varname:node_8766,prsc:2|A-7650-OUT,B-6511-V;n:type:ShaderForge.SFN_OneMinus,id:1116,x:32302,y:32369,varname:node_1116,prsc:2|IN-6074-RGB;n:type:ShaderForge.SFN_Add,id:2186,x:32393,y:32574,varname:node_2186,prsc:2|A-1116-OUT,B-4614-OUT;proporder:6074-797-6866-9898-8559-8144;pass:END;sub:END;*/

Shader "Shader Forge/Flame" {
    Properties {
        _MainTex ("MainTex", 2D) = "white" {}
        _TintColor ("Color", Color) = (0.5,0.5,0.5,1)
        _noisetexture ("noise texture", 2D) = "white" {}
        _warpspeed ("warp speed", Range(0, 10)) = 3.846154
        _warpintensity ("warp intensity", Range(0, 1)) = 0.2905988
        _scale ("scale", Range(1, 5)) = 1.97269
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
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float4 _TimeEditor;
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform float4 _TintColor;
            uniform sampler2D _noisetexture; uniform float4 _noisetexture_ST;
            uniform float _warpspeed;
            uniform float _warpintensity;
            uniform float _scale;
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
                float4 node_9737 = _Time + _TimeEditor;
                float node_6378 = (_warpspeed*node_9737.g);
                float2 node_8766 = float2((i.uv0.r*2.0),i.uv0.g);
                float2 node_5157 = (node_8766+node_6378*float2(0.02,-0.1));
                float4 node_8655 = tex2D(_noisetexture,TRANSFORM_TEX(node_5157, _noisetexture));
                float2 node_5988 = (node_8766+node_6378*float2(-0.02,-0.1));
                float4 node_8159 = tex2D(_noisetexture,TRANSFORM_TEX(node_5988, _noisetexture));
                float2 node_6770 = (((float2(node_8655.r,node_8655.g)*_warpintensity)+(((i.uv0+(-0.5))*_scale)+0.5))-(float2(node_8159.b,node_8159.r)*_warpintensity));
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(node_6770, _MainTex));
                float3 node_1116 = (1.0 - _MainTex_var.rgb);
                float node_4614 = 0.8;
                float3 emissive = ((node_1116+node_4614)*i.vertexColor.rgb*_TintColor.rgb*2.0);
                float3 finalColor = emissive;
                fixed4 finalRGBA = fixed4(finalColor,(_MainTex_var.a*i.vertexColor.a*_TintColor.a));
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
    }
    CustomEditor "ShaderForgeMaterialInspector"
}
