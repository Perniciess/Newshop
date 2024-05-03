'use client'
import {
	useGetProductsQuery,
	useDeleteProductMutation,
} from '@/redux/features/authApiSlice'
import Link from 'next/link'
import { toast } from 'react-toastify'
import { idText } from 'typescript'

export default function Page() {
	const { data: products } = useGetProductsQuery()
	const [deleteProduct] = useDeleteProductMutation()

	const handleDeleteProduct = (productId: number) => {
		deleteProduct({ id: productId })
			.unwrap()
			.then(() => {
				toast.success('Товар удален')
			})
			.catch(() => {
				toast.error('Ошибка')
			})
	}

	return (
		<>
			<h1 className='text-3xl font-bold mb-4 ml-5 font-Montserrat'>
				Каталог товаров
			</h1>

			<ol className='list-decimal'>
				<ul className='grid grid-cols-6 font-bold ml-4'>
					<li>ID</li>
					<li>Бренд</li>
					<li>Название</li>
					<li>Тип</li>
					<li>Цена</li>
				</ul>
				{products?.map((product) => (
					<>
						<ul className='mt-3 rounded-lg border-2 border-blue-500 ml-4 px-2 py-3 font-Inter grid grid-cols-6 text-left'>
							<li>{product.id}</li>
							<li>
								<Link
									href={{ pathname: '/products/id', query: { id: product.id } }}
								>
									{product.brand_name}
								</Link>
							</li>
							<li>{product.name}</li>
							<li>{product.type_name}</li>
							<li>{+product.price} ₽</li>
							<li>
								<button
									className='ml-6 rounded-xl bg-red-600 px-3 py-1 text-sm font-semibold leading-6 text-white shadow-sm hover:bg-red-500 focus-visible:outline focus-visible:outline-2 focus-visible:outline-offset-2'
									onClick={() => handleDeleteProduct(product.id)}
								>
									Удалить
								</button>
							</li>
						</ul>
					</>
				))}
			</ol>
		</>
	)
}
