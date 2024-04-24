'use client'
import { useGetTypesQuery } from '@/redux/features/authApiSlice'
import Image from 'next/image'
import Link from 'next/link'

export default function Index() {
	const { data: product } = useGetTypesQuery({ type: 101 })

	return (
		<>
			<h1 className='text-3xl font-bold mb-4 ml-5 font-Montserrat'>
				Каталог кроссовок
			</h1>

			<ul className='grid grid-cols-3'>
				{product?.map((product) => (
					<Link href={{ pathname: '/products/id', query: { id: product.id } }}>
						<div className='rounded-lg border-2 border-blue-500 ml-4'>
							<div className='flex flex-col items-center'>
								<Image
									loader={() => product.img}
									src={product.img}
									alt=''
									width={300}
									height={300}
									className='px-3 py-3'
								/>
							</div>
							<div className='px-3 py-3 font-Inter text-left'>
								<li className='px-3 font-bold text-2xl'>
									{product.brand_name} {product.name}
								</li>
								<li className='px-3 mt-1'>{product.type_name}</li>
								<li className='px-3 mb-0 mt-4 font-bold'>{+product.price} ₽</li>
							</div>
						</div>
					</Link>
				))}
			</ul>
		</>
	)
}
