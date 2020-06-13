using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Drawing;
using System.Drawing.Imaging;

/// <summary>
/// Summary description for CaptchaGenerator
/// </summary>
public class CaptchaGenerator
{
    public string GetCode()
    {
        string capcode = "";
        char ch;
        Random R = new Random();
        ch =(char)R.Next(65, 90);
        capcode = capcode + ch;
        ch = (char)R.Next(65, 90);
        capcode = capcode + ch;
        ch = (char)R.Next(48, 57);
        capcode = capcode + ch;
        ch = (char)R.Next(48, 57);
        capcode = capcode + ch;
        ch = (char)R.Next(97, 122);
        capcode = capcode + ch;
        ch = (char)R.Next(97, 122);
        capcode = capcode + ch;
        return capcode;
    }
    public Bitmap CreatImage(string CapText)
    {
        Bitmap bmp = new Bitmap(90, 28);
        Graphics g = Graphics.FromImage(bmp);
        g.Clear(Color.Silver);
        SolidBrush b = new SolidBrush(Color.Black);
        Font f = new Font("Arial", 21, FontStyle.Strikeout, GraphicsUnit.Pixel);
        g.DrawString(CapText, f, b, 1, 1, StringFormat.GenericDefault);
        g.Flush();
        return bmp;
    }
    public string[] ImgCaptcha()
    {
        string capcode = GetCode();
        Bitmap b = CreatImage(capcode);
        b.Save(HttpContext.Current.Server.MapPath("~/images/Captcha.jpg"), ImageFormat.Jpeg);
        string[] arr = new string[2];
        arr[0] = capcode;
        arr[1] = "~/images/Captcha.jpg";
        return arr;
    }
}