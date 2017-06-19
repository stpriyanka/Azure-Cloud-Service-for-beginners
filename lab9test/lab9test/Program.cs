using lab9test.ServiceReference1;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace lab9test
{
	class Program
	{
		static void Main(string[] args)
		{
			Service1Client _calculatorService = new Service1Client();
			var addresult = _calculatorService.Add(4, 4);
			Console.WriteLine("Add result of 4 and 4 is: {0}",addresult);

			var substructresult = _calculatorService.Substruct(40, 14);
			Console.WriteLine("Add result of 40 and 14 is: {0}", substructresult);

			var multiplyresult = _calculatorService.Multiply(2, 4);
			Console.WriteLine("Add result of 2 and 4 is: {0}", multiplyresult);

			var divisionresult = _calculatorService.Devide(40, 4);
			Console.WriteLine("Add result of 40 and 4 is: {0}", divisionresult);


			Console.ReadLine();
		}
	}
}
