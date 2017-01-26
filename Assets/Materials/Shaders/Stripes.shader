// Shader created with Shader Forge v1.32 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.32;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:3138,x:32719,y:32712,varname:node_3138,prsc:2|emission-4984-OUT;n:type:ShaderForge.SFN_Color,id:7241,x:31814,y:32806,ptovrint:False,ptlb:yellow,ptin:_yellow,varname:node_7241,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0,c2:0,c3:0,c4:1;n:type:ShaderForge.SFN_Sin,id:6215,x:31355,y:32591,varname:node_6215,prsc:2|IN-3354-OUT;n:type:ShaderForge.SFN_FragmentPosition,id:558,x:30265,y:32291,varname:node_558,prsc:2;n:type:ShaderForge.SFN_Slider,id:2995,x:30121,y:32479,ptovrint:False,ptlb:node_2995,ptin:_node_2995,varname:node_2995,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:10,max:10;n:type:ShaderForge.SFN_Lerp,id:4984,x:32171,y:32620,varname:node_4984,prsc:2|A-2800-RGB,B-7241-RGB,T-9334-OUT;n:type:ShaderForge.SFN_Color,id:2800,x:31846,y:32437,ptovrint:False,ptlb:black,ptin:_black,varname:node_2800,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:0.9724138,c3:0,c4:1;n:type:ShaderForge.SFN_Clamp01,id:9334,x:31679,y:32591,varname:node_9334,prsc:2|IN-5309-OUT;n:type:ShaderForge.SFN_Add,id:6926,x:30934,y:32314,varname:node_6926,prsc:2|A-5637-R,B-5637-G;n:type:ShaderForge.SFN_Multiply,id:3354,x:31097,y:32429,varname:node_3354,prsc:2|A-6926-OUT,B-2995-OUT;n:type:ShaderForge.SFN_Multiply,id:8508,x:30511,y:32231,varname:node_8508,prsc:2|A-558-XYZ,B-2995-OUT;n:type:ShaderForge.SFN_ComponentMask,id:5637,x:30658,y:32221,varname:node_5637,prsc:2,cc1:0,cc2:2,cc3:-1,cc4:-1|IN-8508-OUT;n:type:ShaderForge.SFN_Sign,id:5309,x:31516,y:32591,varname:node_5309,prsc:2|IN-6215-OUT;proporder:7241-2995-2800;pass:END;sub:END;*/

Shader "Shader Forge/Stripes" {
    Properties {
        _yellow ("yellow", Color) = (0,0,0,1)
        _node_2995 ("node_2995", Range(0, 10)) = 10
        _black ("black", Color) = (1,0.9724138,0,1)
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
            uniform float4 _yellow;
            uniform float _node_2995;
            uniform float4 _black;
            struct VertexInput {
                float4 vertex : POSITION;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float4 posWorld : TEXCOORD0;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
////// Lighting:
////// Emissive:
                float2 node_5637 = (i.posWorld.rgb*_node_2995).rb;
                float node_6926 = (node_5637.r+node_5637.g);
                float node_9334 = saturate(sign(sin((node_6926*_node_2995))));
                float3 emissive = lerp(_black.rgb,_yellow.rgb,node_9334);
                float3 finalColor = emissive;
                return fixed4(finalColor,1);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
