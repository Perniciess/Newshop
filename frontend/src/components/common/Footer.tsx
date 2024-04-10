import {
	MessagesSquare,
	CircleDollarSign,
	Gift,
	Phone,
	Info,
	HeartHandshake,
	Radio
  } from "lucide-react";
  import { FaTelegramPlane, FaInstagram, FaVk } from "react-icons/fa";
  
  
  const perks = [
	{
	  name: "Сервис 24/7",
	  Icon: MessagesSquare,
	  description: "Консультативный сервис 24/7.",
	},
	{
	  name: "Платежный сервис",
	  Icon: CircleDollarSign,
	  description: "Современный интегрированный платежный инструмент.",
	},
	{
	  name: "Быстрая доставка",
	  Icon: Gift,
	  description: "Быстрая и удобная доставка.",
	},
	{
	  name: "Информация",
	  Icon: Info,
	  description: "О нас",
	},
	{
	  name: "Служба поддержки клиентов",
	  Icon: HeartHandshake,
	  description: [<Phone className={"mt-3"}/>, <FaTelegramPlane className={"size-6 ml-4 mt-3"}/>],
	},
	  {
		  name: "Мы в соц.сетях",
		  Icon: Radio,
		description: [<FaTelegramPlane className={"size-6 mt-3"}/>, <FaVk className={"size-6 mt-3 ml-4"}/>, <FaInstagram className={"size-6 mt-3 ml-4"}/>]
	  }
  ];
  
  export default function Footer() {
	return (
	  <>
		<section className="border-t border-gray-200 bg-gray-50">
		  <p
			className={
			  "font-Montserrat justify-center flex py-10 font-bold text-3xl"
			}
		  >
			Почему ITEM CLUB?
		  </p>
		  <footer className="py-10">
			<div className="grid grid-cols-1 gap-y-12 sm:grid-cols-2 sm:gap-x-6 lg:grid-cols-3 lg:gap-x-8 lg:gap-y-0">
			  {perks.map((perk) => (
				<div className="text-center md:flex md:items-start md:text-left lg:block lg:text-center">
				  <div className="md:flex-shrink-0 flex justify-center">
					<div className="h-16 w-16 flex items-center justify-center rounded-full bg-blue-100 text-blue-900">
					  {<perk.Icon className="w-1/3 h-1/3" />}
					</div>
				  </div>
  
				  <div className="mt-6 md:ml-4 md:mt-0 lg:ml-0 lg:mt-6">
					<h3 className="text-base font-medium text-gray-900">
					  {perk.name}
					</h3>
  
						<div className={"flex justify-center mb-4"}>
					  {perk.description}
						</div>
  
				  </div>
				</div>
			  ))}
			</div>
		  </footer>
		</section>
	  </>
	);
  }