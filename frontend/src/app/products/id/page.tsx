'use client'
import {
	useDeleteProductMutation,
	useGetProductQuery,
	useRetrieveUserQuery,
	useAddToCartMutation,
} from '@/redux/features/authApiSlice'
import Image from 'next/image'
import { useRouter, useSearchParams } from 'next/navigation'
import { toast } from 'react-toastify'


export default function Index() {
	const router = useRouter()
	const searchParams = useSearchParams()
	const productId = searchParams.get('id')
	const { data: product } = useGetProductQuery({ id: productId ? parseInt(productId, 10) : 0 })
	const [deleteProduct] = useDeleteProductMutation()
	const [addToCart] = useAddToCartMutation()
	const { data: user } = useRetrieveUserQuery()

	const handleDeleteProduct = () => {
		deleteProduct({ id: productId })
			.unwrap()
			.then(() => {
				toast.success('Товар удален')
			})
			.catch(() => {
				toast.error('Ошибка')
			})
	}

	const handleAddToCart = () => {
		
			addToCart({ product_id: productId })
				.unwrap()
				.then(() => {
					toast.success('Товар добавлен в корзину')
				})
				.catch(() => {
					toast.error('Ошибка')
				})
	
	}

	const isModer = () => (
		<>
			<button
				onClick={handleDeleteProduct}
				className='ml-6 rounded-xl bg-red-600 px-3 py-1.5 text-sm font-semibold leading-6 text-white shadow-sm hover:bg-red-500 focus-visible:outline focus-visible:outline-2 focus-visible:outline-offset-2'
			>
				Удалить
			</button>
		</>
	)
	return (
		<>
			<div className='py-6'>
				{product?.map((product) => (
					<div className='max-w-7xl px-8 sm:px-6 mt-6'>
						<div className='flex flex-col md:flex-row lg:flex-row'>
							<div className='md:flex-1 lg:flex-1 px-4'>
								<Image
									loader={() => product.img}
									src={product.img}
									alt=''
									width={400}
									height={300}
									className='mx-auto'
								/>
							</div>
							<div className='md:flex-1 lg:flex-1 px-4'>
								<h2 className='mb-2 leading-tight tracking-tight font-bold text-gray-800 text-2xl md:text-3xl'>
									{product.name}
								</h2>
								<p className='text-gray-500 text-sm'>
									Бренд{' '}
									<a href='#' className='text-blue-600 hover:underline'>
										{product.brand}
									</a>
								</p>

								<div className='flex items-center space-x-4 my-4'>
									<span className='font-bold text-blue-600 text-3xl'>
										{product.price} ₽
									</span>
								</div>

								<p className='text-gray-500'>{product.type}</p>

								<div className='flex py-4 space-x-4'>
									<div className='relative'>
										<div className='text-center left-0 pt-2 right-0 absolute block text-xs uppercase text-gray-400 tracking-wide font-semibold'>
											Размер
										</div>
										<select className='cursor-pointer appearance-none rounded-xl border border-gray-200 pl-4 pr-8 h-14 flex items-end pb-1'>
											<option>40</option>
											<option>41</option>
											<option>42</option>
											<option>43</option>
											<option>44</option>
										</select>
									</div>

									<button
										onClick={handleAddToCart}
										className='h-14 px-6 py-2 font-semibold rounded-xl bg-blue-600 hover:bg-blue-400 text-white'
									>
										Добавить в корзину
									</button>
									{user?.is_staff && isModer()}
								</div>
							</div>
						</div>
					</div>
				))}
			</div>
		</>
	)
}
