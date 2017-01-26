// Shader created with Shader Forge v1.32 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.32;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:False,qofs:0,qpre:2,rntp:3,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:3138,x:32719,y:32712,varname:node_3138,prsc:2|emission-333-OUT,clip-8978-R;n:type:ShaderForge.SFN_TexCoord,id:5262,x:30507,y:32368,varname:node_5262,prsc:2,uv:0;n:type:ShaderForge.SFN_Tex2d,id:8978,x:31683,y:32463,ptovrint:False,ptlb:node_8978,ptin:_node_8978,varname:node_8978,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:69680b688d11eb9d30009b3b4241aa39,ntxv:0,isnm:False|UVIN-9922-OUT;n:type:ShaderForge.SFN_Frac,id:5890,x:31027,y:32297,varname:node_5890,prsc:2|IN-7682-OUT;n:type:ShaderForge.SFN_Multiply,id:9922,x:31429,y:32463,varname:node_9922,prsc:2|A-7681-OUT,B-5836-OUT;n:type:ShaderForge.SFN_Vector1,id:5836,x:31049,y:32573,varname:node_5836,prsc:2,v1:1.5;n:type:ShaderForge.SFN_Multiply,id:7682,x:30774,y:32371,varname:node_7682,prsc:2|A-5262-UVOUT,B-7876-OUT;n:type:ShaderForge.SFN_Add,id:7681,x:31224,y:32281,varname:node_7681,prsc:2|A-5890-OUT,B-7067-OUT;n:type:ShaderForge.SFN_Vector1,id:7067,x:31049,y:32509,varname:node_7067,prsc:2,v1:-0.2;n:type:ShaderForge.SFN_Color,id:5206,x:31417,y:32786,ptovrint:False,ptlb:node_5206,ptin:_node_5206,varname:node_5206,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:0.9724138,c3:0,c4:1;n:type:ShaderForge.SFN_Multiply,id:333,x:31842,y:32829,varname:node_333,prsc:2|A-1565-OUT,B-5206-RGB;n:type:ShaderForge.SFN_TexCoord,id:7582,x:29624,y:33333,varname:node_7582,prsc:2,uv:0;n:type:ShaderForge.SFN_Posterize,id:1958,x:29936,y:33317,varname:node_1958,prsc:2|IN-7582-UVOUT,STPS-7876-OUT;n:type:ShaderForge.SFN_Noise,id:8039,x:30568,y:33629,varname:node_8039,prsc:2|XY-7093-OUT;n:type:ShaderForge.SFN_Time,id:5038,x:29727,y:33741,varname:node_5038,prsc:2;n:type:ShaderForge.SFN_Append,id:7093,x:30362,y:33629,varname:node_7093,prsc:2|A-1482-R,B-9568-OUT;n:type:ShaderForge.SFN_Multiply,id:9568,x:29979,y:33644,varname:node_9568,prsc:2|A-5038-TSL,B-6643-OUT;n:type:ShaderForge.SFN_Vector1,id:6643,x:29727,y:33659,varname:node_6643,prsc:2,v1:0.001;n:type:ShaderForge.SFN_ComponentMask,id:1482,x:30176,y:33331,varname:node_1482,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-1958-OUT;n:type:ShaderForge.SFN_Noise,id:953,x:30553,y:33989,varname:node_953,prsc:2|XY-6597-OUT;n:type:ShaderForge.SFN_Time,id:6799,x:29750,y:34158,varname:node_6799,prsc:2;n:type:ShaderForge.SFN_Append,id:6597,x:30297,y:34071,varname:node_6597,prsc:2|A-1482-G,B-354-OUT;n:type:ShaderForge.SFN_Multiply,id:354,x:30042,y:34088,varname:node_354,prsc:2|A-6799-TSL,B-8666-OUT;n:type:ShaderForge.SFN_Vector1,id:8666,x:29750,y:34105,varname:node_8666,prsc:2,v1:0.001;n:type:ShaderForge.SFN_Multiply,id:5094,x:30794,y:33716,varname:node_5094,prsc:2|A-8039-OUT,B-953-OUT;n:type:ShaderForge.SFN_Sign,id:1565,x:31237,y:33941,varname:node_1565,prsc:2|IN-8277-OUT;n:type:ShaderForge.SFN_Add,id:8277,x:30971,y:33830,varname:node_8277,prsc:2|A-5094-OUT,B-8980-OUT;n:type:ShaderForge.SFN_Vector1,id:8980,x:30781,y:33917,varname:node_8980,prsc:2,v1:-0.5;n:type:ShaderForge.SFN_Slider,id:5555,x:29406,y:32464,ptovrint:False,ptlb:size,ptin:_size,varname:node_5555,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:20;n:type:ShaderForge.SFN_Floor,id:7876,x:29743,y:32464,varname:node_7876,prsc:2|IN-5555-OUT;proporder:8978-5206-5555;pass:END;sub:END;*/

Shader "Shader Forge/BipBoop" {
    Properties {
        _node_8978 ("node_8978", 2D) = "white" {}
        _node_5206 ("node_5206", Color) = (1,0.9724138,0,1)
        _size ("size", Range(0, 20)) = 0
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "Queue"="AlphaTest"
            "RenderType"="TransparentCutout"
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
            uniform float4 _TimeEditor;
            uniform sampler2D _node_8978; uniform float4 _node_8978_ST;
            uniform float4 _node_5206;
            uniform float _size;
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
                float node_7876 = floor(_size);
                float2 node_9922 = ((frac((i.uv0*node_7876))+(-0.2))*1.5);
                float4 _node_8978_var = tex2D(_node_8978,TRANSFORM_TEX(node_9922, _node_8978));
                clip(_node_8978_var.r - 0.5);
////// Lighting:
////// Emissive:
                float2 node_1958 = floor(i.uv0 * node_7876) / (node_7876 - 1);
                float2 node_1482 = node_1958.rg;
                float4 node_5038 = _Time + _TimeEditor;
                float2 node_7093 = float2(node_1482.r,(node_5038.r*0.001));
                float2 node_8039_skew = node_7093 + 0.2127+node_7093.x*0.3713*node_7093.y;
                float2 node_8039_rnd = 4.789*sin(489.123*(node_8039_skew));
                float node_8039 = frac(node_8039_rnd.x*node_8039_rnd.y*(1+node_8039_skew.x));
                float4 node_6799 = _Time + _TimeEditor;
                float2 node_6597 = float2(node_1482.g,(node_6799.r*0.001));
                float2 node_953_skew = node_6597 + 0.2127+node_6597.x*0.3713*node_6597.y;
                float2 node_953_rnd = 4.789*sin(489.123*(node_953_skew));
                float node_953 = frac(node_953_rnd.x*node_953_rnd.y*(1+node_953_skew.x));
                float node_5094 = (node_8039*node_953);
                float3 node_333 = (sign((node_5094+(-0.5)))*_node_5206.rgb);
                float3 emissive = node_333;
                float3 finalColor = emissive;
                return fixed4(finalColor,1);
            }
            ENDCG
        }
        Pass {
            Name "ShadowCaster"
            Tags {
                "LightMode"="ShadowCaster"
            }
            Offset 1, 1
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_SHADOWCASTER
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform sampler2D _node_8978; uniform float4 _node_8978_ST;
            uniform float _size;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                float2 uv0 : TEXCOORD1;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                float node_7876 = floor(_size);
                float2 node_9922 = ((frac((i.uv0*node_7876))+(-0.2))*1.5);
                float4 _node_8978_var = tex2D(_node_8978,TRANSFORM_TEX(node_9922, _node_8978));
                clip(_node_8978_var.r - 0.5);
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
