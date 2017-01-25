// Shader created with Shader Forge v1.32 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.32;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:3,bdst:7,dpts:2,wrdp:True,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:False,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:3138,x:33673,y:32494,varname:node_3138,prsc:2|emission-3075-OUT,alpha-464-OUT;n:type:ShaderForge.SFN_TexCoord,id:2689,x:29640,y:31904,varname:node_2689,prsc:2,uv:0;n:type:ShaderForge.SFN_Frac,id:5605,x:30720,y:32128,varname:node_5605,prsc:2|IN-5943-OUT;n:type:ShaderForge.SFN_Power,id:7423,x:31139,y:32100,varname:node_7423,prsc:2|VAL-5605-OUT,EXP-3287-OUT;n:type:ShaderForge.SFN_Slider,id:3287,x:30755,y:32301,ptovrint:False,ptlb:shade,ptin:_shade,varname:node_3287,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.1662866,max:1;n:type:ShaderForge.SFN_OneMinus,id:3583,x:31121,y:31952,varname:node_3583,prsc:2|IN-5605-OUT;n:type:ShaderForge.SFN_Power,id:9217,x:31370,y:32231,varname:node_9217,prsc:2|VAL-3583-OUT,EXP-3287-OUT;n:type:ShaderForge.SFN_Clamp01,id:958,x:31296,y:32100,varname:node_958,prsc:2|IN-7423-OUT;n:type:ShaderForge.SFN_Clamp01,id:6859,x:31535,y:32231,varname:node_6859,prsc:2|IN-9217-OUT;n:type:ShaderForge.SFN_Multiply,id:6470,x:31740,y:32129,varname:node_6470,prsc:2|A-958-OUT,B-6859-OUT;n:type:ShaderForge.SFN_Multiply,id:5943,x:30475,y:32205,varname:node_5943,prsc:2|A-5796-G,B-3239-OUT;n:type:ShaderForge.SFN_Slider,id:8301,x:29948,y:32308,ptovrint:False,ptlb:scale,ptin:_scale,varname:node_8301,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:5.626903,max:10;n:type:ShaderForge.SFN_Floor,id:3239,x:30260,y:32321,varname:node_3239,prsc:2|IN-8301-OUT;n:type:ShaderForge.SFN_Color,id:2837,x:31682,y:32646,ptovrint:False,ptlb:color,ptin:_color,varname:node_2837,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5315204,c2:0.5859862,c3:0.6397059,c4:1;n:type:ShaderForge.SFN_Multiply,id:6321,x:32110,y:32620,varname:node_6321,prsc:2|A-9539-OUT,B-2837-RGB;n:type:ShaderForge.SFN_Panner,id:3136,x:30051,y:32013,varname:node_3136,prsc:2,spu:0,spv:1|UVIN-2689-UVOUT,DIST-2679-OUT;n:type:ShaderForge.SFN_ComponentMask,id:5796,x:30221,y:32013,varname:node_5796,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-3136-UVOUT;n:type:ShaderForge.SFN_Slider,id:456,x:29298,y:32175,ptovrint:False,ptlb:Speed,ptin:_Speed,varname:node_456,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-1,cur:-0.09401655,max:1;n:type:ShaderForge.SFN_Time,id:9284,x:29408,y:32271,varname:node_9284,prsc:2;n:type:ShaderForge.SFN_Multiply,id:2679,x:29621,y:32174,varname:node_2679,prsc:2|A-456-OUT,B-9284-T;n:type:ShaderForge.SFN_Power,id:9539,x:32136,y:32391,varname:node_9539,prsc:2|VAL-1394-OUT,EXP-2873-OUT;n:type:ShaderForge.SFN_Slider,id:2873,x:31546,y:32436,ptovrint:False,ptlb:contrast,ptin:_contrast,varname:node_2873,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1.205128,max:3;n:type:ShaderForge.SFN_Posterize,id:1394,x:32017,y:32125,varname:node_1394,prsc:2|IN-6470-OUT,STPS-4349-OUT;n:type:ShaderForge.SFN_Vector1,id:4349,x:31781,y:32318,varname:node_4349,prsc:2,v1:10;n:type:ShaderForge.SFN_Tex2d,id:4923,x:30122,y:31653,ptovrint:False,ptlb:arrows texture,ptin:_arrowstexture,varname:node_4923,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:e7f3df9c29a32b143861c8da2247e84f,ntxv:0,isnm:False|UVIN-6775-OUT;n:type:ShaderForge.SFN_Color,id:3512,x:30122,y:31846,ptovrint:False,ptlb:arrows color,ptin:_arrowscolor,varname:node_3512,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.1088235,c2:0.5441177,c3:0,c4:1;n:type:ShaderForge.SFN_Multiply,id:9370,x:30587,y:31730,varname:node_9370,prsc:2|A-4923-R,B-3512-RGB;n:type:ShaderForge.SFN_Sin,id:8066,x:30420,y:31455,varname:node_8066,prsc:2|IN-5857-TTR;n:type:ShaderForge.SFN_Time,id:5857,x:30171,y:31455,varname:node_5857,prsc:2;n:type:ShaderForge.SFN_Add,id:5358,x:30587,y:31455,varname:node_5358,prsc:2|A-8066-OUT,B-8312-OUT;n:type:ShaderForge.SFN_Vector1,id:8312,x:30420,y:31582,varname:node_8312,prsc:2,v1:2;n:type:ShaderForge.SFN_Multiply,id:381,x:30772,y:31460,varname:node_381,prsc:2|A-5358-OUT,B-2315-OUT;n:type:ShaderForge.SFN_Vector1,id:2315,x:30587,y:31622,varname:node_2315,prsc:2,v1:0.4;n:type:ShaderForge.SFN_Multiply,id:7824,x:31233,y:31680,varname:node_7824,prsc:2|A-3523-OUT,B-9370-OUT;n:type:ShaderForge.SFN_Clamp01,id:3523,x:30921,y:31449,varname:node_3523,prsc:2|IN-381-OUT;n:type:ShaderForge.SFN_Add,id:9577,x:32541,y:32491,varname:node_9577,prsc:2|A-4515-OUT,B-6321-OUT;n:type:ShaderForge.SFN_If,id:6775,x:29787,y:31653,varname:node_6775,prsc:2|A-5883-OUT,B-456-OUT,GT-2689-UVOUT,EQ-3964-OUT,LT-3964-OUT;n:type:ShaderForge.SFN_Vector1,id:5883,x:29504,y:31510,varname:node_5883,prsc:2,v1:0;n:type:ShaderForge.SFN_OneMinus,id:5222,x:29363,y:31724,varname:node_5222,prsc:2|IN-2689-V;n:type:ShaderForge.SFN_Append,id:3964,x:29531,y:31707,varname:node_3964,prsc:2|A-2689-U,B-5222-OUT;n:type:ShaderForge.SFN_Multiply,id:4515,x:32530,y:32255,varname:node_4515,prsc:2|A-7824-OUT,B-6429-OUT;n:type:ShaderForge.SFN_Slider,id:6429,x:32189,y:32319,ptovrint:False,ptlb:arrow opacity,ptin:_arrowopacity,varname:node_6429,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.4646538,max:1;n:type:ShaderForge.SFN_If,id:3075,x:32561,y:32967,varname:node_3075,prsc:2|A-1081-OUT,B-464-OUT,GT-5990-OUT,EQ-9577-OUT,LT-5990-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:464,x:31824,y:33432,ptovrint:False,ptlb:Pose,ptin:_Pose,varname:_Pose_copy_copy_copy_copy_copy_copy_copy_copy_copy_copy_copy_copy_copy_copy_copy_copy_copy_copy_copy_copy_copy_copy_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-1081-OUT,B-6730-OUT;n:type:ShaderForge.SFN_Vector1,id:1081,x:31458,y:33494,varname:node_1081,prsc:2,v1:1;n:type:ShaderForge.SFN_Vector1,id:6730,x:31458,y:33579,varname:node_6730,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Multiply,id:5990,x:31501,y:33230,varname:node_5990,prsc:2|A-7231-OUT,B-7587-OUT,C-7587-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:7231,x:30838,y:33319,ptovrint:False,ptlb:Is clipping,ptin:_Isclipping,varname:_Isclipping_copy_copy_copy_copy_copy_copy_copy_copy_copy_copy_copy_copy_copy_copy_copy_copy_copy_copy_copy_copy_copy_copy_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-5998-RGB,B-5711-RGB;n:type:ShaderForge.SFN_Color,id:5998,x:30547,y:33238,ptovrint:False,ptlb:ColorPosable,ptin:_ColorPosable,varname:_colorposable_copy_copy_copy_copy_copy_copy_copy_copy_copy_copy_copy_copy_copy_copy_copy_copy_copy_copy_copy_copy_copy_copy_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0,c2:0.6397059,c3:0.08382361,c4:1;n:type:ShaderForge.SFN_Color,id:5711,x:30547,y:33403,ptovrint:False,ptlb:ColorClipping,ptin:_ColorClipping,varname:_colorclipping_copy_copy_copy_copy_copy_copy_copy_copy_copy_copy_copy_copy_copy_copy_copy_copy_copy_copy_copy_copy_copy_copy_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.75,c2:0,c3:0,c4:1;n:type:ShaderForge.SFN_Multiply,id:7587,x:31084,y:32981,varname:node_7587,prsc:2|A-7492-OUT,B-7836-OUT;n:type:ShaderForge.SFN_Add,id:7492,x:30904,y:32981,varname:node_7492,prsc:2|A-2942-OUT,B-1288-OUT;n:type:ShaderForge.SFN_Vector1,id:7836,x:30904,y:33118,varname:node_7836,prsc:2,v1:0.2;n:type:ShaderForge.SFN_Vector1,id:1288,x:30735,y:33099,varname:node_1288,prsc:2,v1:5;n:type:ShaderForge.SFN_Sin,id:2942,x:30735,y:32981,varname:node_2942,prsc:2|IN-70-TTR;n:type:ShaderForge.SFN_Time,id:70,x:30574,y:32981,varname:node_70,prsc:2;proporder:3287-8301-2837-456-2873-4923-3512-6429-464-7231-5998-5711;pass:END;sub:END;*/

