using System.IO;
class Program {
static void Main(string[] args){
var f = File.ReadAllText(args[0]);
f = f.Replace("\r","");
File.WriteAllText(args[0], f);
}
}