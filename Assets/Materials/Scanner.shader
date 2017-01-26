// Shader created with Shader Forge v1.32 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.32;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:2,bsrc:0,bdst:0,dpts:2,wrdp:False,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:3138,x:33221,y:32725,varname:node_3138,prsc:2|emission-7179-OUT;n:type:ShaderForge.SFN_Color,id:7241,x:32134,y:32426,ptovrint:False,ptlb:Color,ptin:_Color,varname:node_7241,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.07843138,c2:0.3921569,c3:0.7843137,c4:1;n:type:ShaderForge.SFN_TexCoord,id:8888,x:30956,y:32572,varname:node_8888,prsc:2,uv:0;n:type:ShaderForge.SFN_Slider,id:4093,x:30856,y:32950,ptovrint:False,ptlb:gradient,ptin:_gradient,varname:node_4093,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-10,cur:6.581197,max:10;n:type:ShaderForge.SFN_Rotator,id:3639,x:31163,y:32475,varname:node_3639,prsc:2|UVIN-8888-UVOUT,ANG-2681-OUT;n:type:ShaderForge.SFN_Vector1,id:2681,x:30956,y:32450,varname:node_2681,prsc:2,v1:3.14159;n:type:ShaderForge.SFN_ComponentMask,id:3237,x:31350,y:32475,varname:node_3237,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-3639-UVOUT;n:type:ShaderForge.SFN_Multiply,id:873,x:31591,y:32512,varname:node_873,prsc:2|A-3237-R,B-4093-OUT;n:type:ShaderForge.SFN_Multiply,id:9188,x:31591,y:32636,varname:node_9188,prsc:2|A-3237-G,B-4093-OUT;n:type:ShaderForge.SFN_Multiply,id:6567,x:31591,y:32758,varname:node_6567,prsc:2|A-8888-U,B-4093-OUT;n:type:ShaderForge.SFN_Multiply,id:6977,x:31591,y:32879,varname:node_6977,prsc:2|A-8888-V,B-4093-OUT;n:type:ShaderForge.SFN_Clamp01,id:3703,x:31747,y:32512,varname:node_3703,prsc:2|IN-873-OUT;n:type:ShaderForge.SFN_Clamp01,id:1804,x:31747,y:32636,varname:node_1804,prsc:2|IN-9188-OUT;n:type:ShaderForge.SFN_Clamp01,id:8049,x:31747,y:32758,varname:node_8049,prsc:2|IN-6567-OUT;n:type:ShaderForge.SFN_Clamp01,id:6012,x:31747,y:32879,varname:node_6012,prsc:2|IN-6977-OUT;n:type:ShaderForge.SFN_OneMinus,id:2008,x:31900,y:32512,varname:node_2008,prsc:2|IN-3703-OUT;n:type:ShaderForge.SFN_OneMinus,id:2622,x:31900,y:32636,varname:node_2622,prsc:2|IN-1804-OUT;n:type:ShaderForge.SFN_OneMinus,id:2901,x:31900,y:32758,varname:node_2901,prsc:2|IN-8049-OUT;n:type:ShaderForge.SFN_OneMinus,id:9348,x:31900,y:32879,varname:node_9348,prsc:2|IN-6012-OUT;n:type:ShaderForge.SFN_Add,id:9659,x:32120,y:32678,varname:node_9659,prsc:2|A-2008-OUT,B-2622-OUT,C-2901-OUT,D-9348-OUT;n:type:ShaderForge.SFN_Multiply,id:3169,x:32527,y:32768,varname:node_3169,prsc:2|A-7241-RGB,B-77-OUT,C-9409-OUT;n:type:ShaderForge.SFN_Noise,id:8777,x:32025,y:33115,varname:node_8777,prsc:2|XY-6812-OUT;n:type:ShaderForge.SFN_Time,id:1249,x:31486,y:33227,varname:node_1249,prsc:2;n:type:ShaderForge.SFN_Append,id:6812,x:31690,y:33081,varname:node_6812,prsc:2|A-2902-OUT,B-1249-TSL;n:type:ShaderForge.SFN_Multiply,id:8333,x:32361,y:33063,varname:node_8333,prsc:2|A-7241-RGB,B-8777-OUT,C-7039-OUT;n:type:ShaderForge.SFN_Add,id:7179,x:32755,y:32948,varname:node_7179,prsc:2|A-3169-OUT,B-8333-OUT;n:type:ShaderForge.SFN_Posterize,id:2902,x:31431,y:33032,varname:node_2902,prsc:2|IN-7761-Y,STPS-7789-OUT;n:type:ShaderForge.SFN_Vector1,id:7789,x:31129,y:33111,varname:node_7789,prsc:2,v1:20;n:type:ShaderForge.SFN_FragmentPosition,id:7761,x:30628,y:33025,varname:node_7761,prsc:2;n:type:ShaderForge.SFN_TexCoord,id:1821,x:30930,y:31888,varname:node_1821,prsc:2,uv:0;n:type:ShaderForge.SFN_Rotator,id:9293,x:31137,y:31791,varname:node_9293,prsc:2|UVIN-1821-UVOUT,ANG-8408-OUT;n:type:ShaderForge.SFN_Vector1,id:8408,x:30930,y:31766,varname:node_8408,prsc:2,v1:3.14159;n:type:ShaderForge.SFN_ComponentMask,id:8163,x:31324,y:31791,varname:node_8163,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-9293-UVOUT;n:type:ShaderForge.SFN_Multiply,id:1534,x:31565,y:31828,varname:node_1534,prsc:2|A-8163-R,B-2580-OUT;n:type:ShaderForge.SFN_Multiply,id:7484,x:31565,y:31952,varname:node_7484,prsc:2|A-8163-G,B-2580-OUT;n:type:ShaderForge.SFN_Multiply,id:710,x:31565,y:32074,varname:node_710,prsc:2|A-1821-U,B-2580-OUT;n:type:ShaderForge.SFN_Multiply,id:5673,x:31565,y:32195,varname:node_5673,prsc:2|A-1821-V,B-2580-OUT;n:type:ShaderForge.SFN_Clamp01,id:5895,x:31721,y:31828,varname:node_5895,prsc:2|IN-1534-OUT;n:type:ShaderForge.SFN_Clamp01,id:2698,x:31721,y:31952,varname:node_2698,prsc:2|IN-7484-OUT;n:type:ShaderForge.SFN_Clamp01,id:380,x:31721,y:32074,varname:node_380,prsc:2|IN-710-OUT;n:type:ShaderForge.SFN_Clamp01,id:4110,x:31721,y:32195,varname:node_4110,prsc:2|IN-5673-OUT;n:type:ShaderForge.SFN_OneMinus,id:8971,x:31874,y:31828,varname:node_8971,prsc:2|IN-5895-OUT;n:type:ShaderForge.SFN_OneMinus,id:7967,x:31874,y:31952,varname:node_7967,prsc:2|IN-2698-OUT;n:type:ShaderForge.SFN_OneMinus,id:5589,x:31874,y:32074,varname:node_5589,prsc:2|IN-380-OUT;n:type:ShaderForge.SFN_OneMinus,id:8506,x:31874,y:32195,varname:node_8506,prsc:2|IN-4110-OUT;n:type:ShaderForge.SFN_Add,id:556,x:32094,y:31994,varname:node_556,prsc:2|A-8971-OUT,B-7967-OUT,C-5589-OUT,D-8506-OUT;n:type:ShaderForge.SFN_Slider,id:2580,x:30897,y:32242,ptovrint:False,ptlb:fade gradient,ptin:_fadegradient,varname:node_2580,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:100;n:type:ShaderForge.SFN_Clamp01,id:77,x:32296,y:32652,varname:node_77,prsc:2|IN-9659-OUT;n:type:ShaderForge.SFN_Clamp01,id:5286,x:32264,y:31994,varname:node_5286,prsc:2|IN-556-OUT;n:type:ShaderForge.SFN_OneMinus,id:9409,x:32420,y:31994,varname:node_9409,prsc:2|IN-5286-OUT;n:type:ShaderForge.SFN_Vector1,id:7039,x:32166,y:33274,varname:node_7039,prsc:2,v1:0.5;proporder:7241-4093-2580;pass:END;sub:END;*/

