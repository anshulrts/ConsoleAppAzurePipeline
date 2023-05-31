// See https://aka.ms/new-console-template for more information
using System.Reflection;

Console.WriteLine("First Commit");
string path = Directory.GetCurrentDirectory();

path += "\\abc.txt";

if (File.Exists(path))
{
    File.Delete(path);
}

using (StreamWriter sw = File.CreateText(path))
{
    sw.WriteLine("First Commit");
}