Shader "Shader Forge/Tapis" {
    Properties {
        _shade ("shade", Range(0, 1)) = 0.1662866
        _scale ("scale", Range(0, 10)) = 5.626903
        _color ("color", Color) = (0.5315204,0.5859862,0.6397059,1)
        _Speed ("Speed", Range(-1, 1)) = -0.09401655
        _contrast ("contrast", Range(0, 3)) = 1.205128
        _arrowstexture ("arrows texture", 2D) = "white" {}
        _arrowscolor ("arrows color", Color) = (0.1088235,0.5441177,0,1)
        _arrowopacity ("arrow opacity", Range(0, 1)) = 0.4646538
        [MaterialToggle] _Pose ("Pose", Float ) = 1
        [MaterialToggle] _Isclipping ("Is clipping", Float ) = 0
        _ColorPosable ("ColorPosable", Color) = (0,0.6397059,0.08382361,1)
        _ColorClipping ("ColorClipping", Color) = (0.75,0,0,1)
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
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
            Blend SrcAlpha OneMinusSrcAlpha
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float4 _TimeEditor;
            uniform float _shade;
            uniform float _scale;
            uniform float4 _color;
            uniform float _Speed;
            uniform float _contrast;
            uniform sampler2D _arrowstexture; uniform float4 _arrowstexture_ST;
            uniform float4 _arrowscolor;
            uniform float _arrowopacity;
            uniform fixed _Pose;
            uniform fixed _Isclipping;
            uniform float4 _ColorPosable;
            uniform float4 _ColorClipping;
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
////// Lighting:
////// Emissive:
                float node_1081 = 1.0;
                float _Pose_var = lerp( node_1081, 0.5, _Pose );
                float node_3075_if_leA = step(node_1081,_Pose_var);
                float node_3075_if_leB = step(_Pose_var,node_1081);
                float4 node_70 = _Time + _TimeEditor;
                float node_7587 = ((sin(node_70.a)+5.0)*0.2);
                float3 node_5990 = (lerp( _ColorPosable.rgb, _ColorClipping.rgb, _Isclipping )*node_7587*node_7587);
                float4 node_5857 = _Time + _TimeEditor;
                float node_6775_if_leA = step(0.0,_Speed);
                float node_6775_if_leB = step(_Speed,0.0);
                float2 node_3964 = float2(i.uv0.r,(1.0 - i.uv0.g));
                float2 node_6775 = lerp((node_6775_if_leA*node_3964)+(node_6775_if_leB*i.uv0),node_3964,node_6775_if_leA*node_6775_if_leB);
                float4 _arrowstexture_var = tex2D(_arrowstexture,TRANSFORM_TEX(node_6775, _arrowstexture));
                float4 node_9284 = _Time + _TimeEditor;
                float node_5605 = frac(((i.uv0+(_Speed*node_9284.g)*float2(0,1)).rg.g*floor(_scale)));
                float node_4349 = 10.0;
                float3 emissive = lerp((node_3075_if_leA*node_5990)+(node_3075_if_leB*node_5990),(((saturate(((sin(node_5857.a)+2.0)*0.4))*(_arrowstexture_var.r*_arrowscolor.rgb))*_arrowopacity)+(pow(floor((saturate(pow(node_5605,_shade))*saturate(pow((1.0 - node_5605),_shade))) * node_4349) / (node_4349 - 1),_contrast)*_color.rgb)),node_3075_if_leA*node_3075_if_leB);
                float3 finalColor = emissive;
                return fixed4(finalColor,_Pose_var);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
