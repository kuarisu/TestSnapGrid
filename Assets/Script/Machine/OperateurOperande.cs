using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class OperateurOperande : MonoBehaviour {

    public string op;

    public string GetOp()
    {
        return op;
    }

    public void SetOp(string p_type)
    {
        op = p_type;
    }

}
