// Shader created with Shader Forge v1.32 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.32;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0,fgcg:0,fgcb:0,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:True,fnfb:True;n:type:ShaderForge.SFN_Final,id:4795,x:32716,y:32678,varname:node_4795,prsc:2|emission-2393-OUT,alpha-798-OUT;n:type:ShaderForge.SFN_Tex2d,id:6074,x:32124,y:32306,ptovrint:False,ptlb:MainTex,ptin:_MainTex,varname:_MainTex,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:175e96380a907704eab6809eb09a208b,ntxv:0,isnm:False|UVIN-1580-OUT;n:type:ShaderForge.SFN_Multiply,id:2393,x:32495,y:32793,varname:node_2393,prsc:2|A-6074-RGB,B-2053-RGB,C-797-RGB,D-9248-OUT;n:type:ShaderForge.SFN_VertexColor,id:2053,x:32119,y:32753,varname:node_2053,prsc:2;n:type:ShaderForge.SFN_Color,id:797,x:31925,y:32997,ptovrint:True,ptlb:Color,ptin:_TintColor,varname:_TintColor,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Vector1,id:9248,x:32025,y:33221,varname:node_9248,prsc:2,v1:2;n:type:ShaderForge.SFN_Multiply,id:798,x:32495,y:32923,varname:node_798,prsc:2|A-6074-A,B-2053-A,C-797-A;n:type:ShaderForge.SFN_TexCoord,id:6880,x:31279,y:32100,varname:node_6880,prsc:2,uv:0;n:type:ShaderForge.SFN_Tex2d,id:822,x:31063,y:31792,varname:node_822,prsc:2,tex:91635689d140e3b40854f4146cb968fb,ntxv:0,isnm:False|UVIN-1108-UVOUT,TEX-9672-TEX;n:type:ShaderForge.SFN_ComponentMask,id:3379,x:31266,y:31792,varname:node_3379,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-822-RGB;n:type:ShaderForge.SFN_Multiply,id:638,x:31499,y:31851,varname:node_638,prsc:2|A-3379-OUT,B-9087-OUT;n:type:ShaderForge.SFN_Vector1,id:9087,x:31279,y:32013,varname:node_9087,prsc:2,v1:0.2;n:type:ShaderForge.SFN_Add,id:4141,x:31693,y:32033,varname:node_4141,prsc:2|A-638-OUT,B-6880-UVOUT;n:type:ShaderForge.SFN_ComponentMask,id:1225,x:31266,y:31644,varname:node_1225,prsc:2,cc1:2,cc2:0,cc3:-1,cc4:-1|IN-822-RGB;n:type:ShaderForge.SFN_Multiply,id:431,x:31499,y:31680,varname:node_431,prsc:2|A-1225-OUT,B-9087-OUT;n:type:ShaderForge.SFN_Subtract,id:1580,x:31895,y:32069,varname:node_1580,prsc:2|A-4141-OUT,B-431-OUT;n:type:ShaderForge.SFN_Tex2dAsset,id:9672,x:30796,y:32027,ptovrint:False,ptlb:node_9672,ptin:_node_9672,varname:node_9672,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:91635689d140e3b40854f4146cb968fb,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:5611,x:31063,y:31568,varname:node_5611,prsc:2,tex:91635689d140e3b40854f4146cb968fb,ntxv:0,isnm:False|UVIN-2332-UVOUT,TEX-9672-TEX;n:type:ShaderForge.SFN_TexCoord,id:2042,x:29839,y:31606,varname:node_2042,prsc:2,uv:0;n:type:ShaderForge.SFN_Panner,id:2332,x:30779,y:31469,varname:node_2332,prsc:2,spu:0.1,spv:0.1|UVIN-3758-OUT;n:type:ShaderForge.SFN_Panner,id:1108,x:30801,y:31593,varname:node_1108,prsc:2,spu:-0.1,spv:0.1|UVIN-3758-OUT;n:type:ShaderForge.SFN_Multiply,id:3758,x:30465,y:31358,varname:node_3758,prsc:2|A-2839-OUT,B-2067-OUT;n:type:ShaderForge.SFN_Vector1,id:2067,x:30256,y:31414,varname:node_2067,prsc:2,v1:0.5;n:type:ShaderForge.SFN_FragmentPosition,id:9589,x:29662,y:31292,varname:node_9589,prsc:2;n:type:ShaderForge.SFN_Add,id:9935,x:29846,y:31319,varname:node_9935,prsc:2|A-9589-X,B-9589-Z;n:type:ShaderForge.SFN_Add,id:2839,x:30057,y:31439,varname:node_2839,prsc:2|A-9935-OUT,B-2042-UVOUT;proporder:6074-797-9672;pass:END;sub:END;*/

Shader "Shader Forge/Smoke" {
    Properties {
        _MainTex ("MainTex", 2D) = "white" {}
        _TintColor ("Color", Color) = (0.5,0.5,0.5,1)
        _node_9672 ("node_9672", 2D) = "white" {}
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
            uniform sampler2D _node_9672; uniform float4 _node_9672_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
                float4 vertexColor : COLOR;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float4 vertexColor : COLOR;
                UNITY_FOG_COORDS(2)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.vertexColor = v.vertexColor;
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
////// Lighting:
////// Emissive:
                float4 node_6550 = _Time + _TimeEditor;
                float2 node_3758 = (((i.posWorld.r+i.posWorld.b)+i.uv0)*0.5);
                float2 node_1108 = (node_3758+node_6550.g*float2(-0.1,0.1));
                float4 node_822 = tex2D(_node_9672,TRANSFORM_TEX(node_1108, _node_9672));
                float node_9087 = 0.2;
                float2 node_1580 = (((node_822.rgb.rg*node_9087)+i.uv0)-(node_822.rgb.br*node_9087));
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(node_1580, _MainTex));
                float3 emissive = (_MainTex_var.rgb*i.vertexColor.rgb*_TintColor.rgb*2.0);
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
