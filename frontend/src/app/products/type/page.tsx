'use client'
import { useGetTypesQuery } from '@/redux/features/authApiSlice'
import Image from 'next/image'
import Link from 'next/link'
import { useRouter, useSearchParams } from 'next/navigation'

export default function Index() {
	const searchParams = useSearchParams()
	const type_id = searchParams.get('type')
	const type_name = searchParams.get('name')
	const { data: product } = useGetTypesQuery({
		type: type_id ? parseInt(type_id, 10) : 0,
	})

	return (
		<>
			<h1 className='text-3xl font-bold mb-4 ml-5 font-Montserrat'>
				Каталог {type_name}
			</h1>
			<ul className='grid grid-cols-3 gap-4'>
				{product?.map((product) => (
					<Link href={{ pathname: '/products/id', query: { id: product.id } }}>
						<div
							className='rounded-lg border-2 border-blue-500 ml-4 p-4'
							style={{ height: '350px' }}
						>
							<div className='flex flex-col items-center'>
								<Image
									loader={() => product.img}
									src={product.img}
									alt=''
									width={300}
									height={300}
									className='px-3 py-3 object-contain w-full h-40'
								/>
							</div>
							<div className='px-3 py-3 font-Inter text-left'>
								<div className='flex flex-col'>
									<li className='px-3 font-bold text-2xl'>
										{product.brand_name} {product.name}
									</li>
									<li className='px-3 mt-1'>{product.type_name}</li>
								</div>
							</div>
							<div className='px-3 py-3 font-bold mt-auto'>
								<div className='flex justify-between'>
									<li className='mb-0'>{+product.price} ₽</li>
								</div>
							</div>
						</div>
					</Link>
				))}
			</ul>
		</>
	)
}
