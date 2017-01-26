// Shader created with Shader Forge v1.32 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.32;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0,fgcg:0,fgcb:0,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:True,fnfb:True;n:type:ShaderForge.SFN_Final,id:4795,x:32910,y:32680,varname:node_4795,prsc:2|emission-2393-OUT,alpha-8315-OUT;n:type:ShaderForge.SFN_Tex2d,id:6074,x:32235,y:32601,ptovrint:False,ptlb:MainTex,ptin:_MainTex,varname:_MainTex,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:175e96380a907704eab6809eb09a208b,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:2393,x:32547,y:32754,varname:node_2393,prsc:2|A-6074-RGB,B-2053-RGB,C-7221-OUT,D-9248-OUT;n:type:ShaderForge.SFN_VertexColor,id:2053,x:32235,y:32765,varname:node_2053,prsc:2;n:type:ShaderForge.SFN_Color,id:797,x:31605,y:32834,ptovrint:True,ptlb:red,ptin:_TintColor,varname:_TintColor,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.6323529,c2:0,c3:0,c4:1;n:type:ShaderForge.SFN_Vector1,id:9248,x:32235,y:32896,varname:node_9248,prsc:2,v1:2;n:type:ShaderForge.SFN_SwitchProperty,id:7221,x:32235,y:32984,ptovrint:False,ptlb:colorSwitch,ptin:_colorSwitch,varname:node_7221,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:True|A-797-RGB,B-8841-RGB;n:type:ShaderForge.SFN_Color,id:8841,x:31605,y:32993,ptovrint:False,ptlb:blue,ptin:_blue,varname:node_8841,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0,c2:0.3291075,c3:0.8676471,c4:1;n:type:ShaderForge.SFN_Multiply,id:8315,x:32579,y:32928,varname:node_8315,prsc:2|A-6074-A,B-2053-A;proporder:6074-797-7221-8841;pass:END;sub:END;*/

Shader "Shader Forge/Paint" {
    Properties {
        _MainTex ("MainTex", 2D) = "white" {}
        _TintColor ("red", Color) = (0.6323529,0,0,1)
        [MaterialToggle] _colorSwitch ("colorSwitch", Float ) = 0
        _blue ("blue", Color) = (0,0.3291075,0.8676471,1)
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
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform float4 _TintColor;
            uniform fixed _colorSwitch;
            uniform float4 _blue;
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
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
                float3 emissive = (_MainTex_var.rgb*i.vertexColor.rgb*lerp( _TintColor.rgb, _blue.rgb, _colorSwitch )*2.0);
                float3 finalColor = emissive;
                fixed4 finalRGBA = fixed4(finalColor,(_MainTex_var.a*i.vertexColor.a));
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
    }
    CustomEditor "ShaderForgeMaterialInspector"
}
