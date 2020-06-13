﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for EncryptionManager
/// </summary>
public class EncryptionManager
{
	public static string EncryptMyData(string plaintext)
    {
        string changedtext = "";
        int ASCIIValue;
        foreach (char ch in plaintext)
        {
            ASCIIValue = (int)ch;
            if (ASCIIValue >= 65 && ASCIIValue <= 90)
            {
                ASCIIValue = (90 - ASCIIValue) + 65;
            }
            else if (ASCIIValue >= 97 && ASCIIValue <= 122)
            {
                ASCIIValue = (122 - ASCIIValue) + 97;
            }
            else if (ASCIIValue >= 48 && ASCIIValue <= 57)
            {
                ASCIIValue = (57 - ASCIIValue) + 48;
            }
            changedtext = changedtext + (char)ASCIIValue;
        }
        return changedtext;
     }
 }