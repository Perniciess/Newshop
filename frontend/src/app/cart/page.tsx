'use client'
import {
	useGetCartQuery,
	useDelFromCartMutation,
} from '@/redux/features/authApiSlice'
import { useEffect } from 'react';
import { toast } from 'react-toastify'

export default function Cart() {
	const { data: cart,  isLoading, isError } = useGetCartQuery()
	const [delFromCart] = useDelFromCartMutation()



	const handleDelFromCart = (productId: number) => {
		delFromCart({ product_id: productId })
			.unwrap()
			.then(() => {
				toast.success('Товар удален из корзины')
			})
			.catch(() => {
				toast.error('Ошибка')
			})
	}

	return (
		<>
			<div className='bg-white'>
				<div className='max-w-4xl mx-auto py-16 px-4 sm:py-24 sm:px-6 lg:px-8'>
					<h1 className='text-3xl font-extrabold tracking-tight text-gray-900'>
						Корзина
					</h1>
					<form className='mt-12'>
						<div>
							<ul
								role='list'
								className='border-t border-b border-gray-200 divide-y divide-gray-200'
							>
								{cart?.map((product) => (
									<li key={product.id} className='flex py-6 sm:py-10'>
										<div className='flex-shrink-0'>
											<img
												src={product.img}
												className='w-36 h-36 rounded-lg object-center object-cover sm:w-32 sm:h-32'
											/>
										</div>

										<div className='relative ml-4 flex-1 flex flex-col justify-between sm:ml-6'>
											<div>
												<div className='flex justify-between sm:grid sm:grid-cols-2'>
													<p className='pr-6 font-Inter font-bold text-xl'>
														{product.name}
													</p>

													<p className='text-sm font-medium text-gray-900 text-right'>
														{+product.price} ₽
													</p>
												</div>
												<p className='pr-6 mt-3'>{product.brand_name}</p>
												<p className='pr-6 mt-3'>{product.type_name}</p>
												<div className='mt-4 flex items-center sm:block sm:absolute sm:top-0 sm:left-1/2 sm:mt-0'>
													<select className='block max-w-full rounded-md border border-gray-300 py-1.5 text-base leading-5 font-medium text-gray-700 text-left shadow-sm focus:outline-none focus:ring-1 focus:ring-blue-500 focus:border-blue-500 sm:text-sm'>
														<option value={1}>1</option>
														<option value={2}>2</option>
														<option value={3}>3</option>
														<option value={4}>4</option>
														<option value={5}>5</option>
														<option value={6}>6</option>
														<option value={7}>7</option>
														<option value={8}>8</option>
													</select>

													<button
														onClick={() => handleDelFromCart(product.id)}
														className='ml-4 text-sm font-medium text-red-500 hover:text-red-700 sm:ml-0 sm:mt-3'
													>
														Удалить
													</button>
												</div>
											</div>
										</div>
									</li>
								))}
							</ul>
						</div>

						{/* Order summary */}
						<div className='mt-10 sm:ml-32 sm:pl-6'>
							<div className='bg-gray-50 rounded-lg px-4 py-6 sm:p-6 lg:p-8'>
								<div className='flow-root'>
									<dl className='-my-4 text-sm divide-y divide-gray-200'>
										<div className='py-4 flex items-center justify-between'>
											<dt className='text-base font-medium text-gray-900'>
												Сумма заказа
											</dt>
											<dd className='text-base font-medium text-gray-900'>
												{cart?.reduce(
													(accumulator, product) =>
														accumulator + +product.price,
													0
												)}
												₽
											</dd>
										</div>
									</dl>
								</div>
							</div>
							<div className='mt-10'>
								<button
									type='submit'
									className='w-full bg-blue-600 border border-transparent rounded-md shadow-sm py-3 px-4 text-base font-medium text-white hover:bg-blue-700 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-offset-gray-50 focus:ring-blue-500'
								>
									Продолжить оформление
								</button>
							</div>

							<div className='mt-6 text-sm text-center text-gray-500'>
								<p>
									или{' '}
									<a
										href='#'
										className='text-blue-600 font-medium hover:text-blue-500'
									>
										Продолжить покупки<span aria-hidden='true'> &rarr;</span>
									</a>
								</p>
							</div>
						</div>
					</form>
				</div>
			</div>
		</>
	)
}
