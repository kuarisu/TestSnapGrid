// Shader created with Shader Forge v1.32 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.32;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:0,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:3138,x:32726,y:32723,varname:node_3138,prsc:2|emission-9111-OUT;n:type:ShaderForge.SFN_Color,id:7241,x:31997,y:32307,ptovrint:False,ptlb:Color,ptin:_Color,varname:node_7241,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.07843138,c2:0.3921569,c3:0.7843137,c4:1;n:type:ShaderForge.SFN_Tex2d,id:461,x:32209,y:32919,ptovrint:False,ptlb:Symbol,ptin:_Symbol,varname:node_461,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:5fd98dc86334a024ea15e69964053b3e,ntxv:0,isnm:False|UVIN-8767-OUT;n:type:ShaderForge.SFN_Multiply,id:6419,x:31710,y:32835,varname:node_6419,prsc:2|A-6032-OUT,B-2998-OUT;n:type:ShaderForge.SFN_Slider,id:2998,x:31086,y:33021,ptovrint:False,ptlb:node_2998,ptin:_node_2998,varname:node_2998,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:1,cur:10,max:10;n:type:ShaderForge.SFN_Add,id:8767,x:31929,y:32930,varname:node_8767,prsc:2|A-6419-OUT,B-7940-OUT;n:type:ShaderForge.SFN_Vector1,id:7940,x:31710,y:33023,varname:node_7940,prsc:2,v1:0.5;n:type:ShaderForge.SFN_FragmentPosition,id:1563,x:30403,y:32631,varname:node_1563,prsc:2;n:type:ShaderForge.SFN_Append,id:5839,x:30679,y:32677,varname:node_5839,prsc:2|A-1563-X,B-1563-Z;n:type:ShaderForge.SFN_ObjectPosition,id:4947,x:30604,y:32353,varname:node_4947,prsc:2;n:type:ShaderForge.SFN_Append,id:2491,x:30836,y:32365,varname:node_2491,prsc:2|A-4947-X,B-4947-Z;n:type:ShaderForge.SFN_Add,id:6032,x:31454,y:32560,varname:node_6032,prsc:2|A-529-OUT,B-7584-UVOUT;n:type:ShaderForge.SFN_Multiply,id:529,x:31084,y:32314,varname:node_529,prsc:2|A-2491-OUT,B-9201-OUT;n:type:ShaderForge.SFN_Vector1,id:9201,x:30882,y:32527,varname:node_9201,prsc:2,v1:-1;n:type:ShaderForge.SFN_Rotator,id:7584,x:31110,y:32678,varname:node_7584,prsc:2|UVIN-5839-OUT,PIV-2491-OUT,ANG-7126-OUT;n:type:ShaderForge.SFN_Vector1,id:2613,x:30435,y:32926,varname:node_2613,prsc:2,v1:3.141593;n:type:ShaderForge.SFN_Vector1,id:2185,x:30435,y:32993,varname:node_2185,prsc:2,v1:1.75;n:type:ShaderForge.SFN_Multiply,id:7126,x:30732,y:32926,varname:node_7126,prsc:2|A-2613-OUT,B-2185-OUT;n:type:ShaderForge.SFN_Lerp,id:9111,x:32413,y:32643,varname:node_9111,prsc:2|A-4196-OUT,B-7241-RGB,T-461-B;n:type:ShaderForge.SFN_Vector1,id:4196,x:31977,y:32672,varname:node_4196,prsc:2,v1:0;proporder:7241-461-2998;pass:END;sub:END;*/

Shader "Shader Forge/Symbols" {
    Properties {
        _Color ("Color", Color) = (0.07843138,0.3921569,0.7843137,1)
        _Symbol ("Symbol", 2D) = "white" {}
        _node_2998 ("node_2998", Range(1, 10)) = 10
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
            uniform float4 _Color;
            uniform sampler2D _Symbol; uniform float4 _Symbol_ST;
            uniform float _node_2998;
            struct VertexInput {
                float4 vertex : POSITION;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float4 posWorld : TEXCOORD0;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                float4 objPos = mul ( unity_ObjectToWorld, float4(0,0,0,1) );
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                float4 objPos = mul ( unity_ObjectToWorld, float4(0,0,0,1) );
////// Lighting:
////// Emissive:
                float node_4196 = 0.0;
                float2 node_2491 = float2(objPos.r,objPos.b);
                float node_7584_ang = (3.141593*1.75);
                float node_7584_spd = 1.0;
                float node_7584_cos = cos(node_7584_spd*node_7584_ang);
                float node_7584_sin = sin(node_7584_spd*node_7584_ang);
                float2 node_7584_piv = node_2491;
                float2 node_7584 = (mul(float2(i.posWorld.r,i.posWorld.b)-node_7584_piv,float2x2( node_7584_cos, -node_7584_sin, node_7584_sin, node_7584_cos))+node_7584_piv);
                float2 node_8767 = ((((node_2491*(-1.0))+node_7584)*_node_2998)+0.5);
                float4 _Symbol_var = tex2D(_Symbol,TRANSFORM_TEX(node_8767, _Symbol));
                float3 emissive = lerp(float3(node_4196,node_4196,node_4196),_Color.rgb,_Symbol_var.b);
                float3 finalColor = emissive;
                return fixed4(finalColor,1);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
