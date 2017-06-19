﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.ServiceModel.Web;
using System.Text;

namespace CalcWebrole
{
	// NOTE: You can use the "Rename" command on the "Refactor" menu to change the class name "Service1" in code, svc and config file together.
	// NOTE: In order to launch WCF Test Client for testing this service, please select Service1.svc or Service1.svc.cs at the Solution Explorer and start debugging.
	public class Service1 : IService1
	{
		public int Add(int num1, int num2)
		{
			return num1 + num2;
		}

		public double Devide(int num1, int num2)
		{
			return num1 / num2;
		}

		public int Multiply(int num1, int num2)
		{
			return num1 * num2;
		}

		public int Substruct(int num1, int num2)
		{
			return num1 - num2;
		}

		public CompositeType GetDataUsingDataContract(CompositeType composite)
		{
			if (composite == null)
			{
				throw new ArgumentNullException("composite");
			}
			if (composite.BoolValue)
			{
				composite.StringValue += "Suffix";
			}
			return composite;
		}
	}
}
