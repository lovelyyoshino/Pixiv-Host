using System;
using System.IO;
using System.Text;

namespace Pixiv
{
    class Program
    {
        static void Main(string[] args)
        {
            // Console.WriteLine("Hello World!");

            string fpath = @"C:\WINDOWS\system32\drivers\etc\hosts";
            FileStream fs = new FileStream(@fpath, FileMode.Create); //写入的方式可改变，这里是追加
            StreamWriter sw = new StreamWriter(fs);

            //写入的一行内容
            // sw.WriteLine("122.114.78.203 app-api.pixiv.net");

            //写入大量内容前面加 “@”符号
            sw.WriteLine(@"#pixiv 开始
123.207.252.208  www.pixiv.net 
123.207.252.208  tuoch.pixiv.net 
123.207.252.208 source.pixiv.net 
123.207.252.208  accounts.pixiv.net 
123.207.252.208  www.pixiv.net 
123.207.137.88 www.pixiv.net
123.207.137.88  tuoch.pixiv.net 
123.207.137.88 source.pixiv.net 
123.207.137.88  accounts.pixiv.net 
123.207.137.88  www.pixiv.net
#pixiv 结束");
            sw.Close();
            fs.Close();
            //updateHosts();
        }
        private static void updateHosts()
        {
            string path = @"C:\WINDOWS\system32\drivers\etc\hosts";
            //通常情况下这个文件是只读的，所以写入之前要取消只读
            File.SetAttributes(path, File.GetAttributes(path) & (~FileAttributes.ReadOnly));//取消只读
            //1.创建文件流
            FileStream fs = new FileStream(path, FileMode.Append);
            //2.创建写入器
            StreamWriter sw = new StreamWriter(fs, Encoding.UTF8);
            //3.开始写入
            bool result = false;//标识是否写入成功
            try
            {
                StringBuilder sb = new StringBuilder();
                sb.Append("123.207.252.208");//220.181.57.217是百度的IP地址
                sb.Append("   ");
                sb.Append("www.pixiv.net ");//百度网址
                sw.WriteLine(sb.ToString());
                result = true;
            }
            catch (Exception ex)
            {
                result = false;
            }
            finally
            {
                //4.关闭写入器
                if (sw != null)
                {
                    sw.Close();
                }
                //5.关闭文件流
                if (fs != null)
                {
                    fs.Close();
                }
            }
            if (result == true)
            {
                Console.WriteLine("写入成功！");
                File.SetAttributes(path, File.GetAttributes(path) | FileAttributes.ReadOnly);//设置只读
            }
            else
            {
                Console.WriteLine("写入失败！");
                return;
            }
        }
    }
}

