// Shader created with Shader Forge v1.32 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.32;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:2,bsrc:0,bdst:0,dpts:2,wrdp:False,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:3138,x:32719,y:32712,varname:node_3138,prsc:2|emission-7726-OUT;n:type:ShaderForge.SFN_Color,id:7241,x:31792,y:32842,ptovrint:False,ptlb:Color,ptin:_Color,varname:node_7241,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.07843138,c2:0.3921569,c3:0.7843137,c4:1;n:type:ShaderForge.SFN_Sin,id:5127,x:31304,y:32542,varname:node_5127,prsc:2|IN-6778-OUT;n:type:ShaderForge.SFN_Time,id:3324,x:30485,y:32766,varname:node_3324,prsc:2;n:type:ShaderForge.SFN_Add,id:6778,x:31077,y:32542,varname:node_6778,prsc:2|A-1435-OUT,B-779-OUT;n:type:ShaderForge.SFN_Multiply,id:779,x:30873,y:32734,varname:node_779,prsc:2|A-2966-OUT,B-3324-T;n:type:ShaderForge.SFN_Slider,id:2966,x:30390,y:32619,ptovrint:False,ptlb:speed,ptin:_speed,varname:node_2966,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-10,cur:-3.846154,max:10;n:type:ShaderForge.SFN_FragmentPosition,id:7295,x:30319,y:32345,varname:node_7295,prsc:2;n:type:ShaderForge.SFN_Power,id:3513,x:31596,y:32531,varname:node_3513,prsc:2|VAL-5127-OUT,EXP-6334-OUT;n:type:ShaderForge.SFN_Slider,id:6334,x:30966,y:32281,ptovrint:False,ptlb:pow,ptin:_pow,varname:node_6334,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:5,max:50;n:type:ShaderForge.SFN_Clamp01,id:9761,x:31780,y:32542,varname:node_9761,prsc:2|IN-3513-OUT;n:type:ShaderForge.SFN_Multiply,id:7726,x:32198,y:32603,varname:node_7726,prsc:2|A-5127-OUT,B-7241-RGB,C-8205-OUT,D-9244-OUT;n:type:ShaderForge.SFN_Multiply,id:1435,x:30772,y:32339,varname:node_1435,prsc:2|A-1793-OUT,B-7295-Y;n:type:ShaderForge.SFN_Slider,id:1793,x:30319,y:32235,ptovrint:False,ptlb:size,ptin:_size,varname:node_1793,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:5,max:50;n:type:ShaderForge.SFN_Multiply,id:7035,x:31847,y:32182,varname:node_7035,prsc:2|A-8621-OUT,B-4980-OUT,C-1611-OUT;n:type:ShaderForge.SFN_Add,id:4980,x:31375,y:32103,varname:node_4980,prsc:2|A-3448-OUT,B-7295-Y;n:type:ShaderForge.SFN_Slider,id:3448,x:30623,y:32010,ptovrint:False,ptlb:offset,ptin:_offset,varname:node_3448,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-10,cur:-0.8547009,max:10;n:type:ShaderForge.SFN_Slider,id:8621,x:31281,y:31959,ptovrint:False,ptlb:mult,ptin:_mult,varname:node_8621,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.4273609,max:10;n:type:ShaderForge.SFN_Clamp01,id:8205,x:32037,y:32229,varname:node_8205,prsc:2|IN-7035-OUT;n:type:ShaderForge.SFN_Vector1,id:1611,x:31544,y:32358,varname:node_1611,prsc:2,v1:-1;n:type:ShaderForge.SFN_SwitchProperty,id:9244,x:32124,y:32945,ptovrint:False,ptlb:Is on,ptin:_Ison,varname:node_9244,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-4957-OUT,B-563-OUT;n:type:ShaderForge.SFN_Vector1,id:4957,x:31696,y:33119,varname:node_4957,prsc:2,v1:0;n:type:ShaderForge.SFN_Vector1,id:563,x:31756,y:33221,varname:node_563,prsc:2,v1:1;proporder:7241-2966-6334-1793-3448-8621-9244;pass:END;sub:END;*/

Shader "Shader Forge/IfChain" {
    Properties {
        _Color ("Color", Color) = (0.07843138,0.3921569,0.7843137,1)
        _speed ("speed", Range(-10, 10)) = -3.846154
        _pow ("pow", Range(0, 50)) = 5
        _size ("size", Range(0, 50)) = 5
        _offset ("offset", Range(-10, 10)) = -0.8547009
        _mult ("mult", Range(0, 10)) = 0.4273609
        [MaterialToggle] _Ison ("Is on", Float ) = 0
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
            Cull Off
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float4 _TimeEditor;
            uniform float4 _Color;
            uniform float _speed;
            uniform float _size;
            uniform float _offset;
            uniform float _mult;
            uniform fixed _Ison;
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
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
////// Lighting:
////// Emissive:
                float4 node_3324 = _Time + _TimeEditor;
                float node_5127 = sin(((_size*i.posWorld.g)+(_speed*node_3324.g)));
                float3 emissive = (node_5127*_Color.rgb*saturate((_mult*(_offset+i.posWorld.g)*(-1.0)))*lerp( 0.0, 1.0, _Ison ));
                float3 finalColor = emissive;
                return fixed4(finalColor,1);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