Shader "Shader Forge/Scanner" {
    Properties {
        _Color ("Color", Color) = (0.07843138,0.3921569,0.7843137,1)
        _gradient ("gradient", Range(-10, 10)) = 6.581197
        _fadegradient ("fade gradient", Range(0, 100)) = 1
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
            uniform float _gradient;
            uniform float _fadegradient;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
////// Lighting:
////// Emissive:
                float node_3639_ang = 3.14159;
                float node_3639_spd = 1.0;
                float node_3639_cos = cos(node_3639_spd*node_3639_ang);
                float node_3639_sin = sin(node_3639_spd*node_3639_ang);
                float2 node_3639_piv = float2(0.5,0.5);
                float2 node_3639 = (mul(i.uv0-node_3639_piv,float2x2( node_3639_cos, -node_3639_sin, node_3639_sin, node_3639_cos))+node_3639_piv);
                float2 node_3237 = node_3639.rg;
                float node_9293_ang = 3.14159;
                float node_9293_spd = 1.0;
                float node_9293_cos = cos(node_9293_spd*node_9293_ang);
                float node_9293_sin = sin(node_9293_spd*node_9293_ang);
                float2 node_9293_piv = float2(0.5,0.5);
                float2 node_9293 = (mul(i.uv0-node_9293_piv,float2x2( node_9293_cos, -node_9293_sin, node_9293_sin, node_9293_cos))+node_9293_piv);
                float2 node_8163 = node_9293.rg;
                float node_7789 = 20.0;
                float4 node_1249 = _Time + _TimeEditor;
                float2 node_6812 = float2(floor(i.posWorld.g * node_7789) / (node_7789 - 1),node_1249.r);
                float2 node_8777_skew = node_6812 + 0.2127+node_6812.x*0.3713*node_6812.y;
                float2 node_8777_rnd = 4.789*sin(489.123*(node_8777_skew));
                float node_8777 = frac(node_8777_rnd.x*node_8777_rnd.y*(1+node_8777_skew.x));
                float3 emissive = ((_Color.rgb*saturate(((1.0 - saturate((node_3237.r*_gradient)))+(1.0 - saturate((node_3237.g*_gradient)))+(1.0 - saturate((i.uv0.r*_gradient)))+(1.0 - saturate((i.uv0.g*_gradient)))))*(1.0 - saturate(((1.0 - saturate((node_8163.r*_fadegradient)))+(1.0 - saturate((node_8163.g*_fadegradient)))+(1.0 - saturate((i.uv0.r*_fadegradient)))+(1.0 - saturate((i.uv0.g*_fadegradient)))))))+(_Color.rgb*node_8777*0.5));
                float3 finalColor = emissive;
                return fixed4(finalColor,1);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
