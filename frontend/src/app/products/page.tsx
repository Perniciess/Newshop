'use client'
import {
	useDeleteProductMutation,
	useGetProductsQuery,
	useRetrieveUserQuery,
} from '@/redux/features/authApiSlice'
import Image from 'next/image'
import { usePathname } from 'next/navigation'

export default function Page() {
	const { data: products } = useGetProductsQuery()
	const { data: user } = useRetrieveUserQuery()
	const [deleteProduct] = useDeleteProductMutation()
	const productId = products?.[0]?.id
	const handleDeleteProduct = async () => {
		try {
			deleteProduct({ id: productId })
			console.log('Продукт успешно удален!')
		} catch (error) {
			console.error('Произошла ошибка при удалении продукта:', error)
		}
	}
	const isSelected = (path: string) => pathname === path
	const pathname = usePathname()
	const isModer = () => (
		<>
			<button
				onClick={handleDeleteProduct}
				className='ml-6 rounded-md bg-red-600 px-3 py-1.5 text-sm font-semibold leading-6 text-white shadow-sm hover:bg-red-500 focus-visible:outline focus-visible:outline-2 focus-visible:outline-offset-2'
			>
				Удалить
			</button>
		</>
	)

	return (
		<>
			<h1 className='text-3xl font-bold mb-4 ml-5 font-Montserrat'>
				Каталог товаров
			</h1>

			<ul className='grid grid-cols-3'>
				{products?.map((product) => (
					<a
						key={product.name}
						href={`/products/${product.id}`}
						className='rounded ring-1 ring-blue-900 ml-6'
					>
						<div>
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
								<li className='px-3 mb-0 mt-4'>{+product.price} ₽</li>
							</div>
						</div>
					</a>
				))}
			</ul>
		</>
	)
}
